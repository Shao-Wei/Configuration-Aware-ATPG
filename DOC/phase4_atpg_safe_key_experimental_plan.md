# Experimental Plan for Privacy-Preserving Testing with Safe Non-Golden Keys

Last updated: April 24, 2026

This document is the current backbone of the project.

It marks a shift from the earlier repo emphasis on `FTL/04_Phase4_ATPG/` as a standalone ATPG workflow toward a broader research program:

`privacy-preserving outsourced testing of logic-locked circuits using carefully selected non-golden keys`

The Phase 4 ATPG flow remains important as infrastructure, but it is no longer the whole story. The main scientific question is now whether testing can be redesigned so that:

- the tester does not need the golden key,
- test utility is still preserved,
- ATPG-visible outputs do not reveal golden-key membership,
- and the selected non-golden key set itself does not leak the golden key.

## Why this project needs an experimental plan

The project is no longer only about running ATPG successfully on mixed locked circuits.

That earlier work was necessary because it gave us:

- a runnable ATPG pipeline,
- benchmark access,
- observable test outputs,
- and a place to measure testing behavior.

But it does not yet answer the research question that matters for a paper:

`Can outsourced testing be made privacy-aware by replacing golden-key access with a safe set of non-golden keys?`

That question requires a staged experimental program, because the claim is not a single theorem or a single benchmark result. It has several parts that must be shown in order.

## Project motive

Logic locking has mostly been discussed in the language of security:

- resistance to SAT attacks,
- resistance to ML attacks,
- resistance to removal or oracle-less attacks.

Testing has also mostly been discussed from a security or attack-resilience angle:

- can testing be done without exposing the secret key?
- can an attacker exploit test access to recover the key?
- can scan or ATPG artifacts be abused?

This project argues that outsourced testing should also be treated as a privacy problem.

The key idea is:

- the hidden secret is the golden key `K*`,
- the testing flow is a randomized mechanism,
- the tester sees ATPG-visible outputs,
- and those outputs may leak information even if no explicit key-recovery attack is run.

The project therefore asks not only whether the design is "secure" in the broad sense, but whether the testing flow leaks information about the golden key.

## Core privacy intuition

The direct information-theoretic formulation is conceptually clear:

- posterior uncertainty after observing a transcript: `H(K* | T)`
- leakage from the transcript: `I(K*; T)`

where `T` may include:

- the selected testing keys,
- ATPG outputs,
- multiple randomized runs,
- and possibly the safe-set construction itself.

That is the right conceptual formulation, but it is hard to use directly in realistic ATPG experiments because:

- the key space is exponential,
- ATPG outputs are high-dimensional,
- ATPG is randomized,
- the joint distribution over keys and transcripts is unknown,
- and exact entropy or mutual information is intractable to compute.

So the experimental plan uses practical surrogates that still track the same privacy concern.

## What we want to prove experimentally

The experiments are designed to support four claims, in order:

1. Naive ATPG output under arbitrary keys leaks a golden-membership signal.
2. It is possible to construct a behaviorally close, utility-preserving safe set of non-golden keys.
3. Golden ATPG output becomes hard to distinguish from output generated under safe non-golden keys.
4. The safe set itself does not reveal the golden key or meaningful properties of it.

If all four succeed, the paper can tell a coherent story:

- testing is a leakage channel,
- arbitrary non-golden keys are not enough,
- safe non-golden keys can hide the golden run,
- and safe-set design must itself be checked for structural leakage.

## Current practical difficulty

The hard part is not only running ATPG. The hard part is designing evidence that is strong enough for reviewers.

The main difficulties are:

- `Randomized outputs`
  ATPG is not fully deterministic, so each key induces a distribution of outputs rather than a single point.

- `High-dimensional observations`
  Useful leakage may appear in coverage summaries, pattern counts, runtimes, class-wise fault profiles, pattern content, or richer transcript features.

- `Large key space`
  Exhaustive reasoning over all possible keys is impossible for realistic locking sizes.

- `Behavior-vs-structure tension`
  Keys that are behaviorally closest to golden may still share hidden structural information with the golden key.

- `Two different leakage channels`
  Leakage may come from ATPG transcripts, but it may also come from the selected safe-key set itself.

- `Need for fair baselines`
  Random non-golden keys are likely too easy a baseline. Reviewers will ask whether the comparison is fair and whether the safe set is genuinely different from simpler alternatives.

## Four-stage experimental roadmap

The project is organized into four stages. Each stage answers one research question and motivates the next.

## Stage 1: Show naive ATPG output is distinguishable

### Goal
Demonstrate that ordinary ATPG-visible output already leaks a signal about whether the golden key was used.

### Motive
Before proposing a privacy-preserving alternative, we need evidence that the naive testing flow is actually unsafe.

If ATPG output under the golden key is already easy to distinguish from output under arbitrary non-golden keys, then testing is acting as a leakage channel.

### Setup
For each benchmark:

- generate one golden key `K*`,
- sample many arbitrary non-golden keys,
- run randomized ATPG multiple times per key,
- collect ATPG-visible features.

Candidate features include:

- coverage,
- pattern count,
- runtime,
- fault-class coverage vector,
- and later richer pattern or response features.

### Experimental question
Can a classifier distinguish ATPG output generated under the golden key from ATPG output generated under arbitrary non-golden keys?

### Metrics
- ROC-AUC
- balanced accuracy
- precision and recall
- potentially calibration and confidence summaries

### What Stage 1 would prove
If classification performs well, then:

- ATPG output leaks golden-key membership,
- naive outsourced testing is unsafe,
- and a restricted safe-key design is justified.

### Current difficulty in Stage 1
- identifying the smallest feature set that already reveals leakage,
- controlling randomness across repeated ATPG runs,
- and avoiding accidental benchmark-identity shortcuts in the classifier.

## Stage 2: Construct a safe set of non-golden keys

### Goal
Build a set of non-golden keys that remains useful for testing but behaves similarly to the golden case in ATPG-visible space.

### Motive
Stage 1 only shows the problem. Stage 2 is the constructive step.

The safe set is the proposed mechanism for privacy-preserving testing:

- do not expose the golden key,
- expose only carefully selected non-golden keys,
- and preserve testing utility while reducing leakage.

### Setup
Generate a large candidate pool of non-golden keys.

For each key:

- run ATPG repeatedly,
- compute a behavior descriptor `phi(k)`,
- and compare it against the golden behavior descriptor `phi(K*)`.

Candidate behavior features include:

- mean and variance of coverage,
- mean and variance of pattern count,
- fault-type coverage profile,
- response or toggle statistics,
- runtime statistics.

Define a behavioral distance such as:

`d(k, K*) = d(phi(k), phi(K*))`

Then retain only keys that satisfy:

- utility constraints,
- behavioral closeness constraints.

### What "safe" means here
Safe does not mean Hamming-close to the golden key.

Safe means:

- test-useful,
- behaviorally close in testing space,
- and ideally not structurally informative about the golden key.

### What Stage 2 would prove
If successful, Stage 2 shows that there exists a nontrivial candidate mechanism for privacy-preserving testing:

- a restricted non-golden key set that still supports useful ATPG.

### Current difficulty in Stage 2
- defining a good behavior descriptor,
- choosing a distance metric that is stable under ATPG randomness,
- deciding utility thresholds,
- and preventing the selected set from collapsing to structurally revealing keys.

## Stage 3: Show golden output is hidden among safe outputs

### Goal
Test whether the safe set actually hides golden-key membership in ATPG-visible output.

### Motive
Behavioral closeness alone is not enough. We need direct evidence that the golden run is hard to identify once negatives are sampled only from the safe set.

### Setup
Repeat the Stage 1 distinguishability experiment, but replace arbitrary non-golden negatives with safe-set negatives.

Binary task:

- label `1`: output from the golden key
- label `0`: output from a safe non-golden key

Use multiple classifiers, for example:

- logistic regression,
- random forest,
- SVM,
- and possibly a small neural network.

Also compare empirical transcript-distribution distances such as:

- JS divergence,
- Wasserstein distance,
- MMD,
- or similar nonparametric distances.

### What Stage 3 would prove
If distinguishability drops toward chance, then:

- the ATPG transcript no longer strongly reveals golden membership,
- and the safe set works as a practical privacy mechanism for the observable testing flow.

### Current difficulty in Stage 3
- showing indistinguishability across multiple model classes rather than one lucky classifier,
- quantifying "close enough to chance" in a statistically defensible way,
- and avoiding overfitting to a narrow benchmark family.

## Stage 4: Show the safe set itself does not reveal the golden key

### Goal
Evaluate leakage from the selected key set even without ATPG transcripts.

### Motive
This is the subtle part of the project and the one most likely to be missed if the work stops too early.

Even if Stage 3 succeeds, the safe set may still leak:

- common bit values,
- structural regularities,
- or properties correlated with the golden key.

So safety has two dimensions:

- `behavioral safety`: ATPG output does not reveal golden membership,
- `structural safety`: the safe-key set itself does not point back to the golden key.

### Setup
Attack the safe set directly using summaries over the selected keys.

Potential leakage tests include:

- bit-frequency analysis across selected keys,
- majority-vote approximation of the golden key,
- prediction of golden bits from set statistics,
- prediction of Hamming weight or related key properties,
- candidate-key ranking based on the selected set.

Compare against baselines such as:

- random non-golden sets,
- random utility-qualified sets,
- behaviorally close but non-diverse sets.

### Metrics
- per-bit frequency bias,
- Hamming distance between the safe-set majority vote and the true golden key,
- predictability of golden bits from set summaries,
- candidate ranking of the true golden key,
- and any meaningful reduction in key uncertainty or candidate-set size.

### What Stage 4 would prove
If these attacks fail, then the safe set is not only behaviorally useful but also structurally non-informative.

That is the strongest version of the project claim.

### Current difficulty in Stage 4
- deciding what counts as meaningful structural leakage,
- constructing fair baseline sets,
- and separating harmless correlation from genuinely useful golden-key inference.

## Why the stage order matters

The order is important because each stage depends on the previous one.

- Without Stage 1, there is no evidence that privacy is even a problem.
- Without Stage 2, there is no candidate mechanism to study.
- Without Stage 3, there is no evidence that the safe set improves transcript privacy.
- Without Stage 4, there is no evidence that the safe set itself is safe to release.

This ordering also gives the paper a clean narrative arc:

1. identify leakage,
2. design a mechanism,
3. test whether the mechanism hides the transcript,
4. test whether the mechanism leaks through its own structure.

## Immediate research decisions this plan still requires

Before implementation, several definitions should be fixed:

- the exact ATPG-visible feature set for Stage 1,
- the benchmark family and locking schemes,
- the utility threshold for keeping a non-golden key,
- the behavioral distance metric,
- the first safe-set selection heuristic,
- the baseline set constructions for Stage 4,
- and the statistical protocol for repeated randomized ATPG runs.

## What success would mean

If the plan succeeds, the paper can make the following contribution:

- testing of logic-locked circuits can be analyzed as a privacy and leakage problem,
- safe non-golden key sets can preserve test utility while hiding golden-key membership in observable ATPG outputs,
- and safe-set design must be evaluated both for transcript privacy and for structural non-informativeness.

That would open a new direction beyond plain attack-resistance:

`privacy-aware ATPG and safe-key design for outsourced testing`
