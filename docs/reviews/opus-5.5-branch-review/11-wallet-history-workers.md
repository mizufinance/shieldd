# Opus 5.5: 11-wallet-history-workers

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

# Sector 11 (wallet history workers): review of `57eb44e8ca..c4b8b6d28e`

**Verdict: COMPLETE, with limits.** The worker, cache and storage runtime paths are fully reviewed. The two new test files are reviewed only through their test names and the call sites I used; I did not audit each assertion. I ran nothing: no builds or tests.

## Scope and coverage

| Path | How it was reviewed |
|---|---|
| `crates/view/src/historical_proof_worker.rs` (M) | Read the whole diff (patch 002) and followed its callers in `worker.rs:93-113` and `worker.rs:375`. |
| `crates/view/src/historical_proof_cache.rs` (M) | Read the diff lines 1-224 (state machine, validation, `has_staged_proof`). Read the current code for `stage_historical_witness` and `advance_historical_proof_cache` (`:310-549`). |
| `crates/view/src/historical_proof_cache/tests.rs` (A) | Checked the list of test names only (backfill, tail retention, resume without refetch, restart after a failed proof, bounded workers). |
| `crates/view/src/storage/historical_worker_tests.rs` (A) | Checked only the call sites that use the worker: ready rows are not rewritten, registry mismatch, a note spent during a fetch, a verification-only registry, a prefix reset, the paused-failure case, and a window change during work. |
| Related storage code (not assigned) | Read the current `storage.rs:1187-1336` (compare-and-swap write, row decode, paging) and compared it with the old `historical_proof_caches_for_unspent_notes`. |

## Findings

### F1 (Medium, confirmed by reading the code): history proving now runs inline in block sync, with no time limit and no per-pass cap
- **Where:** `worker.rs:375` (`self.update_history().await`, run after each block commit) and `worker.rs:101`. These call `HistoricalProofWorker::update` (`historical_proof_worker.rs:188-225`). For each unspent-note cache, `update_cache` loops until the cache is `Ready`, and each step awaits a witness RPC (`historical_proof_cache.rs:361`) and a full Pari prove-and-verify (`:529-547`).
- **Trigger:** a wallet has unspent notes with backfill work left, or the witness RPC is slow or hangs. `nonmembership_proof` has no timeout that I could see.
- **Consequence:** block scanning stalls until every cache reaches `Ready` or fails. A hung RPC stalls sync indefinitely, and backfill proofs for many notes delay wallet state after each block. The "bounded concurrency" only limits prover threads (`concurrent_provers_share_bounded_workers`); it does not stop sync from being blocked.
- **Why it's new in this branch:** before the branch, `HistoricalProofWorker` had its own `run()` loop driven by a `watch` channel. It was not wired into the sync worker (base grep: no callers). This branch deletes `run`/`watch` and calls `update()` inside block processing.
- **Minimal fix:** either:
  - run `update()` in its own task, triggered by sync height, sharing the existing compare-and-swap storage; or
  - cap each pass to a fixed amount of work (one staged step or proof per cache), and put a timeout on the witness source.
- **Needs a reproduction (coordinator):** a witness source that never returns, then check whether the next block commits.

### F2 (Low, design limitation that the branch makes more visible): an untrusted witness RPC can force repeated full re-backfills
- **Where:** `historical_proof_cache.rs:377-383` and `:487-493`, and `historical_proof_worker.rs:79-84`.
- **Mechanism:** only the last generation's history head is checked against the local `window.archived_history_head`. Generation roots before that are accepted from the RPC and proven into chunks. When the final head doesn't match, the whole cache is reset to pending (`InvalidPrefix`), and all completed proofs are thrown away.
- **Consequence:** a buggy or malicious RPC can make the wallet redo the entire proof history indefinitely (compute DoS). Combined with F1, this also stalls sync.
- **Soundness is not affected:** a wrong chain never reaches `Ready`.
- **Fix direction:** authenticate intermediate generation heads (for example, per-generation heads in the window), or back off / limit resets per source.

### F3 (Low, existing behavior made heavier): one bad row halts the whole paging scan
- **Where:** `storage.rs:1330-1332` (`collect::<Result<Vec<_>>>()?`) and `historical_proof_worker.rs:213` (`?`).
- **Consequence:** one row that fails `decode_historical_cache` → `validate()` aborts every pass. All caches that sort after it by nullifier are then never processed.
- **Why it's not a regression:** the old full scan behaved the same way.
- **What changed:** validation is now much stricter. It checks up to `CHUNK_SIZE` `verify_for` witnesses and recomputes the head chain for every row, up to 32 rows per page. Writes are validated first, so in practice this needs corruption or a version change.
- **Optional fix:** skip bad rows and log or mark them individually.

## Checked and found sound

- **Compare-and-swap:** `update_historical_proof_cache` (`storage.rs:1225-1270`) uses an IMMEDIATE transaction that checks three things together: the note is unspent, the stored window equals the captured window, and the stored row equals the expected row. A stale worker, a window that advanced, or a note spent during a fetch gets `Stale` or `NoteSpent`, and the worker exits cleanly (`historical_proof_worker.rs:153-160`, `:170-178`). Tests cover the spend-during-fetch, window-change and paused-failure cases.
- **Restart recovery:** the in-memory `Updating → PendingBackfill` step uses the row as stored (`expected`, still `Updating`) for compare-and-swap, which is correct. Staged raw witnesses are persisted before proving (`:311`), so a restart doesn't refetch them.
- **Terminal states and retries:**
  - `Invalid` is terminal.
  - Ready caches that are still valid for the current window and registry are skipped with no write (tested).
  - The blocked states go back to `Updating` on the next pass.
  - Persisted errors are capped at 1024 bytes.
- **Registry identity:** `bind_registry` runs at construction, and caches are checked against the registry ID in the worker, in staging and in advancing.
- **Proof verification:** each proof is verified locally before a chunk replaces its raw witnesses.

## Test weaknesses
Only the test names were reviewed. I saw no test showing that a hanging or slow witness source doesn't block block commits (F1), and none bounding repeated `InvalidPrefix` resets (F2).

## Cross-sector follow-ups
- **Sync worker sector (`worker.rs`):** confirm whether inline `update_history` is intended, and check that the witness RPC channel has a timeout (F1).
- **SCT / nullifier window sector:** can the window authenticate per-generation heads (F2)?

## Not reviewed
- The individual assertions in both new test files.
- `historical_proof_cache.rs` lines 225-309 (`ensure_ready_for`, `mark_ready`, `chunk_start_head`), apart from how the worker uses them.
- Everything after line 549 (the chunk/tail replacement after a proof).
