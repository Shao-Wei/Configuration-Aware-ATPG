#!/usr/bin/env python3

import argparse
import re
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[3]
PHASE4_ROOT = REPO_ROOT / "FTL" / "04_Phase4_ATPG"
DEFAULT_CATEGORIES = ["dirL0", "dirL5", "dirL7", "dirL9", "dirL11"]
FTL_MODEL_RE = re.compile(r"\b(FTL_FUNC_[A-Za-z0-9_]+)\b")
MODEL_RE = re.compile(r"^model\s+(\S+)\s*$")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Build the Phase 4 ATPG library from the generated FTL MDT."
    )
    parser.add_argument("--phase4-root", type=Path, default=PHASE4_ROOT)
    parser.add_argument("--categories", nargs="*", default=DEFAULT_CATEGORIES)
    parser.add_argument(
        "--base-lib",
        type=Path,
        default=REPO_ROOT / "techlib" / "mod_nangate45.mdt",
    )
    parser.add_argument(
        "--full-ftl-lib",
        type=Path,
        default=PHASE4_ROOT / "lib" / "ftl_functions.mdt",
    )
    parser.add_argument(
        "--subset-ftl-lib",
        type=Path,
        default=PHASE4_ROOT / "lib" / "ftl_functions_dirL_subset.mdt",
    )
    parser.add_argument(
        "--combined-lib",
        type=Path,
        default=PHASE4_ROOT / "lib" / "mod_nangate45_plus_ftl_dirL_subset.mdt",
    )
    return parser.parse_args()


def collect_used_models(phase4_root: Path, categories: list[str]) -> set[str]:
    used: set[str] = set()
    for category in categories:
        netlist_dir = phase4_root / "netlists" / category
        for netlist in sorted(netlist_dir.glob("*_mixed_SYN.v")):
            used.update(FTL_MODEL_RE.findall(netlist.read_text(errors="replace")))
    if not used:
        raise RuntimeError("No FTL_FUNC_* instances found in the selected netlists")
    return used


def extract_model_blocks(full_ftl_lib: Path, used_models: set[str]) -> tuple[list[str], set[str]]:
    blocks: list[str] = []
    found: set[str] = set()
    pending_comments: list[str] = []
    current_model = ""
    current_block: list[str] = []

    for line in full_ftl_lib.read_text(errors="replace").splitlines(keepends=True):
        model_match = MODEL_RE.match(line.strip())
        if model_match:
            if current_model in used_models:
                blocks.append("".join(current_block))
                found.add(current_model)
            current_model = model_match.group(1)
            current_block = [*pending_comments, line]
            pending_comments = []
            continue

        if current_model:
            current_block.append(line)
        elif line.startswith("// FTL_FUNC_"):
            pending_comments = [line]
        else:
            pending_comments = []

    if current_model in used_models:
        blocks.append("".join(current_block))
        found.add(current_model)

    return blocks, found


def write_outputs(args: argparse.Namespace, used_models: set[str], blocks: list[str]) -> None:
    args.subset_ftl_lib.parent.mkdir(parents=True, exist_ok=True)
    header = "\n".join(
        [
            "// -------------------------------------------------------------------//",
            "// Phase 4 FTL MDT subset",
            f"// Source MDT: {args.full_ftl_lib}",
            f"// Selected FTL models: {len(used_models)}",
            "// -------------------------------------------------------------------//",
            "",
        ]
    )
    args.subset_ftl_lib.write_text(header + "\n".join(block.rstrip() for block in blocks) + "\n")

    base_text = args.base_lib.read_text(errors="replace").rstrip()
    subset_text = args.subset_ftl_lib.read_text(errors="replace").rstrip()
    args.combined_lib.write_text(
        f"{base_text}\n\n"
        "// -------------------------------------------------------------------//\n"
        "// Phase 4 FTL addon subset, extracted from the full Phase 1 MDT\n"
        "// -------------------------------------------------------------------//\n\n"
        f"{subset_text}\n"
    )


def main() -> int:
    args = parse_args()
    used_models = collect_used_models(args.phase4_root, args.categories)
    blocks, found = extract_model_blocks(args.full_ftl_lib, used_models)
    missing = sorted(used_models - found)
    if missing:
        preview = ", ".join(missing[:10])
        raise RuntimeError(f"Missing {len(missing)} FTL model(s) from {args.full_ftl_lib}: {preview}")

    write_outputs(args, used_models, blocks)
    print(f"[INFO] Selected FTL models: {len(used_models)}")
    print(f"[INFO] Wrote subset FTL MDT: {args.subset_ftl_lib}")
    print(f"[INFO] Wrote combined ATPG MDT: {args.combined_lib}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
