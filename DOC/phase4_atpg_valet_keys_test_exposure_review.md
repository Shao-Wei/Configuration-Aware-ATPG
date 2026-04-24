# Literature Review Guide for Valet Keys, Test Exposure, and the Safe-Set Gap

Last updated: April 24, 2026

This note covers a different literature-review angle from `phase4_atpg_privacy_leakage_metrics_review.md`.

It should now also be read together with:

- `DOC/phase4_atpg_safe_key_experimental_plan.md`
- `DOC/phase4_atpg_literature_tracker.md`

That first note focuses on privacy models, leakage metrics, and reviewer expectations for a privacy-style formulation.

This note focuses on the more domain-specific question:

`What prior work already exists around valet keys, ATPG/test leakage, testability-based key inference, scan/test exposure, and application-dependent or reconfigurable testing?`

This review is the domain-specific support document for the four-stage plan:

- `Stage 1`: why ordinary ATPG and test artifacts may already leak
- `Stage 2`: why restricted non-golden key testing is plausible
- `Stage 3`: why "safe-set hiding" is more than simply using valet keys
- `Stage 4`: why the safe set itself must be checked for inference leakage

## How to expand this document

This file should stay focused on domain precedent, closest comparisons, and the novelty gap.

For long-term expansion:

- keep per-paper reading notes in `phase4_atpg_literature_tracker.md`,
- keep only the strongest synthesized domain conclusions here,
- and update this file only when a paper changes the precedent story, the threat model, or the novelty claim.

When you finish reading a paper, ask:

1. Is it now one of the closest direct precedents?
2. Does it weaken or strengthen the claimed gap?
3. Does it force a change in how Stages 1-4 should be positioned against prior work?

If yes, update this file with a short synthesis.
If not, leave the detailed note in the tracker.

## High-level read on the literature gap

I did not find a prior paper that matches the full planned experiment pipeline end to end.

What I did find is a strong set of partial precursors:

- valet-key or limited-key testing in logic locking,
- ATPG and test artifacts as an attack surface,
- redundancy and testability effects leaking key information,
- scan/test infrastructure exposure in untrusted test settings,
- and application-dependent or reconfigurable testing analogies.

That is a good sign for your direction:

- the problem is well motivated by existing literature,
- but the exact safe-set and privacy-style evaluation problem still looks fairly open.

## The shortest useful summary

If you want one-sentence positioning:

`Existing work shows that limited-key testing is operationally useful, and that test artifacts can leak key information, but it still does not seem to jointly solve safe non-golden key selection, transcript indistinguishability, and leakage from the safe-key set itself.`

## A. Closest direct precedent: valet keys and limited-key test access

### 1. LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment
- Why it matters: this is the closest paper to your project at the systems level.
- What it contributes: explicit use of valet keys for logic-locking-aware test in an untrusted environment.
- Why it is your anchor paper: it is the clearest precedent for the idea that testing can be done with restricted non-golden keys rather than the golden key itself.
- What your work adds beyond it: a stronger privacy and inference angle. Your plan is not only to use non-golden keys for test, but also to test whether:
  - the released artifacts are distinguishable from golden behavior,
  - the selected safe-key set leaks information about the golden key,
  - and the safe-set construction itself is privacy-aware.
- Link: https://www.researchgate.net/publication/356512772_LL-ATPG_Logic-Locking_Aware_Test_Using_Valet_Keys_in_an_Untrusted_Environment

## B. Why testing and ATPG can leak key information

### 2. ATPG-Guided Fault Injection Attacks on Logic Locking
- Why it matters: directly shows ATPG can become an attack surface against logic locking.
- What it contributes: ATPG-generated patterns are used in a stuck-at-fault-based differential fault style attack to determine the secret key.
- Why it matters for your project: it supports Stage I of your plan, namely proving that testing machinery and its outputs can reveal key information.
- What your work adds beyond it: your setting is ordinary testing output under selected non-golden keys, not fault injection used to actively recover the key.
- Link: https://arxiv.org/abs/2007.10512

### 3. A Comprehensive Test Pattern Generation Approach Exploiting SAT Attack for Logic Locking
- Why it matters: tightly links ATPG, SAT, and key-dependent behavior in one framework.
- What it contributes: uses logic-locking and SAT reasoning to improve test generation and reports perfect fault coverage on benchmark circuits.
- Why it matters for your project: it supports the broader claim that testing and locking are already deeply intertwined.
- What your work adds beyond it: you treat the testing transcript itself as the leakage channel, then ask how to restrict exposed non-golden keys accordingly.
- Link: https://arxiv.org/abs/2204.11307

### 4. Piercing Logic Locking Keys through Redundancy Analysis and Test Pattern Generation
- Why it matters: one of the strongest technical precursors for your concern that the safe set may leak common properties of the golden key.
- What it contributes: uses untestable stuck-at faults, redundancy, and testability effects to infer likely key-bit values.
- Why it matters for your project: it shows that testability artifacts can encode structured information about the key even outside your exact setting.
- What your work adds beyond it: you can motivate not only transcript indistinguishability, but also leakage analysis of the safe-set construction itself.
- Link: https://past.date-conference.com/proceedings-archive/2019/pdf/0889.pdf

### 5. Hardware Protection via Logic Locking Test Points
- Why it matters: this sits directly at the DFT/security boundary.
- What it contributes: shows that test points can be chosen to improve testability while also supporting logic-locking-based protection.
- Why it matters for your project: it is a conceptual predecessor for the claim that testability and security should be co-designed rather than handled separately.
- What your work adds beyond it: you push the co-design story one step further to include privacy of exposed test artifacts and released non-golden keys.
- Link: https://doi.org/10.1109/TCAD.2018.2801240

## C. Why scan and test infrastructure exposure matter

### 6. ScanSAT: Unlocking Obfuscated Scan Chains
- Why it matters: makes the untrusted test and OSAT threat model very explicit.
- What it contributes: shows scan-chain obfuscation can itself be attacked by transforming the problem into a logic-locking problem.
- Why it matters for your project: strong evidence that test infrastructure exposure is already recognized as a vulnerability channel.
- What your work adds beyond it: your channel is broader than scan chains; it includes ATPG outputs, summary statistics, patterns, and selected non-golden test keys.
- Link: https://eprint.iacr.org/2019/005

### 7. RTLock: IP Protection using Scan-Aware Logic Locking at RTL
- Why it matters: another strong test-aware locking paper.
- What it contributes: explicitly treats test generation and limited-key testing as part of the deployment story.
- Why it matters for your project: good evidence that the community already accepts the idea of testing with restricted keys rather than unrestricted golden access.
- What your work adds beyond it: your experiments go beyond enabling limited-key test to evaluating distinguishability, safe-set construction, and inference resistance.
- Link: https://doi.org/10.23919/DATE56975.2023.10137136

## D. Application-dependent testing and restricted exposure analogies

### 8. Application-dependent testing of FPGAs
- Why it matters: this is the historical background for the application-dependent testing idea.
- What it contributes: establishes the broader principle that test strategy can depend on the deployed design or configuration.
- Why it matters for your project: your safe-key idea has the same flavor, namely a curated testing policy chosen for a specific deployed setting rather than a universal unrestricted policy.
- Link: https://dblp.org/rec/conf/fpga/Tahoori03a
- Citation note: the often-cited "application-dependent testing" literature is a line of FPGA work spanning at least 2003, 2004, and 2007. The exact source attached in the original list appears to point to a related later paper rather than this foundational conference item.

### 9. A Multi-Configuration Strategy for an Application Dependent Testing of FPGAs
- Why it matters: extends the application-dependent testing idea in a way that is conceptually close to restricted configuration exposure.
- What it contributes: shows that testing can depend on how a design is configured, not just on a generic device-level test model.
- Why it matters for your project: helpful analogy for arguing that limited testing access policies are not unnatural; they are already part of specialized test methodology.
- Link: https://dblp.org/rec/conf/vts/TahooriMRF04

### 10. A Single-Configuration Method for Application-Dependent Testing of SRAM-based FPGA Interconnects
- Why it matters: more specific than the core logic-locking papers, but useful for the application-conditioned testing analogy.
- What it contributes: optimizes testing for a specific SRAM-based FPGA interconnect configuration.
- Why it matters for your project: helps justify the claim that once testing is conditioned on an application or configuration, it is natural to ask whether the chosen policy leaks hidden information.
- Link: https://dblp.org/rec/conf/ats/AlmuribKL11
- Citation note: the original list referenced a 2013 heuristic paper through an author page, but this 2011 paper is a clean, directly citable item in the same application-dependent FPGA testing line.

## E. Reconfigurable obfuscation and eFPGA analogies

### 11. Hardware Redaction via Designer-Directed Fine-Grained eFPGA Insertion
- Why it matters: relevant for the reconfigurable-obfuscation branch of your broader agenda.
- What it contributes: uses eFPGA redaction to conceal critical IP and evaluates security against SAT-style reasoning.
- Why it matters for your project: the same safe-key privacy question is likely to reappear when the hidden secret becomes a configuration or bitstream rather than a simple locking key.
- Link: https://doi.org/10.23919/DATE51398.2021.9473910
- Citation correction: the exact title uses `Insertion`, not `Replacement`.

### 12. FuncTeller: How Well Does eFPGA Hide Functionality?
- Why it matters: challenges the assumption that eFPGAs are automatically secure.
- What it contributes: shows that when the protection substrate changes, classical attacks may fail, but new attack models can emerge.
- Why it matters for your project: a strong reminder that when the attack model changes, the leakage channel often changes too. In your case that channel may be testing artifacts under selected keys or configurations rather than just structure.
- Link: https://www.usenix.org/conference/usenixsecurity23/presentation/han-zhaokun

## F. Security metrics and broader positioning

### 13. Measuring Security Metrics of Locked Circuits with Test
- Why it matters: one of the few works that explicitly puts security metrics and test into the same frame.
- What it contributes: discusses locked-circuit security properties in relation to test, including behavior under incorrect keys.
- Why it matters for your project: useful adjacent support for defining a safe set partly in terms of how golden-like or non-corrupting its testing behavior is.
- Link: https://dblp.org/rec/phd/us/Duvalsaint23

### 14. Logic Locking at the Frontiers of Machine Learning
- Why it matters: useful primarily as a positioning survey.
- What it contributes: shows that newer attacks increasingly exploit subtle behavioral or structural cues beyond older attack assumptions.
- Why it matters for your project: supports your motivation for moving from raw attack-accuracy language toward a privacy-style formulation of test outputs and safe-key exposure.
- Link: https://arxiv.org/abs/2107.01915

## What these papers say about your gap

The literature now looks fairly cleanly divisible into four roles:

### 1. Closest direct precedent
- `LL-ATPG` is the operational anchor for valet keys and untrusted testing.

### 2. Why testing can leak
- `ATPG-Guided Fault Injection Attacks on Logic Locking`
- `Piercing Logic Locking Keys through Redundancy Analysis and Test Pattern Generation`
- `ScanSAT`

These papers justify the claim that test artifacts, testability properties, and test infrastructure can reveal key information.

### 3. Why restricted key or configuration exposure is plausible
- `LL-ATPG`
- `RTLock`
- `Application-dependent FPGA testing`
- `Hardware redaction / eFPGA` papers

These papers support the idea that limited exposure policies are a legitimate design choice rather than an artificial experiment.

### 4. What still seems open
What still seems missing is a paper that jointly does all of the following:

- demonstrates distinguishability or leakage from ordinary testing outputs,
- constructs a behaviorally close safe non-golden key set,
- argues why the chosen safe set is operationally useful,
- and then tests whether the safe set itself leaks the golden key.

That is the gap your project appears to target.

## Likely weak spots this literature suggests you should address

This second literature track exposes a slightly different set of risks than the privacy-metrics note.

### 1. You need to separate transcript leakage from safe-set leakage
The literature already supports the idea that test artifacts can leak.

Your stronger claim is harder:

- not only can transcripts leak,
- but the curated set of released non-golden keys may itself leak information.

That distinction should be very explicit.

### 2. "Valet key" alone is not enough as novelty
If your story is framed only as "we use restricted non-golden test keys," that may sound too close to LL-ATPG.

Your novelty is stronger if framed as:

- safe-key construction under privacy constraints,
- transcript indistinguishability testing,
- and leakage analysis of the set itself.

### 3. You should probably discuss the untrusted tester and OSAT model explicitly
The scan-locking literature makes that threat model concrete.

If your paper uses that model implicitly, say so directly:

- what the tester receives,
- what netlist or benchmark information they know,
- whether they choose queries adaptively,
- and whether they observe multiple runs.

### 4. You should distinguish ordinary testing from active attacks
Some prior work uses fault injection or strong SAT-style reasoning.

That helps motivate your problem, but your exact contribution is stronger if you say:

- these papers show test machinery can leak,
- while our work studies whether even ordinary released testing artifacts under restricted keys leak.

### 5. The application-dependent analogy is useful but should stay secondary
The FPGA application-dependent testing literature is helpful for intuition, but it is not your main precedent.

Your main direct precedents are:

- LL-ATPG,
- testability-based key inference,
- and scan/test exposure papers.

Use the FPGA line as supporting analogy, not as your main proof of novelty.

## Recommended use in your literature review section

A clean way to structure this aspect of the review is:

1. `Closest direct precedent`
   LL-ATPG and RTLock establish that limited-key or valet-key testing is a real design scenario.

2. `Why test artifacts are dangerous`
   ATPG-guided attacks, redundancy/testability inference, and ScanSAT establish that test machinery can reveal key information.

3. `Why restricted exposure is methodologically plausible`
   Application-dependent testing and eFPGA/redaction papers show that specialized, restricted, deployment-aware testing policies are normal in adjacent settings.

4. `Open gap`
   Prior work still does not seem to jointly address transcript leakage, safe-set construction, and leakage from the safe set itself.

## Bottom line

This literature track supports a strong gap statement:

`The community already has valet-key style testing and already knows that testing artifacts can leak. What appears to remain open is how to construct and validate a restricted non-golden safe-key set whose use and release do not themselves reveal the golden key.`

## What this review must answer for the experimental plan

To strengthen `phase4_atpg_safe_key_experimental_plan.md`, this literature track should answer the following.

### Questions the paper must answer clearly
- What is the closest direct precedent for restricted-key testing, and how is this project different?
- Which prior papers already show that ATPG, testability, scan access, or test infrastructure can leak key information?
- Which analogies are central and which are only supporting context?
- Where exactly is the novelty gap once LL-ATPG, RTLock, ScanSAT, and testability-based attacks are acknowledged?

### What needs to be read and understood for Stage 1
- The strongest prior evidence that ATPG and testing can be exploited as an attack surface.
  Read `ATPG-Guided Fault Injection Attacks on Logic Locking` (https://arxiv.org/abs/2007.10512), `Piercing Logic Locking Keys through Redundancy Analysis and Test Pattern Generation` (https://past.date-conference.com/proceedings-archive/2019/pdf/0889.pdf), and `ScanSAT: Unlocking Obfuscated Scan Chains` (https://eprint.iacr.org/2019/005).
- How prior work distinguishes ordinary testing from active attacks like fault injection or SAT-assisted recovery.
  Read `ATPG-Guided Fault Injection Attacks on Logic Locking` (https://arxiv.org/abs/2007.10512) and `A Comprehensive Test Pattern Generation Approach Exploiting SAT Attack for Logic Locking` (https://arxiv.org/abs/2204.11307).
- What kinds of testing artifacts are already known to be dangerous.
  Read `Piercing Logic Locking Keys through Redundancy Analysis and Test Pattern Generation` (https://past.date-conference.com/proceedings-archive/2019/pdf/0889.pdf), `ScanSAT: Unlocking Obfuscated Scan Chains` (https://eprint.iacr.org/2019/005), and `Hardware Protection via Logic Locking Test Points` (https://doi.org/10.1109/TCAD.2018.2801240).

### What needs to be read and understood for Stage 2
- How valet-key and limited-key testing are operationalized in the literature.
  Read `LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment` (https://www.researchgate.net/publication/356512772_LL-ATPG_Logic-Locking_Aware_Test_Using_Valet_Keys_in_an_Untrusted_Environment) and `RTLock: IP Protection using Scan-Aware Logic Locking at RTL` (https://doi.org/10.23919/DATE56975.2023.10137136).
- What utility arguments prior work uses when restricting key access.
  Read `LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment` (same link above), `Hardware Protection via Logic Locking Test Points` (https://doi.org/10.1109/TCAD.2018.2801240), and `A Comprehensive Test Pattern Generation Approach Exploiting SAT Attack for Logic Locking` (https://arxiv.org/abs/2204.11307).
- Why your safe-set construction is not just "another valet key" proposal, but a privacy-aware selection mechanism.
  Read `LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment` (same link above), then contrast it with `phase4_atpg_privacy_leakage_metrics_review.md`, especially the papers `Mutual Information Analysis` (https://doi.org/10.1007/978-3-540-85053-3_27) and `The Side-Channel Metrics Cheat Sheet` (https://eprint.iacr.org/2022/253).

### What needs to be read and understood for Stage 3
- What would count as a convincing improvement over the closest valet-key papers.
  Read `LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment` (https://www.researchgate.net/publication/356512772_LL-ATPG_Logic-Locking_Aware_Test_Using_Valet_Keys_in_an_Untrusted_Environment) and `RTLock: IP Protection using Scan-Aware Logic Locking at RTL` (https://doi.org/10.23919/DATE56975.2023.10137136), then ask what they do not evaluate about transcript leakage.
- Why behaviorally close non-golden keys are the right negative class once arbitrary non-golden keys are known to be too easy.
  Read `Piercing Logic Locking Keys through Redundancy Analysis and Test Pattern Generation` (https://past.date-conference.com/proceedings-archive/2019/pdf/0889.pdf), `Hardware Protection via Logic Locking Test Points` (https://doi.org/10.1109/TCAD.2018.2801240), and `LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment` (same link above).
- How to explain that transcript hiding is the experimental bridge from operational key restriction to privacy language.
  Read `LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment` (same link above) together with the metric-oriented papers in `phase4_atpg_privacy_leakage_metrics_review.md`, especially `The Side-Channel Metrics Cheat Sheet` (https://eprint.iacr.org/2022/253).

### What needs to be read and understood for Stage 4
- Which prior papers suggest that structural or testability artifacts can encode common properties of the golden key.
  Read `Piercing Logic Locking Keys through Redundancy Analysis and Test Pattern Generation` (https://past.date-conference.com/proceedings-archive/2019/pdf/0889.pdf), `ScanSAT: Unlocking Obfuscated Scan Chains` (https://eprint.iacr.org/2019/005), and `Measuring Security Metrics of Locked Circuits with Test` (https://dblp.org/rec/phd/us/Duvalsaint23).
- Why safe-set leakage is a separate risk from transcript leakage.
  Read `LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment` (https://www.researchgate.net/publication/356512772_LL-ATPG_Logic-Locking_Aware_Test_Using_Valet_Keys_in_an_Untrusted_Environment) for the operational testing story, then contrast it with `Piercing Logic Locking Keys through Redundancy Analysis and Test Pattern Generation` (https://past.date-conference.com/proceedings-archive/2019/pdf/0889.pdf), which suggests key information can leak through structural/testability regularities.
- How to justify baseline comparisons such as random sets, utility-qualified sets, and behaviorally close but non-diverse sets.
  Read `Measuring Security Metrics of Locked Circuits with Test` (https://dblp.org/rec/phd/us/Duvalsaint23), `Hardware Protection via Logic Locking Test Points` (https://doi.org/10.1109/TCAD.2018.2801240), and `Logic Locking at the Frontiers of Machine Learning` (https://arxiv.org/abs/2107.01915).

### What this review contributes to the paper
- the closest domain precedents,
- the practical motivation for why testing exposure matters,
- and the clearest statement of the open gap that the four-stage plan is trying to fill.
