# Opus 5.5: 14b-frost-keys-test-residual

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

I found no blocking defects in this sector. Coverage is **COMPLETE** for the six assigned paths, based on reading the code only: I ran no builds or tests, and I did not open the pinned upstream frost-core sources in the Cargo cache.

## Scope and coverage

| Path | How I covered it |
|---|---|
| `crates/core/asset/tests/jubjub_commitments.rs` (new) | Read the diff |
| `crates/core/keys/tests/suite.rs` (new) | Read the diff |
| `crates/crypto/redjubjub-frost/Cargo.toml` (new) | Read the diff; frost-core and frost-rerandomized are pinned to `=3.0.0` |
| `crates/crypto/redjubjub-frost/src/keys/dkg.rs` (new) | Read the diff: wire adapters and `part1`/`part2`/`part3` wrappers |
| `crates/crypto/redjubjub-frost/src/lib.rs` (new) | Read the diff: signing rounds, `sign_randomized`, `aggregate(_randomized)` |
| `crates/crypto/redjubjub-frost/tests/frost.rs` (new) | Read the diff |
| Related code (not assigned) | `keys.rs:50-125` (`reconstruct`, `validate_public_key_package`) and its only caller, `crates/custody/src/threshold/config.rs:167` |

## Findings

None that I can support with a trigger in the code.

What I checked:

- **Imported packages are checked by upstream code.** Every incoming DKG package, signing commitment and signature share goes through a frost-core `deserialize`. Nothing is wrapped as raw bytes.
- **Signatures are verified before they are returned.** `aggregate` and `aggregate_randomized` (`lib.rs:532-571`) turn the result into a `reddsa::Signature<SpendAuth>` only after the frost-core / frost-rerandomized aggregate call succeeds. The `.expect` calls there only cover a 64-byte length conversion. I did not open the cache to confirm that frost-core 3.0.0 checks both each share and the final signature during aggregation; I'm relying on its documented behaviour.
- **Minimum signer count.** Two layers enforce at least 2 signers:
  - `validate_public_key_package` (`keys.rs:101`) requires `threshold >= 2`, and the threshold must be no larger than the number of shares.
  - frost-core 3.x rejects `min_signers < 2` in `dkg::part1`, `generate_with_dealer` and `split`. This is an upstream fact I did not confirm in the cache.

  The branch adds no compatibility path for smaller thresholds.
- **Imported public key packages are consistent.** `validate_public_key_package` (`keys.rs:104-123`) interpolates the first `threshold` shares. It checks that they reproduce the group key and that every other share lies on the same polynomial. That is a correct check that the imported package hangs together.
- **Randomized signing.** `sign_randomized` uses the transaction's own randomizer (alpha) through `Randomizer::from_scalar`, and a comment (`lib.rs:496-498`) explains the choice. That is correct: the seed-based API would derive a different alpha, which would not match the circuit's key.
- **Subgroup and non-identity guard on the randomized spend key.** This crate has no boundary check that rejects small-order or identity keys, and none is needed here. Keys and elements pass through reddsa and frost-core decoders, and aggregation verifies against the randomized key. The real boundary guard for the randomized spend key belongs to the verifier of the spend action or proof, which is outside this sector. `crates/core/keys/src` has only one `is_identity` check, on the diversified generator at `address.rs:85`.

## Test weaknesses (optional, not blocking)

1. **`tests/frost.rs` never signs with a threshold subset.** It sets up T=2 and N=3, but every signing round uses all three participants (`frost.rs:658-675`, `:703-723`). A defect that only appears with a strict subset would still pass, for example Lagrange coefficients computed over the wrong set or a broken `min_signers` threshold. The fix is to sign and aggregate with just 2 of the 3 identifiers.
2. **No test round-trips the new wire formats.** The `pb` conversions for `DkgRound1Package`, `DkgRound2Package`, `SigningCommitments` and `SignatureShare` are the only first-party logic in `dkg.rs` and `lib.rs`, yet no assigned test covers them. A swapped hiding/binding field would go unnoticed, and swapping them would break signing. Routing the existing flow through `DomainType` encode and decode would cover this cheaply.
3. **No negative-path test in this crate.** Nothing checks that a tampered share makes `aggregate` fail, that a wrong randomizer fails verification against `vk.randomize(&r)`, or that `validate_public_key_package` rejects a mismatched share or a threshold below 2. The one caller, `custody/src/threshold/config.rs:167`, may test some of this, but I didn't check. This is a coverage gap, not a runtime defect.
4. **`jubjub_commitments.rs` checks both sides against the same shared parameters.** Both use the loaded `Parameters` and generators. That does catch drift between the runtime and the circuit gadget, which is its purpose. The amounts include `0` and `u128::MAX`, and the rejection checks are relevant. It's fine as a parity test.
5. **`keys/tests/suite.rs` is a reasonable negative test.** It shows that encodings without the suite context are rejected and that the protobuf form round-trips.

## Follow-ups for other sectors

- The spend or authorization verification sector should confirm that the on-chain / proof boundary rejects small-order and identity randomized keys, and that a signature over the randomized key is checked against the same key the circuit exposes publicly.
- The custody sector should confirm that `validate_public_key_package` runs on every import path (DKG result, dealer output, config load), not only at `config.rs:167`, and that a negative test exists.
- **Reproductions I'd ask the coordinator to schedule:**
  - `cargo test -p redjubjub-frost`
  - The same flow modified to sign with a 2-of-3 subset (test weakness 1).

## Unreviewed

- Pinned upstream frost-core, frost-rerandomized and reddsa 3.0.0 internals. I relied on their documented behaviour and did not open the cache.
- The rest of `keys.rs` above line 50 (`generate_with_dealer`, `split`), apart from signatures shown by a grep.

**Status: COMPLETE** for the assigned paths, within the limits above.
