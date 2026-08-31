# Shieldd tree performance and update design

Date: 2026-08-31  
Base revision: `2a0eff3b3bc8a6a2a08f1f542a12ce2ae67a9c18` (`dev`)  
Status: initial research pass; implemented prototype results and updated decisions
are in [`tree-spike-results.md`](tree-spike-results.md); no production implementation

## Decision summary

Shieldd should not replace its trees with RotorTree or change any canonical tree shape. The useful design is narrower:

1. For the nullifier tree, preserve proposal order while planning all linked-list mutations, then hash and persist the union of dirty paths once.
2. For validator TCT updates, build the fixed eight-level block subtree in parallel and insert its exact finalized root. Keep the current path for wallets until a batch builder also preserves `Keep` witnesses.
3. For compliance trees, stop cloning/revalidating whole trees. Apply a block's events to an overlay, validate the published roots, then materialize the unique touched nodes.
4. Add parallel thresholds and, later, an exact Poseidon377 batch API. Parallelism is useful only while a level has enough independent parents.

The largest tree bottleneck at a 5,000 transfer/s target is the nullifier tree. A transfer has exactly two padded inputs and two padded outputs, so that target implies 10,000 nullifier insertions and 10,000 TCT commitments per second. On the test machine, the current 10,000-nullifier batch took 23.7–24.7 seconds in an in-memory `StateDelta`, while an exact-root planning/dirty-path prototype took 0.395–0.400 seconds. The current TCT builder took 0.289 seconds for 10,000 commitments and the eight-thread prototype took 0.043 seconds.

The initial nullifier prototype had not yet been integrated through
`StateRead`/`StateWrite`, so its 60–62x result was an upper bound. The follow-up
spike now includes the state boundary, exact serialized delta comparison, commit,
and restart. See the result report for the superseding 10k figures and remaining
throughput gate.

## Tree semantics and constraints

| Tree | Canonical shape | Mutations | Observable root/proof boundary | Current update behavior | Safe optimization boundary |
|---|---|---|---|---|---|
| TCT | Quaternary Poseidon377, fixed depth 24 as block/epoch/global tiers of 8 levels | Append only; each commitment is `Keep` or `Forget`; block and epoch finalization | Height-domain-separated 24-layer proofs, anchors, finalized block and epoch roots | Validator proposal materialization inserts forgotten commitments sequentially into one cached tree; wallets insert a block root unless a relevant note requires rebuilding every commitment | Parallelize leaf hashing and each fixed block level; preserve order, height domains, `Hash::one()` final padding, positions, and wallet witnesses |
| Nullifier | Quaternary indexed tree, fixed depth 20, one tree per generation | Append a new leaf and mutate its ordered predecessor | Membership/non-membership proofs and exact current/previous generation roots | `insert_batch` validates the batch, then calls a full two-path insertion for every nullifier | Plan the ordered linked-list state sequentially; compute final leaf values; hash the unique dirty-parent set bottom-up |
| User compliance | Quaternary sparse tree, fixed depth 16, assigned positions | Append registration or replace an existing status leaf | Transfers require the exact current root; 16-layer membership paths | Validator helper can accept multiple leaves but walks each path separately; callers currently pass one. View sync applies compact-block events sequentially | Batch only within an atomic block/event boundary that has no intermediate-root consumer; preserve the existing nonstandard empty hashes |
| Asset policy | Quaternary indexed tree, fixed depth 16 | Registration appends a leaf and mutates its predecessor; policy change replaces one leaf | Transfers require the exact current root; membership and gap non-membership paths | Two paths are walked sequentially, and validator/view paths reconstruct, clone, or validate the full tree around mutations | Plan linked-list changes sequentially and hash a dirty union; validate touched leaves, links, paths, and final root rather than rebuilding the entire tree |

All four roots are consensus/circuit facts. Fixed depths, child order, leaf commitments, domain separators, padding, and proof layouts are not implementation details that can be changed by this work.

### Important compatibility details

- TCT internal hashes use `DOMAIN_SEPARATOR + height`; a generic domain-zero quaternary reducer is not compatible.
- A partial finalized TCT block pads every absent completed child with `Hash::one()`. RotorTree's lean tree instead lifts a singleton and hashes only present children.
- Nullifier positions are proposal-order positions. Sorting nullifiers before planning would produce a different tree even if the linked-list value order ended up valid.
- Nullifier intermediate roots are not externally observed inside `insert_batch`; the final generation state is stored after the proposal-ordered loop. This permits one final path-union calculation.
- User-tree `ZERO_HASHES` recursively use the previous zero as the Poseidon domain, while ordinary parent hashing uses domain zero. The prototype found this through a failed parity test and now preserves it. Normalizing it would change every sparse root and must be treated as a separate protocol change.
- User and asset roots must be current, not merely retained historical roots. Batching cannot cross an action boundary at which a later transaction validates one of those roots.

## Current dataflow and avoidable work

### Validator TCT

The application reserves canonical positions, later materializes proposal-ordered commitments with one tree load, finalizes the TCT block, publishes its root in the compact block, and persists incremental TCT updates at the block boundary. Validators always use `Forget`. This makes a root-only finalized block builder sufficient for validator state, provided position and event bookkeeping remain unchanged.

Wallets have a different requirement. During compact-block sync they insert the authenticated block root directly when no note is relevant. If at least one note is relevant, they rebuild the block, using `Keep` for owned notes and `Forget` for the rest. A root-only parallel builder does not preserve the internal nodes needed to witness those kept notes.

### Nullifier tree

Each insertion performs two 20-level path updates: the new leaf and the predecessor. That is 40 internal Poseidon hashes per insertion even when almost every upper node is shared with earlier insertions in the same batch.

The path helper also performs four child reads at every level for both paths. Its `Option::unwrap_or(read_node(...).await?)` expressions evaluate the async read before `unwrap_or` selects the overlay value. The overlay therefore avoids using stale values but does not avoid the read. A normal insertion stages roughly:

- 160 node reads from the two paths;
- 40 internal hashes and two leaf hashes;
- 42 node puts before overwrite coalescing;
- predecessor search, predecessor-leaf, count, and duplicate/spent reads;
- four to six leaf/index puts, plus root and count updates.

At 10,000 sequential positions the prototype hashes 3,351 unique parents rather than 400,000 repeated parents. On a pre-populated generation, it should also deduplicate child reads and writes by node key.

### User and asset compliance trees

The user and asset path helpers have the same eager `unwrap_or(read...await?)` pattern. One user update performs 64 node reads and 16 internal hashes. One asset registration performs two paths: 128 node reads and 32 internal hashes before storage coalescing.

Asset mutations have a larger problem. `ensure_asset_tree_initialized` loads all stored nodes and leaves and reconstructs/validates the tree when it is already initialized; `verify_asset_tree_after_mutation` repeats the full load and validation after the mutation. The in-memory `IndexedMerkleTree::insert` also clones the tree and validates it before and after mutation.

The view service compounds this on phone-class clients:

- it clones both complete compliance trees for every compact block, even if the block has no compliance events;
- it applies all user and asset events sequentially;
- asset `sync_from_event` uses the checked mutation path with whole-tree clone/validation;
- startup replays all user leaves and rebuilds all asset hashes.

Compliance mutations are governance/registration/status events rather than the normal transfer hot path, but unconditional per-block cloning makes tree size relevant even when mutation frequency is low.

## Prototype design

The research harness is in `crates/bench/src/tree_research.rs`; `crates/bench/src/bin/tree_research.rs` provides a reproducible JSON runner.

### Fixed TCT block reducer

1. Hash every commitment with the existing TCT leaf domain in parallel.
2. At heights 1 through 8, partition the current level into ordered groups of four.
3. Pad missing children with `Hash::one()` and call the existing height-aware `Hash::node`.
4. Insert the resulting `block::Root` into the existing tiered tree in a production implementation.

The prototype root matches `block::Builder::finalize().root()` for empty, partial, boundary, and 1,000-leaf shapes. It does not construct `Keep` witnesses.

### Sequential plan, parallel dirty-path union

For mutable sparse trees:

1. Validate and plan semantic mutations in canonical order.
2. Collapse repeated writes to each leaf to its final value.
3. At each level, derive a sorted set of unique parent positions.
4. Read each required child from the batch overlay or durable base.
5. Hash independent parents in parallel when the level is above a measured threshold.
6. Apply the sorted parent results to the overlay and continue upward.
7. Persist final leaves and unique nodes only after validating the final root and structural invariants.

Nullifier and asset predecessor selection remains sequential because a later insertion can target a gap created by an earlier insertion. Only hashing and node I/O are parallel/deduplicated.

The user prototype matches production roots and authentication paths. The nullifier prototype matches production roots, indexed leaves, positions, and authentication paths for sequential, descending/same-gap, and spread value orders.

## Benchmark results

### Environment and method

- Apple M4 Pro, 14 physical/logical cores, 48 GiB RAM
- macOS Darwin 24.6.0 arm64
- `rustc 1.89.0`
- release build; one timed run per scenario after build, not an isolated Criterion distribution
- production nullifier baseline uses a fresh in-memory Cnidarium `StateDelta`; it does not include RocksDB commit/fsync
- prototype thread-pool construction, parity checks, and proof comparisons are outside the timed region

Commands:

```sh
cargo test -p shieldd-sdk-bench --lib tree_research -- --nocapture
cargo run --release -p shieldd-sdk-bench --bin tree_research -- \
  --profile smoke --threads 1,4,8 \
  --output docs/research/tree-performance-smoke.json
cargo run --release -p shieldd-sdk-bench --bin tree_research -- \
  --profile full --threads 8 --skip-assets \
  --output docs/research/tree-performance-full.json
```

Raw results: `docs/research/tree-performance-smoke.json` and `docs/research/tree-performance-full.json`.

### Large cases

| Tree/workload | Current | Prototype, 8 threads | Wall-time ratio | Current internal hashes | Prototype internal hashes |
|---|---:|---:|---:|---:|---:|
| TCT, 50,000 appends | 1,467.2 ms | 191.5 ms | 7.66x | 16,670 | 16,670 |
| TCT, 10,000 appends | 289.1 ms | 43.2 ms | 6.69x | 3,337 | 3,337 |
| User, 10,000 sequential positions | 5,095.7 ms | 16.2 ms | 314.8x | 160,000 | 3,345 |
| User, 10,000 spread positions | 5,223.3 ms | 411.2 ms | 12.70x | 160,000 | 95,461 |
| Nullifier, 10,000 sequential values | 24,708.2 ms | 396.7 ms | 62.28x | 400,000 | 3,351 |
| Nullifier, 10,000 descending/same-gap values | 23,723.4 ms | 395.2 ms | 60.03x | 400,000 | 3,351 |
| Nullifier, 10,000 spread values | 24,117.2 ms | 399.6 ms | 60.36x | 400,000 | 3,351 |

Nullifier leaf positions are append positions, so all three value patterns have the same dirty-path geometry. The patterns exercise different predecessor-link planning.

### Parallel scaling and algorithmic reduction

For 1,000 TCT commitments, the exact-root reducer took 29.99 ms on one thread, 7.88 ms on four, and 4.30 ms on eight. TCT does the same number of hashes; its improvement is parallel Poseidon evaluation.

The mutable-tree gains primarily come from eliminating work, not adding threads:

- A 100-nullifier prototype took 5.75 ms on one thread and about 5.0 ms on four or eight. The batch planner and only 52 internal hashes leave too little parallel work to scale.
- A 100 spread-position user batch took 42.37 ms on one thread, 11.34 ms on four, and 6.81 ms on eight because it still had 1,285 independent hashes.
- A 10,000 sequential user batch shares enough parents to reduce hashes 47.8x. A spread batch shares fewer and reduces hashes only 1.68x.

This argues for a per-level threshold, not unconditional Rayon dispatch.

### Asset scaling warning

The checked in-memory asset insertion path took 89.3 ms for 10 registrations and 6,647.0 ms for 100. This path includes full-tree cloning/validation and is consistent with superlinear behavior. A 1,000-registration run was intentionally not executed: it would be a long O(n²)-style measurement without changing the diagnosis. The reported `internal_hashes` field for asset measurements counts only the two direct paths and excludes validation rebuild hashes.

## Hashing versus storage

The existing Poseidon377 API exposes scalar `hash_1` through `hash_7`; each call creates an `Instance` and hashes one input tuple. It has no compatible batch/SIMD entry point. The TCT result shows that independent scalar calls still parallelize well across cores.

For nullifiers, 400,000 hash-four operations account for a large share of the 24-second baseline, but the production path also performs about 1.6 million child-node reads at 10,000 insertions, repeated B-tree predecessor searches, serialization, and staged overwrites. Comparing the user-tree hash rate with the nullifier baseline suggests hashing and state/index work are both material; this is an inference, not a profiler attribution.

Therefore:

- parallel hashing alone is enough for TCT;
- dirty-path deduplication plus batched node I/O is required for nullifiers;
- removing full scans/clones matters more than hash SIMD for asset and mobile view paths.

## RotorTree assessment

RotorTree is useful as an algorithm catalogue, not a drop-in data structure. Its own README describes it as an append-only lean IMT that does not support in-place updates and is not intended for production use. It uses a generic hasher with Blake3 by default, assumes prehashed leaves, grows to `ceil(log_N(size))`, lifts singleton parents without hashing, and hashes partial groups without Shieldd's fixed padding. Those choices produce different roots and proof shapes.

The reusable ideas are:

- level-major contiguous/chunked storage;
- recomputing only the changed suffix or dirty parent union;
- `hash_many_into` as a hasher capability, with scalar fallback;
- parallel work thresholds and bounded task chunks;
- immutable structural-sharing snapshots for proof readers;
- WAL/checkpoint/mmap tiering only if storage profiling later shows Cnidarium is the limiting layer.

The source batches 16 parents per `hash_many_into` call, uses 64-parent parallel chunks, and defaults to a 1,024-parent parallel threshold. Those values are starting hypotheses, not Shieldd settings. Shieldd's Poseidon cost, four-child nodes, and level widths need their own calibration.

Direct RotorTree replacement is rejected because it would change roots/circuits, omit in-place updates, duplicate the existing durable-state spine with another WAL, and still require a new exact Poseidon377 hasher and leaf semantics.

Primary references:

- [RotorTree design and tuning](https://github.com/ethsystems/works/blob/e5593dc5cbaa67d1f9e351d82ee1844129a0ccb7/crates/rotortree/README.md)
- [RotorTree changed-suffix and batch-parent implementation](https://github.com/ethsystems/works/blob/e5593dc5cbaa67d1f9e351d82ee1844129a0ccb7/crates/rotortree/src/tree.rs)
- [Shieldd's pinned scalar Poseidon377 hash API](https://github.com/mizufinance/poseidon377/blob/72e3d94d4c90befa1cdbd4dbb4e3da461f9639ee/poseidon377/src/hash.rs)
- [One-Phase Batch Update on Sparse Merkle Trees](https://arxiv.org/abs/2310.13328), which independently uses bottom-up unique-parent batching and reports workload-dependent benefits
- [Neptune](https://github.com/lurk-lab/neptune), evidence that batch/GPU Poseidon and tree construction are feasible, but with different fields and parameters and therefore not root-compatible

## Sharding, snapshots, and storage layout

Arbitrary semantic sharding is not attractive:

- TCT already has canonical block and epoch subtrees. Parallel subtree construction is sufficient; a different shard root composition would be a protocol change.
- Nullifier and asset predecessor links form one global value order. Planning cannot be independently sharded without a merge protocol, though final dirty parents can be partitioned by `(level, position)`.
- User leaves can be partitioned for hashing, but their one root must still be reduced deterministically.
- Nullifier generations are already the correct coarse lifecycle shard.

Immutable snapshots can help the view service, where whole BTreeMap clones currently protect atomic block application. A chunked or persistent node map can share untouched levels/chunks and make a block overlay proportional to dirty nodes. Snapshot retention must be bounded to the active view and proof readers; retaining every historical root in memory would defeat the benefit. Cnidarium should remain the durable source of truth.

## Ranked proposal

| Rank | Proposal | Expected effect | Complexity | Decision |
|---:|---|---|---|---|
| 1 | Storage-backed nullifier batch planner plus dirty-path union | Prototype is 60–62x; target at least 5x end-to-end and enough headroom for 10k nullifiers/s | High: linked-list planning, deduplicated reads/writes, failure persistence, generation rollover | Research further, then adopt only after end-to-end gate |
| 2 | Compliance block overlay; skip no-event clones; remove per-mutation whole-tree validation | Changes asset mutation from whole-tree work toward O(depth + dirty nodes); avoids per-block phone clones | Medium-high: validator and view atomicity, compact-block root checks, SQLite/Cnidarium persistence | Adopt design; benchmark implementation |
| 3 | Exact parallel TCT finalized-block builder for validator `Forget` batches | 6.7–7.7x root-build speedup at 10k–50k on 8 threads | Medium: integrate positions/events/persistence and block boundaries | Adopt for validators after integration parity tests |
| 4 | Shared exact-root dirty-parent engine for user and asset batches | 12.7x for 10k spread user updates and far more for contiguous positions; little value for a single mutation | Medium; roots use different zero tables and leaves | Reuse an internal algorithm, not a shared tree abstraction |
| 5 | Exact Poseidon377 `hash_many_into`/SIMD exploration | Additional improvement after algorithmic dedup; unknown on ARM and server CPUs | High crypto assurance and parity-test burden | Research later |
| 6 | Replace trees with RotorTree or change branching/root layout | Would require circuits, proofs, sync, and state changes | Very high/protocol | Reject in this workstream |

## Answers to the research questions

1. **Largest 5k TPS bottleneck:** nullifier insertion, by a wide margin. The current 10k batch is roughly 24 seconds versus 0.289 seconds for 10k TCT commitments on this machine.
2. **Bottleneck type:** nullifiers combine redundant hashing, redundant async node reads/writes, predecessor-index work, and serialization. TCT is primarily CPU/Poseidon. Asset scale is dominated by full-tree clone/validation. User single updates are path hashing and node I/O.
3. **TCT batch/mobile semantics:** validator `Forget` batches can use a parallel finalized block root. Wallets already fast-path irrelevant blocks; relevant blocks require a new witness-preserving batch builder before replacing their sequential rebuild.
4. **Nullifier sequential/parallel split:** validate duplicates and spent markers, then plan predecessor/new-leaf transitions strictly in proposal order. Hash final leaves and unique dirty parents in parallel per level; persist each final leaf/node once.
5. **User/asset frequency:** semantic mutations should be rare relative to transfers, but the view clones both trees every compact block today. Measure real compact-block event histograms before tuning bulk thresholds.
6. **Sharding:** use existing TCT tiers and nullifier generations. Partition hash work and node I/O, not canonical state or root composition.
7. **Beneficiaries:** validators gain from nullifier and TCT changes; wallets/mobile view services gain most from no-event fast paths, compliance overlays, structural sharing, and witness-preserving TCT batching; indexers/proof services gain from immutable snapshots. Circuits and provers should see no statement change, only possibly faster witness preparation.
8. **Phone-class performance:** not measured. The desktop single-thread TCT costs were 30 ms/1k, 289 ms/10k, and 1.47 s/50k, so relevant-note reconstruction can be visible on a phone. Compliance full-tree clones/rebuilds are a stronger memory/latency risk as registries grow. An Android/iOS benchmark remains required.
9. **Reusable RotorTree pieces:** changed-suffix recomputation, level-order batch hashing, thresholds, chunked structural sharing, and a batch-hasher interface. Its tree semantics and WAL are not reusable as-is.

## Required implementation gates

### Nullifier

- Compare current and candidate roots, leaf records, membership paths, non-membership paths, and stored node sets after every tested batch.
- Cover empty, medium prefilled, rollover-boundary, same-gap, ascending, descending, random, duplicate, already-spent, and failure-injection cases.
- Benchmark the same `StateRead`/`StateWrite` boundary, including node/index bytes staged and committed.
- Require a material end-to-end improvement; a hash-only win is insufficient.

### TCT

- Compare block, epoch, and global roots across all partial-group and tier boundaries.
- Compare positions, persisted `Tree::updates`, and restart reconstruction.
- Keep the wallet path unchanged until `Keep` commitments produce byte-identical proofs and forget behavior.
- Tune a threshold; small blocks may remain sequential.

### Compliance

- Preserve exact current-root validation and action ordering.
- Validate final linked-list well-formedness with local adjacency checks plus exact-root/path parity, not unconditional full reconstruction.
- Add no-event compact-block tests proving zero tree clones/writes.
- Test view restart from SQLite and validator restart from Cnidarium against the same roots and proofs.

## Limits and unrun work

- No phone, low-core server, x86, allocator, peak-RSS, energy, or thermal benchmark was run.
- No RocksDB commit/fsync, restart-time, WAL, mmap, or network-sync benchmark was run.
- Nullifier medium-prefill and nearly-full-generation cases were not run. Production depth 20 has about 1.1 trillion positions, so a literal nearly-full benchmark is impractical; a reduced-depth model or captured production snapshot is needed.
- Asset 1,000-item and production `StateWrite` benchmarks were not run after the 100-item checked path reached 6.65 seconds.
- TCT proof parity was not applicable to the root-only `Forget` prototype; wallet `Keep` proof parity remains a gate.
- Prover and release-gated circuit tests were not run because no production or circuit behavior was changed.
- Timings are single-run research measurements and should guide implementation priorities, not capacity commitments.
