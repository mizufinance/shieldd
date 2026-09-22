# Opus 5.5: 04-transaction-circuits

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

I've finished reading the sector's circuits and am writing up the report now.

# Sector 04 — transaction circuits: review report (Opus 5.5)

**Range:** `57eb44e8ca..c4b8b6d28e`. Every file in this sector is new on the branch, so the whole sector is branch-introduced code.

## Scope and coverage
I read these circuit files from the current source:
- `transfer.rs` (all of it)
- `balance.rs` (`native`, `constrain`, `conserve` and their tests)
- `note.rs` (all of it)
- `authorization.rs` (all of it)
- `compliance.rs` (all of it)
- `self_action.rs` (all of it)
- `withdrawal.rs` (all of it)
- `reshape.rs` (all of it)
- `volume.rs::constrain`
- `routing.rs`: `precision`, `constrain_parameters`, `constrain`

For context I also checked `recovery.rs::constrain`, the point checks in `registry.rs`, key validation in `crypto/primitives/src/audit.rs`, and the flag and key rules in `docs/compliance/reference.md`.

I did not read these in detail: the test files `note/tests.rs`, `reshape/tests.rs`, `transfer/tests.rs` and `withdrawal/tests.rs`; `routing::constrain_single` (I only saw it through grep); and `volume.rs` tests after line 230.

## Findings
**No confirmed correctness or security findings in this sector.** These are the invariants I checked and found enforced, with evidence:

- **Conservation**
  - Transfer (`balance.rs:57-90`):
    - Every input and output is range-checked to 128 bits.
    - The net value is a signed magnitude checked to 129 bits.
    - The sign is picked with `negative.select`. The field is about 2^255, so a value cannot wrap around unnoticed.
    - The public output is the commitment `value·G_asset + blinding·H`. The asset generator is checked to be non-identity, and the blinding is proved canonical.
  - Withdrawal and reshape (`balance.rs:305-325`): inputs must exactly equal outputs, with each term range-checked to 128 bits. The sums stay below 2^131, so they cannot wrap.
  - Withdrawal includes the public `amount` on the output side (`withdrawal.rs:295-301`).

- **Authorization** (`authorization.rs:79-122`)
  - `ivk` is `H(nk, ak)`, reduced canonically and checked non-zero.
  - The circuit proves `transmission = ivk·diversified`.
  - For regulated assets, the nullifier key is `effective_nk = H(ivk·rnk_dh, address, asset, ring)`, and its commitment must match the compliance leaf.
  - For real spends, `rk = ak + r·G` (`note.rs:154-156`).

- **Padding** (`note.rs:159-179`)
  - A dummy spend must have amount 0.
  - Its nullifier uses a separate domain, and the padding kind and slot are fixed in the circuit, not chosen by the prover.
  - For real spends, the anchor and `rk` are checked through the `real·(…)` constraints.
  - `history_required` must be 0 for dummies.
  - Reshape merge forces slots 0–1 to be real and dummies to come last (`reshape.rs:175-178`).

- **Compliance** (`compliance.rs:52-88`)
  - The leaf is proved to be in the tree whenever the asset is regulated.
  - The lifecycle status must be `001`, and the top 64 bits must be zero.
  - Transfer checks both the sender and receiver leaves against the same anchor and asset.

- **Volume** (`volume.rs:64-171`)
  - The timestamp is split into day and second, with the second at most 86399.
  - A real update is only allowed when the transaction is eligible; `flagged = eligible ∧ ¬use_real`.
  - The limit is checked with bounded comparisons.
  - Origin and continuation nullifiers stop a second new-day start within the same day.
  - In transfer, an external transfer must use context 1 (`transfer.rs:333`). Withdrawal forces context 1 (`withdrawal.rs:230`).

- **Recovery capsules**
  - Each output checks `capsule.commitment == note.recovery`.
  - The capsule proves `epk = r·G`, `c2 = seed + KDF(r·payload)`, the encrypted amount and blinding, and the confirmation (`recovery.rs:84-156`, `note.rs:226-234`).

- **Openings of public statement fields**
  - Every statement field in transfer, withdrawal and reshape comes from a constrained variable, and the Poseidon digest is checked against the claimed public input.
  - The Pari committed input is the same constrained `blinding` variable used inside the balance commitment (`transfer.rs:403`, `withdrawal.rs:339`, `reshape.rs:222`).
  - The withdrawal effect hash limbs are range-checked to 128 bits.

- **Flag-based key switch** (`withdrawal.rs:238-241`, the same pattern as transfer's encryption)
  - When a transaction is flagged, the tiers are encrypted to the issuer DK; otherwise they go to the audit payload key.
  - This matches the documented design (`docs/compliance/reference.md:14,84`; `docs/compliance/flow.md:279-283`), so it is **not a finding**. It answers the open question left by sector 03.

## Low-priority notes
1. **Defense in depth (untested hypothesis).**
   - **What:** The circuit never proves that the registry payload key or checking key is non-identity. Recovery (`recovery.rs:100`) and withdrawal (`withdrawal.rs:238-241`) use `leaf.audit.payload` directly. `registry.rs:95` only checks subgroup membership.
   - **What protects it today:** Registration code rejects identity keys (`primitives/src/audit.rs:207-208`, `validate_registered`), and the leaf is authenticated through `asset_anchor`.
   - **Risk:** If a leaf with an identity key ever reached the registry tree through another path, audit and recovery ciphertexts would be readable by anyone.
   - **Fix:** Add `payload_key.assert_non_identity()` in `transfer.rs` and `self_action.rs`, or in `registry::constrain` when regulated. It costs very few constraints.
2. **Asymmetry, not a bug.** Transfer requires the receiver amount to be non-zero (`note.rs:219-221`), but withdrawal does not constrain the public `amount` to be non-zero. That is harmless for conservation. If product rules forbid zero-amount withdrawals, the native action check should enforce it; the coordinator should confirm.
3. **Coupling to watch.** Volume state uses `auth.nk`, while note nullifiers use `effective_nk`. Both are bound through `ivk`, and the continuation nullifier shares the `NOTE_NULLIFIER` domain with notes. It is only safe because state-tree positions are unique per leaf. A comment in `volume.rs:135` would help.

## Follow-ups for other sectors
- **Native verifier / action sector:** Check that the transfer `balance` point (which is not forced to zero value) is summed with the fee and other actions and checked to equal `blinding·H` overall. Also check that `routing_parameter`, `recent_floor`, `timestamp`, `asset_anchor` and `compliance_anchor` are compared to chain state, and that `volume.context == 2` (fee) is only accepted in fee-funding positions, since a regulated self-transfer can choose context 2.
- **Registry and admission sector:** Confirm that no admission path skips `validate_registered` (relevant to note 1).
- **Reproductions for the coordinator (optional):**
  - A transfer negative test with `outputs[0].amount = 0`.
  - A reshape merge with a real input after a dummy.
  - A withdrawal with `volume.proof_context = 2`.

  All three should fail. They are probably already covered in the test files I didn't read, but I haven't confirmed that.

## Not reviewed
- The test files `note/tests.rs`, `reshape/tests.rs`, `transfer/tests.rs` and `withdrawal/tests.rs`, including whether each negative case detects a distinct failure.
- The body of `routing::constrain_single`.
- The remaining `volume.rs` tests.

## Status
**COMPLETE** for the runtime circuit constraints in this sector. The test-quality check is **PARTIAL** because the four test modules above were not read.
