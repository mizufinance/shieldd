# Opus 5.5: 06b-compliance-encryption-codecs

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

# Sector 06b (compliance encryption and codecs): review of 57eb44e8ca..c4b8b6d28e

**Verdict: COMPLETE, with no blocking defects.** Every assigned path is accounted for below. I found no runtime or security defect introduced by this branch. There are three minor items: two test weaknesses and one piece of dead code.

## Scope and coverage

| Path | How it was reviewed |
|---|---|
| `src/crypto.rs` (004) | Read the whole diff. Traced callers of `shared_secret`, `decrypt_tier_bytes` and `detection_seed`: `transfer_audit.rs`, `scanning.rs`, `withdrawal.rs`, `recovery_capsule.rs`, and `app/host.rs:805-807`. |
| `src/transfer.rs` (018) | Read the whole diff. Checked it against `transfer_audit.rs:1-130`. |
| `src/issuer_keys.rs` (010) | Read the runtime part of the diff (lines 1-310). The test tail after that was not opened. Grepped for callers. |
| `src/withdrawal.rs` (020) | Read diff lines 1-170: codec, decrypt and encryption material. The remaining test and helper hunks were not opened. |
| `src/lib.rs` (011) | Read the re-exports and helpers, and the deleted QuadTree tests. Confirmed replacement coverage in `tree.rs:510-640`, `registry_tests.rs` and `codec_boundaries.rs`. |
| `src/genesis.rs` (007) | Read the whole diff. |
| `src/event.rs` (006) | Read the whole diff: the new `EventAssetRegistered::validate` and its test. |
| `src/decode_object.rs` (005) | Read the whole diff (test consolidation plus the canonical field decode). |
| `src/component/query.rs` (002) | Read the whole diff (encoding change only). |
| `src/params.rs` (012) | Read the whole diff (doc comment only). |
| `tests/codec_boundaries.rs` (021, added) | Read the whole file. |
| `tests/pari_runtime.rs` (022, added) | Read lines 1-150 (fixture construction). The assertion tail was not opened. |

## Coordinator follow-up: separate randomness per tier under the one Orbis payload key

**Confirmed.** In `transfer.rs` (`encrypt_transfer`, around lines 305-360 of the current file), each of the four tiers gets its own fresh randomness:
- sender core, sender ext, output core and output ext each get their own nonzero `r` from `sample_nonzero_scalar` and their own `seed` from `Fq::random`.
- Each tier has its own ephemeral key: `epk_i = SPEND_AUTH·r_i`.
- On the unflagged route each tier uses `payload·r_i`; on the flagged route it uses `dk_pub·r_i`.
- Each tier's `c2_i = seed_i + shared_secret(payload·r_i)`.

So opening one tier's shared point (`payload·r_i`) gives only that tier's `seed_i`. It reveals nothing about the other tiers, because it is the discrete-log/CDH-type problem across independent `r_j`.

**How the selected tier is bound in decryption:**
- `TransferTier::select` (`transfer_audit.rs:37-84`) takes that tier's `epk`, `c2`, ciphertext and salt from the canonical ciphertext.
- Both core tiers then check the key confirmation `Poseidon(KEY_CONFIRMATION; seed, epk.x, epk.y, tier_salt)` (`transfer_audit.rs:100-104`). This ties a released seed to that exact ephemeral key and salt.
- The ext tiers have no key confirmation. They are bound only through their `epk` (the shared point is released against the epk, per the doc comment at `transfer_audit.rs:88-89`) and through the canonical padding and point checks in `decrypt_seed`.
- I did not verify that the release request (PRE/Orbis) includes the tier's `epk`; that belongs to sector 16.

**Caveat (a prototype property, not a defect):** nothing on the host or in the circuit forces the four ephemeral keys to be distinct. The circuit derives each `epk_i` from its own witness `r_i` (`pari_runtime.rs` witness `ephemeral: [..4]`). A dishonest encryptor could reuse `r`, so that one release opens several of *its own* tiers. That only exposes data the encryptor already controls, to an authorized auditor, so I'm not reporting it as a finding. If sector 16 assumes the keys are distinct as a *soundness* property rather than a privacy property, it would need an explicit check.

**Domain separation:** the detection seed (`detection_seed`, domain DETECTION, which hashes the shared point *and* the epk) and the tier seed (`shared_secret`, domain SHARED_SECRET) use different domains. This matters when flagged: sender-core then uses `dk_pub·r_sc` for both the detection tier and the sender-core tier. That shared-point reuse was already there before the branch and stays separated by domain.

## Findings

No blocking or security defects.

**Low: test assertion loosened.** In `genesis.rs` tests (`genesis_rejects_identity_authorization_keys`, around diff lines 108 and 127), the expected error text went from specific strings ("compliance registrar key must not be identity" and "…registration authority key…") to just `contains("identity")`.
- **Trigger:** a regression where the registrar key is accepted but some other identity check fires, e.g. rejecting the key in a different field.
- **Consequence:** the test still passes, so the two failure causes can no longer be told apart.
- **Branch-introduced:** yes.
- **Fix:** assert the specific current messages, or error kinds, for both cases.

**Informational: `DetectionKeyPublic` is unused outside tests.** Grep finds it only in `issuer_keys.rs` tests (lines 299/302) and the `lib.rs:19` re-export.
- Its `from_bytes` uses `encoding::point`, which accepts the identity point. Genesis instead uses `encoding::nonidentity` (`genesis.rs`, `NativeAssetRegistration`).
- There is no runtime caller, so this is not a live bug.
- **Fix:** delete the type (as policy requires for replaced flows), or switch it to `nonidentity`.

**Informational: remaining tests look sound.**
- The consolidated metadata codec test in `decode_object.rs` still checks exact wire layout, round-trip, trailing bytes and truncation.
- The deleted "subject derivations not serialized" test covered `derive_compliance_scalar`, which this branch removes, so dropping it is correct.
- The QuadTree path tests deleted from `lib.rs` are covered by `tree.rs:510-640`, `registry_tests.rs:590-837` and `codec_boundaries.rs`.

## Checked and correct

- **`decrypt_tier_bytes`** (`crypto.rs:46`) rejects a wrong ciphertext length, non-canonical field words and nonzero padding. Its test exercises lengths 0/1/30/31/32/64, truncation and a wrong expected length.
- **Transfer and withdrawal codecs** now start with a `SUITE` byte, decode ephemeral keys with `nonidentity`, and use canonical `encoding::field`. The ownership slice grew to 65 bytes, and the wire-size constants match (1 + … + 130).
- **Withdrawal decrypt** checks the key confirmation before decrypting; the transmission key is checked with `nonidentity` and the diversified generator is checked to be non-identity.
- **`decrypt_detection`** now rejects non-canonical words, where it used to reduce them mod the field order silently. This removes ciphertext malleability.
- **`DetectionKey::from_bytes`** rejects zero and non-canonical scalars.
- **`EventAssetRegistered::validate`** recomputes the indexed leaf from the event's own ID and policy, and rejects unregulated events, reserved/base IDs, and ID 0. The test covers each mutation separately.
- **`derive_transfer_salt`** changed to index-based with `assert!(index < 5)`. All five indices are used by the runtime test.

## Needs reproduction (for the coordinator)

- `pari_runtime.rs`: I didn't read the assertion tail. It needs a prover-gated run to confirm that both routes and the sink keys satisfy the circuit, including u128::MAX.
- None of the tests were run, since this was a read-only review.

## Follow-ups for other sectors

- **Sector 16:** confirm the PRE/capsule release request binds the specific tier's `epk`. For ext tiers the epk is the only binding, since they have no key confirmation. Also decide whether distinct per-tier ephemeral keys must be enforced.
- **Circuits sector:** confirm the circuit opens and binds every published ext ciphertext word and the ownership ciphertexts. I only saw them passed in as public inputs in the fixture.

## Not reviewed

- The test hunks after line 310 of `issuer_keys.rs` and after line 170 of `withdrawal.rs`.
- The assertion tail of `pari_runtime.rs` (after line 150).

These are test-only sections. The runtime code in this sector is fully covered.
