# Permanent spend nullifiers

Every validator stores the complete spend-nullifier set in sixteen fixed NOMT
partitions. Transfer, reshape, withdrawal, fee funding and seizure use the same
spentness check regardless of note age. Day-scoped volume nullifiers retain their
separate policy semantics. There are no generation, chunk or historical-spend
proofs, windows, archive workers or pruning paths.

## Authentication and ordering

[The domain](../crates/core/component/sct/src/permanent_nullifiers.rs) owns exact
key and root encodings: SHA-256 with explicit domains, canonical little-endian
nullifier bytes, the high four key bits as partition selector, a fixed spent
value, and an aggregate of all sixteen ordered roots. NOMT is pinned to
`c3c0e55794500262dfde7c83b6f7455d2aeb303e`. All replicas store all partitions;
physical bucket counts, preallocation and cache sizes are node-local.

The block-local ordered log contains exactly accepted nullifiers, including
padding and fee inputs. Duplicate checks precede sorting. Authenticated absence
under the previous roots and the exact update witness must both verify before a
transition can commit. A flat-index miss or successful write is insufficient.
Proposal state and failed transactions are disposable.

[PermanentWriter](../crates/core/app/src/app/permanent_writer.rs) freezes the exact
application write batch and exposes its root at EndBlock. Bankd records that root
and the canonical FinalizeBlock hash in authenticated state before computing its
AppHash. The root for H is consequently covered by Bankd state H; CometBFT carries
that AppHash in the next block. This does not imply validation of H's execution
root before the vote for H.

Seal persists canonical insertion intent before any durable participant changes.
Bankd then persists its pending recovery record and commits, followed by NOMT
partitions and Shieldd application state. Only completion of every participant
allows a ready record and public query publication. Empty blocks advance height
and identity too. A partial commit stops execution/publication. Local metadata is
ordering evidence; authenticated Bankd roots and identities select recovery.
Bankd may roll back exactly one block to the authenticated previous Shieldd
boundary. NOMT partitions ahead of Shieldd roll back one native commit. Unknown
roots, missing history, stale schemas and unrecoverable gaps fail closed.

## Queries and wallet recovery

Nullifier status returns a detached membership or absence proof, all partition
roots, and the published height/block identity. A consumer must verify it against
an independently authenticated boundary, including the aggregate root. Reads
retain no NOMT session after returning. Admission bounds concurrent work; a
caller cannot retain a read session and indefinitely stall the writer.

SpendStatusPage scans retained compact headers and nullifier records, at most
64 headers and 2,048 records per call, with the configured request item limit.
It returns spend height and a membership proof at the published tip. There is no
additional full per-nullifier height index. Spend heights and result completeness
remain provider trust; membership proofs authenticate only spentness. Cursors bind
chain, query and published version and expire when publication advances. An expired
query must be discarded and restarted. Arbitrary historical NOMT roots are not
served. Status requests can link queried nullifiers to their requester.

Seed recovery still requires retained note ciphertexts, compact history, current
SCT witnesses and compliance data. Permanent nullifiers remove historical proof
backfill, not these recovery requirements. See [Wallet](wallet.md).

## Snapshots and maintenance

The offline `shieldd-store` tool opens the exclusive database only after Bankd
has stopped at a jointly committed boundary. Obtain ROOTHEX from the authenticated
Bankd snapshot, not from Shieldd's local recovery record.

```sh
shieldd-store capacity DB ROOTHEX
shieldd-store export DB SNAPSHOT ROOTHEX
shieldd-store restore SNAPSHOT NEW_DB ROOTHEX
```

Export checkpoints RocksDB and copies canonical insertion history separately from
mutable NOMT databases. Completion manifests are written last. Restore checks the
application root and verifies Merkle membership of the format, boundary and
aggregate-root records, checks the height against that authenticated boundary,
and then replays exact insertions into a fresh NOMT store.
Recovery uses the same authenticated boundary checks. Every resulting NOMT root
is checked; any mismatch refuses readiness.
Restore and interrupted replay destinations are disposable; restart in a fresh
path. Restore an old snapshot only with retained canonical history and matching
application/Bankd state through the current committed boundary before resuming.
Never start an old nullifier store against newer Bankd state.

Take Bankd/CometBFT backups at the same stopped boundary as Shieldd. Retain all
canonical insertion records and note-recovery data. Copy snapshots and history to
a separate account/failure domain with deletion-resistant retention. Configure
backup credentials outside the validator process, restrict its account from
removing retained objects, and test authenticated restoration before activation.
Remote account provisioning and uploads remain deployment operations.

`SHIELDD_NULLIFIER_STORAGE` supplies local JSON physical options. The default
64,000 4-KiB buckets per partition allocate approximately 4.2 GB across hash tables,
excluding value indexes, history and filesystem overhead. This is a development
starting point, not production sizing. The fixed layout leaves source-derived
page-count headroom; whole-set footprint and throughput remain unmeasured.

Capacity output reports each partition's occupied buckets and warning at 70% or
critical at 80%. The ordered writer also updates per-partition capacity/occupancy
gauges at every completed commit. Configure the deployment alert system on their
ratio at these thresholds; schedule maintenance before critical occupancy. Monitor filesystem capacity independently and keep at
least 30% ordinary free space. Neither alert threshold changes consensus validity.
Growth requires old storage plus a snapshot and a freshly replayed larger store;
ordinary free space does not cover that temporary requirement. Set a larger bucket
count for restore, authenticate the unchanged root, then switch directories while
offline. Keep the previous copy until validation and a fresh backup complete.

Maintain one validator at a time, first confirming the other three are healthy.
Do not assume another simultaneous outage fits the configured PoA fault budget.
Measure replay time, I/O, working memory and temporary disk on deployment hardware
before scheduling a production growth window. TPS and long soaks are later
qualification, separate from correctness and integration gates.
