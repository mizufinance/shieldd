# Nullifier history

Protocol version 3 uses the configured native Pari registry.

## Model

Validators keep current and previous nullifier-generation trees. A generation
contains 30 application epochs and uses a depth-20 quaternary Poseidon-381
indexed tree. Retired generations are committed in order by
`archived_history_head`.

Each real input exposes whether its note is recent or old. An old input proves
nonmembership across the complete retired prefix, without revealing its source
generation.

The public window is:

```text
NullifierWindow {
    protocol_version,
    current_generation,
    recent_position_floor,
    archived_generation_count,
    archived_history_head,
}
```

At rollover, consensus verifies both live trees, retires the previous tree,
updates the ordered history commitment, promotes the current tree, and creates
an empty current tree. Export and physical pruning are node-local work.

## Proofs and storage

A Pari generation proof covers one retired generation. A Pari chunk proof
covers ten consecutive raw nonmembership witnesses; it does not recursively
verify generation proofs. Wallets persist those witnesses before proving and
retain up to nine generation proofs as a trailing prefix. During backfill, each
raw witness is persisted until a complete chunk can be proved directly; only
the final incomplete tail needs generation proofs. Live incremental updates
retain their trailing proofs until the tenth raw witness closes the chunk.
A failed proof leaves staged work available after restart. See [Proof system](proof-system.md) for registry identity and checks.

Full nodes store immutable indexed archives: positional leaves, a sorted
nullifier index, and per-level Merkle nodes. A small versioned manifest binds
the generation, root, SCT interval, lengths and file digest. Streaming builders
use 64 MiB sort runs and a 16-way merge. Publication validates the complete file,
flushes it, publishes without overwriting an existing archive, and flushes the
directory before recording success. Startup inspects manifests; a single
maintenance worker validates, builds and repairs archives in the background.

Witness queries binary-search the index and read the leaf/path through a separate
64 MiB page cache. Each returned witness is checked against the committed root.
Missing or corrupt data is unavailable, never evidence that a nullifier is unspent.
Repair replays the generation's block interval using retained canonical history.
Per-block insertion intervals recover spend heights without a record per nullifier.

Retirement requires complete validation in the current process. A validated file
handle and identity remain bound to the pruning commit. The ordered writer commits
four non-verifiable namespace range tombstones, the archive receipt and progress
atomically, at most one eligible generation per commit. Active/previous generations
and authenticated roots/counts remain intact. The narrow
[Cnidarium patch](../third_party/cnidarium-patches/README.md) preserves old snapshots
and reports invalidations to change subscribers. Background physical compaction is
limited to one generation per second; tombstones and physical disk reclamation are
distinct measurements. Full compact and transaction history remains retained.

The main ownership boundaries are:

- `crates/core/component/sct`: generation state and witness packs
- `crates/view`: durable wallet cache and update worker
- `crates/core/transaction`: proof bundles, authorization binding, and gas
- `crates/core/app`: cryptographic and current-window validation
- `crates/crypto/proof-params`: proof decoding and verification keys

## Verification

Tests cover lower and upper gaps, zero and maximum nullifiers, path ordering,
roots, indices, SCT intervals, history heads, proof ordering, flags and trailing
bytes. Full nodes must serve identical witnesses after pack reconstruction and
restart. A mismatch in an authenticated archived prefix discards the cached
prefix and schedules backfill from generation zero on the next worker pass.

Physical compaction waits until RocksDB reports that snapshots preceding the
retirement checkpoint have been released, including Cnidarium’s retained snapshot
cache. Logical deletion remains immediately visible to new snapshots; old readers
continue to see their original records. Disk usage can therefore lag retirement.
