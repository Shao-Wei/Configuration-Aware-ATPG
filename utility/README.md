# Utility

This folder contains `.py` files that support useful utilities for this project.

    .
    |
    `--. patConvert/
       |
       |-- pat2stil.py    # Convert test pattern file from .pat to STIL format.
       |
       `-- stil2pat.py    # Convert test pattern file from STIL to .pat format.

    .
    `--. mdtLint/
       |
       `-- mdt_lint.py    # Lint MDT primitive widths/support before ATPG runs.

## MDT lint quick usage

Run lint on one MDT file:

`/usr/bin/python3 utility/mdtLint/mdt_lint.py FTL/01_Test_FTL_Cell/mod_nangate45_addon.mdt`

Run lint on multiple MDT files:

`/usr/bin/python3 utility/mdtLint/mdt_lint.py FTL/00_Test_Addon/mod_nangate45_addon.mdt FTL/01_Test_FTL_Cell/mod_nangate45_addon.mdt`

Exit behavior:

- Exit code `0`: no errors (warnings allowed)
- Exit code `1`: one or more lint errors

Recommended workflow:

1. Edit custom cell MDT.
2. Run `mdt_lint.py`.
3. Fix all ERROR findings.
4. Run FAN ATPG scripts.