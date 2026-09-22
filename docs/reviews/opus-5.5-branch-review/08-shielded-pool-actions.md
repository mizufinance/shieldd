# Opus 5.5: 08-shielded-pool-actions

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

I found **no confirmed bugs** in this sector, and **no current bypass** for any of your follow-up questions. Coverage is **PARTIAL**: the runtime handlers and the host/circuit checks you asked about were traced, but most of the large diffs were not read line by line. This was a read-only review; I built and ran nothing.

## What I reviewed
Handler diffs read in full, with callers traced:
- **Transfer handler:** the diff for `component/action_handler/transfer.rs` (010), plus its current code.
- **Withdrawal handlers:** the diff for `shielded_withdrawal.rs` (009) and the current `shielded_host_withdrawal.rs` handler.
- **`note_manager.rs` (011):** read in part.

Current code checked for proof/public-input parity:
- The `to_batch_item` and `verify` functions in `transfer/proof.rs`, `shielded_withdrawal/proof.rs`, `note_reshape/proof.rs` and `note_seizure.rs`.
- The volume witness in `pari.rs:195-233` and where `recent_floor` is passed in.
- `proof-params/src/pari.rs` (`ensure_binds`, `verify_item`, `verify_items`).

Cross-checks outside this sector:
- The circuits in `circuits/src/transfer.rs:260-333` and `circuits/src/volume.rs:70-165`.
- The routing-parameter check in `app/.../stateful.rs:80-130`.
- The seizure host path in `app/src/app/host.rs:745-814`.
- How the app and `transaction/src/fee_funding.rs` choose the fee-funding transfer context.

## Findings
None confirmed.

## Answers to the coordinator's questions

**Can volume context 2 (fee funding) bypass policy in a regulated self-transfer?** No. Three independent layers stop it:
1. **The host chooses the context, not the sender.** `transfer_check_stateless_and_extract` (`transfer.rs:119-122`) requires `body.proof_context == expected_context`. Ordinary actions are always checked as Ordinary (`transfer.rs:241`). FeeFunding is only accepted in the single `fee_funding` slot (`app/src/app/mod.rs:97-100,565-568`, `action_handler/transaction.rs:533-538`).
2. **Fee funding must use the fixed, disabled volume slot.** `VolumeAccumulatorPayload::validate` requires `self == canonical_fee_funding()` (`volume_accumulator.rs:227-230`).
3. **The circuit forces fee funding to be a self-transfer.** `transfer.rs:333` asserts `(proof_context - 1) * external == 0`, so context 2 requires the recipient to equal the sender. In `volume.rs:90-93`, `eligible = ordinary & regulated & external`: fee context forces `use_real = false`, zeroes `day_start`, nullifier and commitment, and `flagged = false`.

   An Ordinary self-transfer is also not volume-eligible (`external` is false), so context 2 gives no extra room in a self-transfer. An Ordinary regulated external transfer can't skip its accumulator either: `use_real = false` there sets `flagged`.

   The circuit's own tests reject `proof_context = 3` (`volume.rs:378`).

**Zero withdrawal amount:** rejected. `shielded_host_withdrawal_check_stateless_and_extract` calls `action.body.withdrawal.validate()` (`shielded_host_withdrawal.rs:67`). That rejects zero at `host_withdrawal.rs:49-50`, and `shielded_host_withdrawal/plan.rs:808` tests it. That handler is the only place the shared withdrawal public data is built (`shielded_host_withdrawal.rs:35`). Seizure rejects zero amounts as well (`note_seizure.rs:52`).

**Routing parameters:** `routing_parameters_within_grace_period` (`stateful.rs:88-106`) checks the parameter set id for Transfer, NoteReshape, ShieldedHostWithdrawal and the fee-funding transfer. These are all the proof-carrying actions that have a routing set. The id also feeds the proof's public inputs (`shielded_withdrawal.rs:89`).

**recent_floor and anchor:**
- **Transfer and withdrawal:** both take `recent_position_floor` and `anchor` from `TransactionContext` (`shielded_withdrawal.rs:59,91`; `pari.rs:307,395,479`). Transfer also checks its body anchor against the transaction anchor (`transfer.rs:114`). The withdrawal has no separate body anchor, so skipping that check there is correct.
- **Seizure:** runs `check_claimed_anchor` (`host.rs:777`) and requires `nullifier_window == current_window` (`host.rs:773-775`). The action's own validation forces `recent_position_floor == nullifier_window.recent_position_floor` (`note_seizure.rs:619`), so the floor is pinned to chain state.

**Timestamp and asset/user anchors:**
- **Transfer:** `validate_compliance_anchors` plus `check_timestamp_freshness` (`transfer.rs:148-160`).
- **Withdrawal:** the same checks, plus a non-negative block time (`shielded_withdrawal.rs:102-118`).
- In both, the timestamp is a public input, and the circuit ties it to the day index and second (`volume.rs:78-90`).

**Proof parity:** each `to_batch_item` hard-codes its family (reshape takes it from the proof-bound `family_id`). `ensure_binds` compares the family and the whole `Verification` item, including statement and envelope (`proof-params/pari.rs:107-113`). `transfer_execute_validated` re-extracts the item and compares it again (`transfer.rs:183-187`).

**`note_manager.rs` change:** SCT insertion failures now return an error instead of panicking (`add_note_payload` and `add_volume_accumulator_payload`), and a test checks nothing is staged on failure. Regulated mints now use the asset policy's single `audit_keys.payload`. This matches your one-payload-key intent, and a test confirms it differs from `ring_pk`.

## Minor observations (not bugs)
- `Verified` carries a `registry_id`, but `ensure_binds` doesn't compare it with the registry doing the execution. The registry is operator-local configuration, so this only matters if keys can be reloaded between verify and execute. Worth a one-line hardening check; it is not exploitable as far as I could see.

## Follow-ups for other sectors
- **State rollback (needs a reproduction):** now that SCT insertion returns an error, confirm the transaction's state delta is discarded when a later write fails, such as the volume-payload insertion after nullifiers are spent. That lives in the app/transaction-execution sector.
- **Circuits sector:** confirm that `note::constrain_spend` enforces the `recent_floor` and padding rules (`circuits/transfer.rs:269-286`). I didn't audit its internals.

## Not reviewed (why this is PARTIAL)
- **Large diffs not read:** `public_input_hash.rs` (028, 47 KB), `transfer/proof.rs` (047, 44 KB), `note_seizure.rs` (025), `pari.rs` (026; only the volume witness, the `recent_floor` sites and the routing helper), `test_proof_helpers.rs` (041), `recovery_capsule.rs` (030), `volume_accumulator.rs` (049; only `validate`), and `note.rs` (015).
- **Plans and families:** `transfer/plan.rs` (046), `shielded_host_withdrawal/plan.rs` (033), `note_reshape/plan.rs` (021), `note_reshape_padding.rs` (024), and the new `note_reshape/family.rs` and `shielded_withdrawal/family.rs` files.
- **Small diffs not opened:** `action_context.rs`, `backref.rs`, `compliance_helpers.rs`, `component.rs`, `note_reshape.rs` (006), `note_reshape_action.rs` (007), `shielded_host_withdrawal.rs` (008; current code inspected instead), `shielded_pool.rs`, `discovery.rs`, `lib.rs`, `note_payload.rs`, `rseed.rs`, the `action.rs` files, `shielded_note_plan.rs`, `transfer/compliance.rs`, `transfer/generated.rs`, the `mod.rs` files, `proof.rs`, `test_plan_helpers.rs`, `Cargo.toml`, `benches/routing.rs`, and `tests/volume_boundary.rs`.
- **Deleted files:** `note_reshape/generated.rs`, `shielded_withdrawal/generated.rs`, `public_input_hash/test_support.rs` and the three `prover_runtime.rs` files are deletions of retired backends. I checked their live replacements (`pari::Verification`/`Registry`) but didn't audit whether anything still references them.

**Status: PARTIAL.** The runtime execution paths and the coordinator's questions are covered; the large parity and encoding diffs above are left.
