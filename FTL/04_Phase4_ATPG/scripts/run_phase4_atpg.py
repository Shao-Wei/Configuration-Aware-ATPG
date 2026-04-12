#!/usr/bin/env python3

import argparse
import csv
import re
import subprocess
from dataclasses import dataclass
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[3]
PHASE4_ROOT = REPO_ROOT / "FTL" / "04_Phase4_ATPG"
DEFAULT_CATEGORIES = ["dirL0", "dirL5", "dirL7", "dirL9", "dirL11"]


@dataclass(frozen=True)
class RunTarget:
    category: str
    benchmark: str
    netlist: Path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Run Phase 4 ATPG on FTL mixed circuits.")
    parser.add_argument("--categories", nargs="*", default=DEFAULT_CATEGORIES)
    parser.add_argument("--benchmarks", nargs="*", default=[])
    parser.add_argument("--phase4-root", type=Path, default=PHASE4_ROOT)
    parser.add_argument("--fan-bin", type=Path, default=REPO_ROOT / "bin" / "opt" / "fan")
    parser.add_argument(
        "--lib",
        type=Path,
        default=PHASE4_ROOT / "lib" / "mod_nangate45_plus_ftl_dirL_subset.mdt",
    )
    parser.add_argument("--timeout-sec", type=int, default=3600)
    parser.add_argument("--keep-going", action="store_true", default=True)
    parser.add_argument("--static-compression", choices=["on", "off"], default="on")
    parser.add_argument("--dynamic-compression", choices=["on", "off"], default="on")
    parser.add_argument("--x-fill", choices=["on", "off"], default="on")
    return parser.parse_args()


def discover_targets(phase4_root: Path, categories: list[str], benchmarks: list[str]) -> list[RunTarget]:
    wanted = set(benchmarks)
    targets: list[RunTarget] = []
    for category in categories:
        netlist_dir = phase4_root / "netlists" / category
        for netlist in sorted(netlist_dir.glob("*_mixed_SYN.v")):
            benchmark = netlist.name[: -len("_mixed_SYN.v")]
            if wanted and benchmark not in wanted:
                continue
            targets.append(RunTarget(category=category, benchmark=benchmark, netlist=netlist))
    return targets


def rel(path: Path) -> str:
    return str(path.relative_to(REPO_ROOT))


def write_atpg_script(
    script_path: Path,
    target: RunTarget,
    lib: Path,
    report_path: Path,
    pattern_path: Path,
    stil_path: Path,
    static_compression: str,
    dynamic_compression: str,
    x_fill: str,
) -> None:
    script_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.parent.mkdir(parents=True, exist_ok=True)
    pattern_path.parent.mkdir(parents=True, exist_ok=True)
    stil_path.parent.mkdir(parents=True, exist_ok=True)
    script_path.write_text(
        "\n".join(
            [
                f"read_lib {rel(lib)}",
                f"read_netlist {rel(target.netlist)}",
                "report_netlist",
                "build_circuit --frame 1",
                "report_circuit",
                "set_fault_type saf",
                "add_fault --all",
                f"set_static_compression {static_compression}",
                f"set_dynamic_compression {dynamic_compression}",
                f"set_X-Fill {x_fill}",
                "run_atpg",
                f"report_statistics > {rel(report_path)}",
                f"write_pattern {rel(pattern_path)}",
                f"write_to_STIL {rel(stil_path)}",
                "exit",
                "",
            ]
        )
    )


def parse_report(report_path: Path) -> dict[str, str]:
    result = {
        "test_coverage": "",
        "fault_coverage": "",
        "atpg_effectiveness": "",
        "patterns": "",
        "runtime_sec": "",
        "detected_faults": "",
        "undetected_faults": "",
        "total_faults": "",
    }
    if not report_path.exists():
        return result

    for line in report_path.read_text(errors="replace").splitlines():
        stripped = line.strip("# ").strip()
        if stripped.startswith("FU (full)"):
            result["total_faults"] = stripped.split()[-1]
        elif stripped.startswith("UD (undetected)"):
            result["undetected_faults"] = stripped.split()[-1]
        elif stripped.startswith("DT (detected)"):
            result["detected_faults"] = stripped.split()[-1]
        elif stripped.startswith("test coverage"):
            result["test_coverage"] = stripped.split()[-1].rstrip("%")
        elif stripped.startswith("fault coverage"):
            result["fault_coverage"] = stripped.split()[-1].rstrip("%")
        elif stripped.startswith("atpg effectiveness"):
            result["atpg_effectiveness"] = stripped.split()[-1].rstrip("%")
        elif stripped.startswith("Patterns"):
            result["patterns"] = stripped.split()[-1]
        elif stripped.startswith("ATPG runtime"):
            match = re.search(r"([0-9.eE+-]+)\s+s$", stripped)
            if match:
                result["runtime_sec"] = match.group(1)
    return result


def has_real_stderr_error(stderr: str) -> bool:
    for line in stderr.splitlines():
        if "**ERROR" in line and "TmUsage::checkUsage()" not in line:
            return True
    return False


def run_target(args: argparse.Namespace, target: RunTarget) -> dict[str, str]:
    out_root = args.phase4_root / "results" / target.category / target.benchmark
    script_path = out_root / f"{target.benchmark}.script"
    report_path = out_root / f"{target.benchmark}.rpt"
    pattern_path = out_root / f"{target.benchmark}.pat"
    stil_path = out_root / f"{target.benchmark}.stil"
    stdout_path = out_root / f"{target.benchmark}.stdout.log"
    stderr_path = out_root / f"{target.benchmark}.stderr.log"

    write_atpg_script(
        script_path=script_path,
        target=target,
        lib=args.lib.resolve(),
        report_path=report_path,
        pattern_path=pattern_path,
        stil_path=stil_path,
        static_compression=args.static_compression,
        dynamic_compression=args.dynamic_compression,
        x_fill=args.x_fill,
    )

    cmd = [str(args.fan_bin), "-f", rel(script_path)]
    try:
        proc = subprocess.run(
            cmd,
            cwd=REPO_ROOT,
            capture_output=True,
            text=True,
            timeout=args.timeout_sec,
        )
        stdout_path.write_text(proc.stdout)
        stderr_path.write_text(proc.stderr)
        stderr_has_error = has_real_stderr_error(proc.stderr)
        metrics = parse_report(report_path)
        has_metrics = bool(metrics["fault_coverage"] and metrics["patterns"])
        status = "ok" if proc.returncode == 0 and not stderr_has_error and has_metrics else "failed"
        error = "" if status == "ok" else f"returncode={proc.returncode}; stderr_has_error={stderr_has_error}; has_metrics={has_metrics}"
    except subprocess.TimeoutExpired as exc:
        stdout_path.write_text(exc.stdout or "")
        stderr_path.write_text(exc.stderr or "")
        status = "timeout"
        error = f"timeout_sec={args.timeout_sec}"

    metrics = parse_report(report_path)
    return {
        "category": target.category,
        "benchmark": target.benchmark,
        "status": status,
        "error": error,
        "report": rel(report_path),
        "patterns_file": rel(pattern_path),
        "stil_file": rel(stil_path),
        **metrics,
    }


def main() -> int:
    args = parse_args()
    targets = discover_targets(args.phase4_root, args.categories, args.benchmarks)
    if not targets:
        raise RuntimeError("No Phase 4 ATPG targets found")

    summary_rows = []
    for idx, target in enumerate(targets, 1):
        print(f"[INFO] {idx}/{len(targets)} {target.category}/{target.benchmark}", flush=True)
        row = run_target(args, target)
        summary_rows.append(row)
        if row["status"] != "ok" and not args.keep_going:
            break

    summary_path = args.phase4_root / "results" / "phase4_summary.csv"
    summary_path.parent.mkdir(parents=True, exist_ok=True)
    fieldnames = [
        "category",
        "benchmark",
        "status",
        "error",
        "test_coverage",
        "fault_coverage",
        "atpg_effectiveness",
        "patterns",
        "runtime_sec",
        "detected_faults",
        "undetected_faults",
        "total_faults",
        "report",
        "patterns_file",
        "stil_file",
    ]
    with summary_path.open("w", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(summary_rows)

    failed = [row for row in summary_rows if row["status"] != "ok"]
    print(f"[INFO] Wrote summary: {summary_path}")
    print(f"[INFO] Completed: {len(summary_rows) - len(failed)}/{len(summary_rows)}")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
