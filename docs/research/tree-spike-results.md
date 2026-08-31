# Tree update spike results

Date: 2026-08-31  
Base revision: `2a0eff3b3bc8a6a2a08f1f542a12ce2ae67a9c18` (`dev`)  
Branch: `codex/tree-update-spikes`  
Status: research prototypes complete; no production tree path changed

This report executes the comparison program in
[`tree-prototype-plan.md`](tree-prototype-plan.md). The earlier architecture and
baseline analysis remains in [`tree-performance.md`](tree-performance.md).

## Decisions

| Area | Decision | Evidence | Remaining gate |
| --- | --- | --- | --- |
| Nullifier | Batch updates make sense. Stage successful block nullifiers and materialize one proposal-ordered dirty-path union at `EndBlock`. Use a bounded adaptive ordered scan or point reads, then thresholded level parallelism. | Exact serialized delta, roots, membership and non-membership paths, rejected-batch atomicity, commit, and reload parity. The best 10k prototypes were 23–46x faster end to end. | The production large batch currently exists only in `PrepareProposal`; `ProcessProposal` and delivery still insert per transaction. A 10k-prefill run reached 9.47k/s including commit. Prove the full lifecycle, 100k+ prefill, rollover, and production disks. |
| Validator TCT | Proceed with a production design for parallel `Forget` block construction and direct finalized-block insertion. | Exact block/global root, position, incremental `Tree::updates` bytes, and in-memory persistence reload parity. A 1k block was 3.40x faster including root construction and insertion. | Exercise multiple blocks, epoch boundaries, app position/event integration, and the production persistence adapter. |
| Wallet TCT | Keep the current relevant-block builder. | The spike reproduced exact eight-level block siblings for selected `Keep` positions, but did not construct the retained full-tree witness/index state needed for later updates. | A selective `Finalized` builder must prove full proof bytes, forgetting, later-block updates, reload, memory, and phone latency. |
| Compliance view | Make compliance projection and wallet block advancement one SQLite transaction, publish both trees as one immutable snapshot, and include a no-event tree fast path. Do not add structural sharing yet. | At 100 updates the user overlay was 4.45x faster on four threads. The asset prototype was 534x faster than checked per-insert full validation. | The current standalone compliance commit can advance the trees before later wallet scanning fails, and paired locks are acquired in opposite order by the worker and proof RPC. Prove failure retry, lock safety, corruption rejection, restart, and large registries. |
| Poseidon | Keep the scalar pinned functions and parallelize independent calls with Rayon. Do not create a new crypto batch API yet. | A 1k `hash_4` batch scaled 3.66x on four threads, while parallelism added only 10–13% after nullifier work deduplication. | Reconsider SIMD only if a production profile attributes at least 40% of the selected candidate to hashing. |

## Harness and compatibility checks

The research code is isolated under `crates/bench/src/tree_research/`. It adds:

- repeated timing distributions with warmup/repetition metadata;
- logical `StateRead`/`StateWrite` call, scan, key, value-byte, unique-key, and overlay-hit counters;
- typed `NodeKey`, `LeafMutation`, and `NodeMutation` records;
- fresh prefilled Cnidarium snapshots outside timed regions;
- exact differential fingerprints of verifiable and nonverifiable staged bytes;
- membership and non-membership proof comparisons;
- duplicate and already-spent rejection checks that assert an empty delta;
- a real `TempStorage` commit followed by root and proof verification on a new snapshot;
- deterministic thread pools and JSON output containing revision, OS, architecture, Rust version, profile, and seed.

Nullifier commit time is measured once per fixture and shown on every candidate.
This is valid for comparison because every successful candidate is required to
produce the exact same final Cnidarium change maps. The algorithm timing excludes
the common commit; the end-to-end columns below add it back.

TCT uses separate oracles: all `Forget` for validator persistence, and mixed
`Keep`/`Forget` for wallet block-path checks. Mixing those two semantics produces
different persistence records even though the root is the same, so the test suite
enforces the separation.

## Nullifier results

These are one-run release measurements on the Apple M4 Pro research machine.
They are decision evidence, not capacity commitments.

### 10,000 inserts, empty generation

| Prototype | Algorithm | Commit | End to end | Speedup | Internal hashes | Logical nonverifiable reads | Staged nonverifiable writes |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| N0 current | 23,524 ms | 46 ms | 23,570 ms | 1.0x | 400,000 | 1,630,001 | 479,976 |
| N1 read elision | 22,936 ms | 46 ms | 22,982 ms | 1.03x | 400,000 | 938,284 | 479,976 |
| N2 sequential dirty union | 630 ms | 46 ms | 676 ms | 34.8x | 3,351 | 10,054 | 43,353 |
| N3 parallel dirty union | 557 ms | 46 ms | 603 ms | 39.1x | 3,351 | 10,054 | 43,353 |
| N4 concurrent predecessors | 537 ms | 46 ms | 583 ms | 40.4x | 3,351 | 20,053 | 43,353 |
| N4 durable-leaf prefetch | 462 ms | 46 ms | 508 ms | 46.4x | 3,351 | 10,053 | 43,353 |

The empty case reaches about 19.7k inserts/s including commit. Concurrent
predecessor reads do extra sentinel reads here, while the one-scan index avoids
all 10,000 predecessor range scans.

### 10,000 inserts, 10,000 prefilled leaves

| Prototype | Algorithm | Commit | End to end | Speedup | Internal hashes | Logical nonverifiable reads | Staged nonverifiable writes |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| N0 current | 24,393 ms | 141 ms | 24,534 ms | 1.0x | 400,000 | 1,630,001 | 479,998 |
| N1 read elision | 23,819 ms | 141 ms | 23,960 ms | 1.02x | 400,000 | 921,127 | 479,998 |
| N2 sequential dirty union | 1,278 ms | 141 ms | 1,419 ms | 17.3x | 6,684 | 20,053 | 86,682 |
| N3 parallel dirty union | 1,144 ms | 141 ms | 1,285 ms | 19.1x | 6,684 | 20,053 | 86,682 |
| N4 concurrent predecessors | 1,073 ms | 141 ms | 1,215 ms | 20.2x | 6,684 | 20,053 | 86,682 |
| N4 durable-leaf prefetch | 915 ms | 141 ms | 1,056 ms | 23.2x | 6,684 | 10,053 | 86,682 |

The N4 scan prototype proves the value of ordered access but is not the
production design: scanning the entire generation for every batch is O(tree
size), while retaining the entire generation would make validator memory grow
with attacker-driven chain activity over a 30-epoch generation. The next
prototype should scan the compact value index only under a hard byte/count and
density budget, otherwise use deduplicated point/range reads. Durable state
remains authoritative.

N1 is rejected. It removes hundreds of thousands of eager overlay reads but
leaves the 400,000 repeated hashes and nearly 480,000 staged writes, yielding only
1–3% at large sizes and sometimes regressing the 100-item single-run case.

N2 is the essential algorithmic change. N3 is retained because thresholded
parallel hashing adds 10–13% on the tested 10k cases without changing output or
write order. N4 concurrent lookups are not selected. N4 prefetch is retained as
the reference for bounded ordered access, subject to the remaining scale gate.

## TCT results

For 1,000 commitments on four threads:

| Path | Time | Hashes | Parity |
| --- | ---: | ---: | --- |
| Current mixed `Keep`/`Forget` builder | 29.69 ms | 337 | Root/proof oracle |
| Parallel block root plus selected block paths | 8.24 ms | 337 | Exact finalized root and eight block-path layers |
| Direct validator block insertion after root construction | 0.48 ms | 16 | Exact all-`Forget` root, position, `Tree::updates` bytes, and reload |

The complete validator candidate is approximately 8.73 ms, or 3.40x faster than
the current builder. The benchmark covers empty, 1, 3, 4, 5, 100, and 1,000-leaf
block shapes. It does not yet cover epoch transitions or the application's event
and Cnidarium integration. In particular, `Tree::insert_block(root)` finalizes
the block immediately; the application must not subsequently call `end_block`
and append an extra empty block.

The selected wallet paths match the current proof's eight block-local layers for
first, middle, and last `Keep` positions. That is enough to validate the parallel
block geometry, but not enough to replace the current witness-capable tree.

## Compliance and hashing results

Four-thread, 100-item compliance smoke results:

| Scenario | Current | Candidate | Ratio | Compatibility checked |
| --- | ---: | ---: | ---: | --- |
| User updates, spread positions | 49.89 ms | 11.20 ms | 4.45x | Root and sampled paths |
| Asset registrations | 6,270 ms | 11.74 ms | 534x | Final leaves, root, and sampled paths |
| No-event tree handling | 0.009 ms clone | 0.000042 ms root read | ~216x | Unchanged root; no mutation |

The asset result compares the current checked insertion path, which repeatedly
clones and validates the full tree, with a pure proposal-order leaf plan and
dirty-path union. It demonstrates the algorithmic problem but does not yet prove
the validator/view storage and corruption trust boundaries.

The no-event clone result is a small absolute saving. Its production value is
avoiding tree mutation and persistence, not the reported relative ratio. Both
published anchors must still be checked. Compliance changes must also commit in
the same SQLite transaction as wallet block advancement; a separate successful
compliance commit followed by a later scan failure can otherwise make retrying
the height fail.

For 1,000 independent `hash_4` calls, scalar execution took 30.72 ms and four
Rayon workers took 8.39 ms, a 3.66x improvement with exact outputs. After
nullifier deduplication, the same parallelism improves the complete algorithm by
only 10–13%; storage/index planning and commit dominate enough that a new crypto
API is not justified.

## Selected production design sketch

### Nullifier batch transition

1. Read and validate the current `NullifierGenerationState` and cache identity.
2. Validate duplicates, active-generation spent markers, capacity, and proposal order before staging writes.
3. Resolve every predecessor/successor transition sequentially into typed final leaf mutations; positions remain proposal-order positions.
4. Hash final leaf commitments and derive sorted unique parents at each level.
5. Fetch each missing base child once; hash a level in parallel only above a local, non-consensus threshold.
6. Validate the terminal root, changed links, membership/non-membership samples, count, and generation record.
7. Stage each final leaf, value index, node, root, count, and generation record once through the existing `StateWrite` boundary.
8. Select a compact ordered scan only within a hard temporary-memory and density budget; otherwise use point/range reads. Do not retain an unbounded generation index.

The internal plan should be a concrete typed record containing generation
identity, starting count, final leaf mutations, and sorted node mutations. It
does not need a generic tree trait or a second storage abstraction.

### TCT policy

- Validators: below a measured threshold, retain sequential insertion; above it, construct the exact finalized block in parallel and insert it as one all-`Forget` block.
- Wallets with no relevant notes: retain authenticated root insertion.
- Wallets with relevant notes: retain the current builder until a selective `Keep` finalized structure passes the independent gate.

### Compliance policy

- A compact block with no compliance events compares both cached roots and performs no tree clone or tree write.
- An eventful block applies ordered events to a private next snapshot, verifies terminal published roots, then persists unique dirty leaves/nodes in the same SQLite transaction as the wallet block and sync height.
- Publish user and asset trees as one immutable snapshot so proof readers cannot observe mixed roots or deadlock on opposite lock ordering.
- Validate the complete asset tree at load/restart and locally validate changed adjacency and paths per block. Keep periodic audit reconstruction outside the mutation hot path.
- Do not add persistent/chunked structural sharing unless real post-C1/C2 clone/RSS measurements justify C4.

## Production issue breakdown

1. Add production nullifier differential fixtures first: same-gap, spread, medium prefill, duplicate, already-spent, rollover, count boundary, injected read error, commit, and restart.
2. Add the typed nullifier plan and sequential dirty union behind no runtime compatibility path; replace the old insertion loop when parity passes.
3. Add thresholded level parallelism and deterministic sorted staging. Tune on validator ARM and x86 hardware.
4. Change the application lifecycle to stage successful nullifiers and materialize once at `EndBlock`; remove disposable tree construction from `PrepareProposal` and per-transaction tree construction from remote `ProcessProposal`.
5. Prototype a bounded compact ordered scan with point-read fallback. Benchmark 100k+ generations and clear 10k/s including commit without an unbounded cache.
6. Integrate the parallel all-`Forget` TCT builder through app position reservation, a typed finalized marker, events, `Tree::updates`, Cnidarium persistence, multiple blocks, and epochs.
7. Keep wallet TCT behavior unchanged; create a separate selective-`Keep` issue only if phone traces show relevant-block reconstruction is material.
8. Reproduce and fix compliance cross-transaction retry and paired-lock ordering before the no-event performance work.
9. Add the compliance no-event helper and tests proving zero tree clones/writes while still checking both anchors.
10. Prototype real validator/view compliance block overlays, atomic SQLite block persistence, load-time full validation, local mutation validation, corruption rejection, and restart.
11. Profile the selected production paths before considering Poseidon SIMD, GPU work, a new WAL, mmap, or structural sharing.

## Raw results and commands

- [`tree-spike-smoke.json`](tree-spike-smoke.json)
- [`tree-spike-nullifier-10k.json`](tree-spike-nullifier-10k.json)
- [`tree-spike-nullifier-10k-prefill-10k.json`](tree-spike-nullifier-10k-prefill-10k.json)

```sh
cargo test -p shieldd-sdk-bench --lib tree_research

cargo run --release -p shieldd-sdk-bench --bin tree_research -- \
  --profile smoke --threads 1,4 \
  --output docs/research/tree-spike-smoke.json

cargo run --release -p shieldd-sdk-bench --bin tree_research -- \
  --tree nullifier --batch-size 10000 --prefill-size 0 \
  --threads 4 --warmups 0 --repetitions 1 \
  --output docs/research/tree-spike-nullifier-10k.json

cargo run --release -p shieldd-sdk-bench --bin tree_research -- \
  --tree nullifier --batch-size 10000 --prefill-size 10000 \
  --threads 4 --warmups 0 --repetitions 1 \
  --output docs/research/tree-spike-nullifier-10k-prefill-10k.json
```

## Limits and unrun gates

- Published timings use one measured repetition; the harness supports warmups, medians, and p95, but the long current baseline made the research runs intentionally sparse.
- No 100k+ prefill, rollover/capacity geometry, injected state-read failure, retained-cache implementation, allocator, peak RSS, energy, thermal, phone, or x86 run was completed.
- The large nullifier benchmark exercises `insert_batch`; production currently calls that at block scale only from proposer preparation, while remote proposal replay and delivery still use transaction-sized calls.
- `TempStorage` commit was measured and restart was verified, but this is not a production disk/fsync capacity claim.
- TCT multiple-block, epoch-boundary, 65,536-capacity, application event, and Cnidarium adapter tests remain.
- Wallet full proof serialization, later witness updates, forgetting, reload, retained memory, and phone behavior remain.
- Compliance production `StateRead`/`StateWrite`, SQLite, compact-block, corruption, and restart paths remain.
- No production/circuit code changed. Prover, formal-repository, and release-gated circuit tests were not run.
