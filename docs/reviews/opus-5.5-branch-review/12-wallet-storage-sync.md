# Opus 5.5: 12-wallet-storage-sync

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

I reviewed all 10 assigned files and found **no blocking runtime or security defects** in this sector. There is one low-severity test weakness and one piece of optional cleanup. This was a static review only: I ran no builds or tests.

## Coverage

| Path | How it was reviewed |
|---|---|
| `crates/view/src/compliance_tree.rs` | Read the diff. Decaf377 decoding is replaced with Jubjub `encoding::field`/`point`, which are checked decoders. Two tests got stronger: they now verify the auth path (including a negative case) and compare whole leaves. |
| `crates/view/src/storage.rs` | Read the diff and the current runtime: block admission, the historical proof cache, `notes()` and the reservation flow (current lines 1100–1185 and 2600–2640). The deleted `release_volume_reservation` had only a test caller in the base version (`base/.../storage.rs:566`). |
| `crates/view/src/storage/compliance.rs` | Read the diff. The `capk` column and the unused user/asset internal-hash stores are removed consistently across the insert, the select, the struct, `schema.sql` and the caller at `storage.rs:2855`. |
| `crates/view/src/storage/disclosure.rs` | Read the diff. Proving is now synchronous, runs inside `spawn_blocking` and takes the registry as a parameter. |
| `crates/view/src/storage/registry.rs` (new file) | Read the current code. |
| `crates/view/src/storage/schema.sql` | Read the diff. |
| `crates/view/src/storage/sct.rs` | Read the diff. |
| `crates/view/src/storage/witness.rs` | Read the diff. |
| `crates/view/src/sync.rs` | Read the diff. It now uses `nonidentity` decoding for `rnk_dh_pk`, which is stricter. |
| `crates/view/src/worker.rs` | Read the diff, including the snapshot-height checks and the history hook. |

## Invariants checked

**Wallet block admission (`storage.rs:2466-2475`)**
- The old approach read `last_sync_height()` and then wrote in a separate transaction. That is replaced by a compare-and-swap inside the block-write transaction: `UPDATE sync_height SET height=?1 WHERE height=?2`, requiring exactly one row changed.
- Genesis works because initialization inserts `-1` (`storage.rs:1486`), so block 0 has predecessor `-1`.
- The transaction is deferred, but the `UPDATE` takes SQLite's write lock. A competing writer therefore either blocks or sees 0 rows changed once the winner commits, and its note, SCT and compliance writes roll back.
- `competing_wallet_blocks_admit_only_one_complete_candidate` checks this, including that the losing candidate leaves no note rows and that the persisted SCT matches the winner.
- The in-memory SCT is only replaced after a successful commit.

**Stale worker after a cancelled wait (`worker.rs:84-98, 261-266, 371-374`)**
- If a caller stops waiting after the commit, the worker keeps an old `sct` and an old `snapshot_height`.
- The next scan compares `snapshot_height` with the stored height and rejects the stale snapshot before projecting anything.
- `SyncWorker::new` loads the height, the SCT and the compliance trees in separate reads, then re-checks the height. Because the height only increases, a mixed snapshot is detected.

**Historical proof cache**
- `put_historical_proof_cache_inner` now uses `INSERT … SELECT … FROM spendable_notes WHERE nullifier=?1 AND height_spent IS NULL ON CONFLICT DO UPDATE`.
  - The `WHERE` clause avoids SQLite's parse ambiguity between an upsert and `INSERT…SELECT`.
  - Spent or unknown notes produce `NoteSpent` instead of a stored row.
- `update_historical_proof_cache` runs in an `IMMEDIATE` transaction. It writes only if the note is still unspent, the stored nullifier window equals the captured window, and the stored row equals `expected`; otherwise it returns `Stale` or `NoteSpent`. This is the right shape for durable worker jobs.
- Pagination (`LIMIT 32`, keyset on the nullifier blob):
  - Ordering and the cursor use the same byte comparison, so pages are consistent.
  - The empty-blob cursor sorts before every key.
  - A test covers pages that cross the 255/256/257 byte boundary and skip spent notes.

**Daily volume reservations**
- Admission (`storage.rs:1100-1185`) runs in one transaction. In order, it:
  1. purges expired rows,
  2. rejects duplicate subject/day pairs,
  3. checks the successor commitment,
  4. checks the head nullifier against the stored head,
  5. checks for an existing reservation,
  6. inserts the new reservations.
- On completion, the block write upserts the accumulator and deletes the matching reservation in the same transaction (`:2611-2635`).
- The explicit release API is gone, so an abandoned reservation stays until `expires_at`. That is conservative: the wallet cannot know whether a broadcast landed. It is not a regression, because the old release path had only a test caller.

**`notes()` query rewrite**
- The old query built SQL by string formatting and filtered by address in software, matching only the *account*.
- The new query is parameterized and matches the exact `address_index`, so diversified addresses in the same account are no longer merged.
- This changes the semantics of `notes(.., Some(index), ..)`. It now matches the proto field, and the new tests cover it. Callers that relied on account-wide matching are outside this sector (see follow-ups).

**SCT store (`sct.rs`)**
- `sct_hashes` now has `PRIMARY KEY(position,height)`.
- `add_hash` accepts an identical rewrite but errors on a conflicting hash.
- `delete_range` now also deletes `sct_commitments` in the range, so forgotten commitments no longer survive a reload.
- Tests cover rollback and reopen after append, forget and end-epoch.

**Registry binding (`registry.rs`, `witness.rs`)**
- `witness_plan` binds the registry inside an `IMMEDIATE` transaction and commits only after witnessing succeeds. The test `failed_witness_does_not_bind_wallet` checks this.
- The first bind refuses if cached history proofs carry a different `registry_id`.
- `bundle_for(window, registry_id)` checks each cached proof against the registry.

## Findings

No blocking findings.

**Low (test weakness), `crates/view/src/worker.rs` (`registry()` test helper, patch around the `+1025` hunk)**
- **Trigger:** running the `compliance_projection_tests` without `SHIELDD_PARI_KEYS` set.
- **Consequence:** the helper calls `std::env::var("SHIELDD_PARI_KEYS").expect(..)`, so these tests panic. That includes tests that never prove anything, such as `asset_registration_projection_rejects_unbound_policy` and the stale-worker test. A plain `cargo test -p` run then fails for environment reasons, which hides whether the tests would detect a real failure.
- **Why it's from this branch:** `SyncWorker::new` now requires a loaded Pari `Registry`, because it builds a `HistoricalProofWorker`.
- **Status:** confirmed by reading the code, not reproduced.
- **Suggested fix:** either construct the worker's history component in these tests without a loaded registry, or gate the tests explicitly as prover-gated according to `docs/testing.md`, so the requirement is visible instead of surfacing as a panic.

**Optional cleanup**
- In `storage.rs`, the `#[cfg(test)] before_block_write` barrier field is threaded through every `Storage` constructor. It is acceptable test-only plumbing.
- `record_block` has a leftover double blank line after the admission check.

## Cross-sector follow-ups

1. **Exact-address `notes()` filtering.** Check planner, CLI and gRPC callers that pass `address_index` and may expect account-wide matching (sector: planner/services).
2. **History worker.** Check `HistoricalProofWorker::update` and `HistoricalProofCache::bundle_for` / `validate`: the registry-ID check and the semantics of `pending_witnesses` (sector: SCT/historical proofs). The new `historical_worker_tests` module was not inside my assigned paths.
3. **`audit_keys` length 73.** The new `CHECK(length(audit_keys) = 73)` should be confirmed against the single-Orbis-audit-key codec in the compliance SDK.
4. **Wallet sync cancellation.** A reproduction the coordinator could run: cancel a `record_block` future after the commit, then call `scan_block` on the same worker. The expected result is the stale-snapshot error followed by a successful recreate. The existing stale-worker test covers two workers, not a cancellation.

## Not reviewed

- The body of `storage/historical_worker_tests.rs`, which is outside the assigned list.
- The `HistoricalProofWorker` implementation.
- The upstream TCT storage contract (I assumed the `add_hash` "same-or-error" semantics).
- Tests were not run.

**Status: COMPLETE** for the assigned sector paths, subject to the limits above.
