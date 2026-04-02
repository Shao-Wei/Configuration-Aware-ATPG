# FTL/01_Test_FTL_Cell — THRESHOLD custom-cell ATPG notes

This folder now keeps only the minimal working custom-cell experiments:

- `min_thr1.v` with `THRESHOLD_1`
- `min_thr2.v` with `THRESHOLD_2`
- scripts:
  - `test_threshold_min_thr1.script`
  - `test_threshold_min_thr2.script`
- results under `pat/` and `rpt/` for those two scripts

---

## Root cause found

`THRESHOLD_1` originally used a 5-input primitive OR:

- `primitive = _or (..., 5 inputs ..., Y);`

In this codebase, ATPG/simulation supports OR up to **4 inputs** only.
That overflow path was mapped to `Gate::NA`, which propagated X values,
so reverse fault simulation (STC) could not detect/drop faults correctly.

---

## Fixes applied

### 1) `pkg/core/src/circuit.cpp`

In `Circuit::determineGateType(...)`, primitive width mapping now uses:

- `pmt->getNPort()` (correct)

instead of:

- `cell->getNPort()` (incorrect for composite custom cells)

This is the key functional fix outside `FTL/`.

### 2) `FTL/01_Test_FTL_Cell/mod_nangate45_addon.mdt`

`THRESHOLD_1` was decomposed to supported OR arities:

- OR4 + OR2 instead of OR5.

### 3) Final minimal-change audit

After cleanup/review, the **only required core code change** is in:

- `pkg/core/src/circuit.cpp`

Temporary debugging edits that had been introduced in:

- `pkg/core/src/atpg.cpp`
- `pkg/core/src/simulator.cpp`
- `pkg/fan/src/atpg_cmd.cpp`

were removed and those files were restored to normal behavior.

---

## Primitive width support matrix (practical ATPG/sim support)

The MDT parser accepts many primitive names, but ATPG/sim support is narrower.
Use this table when writing addon MDTs.

### Fully usable for ATPG in this flow

- `_and`: 2, 3, 4 inputs
- `_nand`: 2, 3, 4 inputs
- `_or`: 2, 3, 4 inputs
- `_nor`: 2, 3, 4 inputs
- `_xor`: 2, 3 inputs
- `_xnor`: 2, 3 inputs
- `_inv`: 1 input
- `_buf`: 1 input
- `_tie1`: constant source
- `_tie0`: constant source

### Parsed but not recommended for this ATPG flow (limited/unsupported in core sim path)

- `_bufz`
- `_tsl`, `_tsli`, `_tsh`, `_tshi`
- `_mux`
- `_dff`, `_dlat`, `_delay`
- `_wire`, `_pull`
- `_undefined`
- `_nmos`, `_pmos`, `_rnmos`, `_rpmos`, `_nmosf`, `_pmosf`
- `_cmos1`, `_cmos2`, `_rcmos1`, `_rcmos2`, `_cmos1f`, `_cmos2f`
- `_tiez`
- `_tiex` (mapped as TIE0 in current code; do not rely on TIEX semantics)

> Practical rule: for custom combinational ATPG cells, stay within
> `_and/_nand/_or/_nor` up to 4 inputs, `_xor/_xnor` up to 3 inputs,
> and `_inv/_buf/_tie0/_tie1`.

---

## How to run

From repository root:

`./bin/opt/fan -f FTL/01_Test_FTL_Cell/test_threshold_min_thr1.script`

`./bin/opt/fan -f FTL/01_Test_FTL_Cell/test_threshold_min_thr2.script`

---

## How to make future passes "remember" width limits

Use a repeatable repo workflow:

1. Keep this file as the single source of truth for primitive limits.
2. In prompts / task descriptions, explicitly say:
   - "Follow `FTL/01_Test_FTL_Cell/test_threshold_README.md` primitive width limits."
3. Add review checklist item before running ATPG:
   - no gate exceeds supported fanin width.
4. If desired, add a lightweight MDT lint script later to auto-fail unsupported widths.

This gives persistence across sessions and across different assistants.

---

## MDT lint tool (now available)

You can now validate custom MDT files before ATPG:

`python3 utility/mdtLint/mdt_lint.py FTL/01_Test_FTL_Cell/mod_nangate45_addon.mdt`

Multiple files are supported:

`python3 utility/mdtLint/mdt_lint.py FTL/00_Test_Addon/mod_nangate45_addon.mdt FTL/01_Test_FTL_Cell/mod_nangate45_addon.mdt`

Behavior:

- exits non-zero if there are **ERROR** findings
- exits zero if only warnings/no issues

Recommended workflow:

1. Edit/add custom cell in MDT.
2. Run `mdt_lint.py` on the edited MDT.
3. Fix all ERRORs (and review WARNs).
4. Then run FAN ATPG scripts.

### Copy/paste workflow (recommended)

Run lint on one MDT:

`/usr/bin/python3 utility/mdtLint/mdt_lint.py FTL/01_Test_FTL_Cell/mod_nangate45_addon.mdt`

Run lint on both addon MDTs:

`/usr/bin/python3 utility/mdtLint/mdt_lint.py FTL/00_Test_Addon/mod_nangate45_addon.mdt FTL/01_Test_FTL_Cell/mod_nangate45_addon.mdt`

Then run ATPG only after lint is clean:

`./bin/opt/fan -f FTL/01_Test_FTL_Cell/test_threshold_min_thr1.script`

`./bin/opt/fan -f FTL/01_Test_FTL_Cell/test_threshold_min_thr2.script`
