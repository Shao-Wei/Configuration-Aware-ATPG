# Literature Tracker for the Safe-Key ATPG Project

Last updated: April 24, 2026

This document is the recommended place to grow the literature review over time.

The two review notes in `DOC/` are useful as narrative overviews:

- `phase4_atpg_privacy_leakage_metrics_review.md`
- `phase4_atpg_valet_keys_test_exposure_review.md`

But if you expect to read more papers and keep updating the project, the best structure is:

1. keep the two review notes as curated narrative summaries,
2. keep this file as the living tracker,
3. and push only the most important synthesized insights back into the narrative notes.

## Why this structure is better

Long prose reviews are good for explaining the story once you already understand it.

They are not ideal for ongoing expansion because new insights tend to get buried.

A better expandable structure separates:

- `paper inventory`: what exists,
- `reading status`: what you have and have not read,
- `paper notes`: what each paper actually taught you,
- `stage impact`: which stage of the experimental plan each paper strengthens,
- `open questions`: what is still unresolved.

That is what this tracker is for.

## How to use this tracker

Whenever you read a paper, update three places:

1. `Paper Map`
   Add or update one row for the paper.
2. `Paper Notes`
   Add a short structured note for the paper.
3. one of the narrative review docs
   Only if the paper changes the project story, novelty claim, or experiment design.

## Recommended tags

Use these tags consistently:

- `status`: unread / skimmed / read / integrated
- `aspect`: privacy-model / metrics / valet-keys / attack-surface / scan-test / application-dependent / efpga / theory / baseline / evaluation
- `role`: anchor / direct precedent / supporting precedent / analogy / method / metric / gap-defining / cautionary
- `stage`: S1 / S2 / S3 / S4
- `priority`: primary / secondary

## Paper Map

Use one row per paper. The `priority` column is there so the most stage-relevant papers are easiest to spot.

### Privacy framing and metrics

| Status | Priority | Aspect | Role | Stage | Paper | Link | Why it matters in one line |
|---|---|---|---|---|---|---|---|
| read | primary | privacy-model | anchor | S1,S2,S3,S4 | Private Circuits: Securing Hardware against Probing Attacks | https://doi.org/10.1007/978-3-540-45146-4_27 | Clean template for secret, leakage channel, and adversary |
| read | secondary | privacy-model | supporting precedent | S2,S3 | Private Circuits II: Keeping Secrets in Tamperable Circuits | https://doi.org/10.1007/11761679_19 | Extends the privacy model when the adversary is more interactive |
| read | secondary | privacy-model | supporting precedent | S2,S3 | Threshold Implementations Against Side-Channel Attacks and Glitches | https://doi.org/10.1007/11935308_38 | Useful for thinking about structural countermeasures rather than only attacks |
| read | primary | privacy-model | supporting precedent | S1,S3 | Threshold Implementations in the Robust Probing Model | https://eprint.iacr.org/2019/1005 | Good support for explicit leakage-model specification |
| read | primary | metrics | anchor | S1,S3,S4 | Mutual Information Analysis | https://doi.org/10.1007/978-3-540-85053-3_27 | Best direct support for MI-style leakage framing |
| read | secondary | metrics | method | S2,S4 | Theoretical and Practical Aspects of Mutual Information Based Side Channel Analysis | https://www.matthieurivain.com/files/acns09.pdf | Helps justify empirical MI estimation limits and choices |
| read | primary | metrics | anchor | S1,S3,S4 | Mutual Information Analysis: A Comprehensive Study | https://doi.org/10.1007/s00145-010-9084-8 | Strong support for MI estimation and practical use |
| read | secondary | metrics | cautionary | S1,S4 | Side-Channel Attacks from Static Power: When Should We Care? | https://past.date-conference.com/proceedings-archive/2015/pdf/0712.pdf | Helps separate detectable leakage from practically meaningful leakage |
| read | primary | metrics | anchor | S1,S3,S4 | The Side-Channel Metrics Cheat Sheet | https://eprint.iacr.org/2022/253 | Best survey for metrics beyond classifier accuracy |
| read | secondary | evaluation | method | S3 | Integrating Side Channel Security in the FPGA Hardware Design Flow | https://re.public.polimi.it/handle/11311/1165568 | Good precedent for localizing where leakage comes from |
| read | secondary | evaluation | method | S2,S3 | A Memory Hierarchy Protected against Side-Channel Attacks | https://doi.org/10.3390/cryptography6020019 | Good example of coupling design and quantitative leakage evaluation |
| read | secondary | evaluation | method | S3 | Extending the Classical Side-Channel Analysis Framework to Access-Driven Cache Attacks | https://doi.org/10.1016/j.cose.2023.103255 | Useful support for adapting side-channel frameworks to new observation channels |
| read | secondary | theory | supporting precedent | S2 | DuetSGX: Differential Privacy with Secure Hardware | https://arxiv.org/abs/2010.10664 | Separates mechanism, trusted boundary, and release |
| read | secondary | theory | supporting precedent | S2 | DiVa: An Accelerator for Differentially Private Machine Learning | https://doi.org/10.1109/MICRO56248.2022.00084 | Useful mainly for privacy-utility-cost tradeoff thinking |
| read | secondary | theory | supporting precedent | S2 | Verified Foundations for Differential Privacy | https://doi.org/10.1145/3729294 | Reminder that empirical privacy claims and formal guarantees are different |
| read | primary | theory | method | S2,S4 | Information-Theoretic Privacy-Preserving Schemes Based on Perfect Privacy | https://arxiv.org/abs/2301.11754 | Strong support for utility-leakage tradeoff language |
| read | secondary | theory | method | S3,S4 | Several Representations of alpha-Mutual Information and Interpretations as Privacy Leakage Measures | https://arxiv.org/abs/2501.10099 | Useful advanced option if ordinary MI is too coarse |
| read | primary | theory | cautionary | S2,S4 | Maintaining Secrecy When Information Leakage Is Unavoidable | https://hdl.handle.net/1721.1/28744 | Good conceptual support for partial-leakage reasoning |

### Valet keys, testing exposure, and safe-set gap

| Status | Priority | Aspect | Role | Stage | Paper | Link | Why it matters in one line |
|---|---|---|---|---|---|---|---|
| read | primary | valet-keys | anchor | S2,S3,S4 | LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment | https://www.researchgate.net/publication/356512772_LL-ATPG_Logic-Locking_Aware_Test_Using_Valet_Keys_in_an_Untrusted_Environment | Closest operational precedent for restricted-key testing |
| read | primary | attack-surface | direct precedent | S1 | ATPG-Guided Fault Injection Attacks on Logic Locking | https://arxiv.org/abs/2007.10512 | Strong evidence that ATPG can be an attack surface |
| read | secondary | attack-surface | supporting precedent | S1,S2 | A Comprehensive Test Pattern Generation Approach Exploiting SAT Attack for Logic Locking | https://arxiv.org/abs/2204.11307 | Shows ATPG, SAT, and locking reasoning are already intertwined |
| read | primary | attack-surface | direct precedent | S1,S4 | Piercing Logic Locking Keys through Redundancy Analysis and Test Pattern Generation | https://past.date-conference.com/proceedings-archive/2019/pdf/0889.pdf | Shows testability artifacts can leak structured key information |
| read | secondary | attack-surface | supporting precedent | S2,S4 | Hardware Protection via Logic Locking Test Points | https://doi.org/10.1109/TCAD.2018.2801240 | Good DFT/security co-design precedent |
| read | primary | scan-test | direct precedent | S1,S4 | ScanSAT: Unlocking Obfuscated Scan Chains | https://eprint.iacr.org/2019/005 | Strong support for untrusted test exposure as a vulnerability |
| read | primary | valet-keys | direct precedent | S2,S3 | RTLock: IP Protection using Scan-Aware Logic Locking at RTL | https://doi.org/10.23919/DATE56975.2023.10137136 | Strong support that limited-key testing is an accepted scenario |

### Application-dependent and reconfigurable analogies

| Status | Priority | Aspect | Role | Stage | Paper | Link | Why it matters in one line |
|---|---|---|---|---|---|---|---|
| read | secondary | application-dependent | analogy | S2 | Application-dependent testing of FPGAs for bridging faults | https://dblp.org/rec/conf/fpga/Tahoori03a | Historical grounding for application-dependent testing as a concept |
| read | secondary | application-dependent | analogy | S2 | A Multi-Configuration Strategy for an Application Dependent Testing of FPGAs | https://dblp.org/rec/conf/vts/TahooriMRF04 | Good analogy for restricted configuration-aware testing policies |
| read | secondary | application-dependent | analogy | S2 | A Single-Configuration Method for Application-Dependent Testing of SRAM-based FPGA Interconnects | https://dblp.org/rec/conf/ats/AlmuribKL11 | Supporting analogy for configuration-conditioned testing |
| read | secondary | efpga | analogy | S2,S4 | Hardware Redaction via Designer-Directed Fine-Grained eFPGA Insertion | https://doi.org/10.23919/DATE51398.2021.9473910 | Useful analogy where the hidden secret becomes a configuration or bitstream |
| read | secondary | efpga | cautionary | S4 | FuncTeller: How Well Does eFPGA Hide Functionality? | https://www.usenix.org/conference/usenixsecurity23/presentation/han-zhaokun | Reminder that new protection models create new leakage channels |

### Positioning, baselines, and broader framing

| Status | Priority | Aspect | Role | Stage | Paper | Link | Why it matters in one line |
|---|---|---|---|---|---|---|---|
| read | primary | baseline | supporting precedent | S4 | Measuring Security Metrics of Locked Circuits with Test | https://dblp.org/rec/phd/us/Duvalsaint23 | Useful for thinking about wrong-key behavior and evaluation baselines |
| read | secondary | theory | supporting precedent | S4 | Logic Locking at the Frontiers of Machine Learning | https://arxiv.org/abs/2107.01915 | Good positioning survey for subtler post-ML attack signals |

### Most important papers by stage

If time is limited, start with these.

- `Stage 1`
  - `ATPG-Guided Fault Injection Attacks on Logic Locking`
  - `Piercing Logic Locking Keys through Redundancy Analysis and Test Pattern Generation`
  - `Mutual Information Analysis`
  - `The Side-Channel Metrics Cheat Sheet`

- `Stage 2`
  - `LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment`
  - `RTLock: IP Protection using Scan-Aware Logic Locking at RTL`
  - `Information-Theoretic Privacy-Preserving Schemes Based on Perfect Privacy`
  - `DuetSGX: Differential Privacy with Secure Hardware`

- `Stage 3`
  - `LL-ATPG: Logic-Locking Aware Test Using Valet Keys in an Untrusted Environment`
  - `The Side-Channel Metrics Cheat Sheet`
  - `Mutual Information Analysis: A Comprehensive Study`
  - `Threshold Implementations in the Robust Probing Model`

- `Stage 4`
  - `Piercing Logic Locking Keys through Redundancy Analysis and Test Pattern Generation`
  - `ScanSAT: Unlocking Obfuscated Scan Chains`
  - `Measuring Security Metrics of Locked Circuits with Test`
  - `Maintaining Secrecy When Information Leakage Is Unavoidable`

## Paper Notes

Use this exact template when you finish reading a paper.

### Paper Note Template

#### Paper
- Title:
- Link:
- Status:
- Date read:

#### Classification
- Aspect:
- Role:
- Relevant stages:

#### What it actually does
- Problem:
- Method:
- Evaluation:
- Main claim:

#### What it gives this project
- Which part of the safe-key plan it strengthens:
- Which definition, metric, or baseline it helps justify:
- Whether it changes the novelty claim:

#### Important caveats
- What this paper does **not** cover:
- What would be a wrong way to cite it:

#### Action items
- Update which review doc:
- Add which experiment idea:
- Add which baseline, metric, or threat-model note:

## Open Questions by Stage

Keep unresolved issues here so they do not get lost inside the reviews.

### Stage 1
- What is the minimum ATPG-visible feature set that already gives nontrivial leakage?
- How many repeated ATPG runs per key are needed before the transcript estimate is stable?
- Which leakage metrics should be reported alongside ROC-AUC?

### Stage 2
- What exact utility constraints define a "test-useful" non-golden key?
- What behavior descriptor should be used for safe-set construction?
- How should diversity be enforced so behaviorally close keys do not collapse structurally?

### Stage 3
- What does "indistinguishable enough" mean operationally?
- Which empirical distance measures should be primary versus secondary?
- How should significance or confidence intervals be reported across repeated runs?

### Stage 4
- What is the best baseline family for safe-set leakage?
- Which safe-set summaries are realistic attacker inputs?
- What counts as meaningful key inference versus weak correlation?

## Rules for updating the narrative docs

Do not add every reading note directly to the two review documents.

Only update those narrative docs when one of these happens:

- a new paper changes the novelty claim,
- a new paper changes how a stage should be designed,
- a new paper replaces a previously weak citation,
- a new paper reveals a missing threat model or baseline,
- or a new paper becomes an anchor citation.

## Suggested workflow after reading a new paper

1. Add a row to `Paper Map`.
2. Add a `Paper Note`.
3. Decide whether the paper affects:
   - privacy framing,
   - domain precedent,
   - or the experimental plan.
4. If yes, update the corresponding review or plan doc with a short synthesized change.
5. If no, leave the detail here and keep the narrative docs clean.

## Bottom line

For long-term expansion, the best organization is:

- `experimental_plan.md` for the backbone,
- `privacy_leakage_metrics_review.md` for formal framing and metrics,
- `valet_keys_test_exposure_review.md` for domain precedent and gap positioning,
- and this `literature_tracker.md` for all ongoing reading notes and paper-by-paper growth.
