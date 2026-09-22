# Opus 5.5: 15-transactions-custody

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

I'm reading the diffs for `plan.rs` and `plan/build.rs` next, where synthetic blinding and signing are handled.

# Sector 15 (transactions and custody) review: no blocking findings, coverage PARTIAL

**Artifact:** `57eb44e8ca..c4b8b6d28e` (the whole branch delta). Read-only static review; I did not build or run anything.

## Scope and coverage

| Path | How it was covered |
|---|---|
| `core/transaction/src/transaction.rs` | Read the diff (lines 1–146), searched the rest for auth/effect/binding changes, and checked the runtime code at `:689-712` |
| `core/transaction/src/plan/build.rs` | Read the full diff and checked the synthetic blinding and binding signing logic |
| `core/transaction/src/plan.rs` | Read the diff (test consolidation) |
| `core/transaction/src/auth_data.rs`, `fee_funding.rs` | Read the diffs (type moves and passing the proof registry through) |
| `fee/src/fee.rs`, `fee/src/component/fee_pay.rs`, both `fee` and `compact-block` `Cargo.toml` files, `transaction/Cargo.toml`, `cnidarium-component/src/action_handler.rs` | Read the diffs (dependency swaps and doc rewrites) |
| `custody/src/threshold/config.rs` | Read the diff and the called `redjubjub-frost/src/keys.rs:90-125` |
| `custody/src/threshold/sign.rs` | Read the full diff |
| `custody/src/threshold/dkg/encryption.rs` | Read the full diff |
| `custody-ledger-usb/*` (deleted) | Searched for leftover references: only a negative test at `pcli/src/config.rs:81` and a CLI-surface test at `pcli/tests/cli_surface.rs:29-32` that asserts Ledger is absent. No dangling code or deps found. |

**Not reviewed:**
- In `core/transaction`: the diffs for `action.rs`, `gas.rs`, `is_action.rs`, `lib.rs`, `memo.rs`, `plan/action.rs`, `view.rs`, `view/action_view.rs`, `view/transaction_perspective.rs` and `tests/generate_transaction_signing_test_vectors.rs`.
- In `custody`: `Cargo.toml`, `encrypted.rs`, `soft_kms.rs`, `threshold.rs` and `threshold/dkg.rs`. For `dkg.rs` I only saw the round-2 duplicate/verify checks through a search.
- The 36 inventory-only paths.

## Coordinator follow-up: does the aggregate balance check conserve value?

**Verified statically: yes.**
- **Binding key:** `transaction.rs:689-712` sums every action's balance commitment, then the fee-funding commitment, then `fee.commit(0)`.
- **Fee sign:** `fee.rs:45` defines the fee's balance as `-Balance::from(self.0)`, so the fee is subtracted.
- **Commitment form:** `balance.rs:147-168` and `balance/commitment.rs:11-18` commit each value as `G_v·v + VALUE_BLINDING·r`.
- **Generators match:** `VALUE_BLINDING` (`crypto/primitives/src/generators.rs:19-25`) is defined as the RedJubjub `Binding` public key of scalar 1, and a test at `:45-48` checks this.
  - A binding signature therefore verifies only if all the value terms cancel. What remains must be `VALUE_BLINDING·Σr`, and the signer must know `Σr`.
- **Signer side:** `build.rs:63-67` adds the fee-funding blinding to the synthetic blinding, and `build.rs:295-304` signs with `SigningKey::<sapling::Binding>` over the `auth_hash`.
- **Identity key case:** `stateless.rs:34-48` accepts an identity binding key only when `num_proofs()==0` and the signature is the all-zero placeholder.
  - An identity key already implies the commitments cancel, so this does not bypass conservation.
  - It also stops proof-bearing transactions from skipping the signature over the ordered spend-auth bytes.

This relies on two things I did not check here: that each circuit correctly opens its balance commitment, and that `value_generator` is independent per asset. Both belong to other sectors.

## Findings

No blocking or security findings in the reviewed paths.

### Low: misplaced doc comment (cleanup)
- **Where:** `crates/core/transaction/src/transaction.rs:591-605`.
- **What:** The new `volume_nullifiers` was inserted between the existing doc line "Counts every proof-bound spend without allocating the iterator's buffer." and `spent_nullifier_count`. That line now documents `volume_nullifiers`, and `spent_nullifier_count` has no doc.
- **Fix:** Move the line back above `spent_nullifier_count`.
- **Status:** Documentation only; no runtime effect.

### Informational: binding signatures are now randomized
- **Where:** `build.rs:904` changed `sign_deterministic` to `sign(OsRng, …)`.
- **Effect:** The same plan and auth data now produce a different binding signature, and therefore a different transaction ID, on each build.
- **Assessment:** This is safe, and plan idempotency is not a stated contract here. Worth a check if any retry or dedup path compares rebuilt transaction IDs; I did not find one in this sector, but I did not search the whole repo.

## Positive checks: threshold import and signing

**Import validation** (`config.rs:296-313`) now runs on deserialize, `from_parts` and `deal`. It checks:
- the threshold is at least 2 and no more than the number of shares;
- the node's own identity is present and its verifying share matches its signing share;
- every public share lies on the threshold polynomial and interpolates to the group key (`redjubjub-frost/src/keys.rs:104-123`).

The tests at `config.rs:466-530` cover a bad threshold, a missing identity, an unrelated FVK and a mismatched share, and each is a distinct failure. One untested possibility: `verifying_key()` uses `expect` when parsing the FVK's spend key. If an imported FVK could carry a key that `frost::VerifyingKey::deserialize` rejects (for example the identity point), import would panic instead of returning an error. This needs a check or bounded reproduction of what `FullViewingKey` parsing allows.

**Signing rounds** (`sign.rs:385-1031`):
- The coordinator rejects duplicate participants, wrong commitment/share counts, unknown keys, and shares from participants it did not select.
- Followers check the package count, that they are included, and that every participant is allowed.
- Two regression tests target duplicate followers, extra commitments and missing packages.

**DKG encryption:** it now rejects bad public-key encodings (`Public::try_from`) instead of silently falling back to a random shared secret. That is a simplification and an improvement.

## Test weaknesses
- The two withdrawal-routing tests in `plan.rs` were merged into one loop over `change_amount` values 0 and 10,000. Both cases still assert `num_outputs()==1`. The removed test used a different precision parameter (10/14 rather than 12/18); that lost variation looks immaterial.

## Follow-ups for other sectors
1. Circuit sectors: confirm that each action's public `balance_commitment` is fully opened in its circuit with the per-asset `value_generator`, and that the fee-funding transfer proof binds its commitment.
2. Confirm the FVK parsing path cannot produce an identity or non-subgroup spend key, which would reach the `expect` in `config.rs:423-428`.
3. `app/mod.rs:556-568,697,966` depends on `volume_nullifiers()` covering only body actions ("fee funding has no volume effect"). Confirm against the fee-funding circuit design.

## Status: PARTIAL
The security-critical parts of this sector are reviewed: transaction binding/conservation, plan build and signing, threshold import validation, threshold signing, DKG encryption and Ledger removal. The small `core/transaction` diffs and remaining custody files listed as not reviewed above are unreviewed, along with the 36 inventory-only paths.
