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

Full nodes store immutable compressed generation packs. A pack binds the
generation index, root, SCT interval, canonical leaves, and checksum. Expanded
tree records may be pruned only after the pack is durable, reconstructed, and
root-verified.

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
