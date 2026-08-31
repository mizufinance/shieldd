# Tree optimization prototype plan

Date: 2026-08-31  
Base revision: `2a0eff3b3bc8a6a2a08f1f542a12ce2ae67a9c18` (`dev`)  
Status: executed on `codex/tree-update-spikes`; see
[`tree-spike-results.md`](tree-spike-results.md); no production implementation

This plan follows the measurements and design findings in
[`tree-performance.md`](tree-performance.md).

## Goal

Build and compare small, disposable prototypes for Shieldd's tree update paths so that a later implementation decision is based on exact-root correctness, end-to-end state performance, memory use, and operational complexity.

The spike should decide:

- whether nullifier batching should use read elision only, a sequential dirty-path union, a parallel dirty-path union, or a different storage access pattern;
- whether TCT batching should target validators only or also wallets with `Keep` witnesses;
- whether compliance trees need only a no-event fast path, a transactional overlay, or a structurally shared representation;
- whether Poseidon batching is worth pursuing after redundant tree work is removed.

The spike must not select a design by isolated hash throughput alone.

## Scope and boundaries

### In scope

- Research-only code in the benchmark crate.
- Feature-gated benchmark helpers if public APIs are insufficient for differential checks.
- Exact root, proof, stored-record, persistence, and restart comparisons.
- Current `StateRead`/`StateWrite`, Cnidarium, and SQLite boundaries.
- Deterministic CPU parallelism at 1, 2, 4, 8, and maximum useful threads.
- Desktop/server measurements and a separately identified phone run.

### Out of scope

- Production call-site changes.
- New canonical roots, tree depths, arities, domains, padding, leaf formats, or circuit witnesses.
- New database, WAL, mmap layer, asset-scoped roots, or semantic sharding.
- GPU integration.
- Formal specifications or verification tooling in this repository.
- Compatibility shims between current and candidate implementations.

The prototypes may reproduce production algorithms in research modules. They must not add alternate runtime flags or dual production paths.

## Planned prototype footprint

Executing this plan will intentionally touch more than five files, but the scope is confined to one benchmark/research module and its reports:

```text
crates/bench/src/tree_research/
  mod.rs              shared result records and runner API
  metrics.rs          timings, counters, allocation/RSS sampling
  workloads.rs        deterministic fixtures and input patterns
  nullifier.rs        N0-N4 prototypes
  tct.rs              T0-T4 prototypes
  compliance.rs       C0-C4 prototypes
  poseidon.rs         optional P0-P2 experiments
crates/bench/src/bin/tree_research.rs
docs/research/tree-prototype-plan.md
docs/research/tree-performance.md
docs/research/tree-results-*.json
```

Initially, do not edit the production tree crates. If the TCT `Keep` experiment cannot inspect or construct the required internal structure through public APIs, add the smallest `#[cfg(feature = "benchmark-helpers")]` inspection surface to the TCT crate. Record and remove any helper that is not required by the selected implementation.

Do not introduce a generic tree trait during the spike. Use typed research records and pure functions; only extract a shared dirty-parent helper after both nullifier and compliance experiments prove that their semantics fit it.

## Common measurement and correctness harness

This work is required before comparing additional prototypes.

### Typed measurements

Each recorded scenario should contain:

- base Git revision and research source identifier;
- machine, OS, Rust version, build profile, thread count, and deterministic seed;
- tree, prototype, operation, prefill size, batch size, and input pattern;
- warmups, repetitions, median, p95, minimum, and maximum latency;
- semantic planning, leaf hashing, internal hashing, state reads, state writes, and commit time where separable;
- Poseidon call counts by arity;
- verifiable and nonverifiable reads/writes, unique keys, cache/overlay hits, and range scans;
- key bytes and value bytes read/written;
- allocations and peak RSS when supported;
- final root and parity result.

Use a typed `NodeKey { level, position }`, `LeafMutation`, `NodeMutation`, and `IoStats`. Continue using the existing state traits for effects; do not add a second storage abstraction.

### Repetition protocol

- Build in release mode.
- Construct or restore prefilled state outside the timed region.
- Warm each scenario at least twice.
- Run at least ten measured repetitions for sub-second cases and at least three for long cases.
- Report distributions, not only the fastest result.
- Run candidates and baselines in alternating order to reduce thermal/order bias.
- Give each stateful repetition a fresh snapshot or identical cloned fixture.
- Record failures and outliers; do not silently discard them.

### Differential oracle

The current implementation is the compatibility oracle. For every successful candidate batch, compare:

- final root;
- leaf count and next position;
- changed typed leaves and indexes;
- membership and non-membership proofs where applicable;
- all touched sparse nodes and a sampled set of untouched nodes;
- serialized durable records;
- state after commit and state after restart/reload.

Compare proof bytes when the current serialization is canonical; otherwise compare typed paths and verification results.

For failures, compare state before and after the rejected batch. Duplicate inputs, already-spent nullifiers, invalid positions, invalid linked-list gaps, capacity boundaries, injected state-read errors, and root mismatches must not leave partial mutation.

Run every candidate at all configured thread counts and require identical outputs.

## Workstream N: nullifier prototypes

This is the first implementation workstream because it is the measured throughput bottleneck.

### N0 — instrumented production baseline

Wrap a fresh `StateDelta`/snapshot in counting state access and run the current `nullifier_tree::insert_batch` unchanged.

Questions:

- How much time is spent in marker checks, predecessor searches, leaf serialization, path reads, Poseidon, staged writes, and commit?
- How many of the current path reads return a value already present in the overlay?
- How many node puts are overwritten before commit?

Deliverable: an operation/byte profile for every nullifier workload below.

### N1 — overlay-aware read elision

Reproduce the current two-path algorithm, but use an explicit overlay lookup before issuing a state read. Keep the same per-insertion roots and the same number of Poseidon hashes.

Purpose: isolate the value of fixing eager `unwrap_or(read.await?)` evaluation without changing the update algorithm.

Decision question: is read elision alone sufficient for small or storage-bound batches?

### N2 — sequential dirty-path union

Prototype a storage-backed two-stage update:

1. Validate the batch and resolve linked-list mutations in proposal order.
2. Store the final version of every changed leaf in a typed overlay.
3. Derive the unique dirty parents at every level.
4. Read each missing base child once.
5. Hash dirty parents sequentially, bottom-up.
6. Stage each final leaf, index, node, root, count, and generation record once.

This version intentionally has no parallel hashing. It measures algorithmic work reduction separately from Rayon.

### N3 — level-parallel dirty-path union

Add deterministic per-level parallel hashing to N2. Compare thresholds based on the number of dirty parents at that level:

- always sequential;
- parallel at 64 parents;
- parallel at 256 parents;
- parallel at 1,024 parents;
- an empirically selected architecture-specific threshold supplied by the benchmark, not consensus state.

Apply each completed level's results in sorted node-key order. Thread scheduling must not affect write order or output.

### N4 — state access alternatives

Run these only after N2 shows the residual cost is materially storage-related:

- deduplicated point reads through the current state API;
- bounded concurrent point reads for one level;
- prefix/range reads for dense dirty regions;
- a bounded current-generation node cache rebuilt from durable state.

Do not introduce another database. Stop this workstream if state access is less than 30% of N2 end-to-end time.

### Nullifier workload matrix

Batch sizes:

- 2, 100, 1,000, and 10,000.

Prefill states, created once outside timing:

- empty generation;
- 10,000 leaves;
- 100,000 leaves;
- a larger fixture if construction and memory remain practical;
- previous/current generation window around rollover.

Input patterns:

- ascending values;
- descending values that repeatedly change the lower gap;
- deterministic spread values;
- many values initially targeting the same predecessor gap;
- values distributed across existing gaps;
- duplicate and already-spent failures.

A literal nearly-full depth-20 tree is not a useful benchmark. Use a reduced-depth pure model for full/capacity geometry and production-depth boundary tests for count and rollover rules.

### Nullifier decision gate

Select among N1, N2, and N3 only if the candidate:

- has exact root, leaf, index, proof, persistence, and restart parity;
- is atomic under all failure cases;
- is deterministic across thread counts;
- improves the storage-backed 10,000-item empty and medium-prefill cases by at least 5x end-to-end;
- improves the 100-item case materially or dispatches to a faster small-batch path;
- reaches at least 10,000 insertions/s with operational headroom on the intended validator hardware;
- does not regress rollover, lookup, proof generation, or restart time materially.

The decision record must state whether the selected shape is N1 only, N2, N3, or no change. Do not assume parallel hashing wins; N2 may be the best implementation if planning and storage dominate.

## Workstream T: TCT prototypes

Keep validator and wallet decisions separate.

### T0 — instrumented current builders

Measure:

- `block::Builder` with `Forget` only;
- mixed `Keep` ratios of 0.1%, 1%, 10%, and 100%;
- full `Tree` insertion, block finalization, `Tree::updates`, and persistence;
- wallet catch-up by authenticated block root versus relevant-block reconstruction.

Use 0, 1, 3, 4, 5, 100, 1,000, 10,000, 50,000, and 65,536 commitments to cover padding and capacity boundaries.

### T1 — exact parallel block-root reducer

Harden the existing research prototype:

- leaf hashing in proposal order;
- height 1–8 parallel parent reduction;
- exact height-specific domains;
- exact `Hash::one()` final padding;
- sequential fallback below a measured parent threshold.

Compare finalized block roots for every partial-group boundary and randomized batch.

### T2 — validator `Forget` state integration

On cloned research trees, compare two complete state transitions:

- current individual `Tree::insert(Forget, ...)` plus `end_block`;
- reserve the same positions/events, build T1's finalized block root, and insert that block into the existing tiered tree.

Compare:

- every assigned position and event payload;
- block, epoch, and global roots;
- current position and block/epoch boundaries;
- `Tree::updates` output, forgotten ranges, serialized state, reload, and later inserts;
- empty blocks, multiple blocks, epoch boundaries, and trees starting in nonzero epochs.

This spike answers whether root construction can replace validator leaf insertion without losing persistence facts.

### T3 — selective `Keep` witness builder

Compare two approaches for a relevant wallet block:

1. Build the full witness-capable block structure in parallel.
2. Build the exact root plus only the internal nodes/authentication siblings required by `Keep` positions.

For each approach measure latency, allocations, peak memory, retained bytes per `Keep`, proof generation, forget behavior, and later witness updates. Compare typed and serialized proofs against the current builder.

If internal access requires a benchmark-only TCT helper, keep it read-only unless proof construction cannot otherwise be tested.

### T4 — threshold and catch-up policy

Compare policies, not just algorithms:

- current sequential builder for small blocks;
- T1/T2 above a level-width threshold;
- wallet authenticated-root fast path when no notes are relevant;
- T3 only when notes are relevant;
- current wallet reconstruction as the fallback.

The policy must be local performance configuration; it must not affect roots or consensus behavior.

### TCT decision gates

Recommend validator batching only if T2:

- has exact block/epoch/global root and persistence parity;
- preserves all positions and restart behavior;
- improves realistic 10,000–50,000 commitment blocks by at least 3x;
- does not regress small blocks by more than 10% after threshold dispatch.

Make an independent wallet decision. Select T3 only if it has byte-identical proof behavior, bounded memory, and a meaningful phone-class improvement. Otherwise retain the current relevant-block builder while still adopting validator batching.

## Workstream C: compliance and view prototypes

This workstream targets scale and phone behavior rather than the normal transfer execution path.

### C0 — instrumented current paths

Measure validator and view behavior separately:

- no compliance events in a compact block;
- one and many user registrations;
- one and many user status updates;
- one and many asset registrations;
- one and many policy replacements;
- mixed blocks and repeated updates to the same leaf/gap.

Record tree clone time/bytes, full validation time, path reads/hashes/writes, SQLite writes, and root/proof latency at 1,000, 10,000, and 100,000 stored leaves where practical.

### C1 — no-event view fast path

Prototype processing a compact block with no compliance events without cloning either tree:

1. Read the two current cached roots.
2. Compare them with the compact-block roots.
3. Perform no tree or SQLite writes.

This should be an isolated view helper in the benchmark spike, not a production branch.

### C2 — transactional dirty overlay

Prototype one block-level overlay for user and asset events:

- apply state-machine and event validation in canonical event order;
- plan final user leaves and asset linked-list leaves;
- recompute each dirty parent once;
- compare the terminal roots with the compact block;
- materialize the overlay only after validation succeeds;
- persist unique dirty leaves/nodes in one SQLite transaction or `StateDelta`.

Compare a BTreeMap overlay with whole-tree cloning. Preserve the exact current-root boundary between blocks.

### C3 — local versus full asset validation

Compare:

- current full reconstruction/validation before and after mutation;
- load/startup full validation plus per-mutation local validation;
- local validation plus periodic debug/audit reconstruction outside the consensus mutation path.

Local validation must check changed leaf commitments, predecessor/successor adjacency, unique positions/values, affected paths, leaf count, and exact terminal root. Corrupt untouched durable state must still be detected during load/restart.

The spike should quantify which full scans are security requirements and which duplicate already-established invariants.

### C4 — structural sharing

Run only if C2 still spends materially on clone/memory management. Compare:

- current BTreeMap clone;
- dirty overlay over an immutable base;
- level-oriented Arc chunks or a persistent map.

Measure snapshot creation, proof-reader concurrency, retained memory with one and several readers, and block commit/drop. Cnidarium and SQLite remain the durable state spine.

### Compliance decision gates

- C1 should make the no-event path O(1) in tree size, with zero tree clones and zero persistence writes.
- C2 must preserve roots, event ordering, paths, atomic failure, and restart state.
- For 100-event blocks, C2 should improve latency by at least 3x or reduce peak memory by at least 50% to justify the additional mechanism.
- C3 may replace per-mutation full scans only when corruption/failure tests show equivalent rejection at the correct trust boundary.
- C4 is rejected unless measured clone/RSS cost remains material after C1 and C2.

## Workstream P: hashing enhancements

Run this after N2/N3 and T1 establish the remaining hashing share.

### P0 — scalar threshold calibration

Measure the pinned scalar Poseidon377 functions by arity and batch width on each target architecture. Include scheduler overhead and mixed level widths.

### P1 — batch API with scalar fallback

Prototype a research-only `hash_many_into` adapter that preserves the exact pinned functions. Its initial implementation may loop scalarly; the purpose is to measure API/layout overhead and provide one comparison point for a future optimized implementation.

### P2 — exact CPU batch implementation exploration

Only if hashing remains at least 40% of a selected candidate's end-to-end time, investigate parameter-compatible permutation reuse or CPU SIMD. Require field-element and hash-vector parity with the pinned crate for every supported arity.

Do not pursue GPU or a different Poseidon implementation in this spike.

## Execution order and review checkpoints

### Checkpoint 1 — trustworthy harness

Complete the common measurement harness and reproduce the existing results within normal variance. Stop and fix the harness if counters change semantics or parity checks are incomplete.

Output: baseline JSON plus a short measurement-method review.

### Checkpoint 2 — nullifier choice

Run N0–N3. Run N4 only if the residual profile justifies it. Choose one candidate or no change before beginning any production design.

Output: nullifier comparison table, flame/timing breakdown, exact state diff, and decision.

### Checkpoint 3 — TCT validator and wallet choices

Run T0–T2, make the validator decision, then run T3/T4 as a separate wallet question.

Output: two decisions—validator and wallet—not one combined recommendation.

### Checkpoint 4 — compliance scope

Run C0–C3. Run C4 only if necessary. Decide whether the eventual work is limited to the no-event path, includes a dirty overlay, or also needs structural sharing.

Output: validator/view decision and phone-risk assessment.

### Checkpoint 5 — optional hashing work

Run P0–P2 only for a selected tree candidate whose profile still warrants it.

Output: adopt/research/reject decision for a Poseidon batch API.

## Decision matrix

At each checkpoint, score candidates on the same axes:

| Axis | Weight | Required evidence |
|---|---:|---|
| Exact compatibility | Gate | Roots, proofs, typed state, serialization, restart, and deterministic thread-count parity |
| End-to-end latency | 30% | Median and p95 through the actual state boundary |
| Target throughput | 20% | Sustained workload at the intended batch size and hardware |
| Storage efficiency | 15% | Unique operations and bytes staged/committed |
| Memory/mobile behavior | 15% | Allocations, peak RSS, snapshot/clone cost, phone measurement where applicable |
| Failure and recovery | 10% | Atomic rejection, restart, rollover, and corruption tests |
| Implementation simplicity | 10% | New concepts, unsafe code, persistence complexity, and maintenance surface |

Any compatibility failure rejects a candidate regardless of performance. Prefer the simplest candidate that clears the performance gate; do not select N3 over N2 or C4 over C2 for a marginal benchmark win.

## Final deliverables

The spike ends with:

1. Reproducible release-mode JSON for all completed scenarios.
2. A differential-test suite for every candidate kept long enough to compare.
3. A table of hashes, reads, writes, bytes, allocations, median, and p95.
4. Separate decisions for nullifier, validator TCT, wallet TCT, compliance view, and Poseidon batching.
5. A selected design sketch showing typed inputs, state transitions, validation order, and persistence boundary.
6. A list of rejected variants and the measurement that rejected each one.
7. A production implementation issue breakdown, without implementing it.
8. Explicit unrun tests, unsupported hardware, and remaining uncertainty.

After the decision, remove dead prototype variants from any branch intended to merge. Keep only generally useful benchmark infrastructure, exact parity tests, raw results, and the selected reference prototype if it remains valuable. Production implementation should be a separate change with reproducing tests first and focused checks after each affected layer.

## Completion criteria

The spike is complete when the team can answer these questions without extrapolating from isolated hashes:

- Which nullifier candidate wins through durable state, and by how much?
- Is nullifier parallel hashing useful after path deduplication?
- Can validators replace per-commitment TCT insertion with a finalized block root without losing persistence facts?
- Is a wallet `Keep` batch builder worth its memory and complexity?
- Can compliance blocks be applied atomically without whole-tree cloning or repeated full validation?
- Does any selected candidate still justify a new Poseidon batch API?

If the data does not clear a decision gate, the correct outcome is **research further** or **no change**, not a partially integrated optimization.
