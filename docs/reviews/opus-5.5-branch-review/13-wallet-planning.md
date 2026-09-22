# Opus 5.5: 13-wallet-planning

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

I found no confirmed defects in this sector. I could not run tests or reproductions (read-only review), so three risks outside this sector are listed as follow-ups for you to check.

## Scope and coverage

Artifact: `57eb44e8ca..c4b8b6d28e`, sector 13-wallet-planning. I used 12 tool calls.

| Path | How it was covered |
|---|---|
| `crates/view/Cargo.toml` | Read the diff. Dependencies move from decaf377 to ff/group plus the shieldd crypto and circuits crates; this matches the native-backend migration. |
| `crates/view/src/client_compliance.rs` | Read the diff and the new accumulator check. The new check rejects a plan with two real accumulator transitions for the same subject and day, across actions and fee funding. |
| `crates/view/src/lib.rs`, `planning_intent.rs`, `planning_io.rs` | Read the diffs. They only swap `Fr`/`Fq` types and exports. |
| `crates/view/src/note_manager.rs` | Read the diff (lines 1–700 of 2101, which is the runtime part) and inspected the current transfer loop (lines 190–376) and `recent_note_indices_covering` (line 1753). Test hunks were spot-checked through grep only. |
| `crates/view/src/storage_planning.rs` | Read the diff and the two new tests. |
| `crates/view/src/sweep.rs` | Read the diff and every caller: note_manager tests and the app-test `app_can_sweep_a_collection_of_small_notes.rs`. |

## Findings

**None confirmed.** Things I checked that turned out safe:

- **Removing notes by index:** `recent_note_indices_covering` returns either one index or a pair built with `.rev()`. The pair is in descending order, so `indices.into_iter().map(|i| notes.remove(i))` removes the right notes and cannot go out of bounds.
- **Fee-convergence loops:** the loop removes selected notes from `notes`, but both the transfer and withdrawal loops reload `notes` before the next pass (`note_manager.rs:316`, `:370`). A later pass therefore cannot drop a note chosen earlier.
- **Removed `total_available < required_amount` guard:** this is covered by the earlier `selected_total < required_amount → InsufficientBalance` check at `note_manager.rs:227`. `select_notes_covering` takes notes until the total covers the amount or the notes run out, so the maintenance branch is only reached once the selection covers the required amount.
- **Base asset paying its own fee (`fee_funding: None`):** this is intended and covered end to end. `app_can_sweep_a_collection_of_small_notes.rs:75` witnesses and builds the plans.
- **Base maintenance transfer step (`build_base_transfer_step`):** it checks for base-asset gas, 1–2 inputs, and a base-asset withdrawal. It uses checked arithmetic, returns `None` when the notes can't cover the reserve plus fee, and gives up with an error after 4 non-converging passes.
- **Paid note reshapes:** these now refuse to run without zero gas (`"paid note reshapes require separate fee funding"`).
- **Loops:** the non-base maintenance path ends in a base self-transfer, and `select_base_fee_funding` now calls `build_base_transfer_step` rather than calling back into automatic reshaping. I found no recursion loop.

## Follow-ups for other sectors (unverified guesses, not findings)

1. **Paid base withdrawal with a regulated base asset (reproduction needed).** A paid base withdrawal still produces a `ShieldedHostWithdrawal` plus a base `fee_funding` transfer from the same sender. If the base asset is ever regulated, both would be real accumulator transitions for the same (subject, day). The new check in `client_compliance.rs` would then reject every paid base withdrawal. This is harmless if the base asset is always unregulated, i.e. `successor_state()` returns `None`. I did not confirm that invariant. Suggested reproduction: a regulated base-asset fixture going through `plan_host_withdrawal` and then completion.
2. **Synthetic unregulated leaf with a populated user tree.** `storage_planning.rs` now always supplies `ComplianceLeaf::synthetic_unregulated` for unregulated assets, including when the user tree is populated. Before, it did this only when the tree was empty. This is only sound if the circuit gates user-tree membership on the asset being regulated, and the relation checks the regulated flag against the asset tree. `routing.rs:143` (`regulated.select`) suggests this is the case. The circuits/compliance sector should confirm it, and confirm that `plan.validate()` accepts the default path against a non-empty `user_root`. The new unit test only checks that local planning succeeds, not that a proof verifies.
3. **Sweep skips `NeedsMaintenance` for non-base assets.** The current code treats `NeedsMaintenance` for a non-base asset as a skip and returns `None`, and the app-test loop reads `None` as "done". This behaviour predates the branch. Base consolidation now runs first only when there are two or more base notes, so a non-base sweep blocked on fee maintenance can still end silently.

## Complexity and test notes

- **Hard-to-read withdrawal selection:** in `note_manager.rs` around lines 513–560, paid base withdrawal selection has three fallback tiers: recent pair plus recent fee note, then an exact-amount note preferring recent ones (via `min_by_key(bool)`), then generic covering. That part of the function is dense. The `withdrawal_fee` estimate (withdrawal gas plus one transfer's gas) is separate from `price_transaction_plan`. The estimate only affects which notes are preferred, not correctness, because later passes re-price the fee. Still, a small typed helper would make the ordering clearer.
- **Consolidation depth not proven:** `plan_base_withdrawal_maintenance` checks the total balance against withdrawal + fee + **one** consolidation fee. With many small notes, several consolidation rounds are needed, and the wallet could spend fees and only then reach `InsufficientBalance`. That is a limit of the prototype, not a demonstrated defect. No test checks the total consolidation cost across multiple rounds.
- **New storage tests:** both are useful and catch different failures — unregulated with a populated tree succeeds, regulated without a leaf fails.

## Remaining / not reviewed

- The test hunks of the `note_manager.rs` diff (patch lines ~700–2101) were only spot-checked with grep, not read in full.
- The circuit-side handling of unregulated membership and the chain's acceptance of base fees paid inside a transfer belong to other sectors.

**Status: COMPLETE** for the runtime paths in this sector, with the partial test-hunk coverage noted above.
