# Opus 5.5: 09-app-proof-admission

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

Next I'm reading the batch verification and cache paths in `app/mod.rs`.

Registry binding and the historical-window checks are confirmed. Now I'm checking cancellation handling in `delivery.rs`.

# Sector 09-app-proof-admission review: no confirmed defects; coverage is PARTIAL

**Artifact:** `57eb44e8ca..c4b8b6d28e`, current source and read-only. I did not build or run any tests.

## Scope and coverage

I traced the runtime admission path from the changed diffs into the current code:

| Path | How it was accounted |
|---|---|
| `Cargo.toml` | Diff read. It swaps the removed arkworks/decaf dependencies for native Pari, Jubjub and Commonware ones. |
| `action_handler/actions.rs` | Diff read. The `AggregateBundle` arms are gone because the variant was removed. |
| `stateless_cache.rs` | Runtime inspected: proof-slot mapping (lines 26–105), capability binding (203–302) and the registry-keyed cache get/insert (389–497). |
| `registry_binding.rs` | Read in full, including its test. |
| `action_handler/transaction.rs` | Runtime inspected: envelope checks, historical proof verification (368–416) and `check_and_execute` (510–600). |
| `app/delivery.rs` | Runtime inspected: CheckTx cache, the stateless/historical `select!` and cancellation (70–184). |
| `app/mod.rs` | Runtime inspected: extraction, batch and independent verification, capability attachment (270–456), and the ProcessProposal cache/batch path (895–1020). The PrepareProposal fallback was seen only through search results. |
| `transaction/cancellation_tests.rs` | First about 80 lines read, from the bundle. |
| `app/aggregate_diagnostics.rs`, `app/preconsensus.rs` (deleted) | Treated as removals of the retired aggregation flow. I did not read the diffs line by line. |
| `batch_input.rs`, `benchmark_config.rs`, `candidate.rs`, `stateless.rs`, `lib.rs`, `test_support.rs` | Listed in the bundle, but I did not reach their sections (I read bundle lines 1–181 of 619). |
| `app/tests/mod.rs`, `proof_acceptance_tests.rs` | Not reviewed, apart from the `proof_for_slot` usages found by search. |

## Coordinator hypothesis: `Verified::ensure_binds` does not compare `registry_id`

**Result: dismissed.** It is true that the function doesn't compare it (`crates/crypto/proof-params/src/pari.rs:107-113`). But every path that builds or uses a capability enforces the active registry elsewhere:

- **Construction:** the only constructor, `VerifiedTxArtifact::new`, checks `capability.registry_id() == registry.id()` for every slot before calling `ensure_binds` (`stateless_cache.rs:252-257`). `take_family_capabilities` also goes through `new` (`:295`).
- **Stamping:** the artifact stores `registry_id: registry.id()` (`:265`). Historical proofs are verified against the same registry (`:263`, `transaction.rs:376-398`).
- **Delivery and execution:** both `deliver_tx_with_verified_stateless` and `execute_tx_checked_historical` call `ensure_registry` again (`delivery.rs:145,169`).
- **Cache:** entries are keyed on `(registry_id, exact raw bytes)` (`stateless_cache.rs:400`). A verified insert takes its registry from the artifact itself and requires the raw bytes to equal the canonical re-encoding (`:474-493`). Every lookup passes `self.registry.id()` (`delivery.rs:71`, `mod.rs:604,904`).
- **Durable state:** `registry_binding::check` rejects populated state that has a missing or mismatched registry identity (`registry_binding.rs:12-22`). It is called at app open (`mod.rs:720`) and at service start (`service.rs:172`).

**Action-derived statements:** at execution, each action handler rebuilds the `Verification` from the action and the transaction context, then requires the capability to match exactly. For example, `transfer_validate_verified` calls `transfer_check_stateless_and_extract`, then `ensure_binds(Family::Transfer, &item)` (`shielded-pool/.../transfer.rs:143-146`). The other kinds follow the same `*_execute_verified` pattern, called with `proof_for_slot(ProofSlot::BodyAction(i))` / `FeeFunding` at `transaction.rs:533-576`.

So a capability from another transaction, slot or family, or a stale extraction, fails at the execution boundary. The missing check inside `ensure_binds` would matter only if some caller created a `Verified` outside `VerifiedTxArtifact::new`. I found none. At most it is a note: putting the registry comparison inside `ensure_binds` would make the invariant local. That is optional and not a defect.

## Findings

No blocking or security findings in the paths I covered.

Other invariants I checked and found sound:

1. **Slot ↔ capability ordering.**
   - Extraction pushes items per family in action order, with fee funding last (`mod.rs:291-321`).
   - `proof_locations` assigns per-family indices in the same order (`stateless_cache.rs:52-77`).
   - `ProofSlot` derives `Ord`, with `BodyAction(_) < FeeFunding` (`:29-32`). So `take_family_capabilities`, which pops in slot order, pops in the same per-family order as the batch.
   - Count mismatches are rejected (`:79-103`). Duplicate or missing slots are rejected (`:210-221`). Leftover capabilities after assignment are rejected (`mod.rs:451-454`).
   - Even if the order diverged, `ensure_binds` compares the full item, so the result would be a rejection, never a mis-binding.
2. **Batch failure handling.**
   - ProcessProposal rejects the proposal when the batch fails (`mod.rs:987-996`). That is correct; honest proposers pre-verify.
   - PrepareProposal falls back to verifying each transaction on its own (`mod.rs:654-690`, seen via search) and caches failures as `Invalid`.
3. **Cancellation.**
   - CheckTx runs the stateless and historical checks concurrently (`delivery.rs:114-122`). A stateless error returns early and drops the pinned historical future, which releases the `Arc<State>` clone. That is what `cancellation_tests.rs` targets.
   - `try_begin_transaction` happens only after both checks finish (`delivery.rs:177`).
4. **Transaction ↔ historical binding.**
   - `ensure_historical_coverage` is re-run inside `check_and_execute` (`transaction.rs:515`). It binds each historical nullifier, the window and the auth hash to the verified inputs.
   - The window is checked against state in `nullifier_window_valid_with_context` (`transaction.rs:489`).

## Low-severity note (static; untested)

- **Any stateless error is cached as `Invalid`, not just deterministic rejections** (`delivery.rs:127`, `mod.rs:632,687`).
  - **Trigger:** `build_tx_artifact_for_stage` returns `Err`, which also covers a `JoinError` from a panic in `spawn_blocking` (`mod.rs:347`).
  - **Consequence:** that raw transaction is then rejected by CheckTx (`delivery.rs:76-77`) and by ProcessProposal (`mod.rs:905-906`) until the cache evicts the entry or the node restarts.
  - **Why it's low:** all the inputs involved (envelope, extraction, Pari verification and historical proofs under a fixed registry) are deterministic in the transaction bytes plus the registry, so a panic should repeat anyway.
  - **Branch attribution:** I did not compare this against the base.
  - **Possible fix:** cache `Invalid` only for validation errors, not for task join failures. Optional.

## Test observations (limited)

- `cancellation_tests.rs` uses a `StateRead` whose `get_raw` asserts the one expected key and then waits forever. That is a precise signal that dropping the historical future releases state. I did not verify its assertion tail.
- The cache has a test that results are scoped to one registry (`stateless_cache.rs:681`). I did not check whether any test exercises a capability built under a foreign registry reaching `VerifiedTxArtifact::new`. That would be a coverage gap only, not a runtime defect.

## Cross-sector follow-ups

- **Pari registry sector:** whether `registry.verify_items` batch verification is sound, including the source of its random combination and its behaviour on subgroup or invalid points. I treated it as trusted here.
- **Shielded-pool component sector:** check that `note_reshape_execute_verified` and `shielded_host_withdrawal_execute_verified` really re-extract and call `ensure_binds`, as `transfer` does. I confirmed only `transfer`.
- **Coordinator reproduction, optional:** a unit test that builds a `Verified` under registry A and passes it to `VerifiedTxArtifact::new` with registry B should fail with "proof capability registry mismatch".

## Remaining / unreviewed

- Bundle sections for `stateless.rs` (the stateless handler diff), `candidate.rs`, `batch_input.rs`, `benchmark_config.rs`, `lib.rs` and `test_support.rs`.
- `app/tests/mod.rs` and `proof_acceptance_tests.rs` (about 97 KB of diffs).
- The large `transaction.rs` diff outside lines 368–416 and 510–600.
- The PrepareProposal fallback beyond the lines found by search.
- A line-by-line read of the deleted `preconsensus.rs` and `aggregate_diagnostics.rs`.

**Verdict: PARTIAL.** The core admission and registry-binding runtime invariants are covered. The test files and several small diffs listed above were not reviewed.
