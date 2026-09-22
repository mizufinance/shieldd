# Confirmed branch-review findings

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`.
Review paused with remaining coverage gaps. These findings have coordinator validation; raw reviewer
hypotheses are preserved separately. No runtime fixes were applied in this review.

## Medium: history backfill can indefinitely block wallet startup and scanning

`SyncWorker::new` awaits `update_history` before returning
([worker.rs](../../../crates/view/src/worker.rs#L101)). After committing a block,
`scan` also awaits it before returning ([worker.rs](../../../crates/view/src/worker.rs#L375)).
The history worker advances unfinished caches serially and awaits the external
witness source without a timeout. A source that never returns therefore prevents
startup, and on the scan path prevents the caller from proceeding to the next block.
Completed database work is not rolled back by this stall.

The branch introduces this inline integration. The old background `run` method
was removed; its presence alone did not establish that it had a live caller.

A focused temporary Rust reproduction used the existing wallet fixture and real
configured registry. An immediate source error allowed `SyncWorker::new` to
complete. A pending source was then reached exactly once, and construction remained
incomplete until the outer two-second test timeout. The await chain establishes
that the pending source has no internal completion bound. The scan consequence
was traced statically; the runtime reproduction exercised startup.

Evidence: [test source](history-stall-reproduction.rs),
[execution log](history-stall-reproduction.log),
[command and restoration result](history-stall-reproduction.json),
[Opus sector report](11-wallet-history-workers.md).

Suggested correction: schedule deferred history work independently of scan progress,
retain the existing durable compare-and-swap ownership checks, and bound external
waits and work per pass. A corrected test should control a blocked witness source
and prove that startup or the next scan can still progress; a wall-clock performance
threshold alone would not protect that behavior.

## Low: spend-count documentation attaches to the wrong method

In [transaction.rs](../../../crates/core/transaction/src/transaction.rs#L591),
“Counts every proof-bound spend…” precedes `volume_nullifiers`; it describes
`spent_nullifier_count` below instead. Move that line to its intended method.
This is documentation-only and has no runtime effect.

## Low: CLI issuer disclosure no longer clears its parsed secret scalar

[IssuerCreate](../../../crates/bin/pcli/src/command/disclosure.rs#L497) retains
Zeroizing serialized buffers, but the branch removed the prior explicit clearing
of `DetectionKey.0`. The current Jubjub scalar wrapper has no clearing drop hook
and is Copy/Debug. This weakens memory hygiene; no memory-extraction exploit was
reproduced. Restore non-elidable secret cleanup; a normal zero assignment alone
can be optimized away. See [sector17](17-cli-protobuf-external-contracts.md).

## Low: package minimum compiler version is stale

[shieldd/Cargo.toml](../../../crates/bin/shieldd/Cargo.toml#L10) still declares
Rust 1.75, while the new circuits dependency uses edition2024 and needs at least
Rust 1.85. Update or remove the stale declaration after establishing the actual
supported minimum; CI uses pinned Rust 1.95.

Optional cleanup from the build review: remove the now-unused
`scripts/orbis-ci-cleanup.sh` and correct the old Decaf comment above `orbis-rs`
in `deny.toml`. Live integration with the checked-in Decaf image lock deliberately
fails closed; a compatible external runtime is still required.
