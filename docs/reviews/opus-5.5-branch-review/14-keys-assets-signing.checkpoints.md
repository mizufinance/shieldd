# Opus 5.5: 14-keys-assets-signing

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

Still reviewing: I'm reading the asset/balance diffs, then the keys and FROST diffs.

CHECKPOINT: asset diffs (000–010) read; Id codec, commitment codec (subgroup+canonical check) fine. No findings yet.

CHECKPOINT: read address.rs, diversifier, fvk, ivk diffs; subgroup checks on ak and pk_d present; no findings yet. Continuing with spend/symmetric/amount.

Checking the callers of the new FROST public-package validator.

# Sector 14 review (keys, assets, signing): no defects found, with some limits

**Artifact:** `57eb44e8ca..c4b8b6d28e`, the whole branch delta. This was a read-only static review. I did not run any builds or tests.

## What I covered

| Paths | How I checked them |
|---|---|
| `crates/core/asset/**` (000–010) | Read every diff. Checked the `Id` codec, `Hash`/`Ord`, the value generator, the commitment codec, `Balance::commit`, and the metadata binding test. |
| `crates/core/keys/**` (011–027) | Read the diffs for `address.rs`, `diversifier.rs`, `fvk.rs`, `ivk.rs`, `spend.rs`, `lib.rs`, `prf.rs`, `symmetric.rs` and `test_keys.rs`. Also checked the current `Address` `Ord`/`Hash` impls, `ensure_nonidentity_spend_auth_key`, and that `from_components_with_ivk_hash` is private. |
| `crates/core/num` (028–029) | Read the diff. `Fq`/`Fr::from_raw` is given a canonical integer below 2^128, and the no-wrap test is kept. |
| `crates/crypto/primitives/src/encoding.rs` (runtime I relied on) | Checked that `point` does a subgroup decode and rejects non-canonical bytes, and that `nonidentity` also rejects the identity. |
| `decaf377-frost/**`, `decaf377-ka/**` (030–039, deleted) | Checked that nothing references them any more: `ka` now comes from `shieldd_sdk_crypto::ka` and the `rdsa` alias became `reddsa`. I did not re-audit the deleted code. |
| `redjubjub-frost/**` (040–044, added) | Read `keys.rs` in full. Grepped the signing and codec surface of `lib.rs` and `dkg.rs`, and confirmed the only caller of `validate_public_key_package` is `custody/src/threshold/config.rs:167`. |
| `keys/tests/suite.rs`, `asset/tests/jubjub_commitments.rs` | These are small added tests. I only saw them in the diff inventory and did not read their bodies. |

## Findings

**None that I can support at the blocking or regression level.**

Checks that held up:
- **Asset IDs:** `Id` bytes must be a canonical `Fq` (`encoding::field`). The asset ID proto now requires exactly one representation, and all 8 combinations are tested. `Ord` compares reversed little-endian bytes, which is integer order, and `Hash` hashes the bytes; both agree with `Eq`.
- **Commitments:** decoding requires a canonical subgroup point, so torsion points and non-canonical encodings are rejected (`encoding.rs:25-30`).
- **Addresses:**
  - The wire form is a `SUITE` prefix byte plus 48 jumbled bytes.
  - `pk_d` goes through `ka::Public::try_from`, which calls `nonidentity`.
  - The transparent form checks the suite byte and a length of 33.
  - Removing `transmission_key_s` loses no check, because `pk_d` is now point-validated where it is parsed.
  - `PartialEq` now compares only `d` and `pk_d`. That is sound because `g_d` is a pure function of `d`, and `Ord`/`Hash` use `to_vec()`, which is consistent with it.
- **Full viewing key:** `ak` must be a subgroup point (`encoding::point`), and a torsion `ak` is tested to be rejected. There is a parity test between the native viewing key and the Pari relation. The byte form now has a suite prefix and is 65 bytes long.
- **Spend-auth keys:** `ensure_nonidentity_spend_auth_key` now also rejects non-subgroup points. That is stricter than before (RedDSA would accept small-order points).
- **Key derivation:** `ask`/`nk` use `from_bytes_wide` on 64-byte BLAKE2b outputs, so the reduction bias is negligible. A zero `ask` has negligible probability and is only caught by `expect`, which is an inherent limitation rather than a regression.
- **Amounts:** the `u128` embedding cannot wrap `Fr` (the test is kept).
- **FROST package validation:** `validate_public_key_package` (new) interpolates the first `t` shares, checks the result against the group key, and checks every other share against the same polynomial. Both loops use the same `BTreeMap` order, and it requires `2 ≤ t ≤ n`.

## Test changes
Consolidating the tests did not lose any case that matters:
- The metadata binding test and the balance decode table cover the same cases as before.
- The `views_address` test is merged and now checks both directions.
- The deleted "determinism" and "prefix alias" asserts in `id.rs` were trivial or already covered by the existing collision loop.

## Loose ends to hand to other sectors
1. **Randomized spend keys (spend/action sector):** `rk` (the randomized `ak`) and every `VerificationKey<SpendAuth>` read from the wire should go through `ensure_nonidentity_spend_auth_key` or the subgroup check. `reddsa` on its own accepts small-order points, as the test at `fvk.rs` shows.
2. **FROST custody (custody sector):** check whether dealer-split and DKG outputs call `validate_public_key_package` before they are persisted. The only call I found is `config.rs:167`. Also check that `min_signers ≥ 2` is intended, because it rules out 1-of-n configurations.
3. **Pinned `reddsa`/`frost-rerandomized` versions:** I did not verify whether deserialising a `VerifyingKey` or `NonceCommitment` from these crates rejects torsion points. That needs a provenance check or a small test by the coordinator.
4. **Address decode cost:** every decode now computes `g_d` eagerly, which is one hash-to-curve per address. This is only a performance note; if bulk scanning matters, a benchmark would settle it.

## Not reviewed
- The bodies of `keys/tests/suite.rs` and `asset/tests/jubjub_commitments.rs`.
- Beyond the grep, a line-by-line read of `redjubjub-frost/src/lib.rs`, `keys/dkg.rs` and `tests/frost.rs`.
- The upstream `reddsa`/`frost` crates.

**Status: PARTIAL.** The runtime key, asset and codec invariants are fully covered, but the FROST `lib.rs`/`dkg.rs` and the two added test files were only partly covered.
