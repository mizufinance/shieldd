# Shieldd independent review — September 21, 2026

Follow-up: [remediation and verification](remaining-usage-fixes.md) records the subsequent fixes; the findings and baseline evidence below describe the original review.

Status: review complete. Six findings reproduced locally; all temporary source edits restored byte-for-byte. Final source-integrity checks are recorded below.
Scope: Shieldd privacy pool, native Commonware Pari, Jubjub, compliance and wallet behavior. No Bankd integration, external testing, or formal-verification work. This review adds documentation only; all source changes used for reproductions were temporary and have been restored.

## Confirmed findings

1. **Pari compiler changes the meaning of two-sided square equalities.** Local optimized test confirms `x² = y²` can compile to `x² = 0`: valid `(2,2)` is rejected and invalid `(0,2)` is accepted. Reversing assertion order reverses the affected side. Both assertion-only square outputs are deferred, and one zero placeholder is used as the other side of the constraint. The affected compiler functions are identical to cached pinned upstream Commonware; the defect was not introduced by Shieldd's optimization patches. **Catalogue census completed: all eight current Shieldd families contain zero double-deferred square assertions. No current Shieldd-family exposure was found.** Narrow repair: materialize the opposite deferred square before using its output in the assertion. Preserve single-sided fusion and all unaffected relation digests.
2. **Unregulated wallet planning fails after the compliance user tree becomes nonempty.** Reproduced through actual StoragePlanningIo with a populated user tree and base-asset query. Synthetic unregulated witnesses are valid independently of the user root, but local planning only allows them when the entire user tree is empty. Remove that condition while retaining rejection of missing regulated-user leaves.
3. **A stale historical worker can permanently invalidate newer valid work.** Reproduced across the 32-row pagination boundary: a worker captures window 1; scanner advances to 10; another worker stages valid newer history; the stale worker classifies that state as ahead of its old window and overwrites it with terminal Invalid. Guard all worker writes by expected row and captured window; a mismatch is stale work to reload, not an invalid proof. No new schema or process-local lock is needed.
4. **Completion can return a plan with duplicate real daily-volume transitions.** Reproduced two regulated outbound transfers for the same subject/asset/day with distinct notes and action nonces. Both use the same immutable starting volume snapshot and produce the same volume nullifier; completion succeeds, while application validation rejects the transaction later. Reject incompatible transitions before returning a completed plan, including already-complete actions. This is late failure, not a compliance bypass.
5. **Stale reservation release deletes a newer reservation owner.** Reproduced owner A expiring, owner B acquiring, then A releasing and deleting B. Release must compare the expected transaction owner as well as day/nullifier. The reservation API currently has no production callers in this repository; keep that impact distinction.
6. **Threshold configuration import accepts an unrelated full viewing key.** Reproduced replacing the viewing key of one valid configuration with another deal's key: deserialization accepts inconsistent configuration. Later signing fails or wallet addresses refer to a different key. Validate public-share consistency with the viewing/spend key using the existing upstream FROST primitives. This is malformed local configuration acceptance, not demonstrated signature forgery; generated honest deal/DKG configurations remain sound.

Each finding above has a deterministic local regression test that failed as expected against the current implementation. No permanent fix was applied in this review pass.

## Potential improvements requiring measurement or design work

- **Group transaction proof jobs by native proof family and restore action order.** The registry holds one prepared family. A Transfer, Withdraw, fee-Transfer sequence can prepare Transfer twice. Grouping saves a preparation without another cache or a different proving stack. Existing Transfer decode/compile/prepare profiling suggests meaningful potential, but mixed-family savings were not benchmarked here. Keep fee ProofContext and final action ordering exact.
- **Move block decryption into bounded owned blocking work.** Current per-note Tokio tasks run synchronous crypto and can remain detached after cancellation. Use one owned block job, one viewing-key clone, and shared concurrency ownership if a global bound is needed. Measure full-scan throughput, runtime responsiveness and memory; sequential work may trade throughput for lower overhead.
- **Bind the existing validated-transfer capability to the exact action/context.** This can remove a repeated stateless/signature validation in execution without trusting a replacement action. Do not simply delete the second validation. Preserve the fee's validation/effect ordering and measure the complete proof pipeline.
- **Reuse per-request asset compliance data.** Repeated queries for the same asset recompute the asset proof and reread policy. Reuse existing per-request asset maps while retaining per-user proofs and height checks; no persistent cache.
- **Delete write-only committed-snapshot mirrors.** App fields `committed_snapshot` and `snapshot_version` are written but not read by production paths. Remove them and their representation-only test; retain tests for observable commit behavior.
- **Reuse canonical spend traversal for authorization.** `TransactionPlan::spends()` already defines body-then-fee ordering; authorization and threshold helpers duplicate it. Low-risk simplification after ordering coverage.

## Areas with no additional defect found

Independent review of prepared-polynomial algebra, quotient/mask handling, cached public polynomials, and ownership/consumption found no defect. Optional small-domain algebra tests are additional coverage, not grounds for a new abstraction. Non-commit app lifecycle transitions and nullifier flush ordering were also reviewed without a new cancellation-state defect. Query responses already use a pinned committed snapshot. A suspected same-block note-spend scanning gap was rejected after checking anchor publication and host ordering.

## Evidence and verification

Evidence directory: `/Users/antoinecyr/.codex/visualizations/2026/09/18/01a0b681-d075-70e0-8564-cb5d1aa522bc/remaining-usage-review-evidence/`.
It contains independent reviewer reports, reproduction snippets and the failing test logs. Optimized local reproductions were executed one heavy job at a time. This was not a fresh full-suite run or a new performance benchmark. The compiler reproduction ran in release mode; no end-to-end proof generation was required for the source-versus-compiled constraint comparison.

## Flagging visibility

No tool rejection or moderation explanation was delivered to the assistant during these tests. The user reported flags; their cause cannot be established from available tool outputs. All reproductions were local repository tests. No findings were sent to external parties.

## Final catalogue census and restoration

Compiled every entry in `Family::ALL` with instrumentation at assertion emission, after the compiler had identified actual deferred squares (including operands equivalent after linear folding). Counts were zero for transfer, reshape1x8, reshape8x1, withdrawal, seizure, disclosure, history_generation and history_chunk10. This was a real optimized compilation of all eight relations, not a syntactic search. Relation digests and the full output are preserved in `shieldd-review-census.log`.

The proposed compiler repair was independently reviewed but **not implemented or tested** in this pass. No claim is made about new proving performance or key regeneration. Its narrow branch would only change double-deferred assertions; the current catalogue has none. Future implementation should rerun the semantic regression and compare all eight relation digests.

All six temporarily edited source files were compared byte-for-byte with their pre-review backups and restored. The temporary catalogue example was removed. The only intended repository change from this review is this report; pre-existing migration work remains untouched.

## Reproduction index

| Finding | Executed regression | Evidence log |
| --- | --- | --- |
| Compiler | `two_sided_square_assertions_preserve_source_satisfaction` | `shieldd-review-fusion-red.log` |
| Unregulated planning | `unregulated_query_with_populated_user_tree` | `shieldd-review-unregulated-red.log` |
| Historical worker | `history_worker_old_window_must_not_poison_newer_staged_cache` | `shieldd-review-history-red.log` |
| Duplicate volume transition | `completion_rejects_two_real_volume_transitions_for_one_subject_day` | `shieldd-review-volume-red.log` |
| Reservation ownership | `stale_volume_release_does_not_remove_replacement_reservation` | `shieldd-review-reservation-red.log` |
| Threshold import | `imported_config_rejects_unrelated_full_viewing_key` | `shieldd-review-threshold-red.log` |

All six tests failed on the behavior under review, rather than failing to compile. Temporary snippets are preserved beside the logs. Individual independent reports describe the reviewers' static work and sometimes say their proposed test had not been run; this consolidated report and the saved root-run logs supersede those earlier validation statuses.

Run reproduction snippets only after inserting them into their indicated existing test module. The five wallet/custody regressions used the optimized `ci` profile; the Commonware compiler regression used its upstream workspace `release` profile with `std,bls12381`. All used bounded build parallelism and a serial test harness. No prover/release-gated end-to-end proof tests or fresh proving benchmarks were run in this review pass.

## Recommended implementation order

1. Repair unregulated planning and stale historical-worker persistence; these are active wallet usability/state-correctness defects.
2. Apply the narrow Commonware compiler correction as a small auditable upstream-aligned patch with the semantic regression and unchanged-current-catalogue digest check. No alternate proving backend is needed.
3. Reject duplicate real volume transitions during completion, validate imported threshold-key consistency, and either fix reservation ownership or delete the unused API if no current feature needs it.
4. Benchmark mixed-family proof scheduling before changing the prepared-key cache design. Prioritize bounded scan scheduling and removal of duplicate execution validation only with their required ownership/capability changes.
5. Remove write-only snapshot mirrors and duplicated spend traversal. Avoid new providers, migration shims, generic schedulers, persistent caches or speculative abstractions.

## Source entry points

- Compiler: [assertion emission](../../third_party/commonware/cryptography/src/zk/pari/circuit.rs), `compile_assertions`, `assertion_square`, `fusable_nodes`.
- Unregulated planning: [StoragePlanningIo](../../crates/view/src/storage_planning.rs), `local_compliance`.
- History concurrency: [worker](../../crates/view/src/historical_proof_worker.rs), [cache](../../crates/view/src/historical_proof_cache.rs), and [storage](../../crates/view/src/storage.rs).
- Completion: [client compliance](../../crates/view/src/client_compliance.rs), `complete_plan_with_compliance`.
- Reservation release: [storage](../../crates/view/src/storage.rs), `release_volume_reservation`.
- Threshold import: [configuration](../../crates/custody/src/threshold/config.rs).
- Proof scheduling: [transaction builder](../../crates/core/transaction/src/plan/build.rs) and [registry](../../crates/crypto/proof-params/src/pari.rs).

Final checks after restoration: `python3 scripts/commonware.py check` passed (source inventory verified); `git diff --check` passed. The full workspace suite was not rerun because reproduction-only source modifications were restored exactly. These checks do not imply that the six unresolved defects have been fixed.
