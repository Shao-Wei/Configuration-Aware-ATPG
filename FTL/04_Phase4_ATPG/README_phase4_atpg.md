# Phase 4 ATPG Run

This directory is the maintained ATPG-side workflow for testing the Phase 1 FTL
MDT library against the Phase 3 patched mixed circuits.

## Scope

Phase 4 currently runs only the Nangate-compatible Phase 3 categories:

- `dirL0`
- `dirL5`
- `dirL7`
- `dirL9`
- `dirL11`

The `dirN3`, `dirN4`, and `dirN5` categories are intentionally excluded because
their Design Compiler outputs contain unresolved `*MA10TR` standard-cell names.

## Inputs

- FTL addon MDT copied from the FTL repo:
  - `FTL/04_Phase4_ATPG/lib/ftl_functions.mdt`
- Full combined ATPG library, kept for reference:
  - `FTL/04_Phase4_ATPG/lib/mod_nangate45_plus_ftl.mdt`
- DirL subset library used by the scripts:
  - `FTL/04_Phase4_ATPG/lib/ftl_functions_dirL_subset.mdt`
  - `FTL/04_Phase4_ATPG/lib/mod_nangate45_plus_ftl_dirL_subset.mdt`
- Mixed netlists copied from FTL Phase 3:
  - `FTL/04_Phase4_ATPG/netlists/<category>/<benchmark>_mixed_SYN.v`

The copied MDT and netlists make this ATPG phase reproducible from the
`Configuration-Aware-ATPG/` repo without depending on the sibling `FTL/` repo at
run time.

The ATPG `read_lib` command owns a single active technology library at a time,
so the Nangate and FTL MDTs must be merged into one MDT before reading netlists.
The full 94,570-function FTL MDT is preserved here, but loading the full
Nangate+FTL combined MDT caused `fan` to segfault in the first smoke run on this
machine. The maintained flow therefore extracts the FTL models actually used by
the selected `dirL*` netlists from the full generated MDT, then concatenates
that subset with `techlib/mod_nangate45.mdt`. For the current inputs this subset
contains 807 FTL models.

## How to Run

From the `Configuration-Aware-ATPG/` repo root:

```bash
bash FTL/04_Phase4_ATPG/scripts/run_dirL_all.sh
```

To run a small smoke test:

```bash
python3 FTL/04_Phase4_ATPG/scripts/run_phase4_atpg.py \
  --categories dirL0 \
  --benchmarks c1908
```

Each target generates an ATPG command script under its result directory, then
runs:

```text
read_lib FTL/04_Phase4_ATPG/lib/mod_nangate45_plus_ftl_dirL_subset.mdt
read_netlist FTL/04_Phase4_ATPG/netlists/<category>/<benchmark>_mixed_SYN.v
build_circuit --frame 1
set_fault_type saf
add_fault --all
set_static_compression on
set_dynamic_compression on
set_X-Fill on
run_atpg
report_statistics > ...
write_pattern ...
write_to_STIL ...
```

## Outputs

For each `<category>/<benchmark>`, the flow writes:

- `<benchmark>.script`
- `<benchmark>.stdout.log`
- `<benchmark>.stderr.log`
- `<benchmark>.rpt`
- `<benchmark>.pat`
- `<benchmark>.stil`

The aggregate CSV is:

- `FTL/04_Phase4_ATPG/results/phase4_summary.csv`

The summary captures run status, coverage, pattern count, runtime, and fault
class counts parsed from ATPG `report_statistics`.

## Observations

The clean Phase 4 batch was run from the ATPG repo root with:

```bash
bash FTL/04_Phase4_ATPG/scripts/run_dirL_all.sh
```

The run generated `FTL/04_Phase4_ATPG/results/phase4_summary.csv` for 115
targets. Results split into two groups:

- 49 targets completed ATPG successfully.
- 66 targets failed before ATPG because `read_netlist` rejected the patched
  netlist connectivity.

Successful ATPG targets had strong coverage:

- Average test coverage: 99.95%.
- Minimum test coverage: 99.54%.
- Average fault coverage: 98.81%.
- Minimum fault coverage: 94.25%.
- ATPG effectiveness average: 99.95%.
- Pattern count range: 15 to 546 patterns.
- Total patterns across successful targets: 6,656.

Successful targets by category:

- `dirL0`: 6 of 23, average fault coverage 97.82%, 418 total patterns.
- `dirL5`: 8 of 23, average fault coverage 97.69%, 571 total patterns.
- `dirL7`: 9 of 23, average fault coverage 98.04%, 1,000 total patterns.
- `dirL9`: 12 of 23, average fault coverage 99.54%, 1,960 total patterns.
- `dirL11`: 14 of 23, average fault coverage 99.75%, 2,707 total patterns.

Representative successful targets include `c1908`, `c6288`, `filter`, `s208`,
`s35932`, and `s38417` across multiple categories. The larger successful
`b17_C` runs in `dirL9` and `dirL11` completed with 99.90% fault coverage and
546 patterns.

The 66 failed targets all returned code 0 from `fan`, but emitted real stderr
errors and produced no statistics report. Representative failures such as
`dirL0/b14_C` and `dirL0/c5315` show:

```text
**ERROR ReadNlCmd()::exec(): netlist error
**ERROR ReportNetlistCmd::exec(): netlist needed
**WARN ReportStatsCmd::exec(): no statistics
```

Running `read_netlist -v` on `dirL0/b14_C` reports many floating/no-driver nets,
for example `n1002`, `n1010`, and `1'b1`. This means the immediate blocker is
the Phase 3 patchback netlist connectivity for those designs, not ATPG coverage
quality on valid mixed circuits.

Two ATPG-side fixes were required during this phase:

- `pkg/core/src/circuit.cpp` now ignores sibling primitive input pins when
  resolving fanins on an internal library-cell net. Before this fix, internal
  fanout inside multi-primitive FTL cells could create bogus fanins from PI 0
  and crash `run_atpg`.
- `pkg/core/src/circuit.cpp` now computes `circuitLvl_` from the maximum level
  across all created combinational primitive gates. Before this fix, a
  multi-primitive final cell could give POs an artificially low level.

Known environmental warning:

- On macOS, `fan` repeatedly emits `**ERROR TmUsage::checkUsage(): cannot get
  memory usage`. The Phase 4 runner ignores this specific line because existing
  ATPG examples also emit it while completing successfully.

## Next Steps

For coverage/pattern quality, the successful runs are encouraging: coverage is
high and pattern counts are moderate for the tested valid circuits. The next
work should focus on making the remaining 66 patched netlists valid:

- Fix Phase 3 patchback connectivity for the failed targets with floating or
  no-driver nets.
- Add a Phase 3 or Phase 4 preflight check that runs `read_netlist -v` or an
  equivalent connectivity checker before ATPG.
- Re-run Phase 4 after the patchback fixes; then compare coverage and pattern
  counts against the current 49-run baseline.
- Investigate the ATPG full-MDT load scalability separately, because the subset
  MDT proves the used FTL models can run but does not resolve the full
  94,570-model library load issue.
