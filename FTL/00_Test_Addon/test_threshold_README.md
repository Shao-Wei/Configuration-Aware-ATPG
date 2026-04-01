# test_threshold — small ATPG test for THRESHOLD_0

Date: 2026-03-30
Author: Shao-Wei Chu

Purpose
-------
This directory-level README documents the small end-to-end ATPG test that verifies an additional technology library (MDT) addon which defines the THRESHOLD_0 cell (logical OR of A, B, C).

What was added
--------------
- `mod_nangate45_addon.mdt` — MDT addon that declares the `THRESHOLD_0` model using the `_or` primitive (Y = A + B + C).
- `threshold_test.v` — simple Verilog netlist instantiating `THRESHOLD_0` as the device under test.
- `test_threshold.script` — small script that loads the base MDT and the addon MDT, reads the netlist, builds the circuit, runs ATPG and writes reports/patterns.

Why this is useful
------------------
This tiny test verifies that:

- The MDT parser accepts and loads an additional MDT file placed alongside the existing library.
- The ATPG tool recognizes and binds the `THRESHOLD_0` cell from the addon to an instance in a netlist.
- Fault generation and pattern writing work for a netlist that contains a custom cell defined in an addon MDT.

How to run the test
-------------------
1. Build the project (if not already built):

   make

2. Run the ATPG test script:

   ./bin/opt/fan -f FTL/00_Test_Addon/test_threshold.script

3. Inspect the outputs:

   - Report: `rpt/threshold_test.rpt`
   - Pattern file: `pat/threshold_test.pat`
   - STIL file: `pat/threshold_test.stil`

Notes / Implementation details
------------------------------
- The addon MDT uses the `_or` primitive so the existing `MdtLibBuilder` will parse it without any parser changes.
- The script uses two `read_lib` lines (one per MDT file). This is functionally equivalent to supporting multiple filenames on a single `read_lib` line.
- Model name in the MDT and the type used in the netlist must match exactly (`THRESHOLD_0`). The MDT uses `model THRESHOLD_0 (...)` and the Verilog instantiates `THRESHOLD_0 U1 (...)`.

Troubleshooting
---------------
- If the run fails with a library parsing error, try running ATPG with increased verbosity (if available) or inspect console output for parse warnings. The parser code lives under `pkg/interface/src/` (see `mdt_file.cpp` / `techlib_builder.cpp`).
- If the netlist cannot bind the instance type to a library model, confirm the model name matches and that the addon MDT is readable (correct path and permissions).

Suggested next steps
---------------------
- Add an automated CI job or a simple `make check` target that runs this script to prevent regressions when modifying the MDT parser or techlib handling.
- Add a second addon MDT that defines the same cell using primitive composition (e.g. `_or` instantiated via smaller primitives) to ensure other parsing styles are accepted.
