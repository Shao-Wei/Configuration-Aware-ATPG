#!/usr/bin/env python3

import argparse
import csv
import subprocess
from dataclasses import dataclass
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[3]
PHASE4_ROOT = REPO_ROOT / "FTL" / "04_Phase4_ATPG"
DEFAULT_CATEGORIES = ["dirL0", "dirL5", "dirL7", "dirL9", "dirL11"]


@dataclass(frozen=True)
class ReadTarget:
    category: str
    benchmark: str
    netlist: Path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Run read_lib/read_netlist checks for Phase 4 netlists.")
    parser.add_argument("--categories", nargs="*", default=DEFAULT_CATEGORIES)
    parser.add_argument("--benchmarks", nargs="*", default=[])
    parser.add_argument("--phase4-root", type=Path, default=PHASE4_ROOT)
    parser.add_argument("--fan-bin", type=Path, default=REPO_ROOT / "bin" / "opt" / "fan")
    parser.add_argument(
        "--lib",
        type=Path,
        default=PHASE4_ROOT / "lib" / "mod_nangate45_plus_ftl_dirL_subset.mdt",
    )
    parser.add_argument("--timeout-sec", type=int, default=300)
    return parser.parse_args()


def discover_targets(phase4_root: Path, categories: list[str], benchmarks: list[str]) -> list[ReadTarget]:
    wanted = set(benchmarks)
    targets: list[ReadTarget] = []
    for category in categories:
        netlist_dir = phase4_root / "netlists" / category
        for netlist in sorted(netlist_dir.glob("*_mixed_SYN.v")):
            benchmark = netlist.name[: -len("_mixed_SYN.v")]
            if wanted and benchmark not in wanted:
                continue
            targets.append(ReadTarget(category=category, benchmark=benchmark, netlist=netlist))
    return targets


def rel(path: Path) -> str:
    return str(path.relative_to(REPO_ROOT))


def has_real_stderr_error(stderr: str) -> bool:
    for line in stderr.splitlines():
        if "**ERROR" in line and "TmUsage::checkUsage()" not in line:
            return True
    return False


def run_target(args: argparse.Namespace, target: ReadTarget) -> dict[str, str]:
    out_root = args.phase4_root / "results" / "read_checks" / target.category / target.benchmark
    out_root.mkdir(parents=True, exist_ok=True)
    script_path = out_root / f"{target.benchmark}_read.script"
    stdout_path = out_root / f"{target.benchmark}_read.stdout.log"
    stderr_path = out_root / f"{target.benchmark}_read.stderr.log"
    script_path.write_text(
        "\n".join(
            [
                f"read_lib {rel(args.lib.resolve())}",
                f"read_netlist {rel(target.netlist.resolve())}",
                "report_netlist",
                "exit",
                "",
            ]
        )
    )

    try:
        proc = subprocess.run(
            [str(args.fan_bin), "-f", rel(script_path)],
            cwd=REPO_ROOT,
            capture_output=True,
            text=True,
            timeout=args.timeout_sec,
        )
        stdout_path.write_text(proc.stdout)
        stderr_path.write_text(proc.stderr)
        stderr_has_error = has_real_stderr_error(proc.stderr)
        status = "ok" if proc.returncode == 0 and not stderr_has_error else "failed"
        error = "" if status == "ok" else f"returncode={proc.returncode}; stderr_has_error={stderr_has_error}"
    except subprocess.TimeoutExpired as exc:
        stdout_path.write_text(exc.stdout or "")
        stderr_path.write_text(exc.stderr or "")
        status = "timeout"
        error = f"timeout_sec={args.timeout_sec}"

    return {
        "category": target.category,
        "benchmark": target.benchmark,
        "status": status,
        "error": error,
        "script": rel(script_path),
        "stdout": rel(stdout_path),
        "stderr": rel(stderr_path),
    }


def main() -> int:
    args = parse_args()
    targets = discover_targets(args.phase4_root, args.categories, args.benchmarks)
    if not targets:
        raise RuntimeError("No Phase 4 read-check targets found")

    rows = []
    for idx, target in enumerate(targets, 1):
        print(f"[INFO] read-check {idx}/{len(targets)} {target.category}/{target.benchmark}", flush=True)
        rows.append(run_target(args, target))

    summary_path = args.phase4_root / "results" / "phase4_read_check_summary.csv"
    summary_path.parent.mkdir(parents=True, exist_ok=True)
    with summary_path.open("w", newline="") as handle:
        writer = csv.DictWriter(
            handle,
            fieldnames=["category", "benchmark", "status", "error", "script", "stdout", "stderr"],
        )
        writer.writeheader()
        writer.writerows(rows)

    failed = [row for row in rows if row["status"] != "ok"]
    print(f"[INFO] Wrote summary: {summary_path}")
    print(f"[INFO] Readable: {len(rows) - len(failed)}/{len(rows)}")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
