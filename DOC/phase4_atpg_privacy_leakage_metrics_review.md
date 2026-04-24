# Literature Review Guide for ATPG Transcript Privacy and Safe-Key Evaluation

Last updated: April 24, 2026

This note turns the paper list below into a practical literature review guide for the safe-key / ATPG privacy problem in this repo, especially the Phase 4 ATPG workflow under `FTL/04_Phase4_ATPG/`.

This document should now be read together with:

- `DOC/phase4_atpg_safe_key_experimental_plan.md`
- `DOC/phase4_atpg_literature_tracker.md`

The goal is not only to collect relevant papers, but to help answer two reviewer-facing questions:

1. What exactly is the privacy problem in this project?
2. What are the current weak spots in the evidence and framing?

More specifically, this review now supports the four-stage plan:

- `Stage 1`: show naive ATPG output leaks golden-membership information
- `Stage 2`: define what a safe non-golden set should mean in privacy terms
- `Stage 3`: justify how transcript indistinguishability should be measured
- `Stage 4`: define how leakage from the safe set itself should be measured

## How to expand this document

The current organization is good for a narrative review, but not ideal for unlimited growth by itself.

To keep this file readable as you learn more:

- use this file for synthesized conclusions,
- use `phase4_atpg_literature_tracker.md` for per-paper notes and ongoing reading updates,
- and only push new material into this file when it changes the framing, metrics, or experimental logic.

When you finish reading a paper, ask:

1. Does it change how the privacy problem should be defined?
2. Does it change which metrics or baselines should be used?
3. Does it change what one of Stages 1-4 should prove?

If the answer is yes, summarize the insight here in 2-5 lines.
If the answer is no, keep the detail in the tracker only.

## Why these papers should be read in groups

These papers are easiest to understand if you read them by the privacy component they teach:

- `Secret`: what hidden variable are we trying to protect?
- `Leakage channel`: what observable transcript or side channel does the adversary get?
- `Adversary observation`: what can the attacker query, compare, rank, or estimate?
- `Metric`: how do we quantify leakage beyond simple attack success?
- `Defense`: what design or release mechanism reduces leakage?
- `Validation`: what experiments make the claim believable?

For this ATPG safe-key project, the likely mapping is:

- `Secret`: the golden key, golden-membership bit, or structural/key-derived properties.
- `Leakage channel`: ATPG transcript, pattern set, coverage numbers, runtime, fault classes, diagnostic statistics, and any per-benchmark outputs.
- `Adversary`: someone who observes those outputs and tries to distinguish the golden key from safe non-golden keys, or shrink the candidate-key set.
- `Utility`: ATPG quality such as coverage, pattern count, runtime, readability, and reproducibility.
- `Defense`: safe-key selection, transcript restriction, output coarsening, randomness, or release policies.

## Best reading order for this project

If you only read four papers first, read these:

1. `Private Circuits: Securing Hardware against Probing Attacks`
2. `Mutual Information Analysis`
3. `The Side-Channel Metrics Cheat Sheet`
4. `DuetSGX: Differential Privacy with Secure Hardware`

That set gives you the basic language of secret, leakage model, adversary capability, privacy metric, and privacy-utility tradeoff.

## A. Foundational hardware and circuit privacy models

### 1. Private Circuits: Securing Hardware against Probing Attacks
- Why it matters: gives a clean formal model where an adversary can probe a bounded number of internal wires.
- What it teaches: a privacy paper needs an explicit secret, leakage model, and adversary capability.
- Best use for your work: use it as a template for writing down exactly what the ATPG observer sees.
- Link: https://doi.org/10.1007/978-3-540-45146-4_27

### 2. Private Circuits II: Keeping Secrets in Tamperable Circuits
- Why it matters: extends the model from passive observation to active tampering.
- What it teaches: privacy definitions often need to evolve once the adversary can interact with the system, not just watch it.
- Best use for your work: useful if a reviewer asks whether a tester can adapt queries, choose benchmarks, or induce extra outputs.
- Link: https://doi.org/10.1007/11761679_19
- Citation correction: the exact paper is this EUROCRYPT 2006 paper, not the broader later Microsoft paper on tamperable and leaky memory.

### 3. Threshold Implementations Against Side-Channel Attacks and Glitches
- Why it matters: shows that privacy is not only about attack evaluation; it is also about structural design constraints.
- What it teaches: countermeasures need design rules such as sharing, non-completeness, and randomness discipline.
- Best use for your work: helps motivate transcript-level defenses instead of only transcript-level attacks.
- Link: https://doi.org/10.1007/11935308_38

### 4. Threshold Implementations in the Robust Probing Model
- Why it matters: strengthens the probing model and clarifies what must be specified in a leakage claim.
- What it teaches: reviewers expect the leakage model to be explicit and composable, not informal.
- Best use for your work: pushes you to state whether the attacker sees one transcript, repeated runs, adaptive queries, noisy summaries, or exact logs.
- Link: https://eprint.iacr.org/2019/1005

## B. Information-theoretic leakage measurement in hardware

### 5. Mutual Information Analysis
- Why it matters: this is the foundational mutual-information side-channel paper.
- What it teaches: leakage is statistical dependence between secret and observation, not just linear correlation.
- Best use for your work: strongest direct support for adding MI-based leakage estimation to ATPG transcript analysis.
- Link: https://doi.org/10.1007/978-3-540-85053-3_27

### 6. Theoretical and Practical Aspects of Mutual Information Based Side Channel Analysis
- Why it matters: explains when mutual information is powerful and when estimation becomes difficult.
- What it teaches: empirical MI estimates are only as good as the density estimation and sample regime behind them.
- Best use for your work: directly relevant because your transcript distribution is unknown and must be estimated from data.
- Link: https://www.matthieurivain.com/files/acns09.pdf

### 7. Mutual Information Analysis: A Comprehensive Study
- Why it matters: a deeper treatment of MI estimation, distinguishers, and practical limitations.
- What it teaches: using MI well requires careful estimation choices, not just calling a library function.
- Best use for your work: supports a methods section that justifies estimator choice, binning, smoothing, and confidence checks.
- Link: https://doi.org/10.1007/s00145-010-9084-8
- Citation correction: the mature journal version is from 2011, though it synthesizes a 2009-2010 line of work.

### 8. Side-Channel Attacks from Static Power: When Should We Care?
- Why it matters: asks the practical question, "is this leakage strong enough to matter?"
- What it teaches: leakage quantification should connect to attack relevance, not stop at abstract dependence.
- Best use for your work: helpful when arguing whether the transcript difference is merely detectable or actually useful for key recovery.
- Link: https://past.date-conference.com/proceedings-archive/2015/pdf/0712.pdf
- Citation correction: this paper is from DATE 2015, not 2014.

### 9. The Side-Channel Metrics Cheat Sheet
- Why it matters: probably the best single survey for leakage metrics beyond classifier accuracy.
- What it teaches: success rate, guessing entropy, rank, SNR, MI, and related metrics answer different questions.
- Best use for your work: use it to justify a multi-metric evaluation, especially rank of the true key and candidate-set reduction.
- Link: https://eprint.iacr.org/2022/253

## C. Hardware-side privacy evaluation frameworks

### 10. Integrating Side Channel Security in the FPGA Hardware Design Flow
- Why it matters: focuses on localizing leakage sources during a hardware design flow, not just reporting an attack score.
- What it teaches: good evaluations identify where leakage comes from.
- Best use for your work: inspires a benchmark-by-benchmark or output-field-by-output-field attribution study of ATPG leakage.
- Link: https://re.public.polimi.it/handle/11311/1165568

### 11. A Memory Hierarchy Protected against Side-Channel Attacks
- Why it matters: combines architectural design with quantitative leakage estimation.
- What it teaches: defense and evaluation should be coupled.
- Best use for your work: good analogy for combining safe-key selection with MI-based validation of the released transcript.
- Link: https://doi.org/10.3390/cryptography6020019
- Citation correction: this paper was published in 2022, not 2023.

### 12. Extending the Classical Side-Channel Analysis Framework to Access-Driven Cache Attacks
- Why it matters: shows how a classical leakage framework can be transferred to a new observation channel.
- What it teaches: if the observation channel changes, the framework should be adapted rather than discarded.
- Best use for your work: strong conceptual support for treating ATPG transcripts as a new leakage channel.
- Link: https://doi.org/10.1016/j.cose.2023.103255

## D. Differential privacy and hardware systems

### 13. DuetSGX: Differential Privacy with Secure Hardware
- Why it matters: cleanly separates mechanism, trusted execution boundary, and released output.
- What it teaches: the privacy claim attaches to a release mechanism, not just to the system as a whole.
- Best use for your work: useful even if you do not use differential privacy directly, because it forces precise thinking about what is released and why.
- Link: https://arxiv.org/abs/2010.10664

### 14. DiVa: An Accelerator for Differentially Private Machine Learning
- Why it matters: shows privacy-utility-hardware cost tradeoffs in a concrete system design.
- What it teaches: privacy claims in hardware often have measurable cost and performance consequences.
- Best use for your work: relevant if safe-key privacy mechanisms reduce ATPG quality or increase runtime.
- Link: https://doi.org/10.1109/MICRO56248.2022.00084

### 15. Verified Foundations for Differential Privacy
- Why it matters: emphasizes that formal privacy claims require precise mechanisms and verification, not only experiments.
- What it teaches: strong privacy work separates theorem-level claims from empirical evidence.
- Best use for your work: a reminder to distinguish "empirically low leakage" from "provable privacy guarantee."
- Link: https://doi.org/10.1145/3729294

## E. General privacy-leakage theory useful for formulation

### 16. Information-Theoretic Privacy-Preserving Schemes Based on Perfect Privacy
- Why it matters: formulates privacy-utility tradeoffs in information-theoretic terms.
- What it teaches: the right optimization target is often "preserve utility while bounding leakage."
- Best use for your work: a close conceptual match for "preserve ATPG usefulness while limiting information about the golden key."
- Link: https://arxiv.org/abs/2301.11754
- Citation correction: the exact arXiv title is `...Based on Perfect Privacy`, not `...Based on Mutual Information`.

### 17. Several Representations of alpha-Mutual Information and Interpretations as Privacy Leakage Measures
- Why it matters: expands ordinary MI into a family of leakage measures tied to adversarial gain.
- What it teaches: one leakage metric may not capture the attack notion you care about.
- Best use for your work: optional advanced reading if ordinary MI seems too coarse for ranking or inference risk.
- Link: https://arxiv.org/abs/2501.10099

### 18. Maintaining Secrecy When Information Leakage Is Unavoidable
- Why it matters: tackles the situation where some leakage cannot be eliminated.
- What it teaches: the question is often not "is leakage zero?" but "how much leakage remains and what can an attacker do with it?"
- Best use for your work: directly relevant if ATPG transcripts inevitably leak partial structure or key information.
- Link: https://hdl.handle.net/1721.1/28744

## What this literature says your paper needs beyond "train a classifier"

If the current project is framed only as golden-vs-non-golden classification from ATPG outputs, that is a start, but it is probably not enough for a strong privacy argument.

A reviewer is likely to expect:

- A precise leakage model: what exact transcript fields are released to the tester?
- A precise secret variable: golden key, golden-membership bit, key class, or key-derived structure.
- A clear adversary model: passive observer, adaptive tester, repeated-run observer, benchmark-aware attacker, or candidate-key searcher.
- A utility definition: fault coverage, pattern count, runtime, diagnostic quality, and reproducibility.
- At least one information-theoretic leakage metric: MI is the most natural starting point.
- At least one attack-oriented metric: classifier accuracy alone is weak; add guessing entropy, rank, candidate-set reduction, or true-key percentile.
- Strong baselines: random non-golden keys are not enough if they are behaviorally far from golden.
- A defense story: safe-key generation itself may be the defense, but then its design goal must be stated in privacy language.

## Likely weak spots in the current safe-key / ATPG story

Based on the current repo context and the literature above, these are the biggest likely weak spots:

### 1. The secret may be under-specified
You need to decide whether the paper protects:

- the exact golden key,
- whether a candidate is golden,
- equivalence-class membership,
- or structural properties correlated with the golden implementation.

Without this, leakage metrics are hard to interpret.

### 2. The leakage channel may be too informal
If "the tester sees ATPG results" is the whole description, that is too loose. You should enumerate the released fields explicitly, such as:

- coverage,
- pattern count,
- runtime,
- aborts and warnings,
- fault distribution,
- pattern contents,
- benchmark identity,
- and any per-fault or per-pattern detail.

Different output fields may leak very differently.

### 3. Classifier accuracy alone is too weak
A classifier can show distinguishability, but it does not answer:

- how much information leaks,
- whether the true key moves up in rank,
- how much the candidate set shrinks,
- or whether leakage is practically exploitable.

At minimum, add MI plus one key-ranking metric.

### 4. The baseline may be unfair
If the negative class is random non-golden keys, the task may be too easy. Reviewers may ask for:

- utility-matched non-golden keys,
- behaviorally close keys,
- structurally similar keys,
- and keys chosen to make the discrimination problem genuinely hard.

The stronger your baselines, the more credible your leakage claim.

### 5. Utility and privacy may not be tied together tightly enough
The real question is probably not "can I tell golden from non-golden?" but:

- how much ATPG utility is preserved,
- for how much privacy leakage,
- under what release policy.

That tradeoff should be explicit.

### 6. The defense mechanism may be implicit rather than formalized
If "safe-key selection" is the intended defense, say so directly and define the mechanism:

- input,
- constraints,
- optimization target,
- and what transcript properties it is trying to suppress.

Otherwise the work may read like attack measurement without a privacy mechanism.

### 7. There may be no transcript ablation study
Ablations are likely important:

- coverage only,
- summary statistics only,
- no pattern contents,
- coarse buckets instead of exact counts,
- randomized or rounded outputs.

This helps identify what actually leaks and what can be safely released.

### 8. Generalization claims may be fragile
If results are shown only on a limited benchmark family, reviewers may question whether the leakage is:

- benchmark-specific,
- library-specific,
- category-specific,
- or robust across `dirL0`, `dirL5`, `dirL7`, `dirL9`, and `dirL11`.

### 9. Repeated-run and adaptive attackers may be missing
If the attacker can rerun ATPG, choose circuits, or combine outputs across benchmarks, leakage can increase. Even if you do not evaluate this fully, you should state whether your threat model excludes it.

### 10. The work may lack a "when should we care?" section
A strong final section should answer:

- Does the leakage only show statistical difference?
- Or does it materially help recover the golden key or narrow the candidate set?

That distinction matters a lot.

## Recommended structure for your own paper or thesis section

One effective structure would be:

1. `Problem setup`
   Define the secret, observation channel, adversary, and utility goal.
2. `Leakage model`
   Formalize the ATPG transcript as the released observation.
3. `Privacy metrics`
   Report classifier accuracy, MI, and at least one ranking metric.
4. `Utility metrics`
   Report coverage, pattern count, runtime, and any quality regressions.
5. `Baselines`
   Compare against random, utility-matched, and behaviorally close non-golden keys.
6. `Defense`
   Explain how safe-key selection or transcript restriction reduces leakage.
7. `Ablations`
   Show which transcript fields are the main leakage sources.
8. `Limitations`
   State what is not yet proved: adaptive adversaries, repeated runs, estimator bias, limited benchmark scope, or lack of formal guarantees.

## Bottom line

The literature strongly suggests that your work will be much stronger if it is framed as:

`ATPG transcript privacy under a defined leakage model, with explicit utility-leakage tradeoffs, rather than only a binary classification problem.`

That shift gives you better language for:

- literature review,
- experimental design,
- weak-spot identification,
- and reviewer-facing claims.

## What this review must answer for the experimental plan

To strengthen `phase4_atpg_safe_key_experimental_plan.md`, this literature track should answer the following.

### Questions the paper must answer clearly
- What exactly is the protected secret in each stage: exact golden key, golden-membership bit, key properties, or candidate ranking?
- What exact transcript fields count as observable leakage?
- What is the adversary model for transcript observation: passive, repeated-run, adaptive, benchmark-aware?
- What privacy notion is the project using in practice when exact entropy and MI are intractable?
- What metrics should supplement classifier accuracy so the paper does not look shallow?

### What needs to be read and understood for Stage 1
- How side-channel and probing papers define the observable channel.
  Read `Private Circuits: Securing Hardware against Probing Attacks` (https://doi.org/10.1007/978-3-540-45146-4_27) and `Threshold Implementations in the Robust Probing Model` (https://eprint.iacr.org/2019/1005).
- Why distinguishability is evidence of leakage but not the whole story.
  Read `Mutual Information Analysis` (https://doi.org/10.1007/978-3-540-85053-3_27) and `Side-Channel Attacks from Static Power: When Should We Care?` (https://past.date-conference.com/proceedings-archive/2015/pdf/0712.pdf).
- What attack-oriented metrics are most defensible for an initial leakage study.
  Read `The Side-Channel Metrics Cheat Sheet` (https://eprint.iacr.org/2022/253) and `Mutual Information Analysis: A Comprehensive Study` (https://doi.org/10.1007/s00145-010-9084-8).

### What needs to be read and understood for Stage 2
- How privacy papers define mechanism, utility, and defense together.
  Read `DuetSGX: Differential Privacy with Secure Hardware` (https://arxiv.org/abs/2010.10664) and `A Memory Hierarchy Protected against Side-Channel Attacks` (https://doi.org/10.3390/cryptography6020019).
- How a "safe" mechanism should be described in formal language, not only heuristic language.
  Read `Information-Theoretic Privacy-Preserving Schemes Based on Perfect Privacy` (https://arxiv.org/abs/2301.11754) and `Verified Foundations for Differential Privacy` (https://doi.org/10.1145/3729294).
- How to separate behavioral closeness from actual privacy guarantees.
  Read `Theoretical and Practical Aspects of Mutual Information Based Side Channel Analysis` (https://www.matthieurivain.com/files/acns09.pdf) and `Maintaining Secrecy When Information Leakage Is Unavoidable` (https://hdl.handle.net/1721.1/28744).

### What needs to be read and understood for Stage 3
- Which empirical distance measures are appropriate for comparing transcript distributions.
  Read `Extending the Classical Side-Channel Analysis Framework to Access-Driven Cache Attacks` (https://doi.org/10.1016/j.cose.2023.103255) and `The Side-Channel Metrics Cheat Sheet` (https://eprint.iacr.org/2022/253).
- How MI, JS divergence, Wasserstein distance, MMD, and rank-style metrics answer different questions.
  Read `Mutual Information Analysis` (https://doi.org/10.1007/978-3-540-85053-3_27), `Mutual Information Analysis: A Comprehensive Study` (https://doi.org/10.1007/s00145-010-9084-8), and `Several Representations of alpha-Mutual Information and Interpretations as Privacy Leakage Measures` (https://arxiv.org/abs/2501.10099).
- What reviewers will expect as evidence that "indistinguishable" is not being claimed too strongly.
  Read `The Side-Channel Metrics Cheat Sheet` (https://eprint.iacr.org/2022/253) and `Threshold Implementations in the Robust Probing Model` (https://eprint.iacr.org/2019/1005).

### What needs to be read and understood for Stage 4
- How to talk about leakage from released sets, summaries, or mechanisms rather than only from raw transcripts.
  Read `Information-Theoretic Privacy-Preserving Schemes Based on Perfect Privacy` (https://arxiv.org/abs/2301.11754), `Several Representations of alpha-Mutual Information and Interpretations as Privacy Leakage Measures` (https://arxiv.org/abs/2501.10099), and `Maintaining Secrecy When Information Leakage Is Unavoidable` (https://hdl.handle.net/1721.1/28744).
- What information-theoretic or rank-based metrics can capture safe-set leakage.
  Read `The Side-Channel Metrics Cheat Sheet` (https://eprint.iacr.org/2022/253) and `Mutual Information Analysis: A Comprehensive Study` (https://doi.org/10.1007/s00145-010-9084-8).
- How to distinguish harmless correlation from meaningful key inference.
  Read `Side-Channel Attacks from Static Power: When Should We Care?` (https://past.date-conference.com/proceedings-archive/2015/pdf/0712.pdf) and `Maintaining Secrecy When Information Leakage Is Unavoidable` (https://hdl.handle.net/1721.1/28744).

### What this review contributes to the paper
- the formal language for secret, mechanism, output, adversary, and leakage,
- the metric vocabulary needed beyond classifier accuracy,
- and the conceptual justification for why the four-stage plan is a privacy paper rather than only an attack paper.
