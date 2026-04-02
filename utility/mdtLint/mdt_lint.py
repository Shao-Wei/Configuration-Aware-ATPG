#!/usr/bin/env python3
"""
MDT primitive linter for FAN ATPG custom-cell addon files.

Checks:
1) Primitive name is in known set.
2) Primitive fanin width is supported for ATPG/sim flow.
3) Warn on primitives that are parsed but not recommended for ATPG.

Usage:
    python3 utility/mdtLint/mdt_lint.py <mdt_file> [<mdt_file> ...]
"""

import argparse
import pathlib
import re
import sys


# Practical ATPG/sim-supported primitive fanin widths.
SUPPORTED_FANIN = {
    "_and": {2, 3, 4},
    "_nand": {2, 3, 4},
    "_or": {2, 3, 4},
    "_nor": {2, 3, 4},
    "_xor": {2, 3},
    "_xnor": {2, 3},
    "_inv": {1},
    "_buf": {1},
    "_tie1": {0},
    "_tie0": {0},
}

# Parsed by MDT builder but not generally reliable/recommended in this ATPG flow.
PARSED_NOT_RECOMMENDED = {
    "_bufz",
    "_tsl", "_tsli", "_tsh", "_tshi",
    "_mux",
    "_dff", "_dlat", "_delay",
    "_wire", "_pull",
    "_undefined",
    "_nmos", "_pmos", "_rnmos", "_rpmos", "_nmosf", "_pmosf",
    "_cmos1", "_cmos2", "_rcmos1", "_rcmos2", "_cmos1f", "_cmos2f",
    "_tiez", "_tiex",
}

# Full primitive set accepted by mdt parser/builder in this repository.
KNOWN_PARSER_PRIMITIVES = set(SUPPORTED_FANIN.keys()) | PARSED_NOT_RECOMMENDED


class Issue(object):
    def __init__(self, level, file_path, line, msg):
        self.level = level  # ERROR / WARN
        self.file = file_path
        self.line = line
        self.msg = msg


PRIMITIVE_START_RE = re.compile(r"\bprimitive\s*=", re.IGNORECASE)
PRIMITIVE_FULL_RE = re.compile(
    r"primitive\s*=\s*(?P<ptype>_[A-Za-z0-9]+)\s+(?:(?P<pname>[A-Za-z0-9_]+)\s+)?\((?P<args>.*?)\)\s*;",
    re.IGNORECASE | re.DOTALL,
)


def split_args(arg_text):
    return [a.strip() for a in arg_text.split(",") if a.strip()]


def lint_primitive(ptype, args, path, line):
    issues = []
    ptype = ptype.lower()

    if ptype not in KNOWN_PARSER_PRIMITIVES:
        issues.append(Issue("ERROR", path, line, f"unknown primitive `{ptype}` (not recognized by MDT builder)"))
        return issues

    fanin = max(len(args) - 1, 0)

    if ptype in SUPPORTED_FANIN:
        allowed = SUPPORTED_FANIN[ptype]
        if fanin not in allowed:
            issues.append(
                Issue(
                    "ERROR",
                    path,
                    line,
                    f"`{ptype}` fanin={fanin} unsupported for ATPG/sim flow; allowed fanin={sorted(allowed)}",
                )
            )
    elif ptype in PARSED_NOT_RECOMMENDED:
        issues.append(
            Issue(
                "WARN",
                path,
                line,
                f"`{ptype}` is parsed by MDT builder but not recommended/fully supported in ATPG sim path",
            )
        )

    return issues


def lint_file(path):
    issues = []
    text = path.read_text(encoding="utf-8", errors="replace")
    lines = text.splitlines()

    i = 0
    while i < len(lines):
        line = lines[i]
        if not PRIMITIVE_START_RE.search(line):
            i += 1
            continue

        start_line = i + 1
        stmt = line
        while ";" not in stmt and i + 1 < len(lines):
            i += 1
            stmt += "\n" + lines[i]

        m = PRIMITIVE_FULL_RE.search(stmt)
        if not m:
            issues.append(Issue("ERROR", path, start_line, "malformed primitive statement"))
            i += 1
            continue

        ptype = m.group("ptype")
        args = split_args(m.group("args"))
        if len(args) == 0:
            issues.append(Issue("ERROR", path, start_line, f"`{ptype}` has empty port list"))
        else:
            issues.extend(lint_primitive(ptype, args, path, start_line))

        i += 1

    return issues


def main():
    parser = argparse.ArgumentParser(description="Lint MDT primitive usage for FAN ATPG practical support limits")
    parser.add_argument("files", nargs="+", help="MDT files to lint")
    args = parser.parse_args()

    all_issues = []
    for f in args.files:
        p = pathlib.Path(f)
        if not p.exists():
            all_issues.append(Issue("ERROR", p, 0, "file not found"))
            continue
        if p.is_dir():
            all_issues.append(Issue("ERROR", p, 0, "is a directory, expected MDT file"))
            continue
        all_issues.extend(lint_file(p))

    errors = [x for x in all_issues if x.level == "ERROR"]
    warns = [x for x in all_issues if x.level == "WARN"]

    for it in all_issues:
        loc = f"{it.file}:{it.line}" if it.line > 0 else f"{it.file}"
        print(f"[{it.level}] {loc}: {it.msg}")

    if not all_issues:
        print("[OK] No lint issues found")

    print(f"Summary: errors={len(errors)} warnings={len(warns)}")
    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
