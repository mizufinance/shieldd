# Tree update production implementation plan

Date: 2026-08-31

Base revision: `e5359431cbbae25e4be0c706866e916feea27aa2` (`origin/dev`)

Branch: `codex/tree-update-spikes`

Status: implementation plan only; no production path changed

This plan turns the prototypes in
[`tree-spike-results.md`](tree-spike-results.md) into production work. It also
incorporates a second pass over the application lifecycle, validator replay,
TCT finalization, and wallet SQLite boundaries.

## Decision

Proceed, but not by copying every fastest prototype directly.

| Area | Decision | Important qualification |
| --- | --- | --- |
| Nullifier tree | Implement block-level staging followed by one proposal-ordered dirty-path update at `EndBlock`. | The 23–46x benchmark currently applies directly only to the explicit `PrepareProposal` batch. `ProcessProposal` and committed `DeliverTx` still replay tree inserts per transaction. |
| `PrepareProposal` | Stop constructing a nullifier tree in the disposable proposer fork. Validate committed spends, same-block uniqueness, and capacity, then stage facts only. | The fork is discarded and no consumer observes its terminal nullifier root. Building it is unnecessary work. |
| `ProcessProposal` | Keep all transaction failures and non-nullifier effects proposal-ordered, but defer nullifier materialization exactly as delivery does. | A proposal must still reject as a whole. This is not the candidate-dropping `PrepareProposal` flow. |
| Nullifier ordered access | Prototype a bounded adaptive scan for large batches; do not add an unbounded retained generation cache. | A generation spans 30 epochs of up to 17,280 blocks each. A full retained index would make validator memory proportional to attacker-driven chain activity. |
| Validator TCT | Implement an all-`Forget` block-root builder and one finalized-block insertion above a measured threshold. | `Tree::insert_block(root)` already finalizes the block. The existing `end_sct_block` must consume a typed finalized marker instead of appending an extra empty block. |
| Wallet TCT | Keep the current relevant-note `Keep` builder. | A root-only finalized block cannot retain spend witnesses. |
| Compliance validator | Replace per-mutation whole-tree reloads with local mutation checks and one full end-of-block verification. | Current roots and action order remain unchanged. Full verification still runs before anchors are finalized. |
| Compliance wallet | Make compliance projection, wallet block persistence, and sync-height advancement one transaction; publish both trees as one immutable snapshot. | The no-event fast path is useful but its absolute clone saving is tiny. Atomicity and lock ordering are the priority. |
| Poseidon | Use existing scalar functions and parallelize independent calls only inside the selected tree algorithms. | No new hash, circuit, GPU, or SIMD API is planned. |

There is no cryptographic primitive change and no privacy regression in this
plan. The main risks are consensus determinism, failure atomicity, unbounded
memory, finalizing a TCT block twice, and exposing or persisting mixed tree
snapshots. Each is handled by an explicit state transition and differential
gate below.

## Findings from the production call sites

### Why only `PrepareProposal` batches nullifiers today

`PrepareProposal` runs on a temporary `App` created from the latest committed
snapshot. Its parallel read phase may discard invalid candidates, its serial
phase records the accepted effects, and `apply_prepare_proposal_nullifier_batch_profiled`
applies the surviving nullifiers once. The temporary app is then discarded.

`ProcessProposal` has different acceptance semantics. A non-proposer validator
must reject the whole proposal if any transaction fails, so it uses
`deliver_tx_with_verified_stateless_profiled` in proposal order. That path
reuses normal transaction execution, where `nullify_all` currently mutates the
tree immediately. The proposer can skip this replay only when the exact proposal
digest matches one it already prepared.

The history shows both flows were introduced as part of the same proposal
aggregation architecture. There is no documented tree or protocol requirement
for `ProcessProposal` to materialize each intermediate nullifier root. The
asymmetry is an implementation consequence of reusing the delivery path.

The safe improvement is not to make `ProcessProposal` call the
candidate-dropping prepare routine. It is to make normal nullifier execution a
block state machine:

1. validate and stage successful transaction nullifiers in order;
2. make later transactions consult both durable and staged spends;
3. materialize the authoritative tree once in `Sct::end_block`;
4. materialize before a possible nullifier-generation rollover;
5. retain the ordered staged list until compact-block construction completes.

This same state machine covers proposer filtering, remote validator replay,
actual `DeliverTx`, and host execution without giving those callers different
tree semantics.

### Improvements to the current `PrepareProposal` path

The current path performs committed-spend reads during candidate preparation,
then `insert_batch` repeats the marker checks, and `insert_one` checks the current
marker again. It also constructs a tree whose root is discarded.

After block staging is introduced, `PrepareProposal` should:

- retain the early transaction and block duplicate checks;
- retain committed current/previous-generation checks tied to the loaded
  generation identity;
- stage the accepted ordered nullifiers in the temporary state;
- enforce the block and generation capacity bounds;
- omit `nullify_proposal_batch`, all path hashing, and all nullifier-tree writes;
- report validation, staging, and avoided-materialization metrics separately.

This should outperform the N4 prototype because it removes, rather than merely
accelerates, disposable tree construction. Actual delivery still computes and
persists the exact tree once at `EndBlock`.

### Existing compliance correctness and UX issues

The view worker currently commits compliance leaves and anchors in a standalone
SQLite transaction before the rest of the wallet block is recorded. If later
scanning fails, the same height is retried against an already-advanced
compliance tree. This can leave sync unable to make progress even though each
individual SQLite transaction was internally atomic.

The worker acquires compliance locks in asset-then-user order, while proof RPCs
acquire them in user-then-asset order. The inversion can deadlock. The worker
also holds both write locks while cloning, querying scope, applying events, and
persisting SQLite state, which can make proof RPC latency track sync cost.

The production design replaces the pair of locks with one immutable
`ComplianceSnapshot { height, user_tree, asset_tree }`. Readers clone an `Arc`
under a short read lock and then release it. The worker builds a private next
snapshot, persists it in the wallet block transaction, and swaps the `Arc` only
after commit.

## Non-negotiable invariants

### Nullifiers

- Positions and linked-list transitions follow successful transaction and
  action order. Inputs are never sorted before semantic planning.
- A failed transaction contributes no staged nullifier, event, tree write, or
  compact-block entry.
- Duplicate inputs within a transaction or block and spends in either active
  generation are rejected before materialization.
- Later transactions see earlier successful staged spends even though the
  durable tree has not yet changed.
- The staged count plus durable count cannot exceed the generation capacity or
  the protocol block-nullifier limit.
- `Sct::end_block` materializes once, before `Sct::end_epoch` can roll the
  generation. A nonempty staged block cannot be committed while still open.
- Leaf, value-index, node, root, count, generation record, compact-block list,
  and restart state match the sequential oracle exactly.
- State reads that fail during planning leave the outer `StateDelta` unchanged.

### TCT

- Validator block construction is all `Witness::Forget`; no wallet caller can
  enter the root-only API.
- Every reserved position and commitment event remains proposal ordered.
- Block padding uses `Hash::one()`, and every height uses the existing TCT
  domain.
- A direct block insertion is already finalized. End-block code consumes its
  root and does not finalize a second empty block.
- Empty blocks, partial blocks, full 65,536-leaf blocks, multiple blocks, epoch
  boundaries, storage updates, and reload state match sequential insertion.

### Compliance

- Compact-block compliance anchors are mandatory and checked even when there
  are no events.
- User and asset roots at a height are published and read as one snapshot.
- Event order is canonical. Registrations, status changes, repeated predecessor
  changes, and policy replacements cannot be reordered.
- Event-provided leaves must authenticate the expected local previous leaf and
  linked-list gap before mutation.
- Validator local checks run per mutation; a full materialized-tree check runs
  once before end-of-block anchors are recorded.
- View compliance rows, relevant leaf data, policies, tree cursors, wallet block
  data, and sync height commit in one SQLite transaction for eventful blocks.
- After SQLite commit, in-memory publication is infallible. Before commit, proof
  readers retain the previous complete snapshot.
- A repeated height with identical facts is harmless; a repeated height with
  different roots fails closed. `ON CONFLICT DO NOTHING` must not hide drift.

### Parallel execution

- Parallel work operates only on immutable inputs for one tree level.
- Results are collected and staged in canonical sorted key order.
- Thread count and the sequential/parallel threshold can change latency but not
  output, errors, events, or write order.
- Parallel work uses the existing process CPU budget. It must not build a new
  Rayon pool per block or create unbounded async tasks.
- Batch size, dirty nodes, scan bytes, and temporary memory all have checked
  hard bounds before allocation.

## Planned production footprint

This implementation intentionally affects more than five files. The expected
scope is explicit here; unrelated circuits, schemas, CLI output, and formal
verification remain out of scope.

### Nullifier lifecycle and tree engine

- `crates/core/component/sct/src/nullifier_tree.rs`
- `crates/core/component/sct/src/component/tree.rs`
- `crates/core/component/sct/src/component/sct.rs`
- `crates/core/component/sct/src/state_key.rs`
- `crates/core/app/src/app/mod.rs`
- `crates/core/app/src/app/preconsensus.rs`
- `crates/core/app/src/server/consensus.rs`
- focused app/component tests under the same crates

### Validator TCT

- `crates/crypto/tct/src/block.rs`
- `crates/crypto/tct/src/tree.rs` only if a narrow finalized-state query is
  required
- `crates/crypto/tct/Cargo.toml`
- `crates/core/component/sct/src/component/tree.rs`
- `crates/core/app/src/app/mod.rs`
- TCT property and persistence tests

### Compliance validator and wallet

- `crates/core/component/compliance/src/indexed_tree.rs`
- `crates/core/component/compliance/src/registry.rs`
- `crates/core/component/compliance/src/component/state.rs`
- `crates/view/src/compliance_tree.rs`
- `crates/view/src/worker.rs`
- `crates/view/src/storage.rs`
- `crates/view/src/storage/compliance.rs`
- `crates/view/src/service.rs`
- view storage, worker, and proof-service tests

No compatibility flag or long-lived dual production path is planned. The old
per-nullifier batch loop, proposer-only materialization helper, paired compliance
locks, and per-event whole-tree validation are deleted when their replacements
pass their gates.

## Phase 0: close the remaining prototype gaps

Do this before production edits.

### N5 bounded ordered access prototype

Add a nullifier candidate that scans the compact `value_desc` index rather than
all serialized leaves:

1. read the generation identity and durable leaf count;
2. scan at most a hard byte/count budget into a compact sorted
   `(FqOrdKey, position)` vector;
3. validate canonical keys, unique values, positions, and exact expected count;
4. detect current-generation exact matches from the vector;
5. resolve proposal-order predecessors by binary search plus a batch overlay;
6. load only unique durable predecessor leaves;
7. check the previous generation separately;
8. fall back to deduplicated point/range reads when the generation exceeds the
   budget or the batch is too sparse.

Benchmark empty, 10k, 100k, and 1m-prefill fixtures where practical, including
peak RSS. Selection must be based on a hard memory budget and measured
scan-to-batch density, not on attacker-controlled allocation success.

An unbounded retained `BTreeMap` or full-generation cache is a rejected design.
If neither bounded scan nor point reads reaches the throughput gate at larger
generations, investigate an upstream Cnidarium batch-lower-bound API separately;
do not add another database or consensus storage index in this work.

### Proposal lifecycle fixtures

Create one fixture that runs the same block through:

- proposer `PrepareProposal` and digest-reuse `ProcessProposal`;
- remote-validator `ProcessProposal`;
- `BeginBlock` / successful and failed `DeliverTx` / `EndBlock` / `Commit`;
- host begin/end/commit execution.

Compare accepted transactions, events, compact block, nullifier generation
state, complete Cnidarium deltas, committed root, and reload state. Include a
late failed transaction, same-block double spend, near-capacity generation,
epoch rollover, repeated consensus round, and injected read error.

### TCT integration fixture

Extend the spike through the real app materialization and `end_sct_block` call.
This test must fail if direct finalized insertion is followed by an extra empty
block. Cover multiple app blocks and an epoch boundary before selecting an API.

### Compliance failure fixture

First reproduce the current cross-transaction failure: persist a compliance
event, fail later wallet scanning, retry the same height, and demonstrate the
stalled or divergent state. The production storage test then becomes the
acceptance test for the atomic projection.

## Phase 1: deterministic nullifier dirty-path engine

Implement the essential N2 algorithm in `nullifier_tree.rs` before changing the
application lifecycle.

### Internal records

Use concrete internal types, not a generic tree trait:

- `NullifierBatchIdentity { tree, generation, root, leaf_count, previous_tree,
  previous_root }`;
- `NullifierLeafMutation { position, leaf }`;
- `NullifierNodeMutation { level, position, hash }`;
- `NullifierBatchPlan { identity, ordered_inputs, leaves, nodes, final_root,
  final_count }`.

The planner is pure after its bounded state-read phase. It validates all facts
before the staging function emits writes.

### Algorithm

1. Validate batch length, duplicates, generation state, both active spent sets,
   and capacity.
2. Resolve every new leaf and predecessor replacement in input order into a
   final leaf overlay.
3. Commit each changed leaf once in the plan.
4. Derive the unique dirty parent set bottom-up.
5. Fetch every missing base child once per level.
6. Hash sequentially and produce sorted node mutations.
7. Validate the terminal root and count against the starting identity.
8. Stage leaves, value indexes, nodes, root, count, and generation record once.

Delete the repeated `insert_one` loop after exact differential tests pass.
Retain a small-batch implementation only if benchmarks prove a meaningful
regression and both paths share the same planner and staging records; it must be
a measured dispatch, not a compatibility path.

### Phase 1 gate

- Exact change-map, root, proof, failure atomicity, commit, and restart parity.
- Identical output at batch sizes 0, 1, 2, 100, 1k, 10k, and the 32,768 block
  limit.
- Same-gap, ascending, descending, spread, duplicate, previous-generation
  spent, near-full, and rollover fixtures.
- No more than 10% regression for two inserts.
- At least 5x improvement for 10k empty and medium-prefill storage-backed runs.

## Phase 2: block-level nullifier state machine

Once Phase 1 is correct, make it the one authoritative block materializer.

### State shape

Replace the loose pending vector with a typed object-store record:

```text
PendingNullifierBlock
  Open { persistent ordered entries, persistent membership set }
  Materialized { ordered entries, generation identity, final root, final count }
```

It is ephemeral `StateDelta` state, not a new durable schema. Nested transaction
deltas cheaply clone and merge the persistent collections, so a failed
transaction discards its additions. Both collections are bounded by the shared
32,768-nullifier block limit; membership checks must not scan the ordered list.

### Lifecycle changes

- `nullify_all` validates the source, local duplicates, durable spends, staged
  spends, block bound, and generation capacity, then appends only to `Open`.
- `is_nullifier_spent` and batch checks return true for durable or staged
  entries. A separate private durable-only helper is used by materialization so
  the batch does not reject itself.
- `Sct::end_block` transitions `Open` to `Materialized` by applying Phase 1 once.
- This hook runs before `Sct::end_epoch`, so rollover cannot move the block into
  the next generation.
- Compact-block construction requires `Materialized` for a nonempty list and
  emits the same ordered nullifiers.
- Actual commit requires that a nonempty pending block is `Materialized`;
  process/prepare forks may be discarded while open.
- Move the block-nullifier limit to the SCT boundary or a shared protocol
  constant so staging and proposal admission enforce one value.

### Proposal changes

- Delete `nullify_proposal_batch` and
  `apply_prepare_proposal_nullifier_batch_profiled`.
- `PrepareProposal` retains committed reads and `PrepareBlockLocalState`
  conflict resolution, but only stages accepted facts.
- Remote `ProcessProposal` keeps its current whole-proposal rejection semantics
  and sequential non-nullifier transaction effects. Normal `nullify_all` now
  stages, so it no longer performs per-transaction tree work.
- Digest-reuse acceptance remains an optimization only for the exact proposer
  output.
- Actual delivery uses the same staging behavior and materializes during its
  real `EndBlock`.

### Phase 2 gate

- The Phase 0 lifecycle fixture has byte-identical committed state and events.
- Later transactions reject an earlier staged spend before end block.
- A failed transaction cannot poison the block log.
- A failed end-block plan commits nothing.
- Rollover inserts the final old-generation block before freezing it.
- Prepare and process profiles show zero nullifier path hashes/tree writes.
- Delivery performs one materialization per nonempty block.

## Phase 3: bounded access and deterministic parallelism

Add N5 only if its Phase 0 results improve the selected workload within the
memory bound. Add N3 level parallelism after the sequential production engine is
stable.

- Choose point reads or the bounded compact scan from starting leaf count,
  batch size, and a fixed maximum temporary byte budget.
- Skip current-generation marker reads when a validated compact scan already
  proves exact membership; still check the previous generation.
- Parallelize one complete dirty level only when its parent count exceeds a
  measured local threshold.
- Collect results, then stage in `(level, position)` order.
- Record planner, predecessor I/O, base-node I/O, hash, staging, commit, scan
  bytes, peak temporary bytes, and selected-strategy metrics.

Do not retain a full index across blocks in this phase. Reconsider a bounded
cross-round cache only if profiles show repeated proposal rounds dominate and a
cache can be tied to an immutable snapshot identity without growing with the
generation.

### Phase 3 gate

- Exact output across 1, 2, 4, 8, and default worker counts.
- No unbounded `buffer_unordered`, allocation, or per-call thread-pool creation.
- 10k medium-prefill exceeds 10k inserts/s including commit on target ARM and
  x86 validator storage, with repeated median and p95 runs.
- 100k+ prefill does not cause a restart, RSS, or latency cliff.
- If the gate is missed, ship sequential dirty union and keep storage-access
  work as a separate issue; do not compensate with an unbounded cache.

## Phase 4: validator TCT finalized-block path

### Crypto API

Add a narrow all-`Forget` constructor under `builder::block`, for example a
function returning `block::Root` from an ordered commitment slice. It owns the
height domains and padding rules. The application must not duplicate TCT hash
geometry.

The function:

- rejects more than 65,536 commitments;
- uses the current scalar `Hash::of` and `Hash::node` functions;
- uses a sequential fallback below a measured threshold;
- returns the empty finalized root for an empty input;
- has property tests against `block::Builder` for every partial quaternary
  boundary and randomized vector.

### Component integration

- Validate that reserved positions are contiguous and all entries fit the
  current block.
- For a large nonempty batch, build the root and call `Tree::insert_block(root)`.
- Store a typed `SctBlockMaterialization::Finalized { start, count, root }` in
  the same state delta.
- For the sequential path, retain an `Open` marker.
- `end_sct_block` consumes the marker: use the recorded root for `Finalized`, or
  call `tree.end_block()` for `Open`/empty.
- Continue epoch finalization, anchor events, compact-block roots, and
  incremental storage through the existing `write_sct` boundary.

Do not expose this API to `scan_block` or wallet tree wrappers. Their no-note
root insertion is already optimal; relevant-note blocks continue using
`Witness::Keep`/`Forget` insertion.

### Phase 4 gate

- Exact positions, events, block/epoch/global roots, `Tree::updates` bytes,
  stored commitments, forgotten ranges, reload, and later insert behavior.
- Empty, 1, 3, 4, 5, 1k, partial-capacity, full-capacity, multi-block, and
  epoch-boundary cases.
- Failure leaves the SCT and materialization marker unchanged.
- No extra empty block after direct insertion.
- At least 2x application-level end-block improvement at a realistic block
  size; the spike measured 3.4x at 1k.

## Phase 5: compliance safety and batching

### Validator changes

The current asset path can load and validate the entire materialized IMT in
`ensure_asset_tree_initialized` and again after each mutation. Replace this with:

1. full validation at app readiness/startup;
2. O(1) initialization/root/count/sentinel checks before a mutation;
3. exact local validation of the affected leaf, predecessor/successor, value
   index, capacity, and old authentication path;
4. deterministic dirty-path writes for that mutation;
5. a dirty flag for the block;
6. one full `verify_asset_tree_after_mutation` in `Compliance::end_block`, before
   `record_compliance_anchors`.

For multiple mutations in one block, add a typed batch verifier only after this
change is measured. Do not defer a policy/root transition across a later action
that may read it.

For the view `IndexedMerkleTree`, add a checked event-batch method that clones
and validates once for the whole compact block, applies events in order, and
validates once at the end. This gives rollback safety without one full clone and
validation per registration.

### Wallet projection

Introduce:

- `ComplianceSnapshot { height, user_tree, asset_tree }`;
- `ComplianceBlockPlan { height, next_snapshot, dirty user/asset records,
  relevant leaf updates, policy updates, published roots }`.

The worker flow becomes:

1. clone the current snapshot `Arc` under a short read lock;
2. if there are no compliance events, compare both compact-block anchors and
   return no tree delta;
3. otherwise build and validate a private next snapshot in canonical event
   order;
4. scan the rest of the compact block without publishing compliance state;
5. pass the compliance plan into the same `record_block` SQLite transaction as
   notes, SCT state, other block facts, and `sync_height`;
6. commit SQLite;
7. atomically replace the single compliance snapshot `Arc`;
8. notify sync watchers.

No-event empty blocks keep the existing deferred-height behavior after anchor
validation. Local compliance anchor rows should be change points or part of the
eventful block transaction, not a reason to force one SQLite commit per empty
block. A lookup by height uses the latest change point at or before that height.

Change anchor insertion to accept an exact replay and reject a conflicting
root pair. Never silently ignore a different root at an existing height.

### Phase 5 gate

- Reproducing cross-transaction failure is fixed: after any injected failure,
  the database, in-memory snapshot, and sync height all remain at the previous
  block and retry succeeds.
- Proof readers observe either the old pair or new pair, never mixed roots.
- No lock-order cycle remains; RPCs do not hold a tree lock during SQLite or
  network awaits.
- Missing anchors, wrong roots, wrong positions, stale previous leaves,
  malformed policies, duplicate asset values, and conflicting replay fail
  closed.
- Restart reconstructs the exact snapshot and proofs from SQLite.
- User/asset membership and non-membership proofs verify before and after every
  tested block.
- Peak RSS and p95 proof latency are measured with sync active.

## Phase 6: cleanup, observability, and release validation

Delete replaced helpers, metrics, tests, and comments that describe the old
flows. Do not leave a runtime feature flag or schema alias.

Production metrics should include:

- staged and materialized nullifier counts;
- nullifier plan/read/hash/stage/commit latency and chosen access strategy;
- dirty leaves/nodes and temporary bytes;
- TCT sequential versus finalized-block selection and timings;
- compliance event counts, plan time, SQLite time, snapshot publication time,
  and proof RPC latency;
- validation/rebuild failures without logging private wallet leaf contents.

Run before merge:

```sh
cargo fmt --all -- --check
cargo test -p shieldd-sdk-sct
cargo test -p shieldd-sdk-tct
cargo test -p shieldd-sdk-app
cargo test -p shieldd-sdk-view
cargo test -p shieldd-sdk-compliance
cargo test -p shieldd-sdk-bench --lib tree_research
```

Also run the relevant workspace checks used by CI, the release benchmark suite
on target ARM and x86 hardware, a production-disk commit run, and one wallet
sync/proof run on representative phone hardware. Prover and release-gated
circuit tests are required only if the implementation unexpectedly touches a
circuit-facing type or hash API; the selected plan should not. Formal work stays
in `mizufinance/shieldd-formal` and is not added here.

## Pull-request sequence and stop/go points

1. **Remaining gates:** N5, proposal lifecycle, TCT app integration, and
   compliance failure reproducer. Stop or revise any workstream whose premise
   fails.
2. **Nullifier engine:** typed sequential dirty union and differential tests.
3. **Nullifier lifecycle:** block staging, end-block materialization, and removal
   of disposable prepare/process tree construction.
4. **Nullifier bounded I/O and parallelism:** only after the sequential path is
   stable and measured.
5. **Validator TCT:** root builder, typed finalization marker, persistence and
   epoch tests.
6. **Compliance correctness:** single wallet snapshot and atomic SQLite block
   projection before performance claims.
7. **Compliance validation optimization:** validator end-block verification and
   view event batching.
8. **Cleanup and release evidence:** delete obsolete paths, run full checks, and
   publish distributions and memory results.

Nullifier phases 2–4 are the highest throughput priority. Compliance atomicity
is the highest correctness/UX priority and can proceed independently. Validator
TCT is valuable but should not merge until the double-finalization integration
test exists. Wallet TCT selective-finalized work remains a separate research
issue, not part of this implementation.
