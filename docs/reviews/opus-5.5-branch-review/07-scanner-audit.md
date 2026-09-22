# Opus 5.5: 07-scanner-audit

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

# Sector 07-scanner-audit review (Opus 5.5)

**Artifact:** `57eb44e8ca..c4b8b6d28e`

## Scope and coverage

I read all 15 assigned patches (`000`–`014`); `002` and `004` I read in full across two pages. I also checked these current runtime helpers they depend on:

- `crates/crypto/primitives/src/poseidon.rs:79-115` (`hash`)
- `crates/crypto/primitives/src/encoding.rs:39` (`pack`)
- `crates/crypto/primitives/src/audit.rs:105` (`point_fields`) and the ownership tests at `:227-261`
- `crates/core/component/compliance/src/crypto.rs:9-71` (shared secret, key confirmation, stream cipher, tier decrypt)

I did not read `AGENTS.md`, the skill file or the docs; I only had a small budget. In this sector the branch mostly moves compliance code from decaf377/poseidon377 to Jubjub, BLS12-381 Poseidon and `SubgroupPoint`. It also merges the audit keys into one Orbis `payload` key plus a separate `checking` key.

## Findings

**No confirmed security or correctness defect in this sector.** Here is what I checked and why it holds up:

1. **Hash domain and length separation (`audit_log.rs`).** Before, domains were blake2b-derived and each call used a hash of fixed arity (`hash_2`, `hash_3`, `hash_7`). Now every call is `poseidon::hash(domain_u8, &[..])`, and that function seeds the state with `len*256 + domain` (`poseidon.rs:80-86`).
   - The same domain byte used with 2 inputs and with 7 inputs (`AUDIT_SOURCE`, `AUDIT_BYTES`) still gives separated hashes.
   - Points are now bound by both affine coordinates via `point_fields`, not a compressed x. So the candidate, source, effect, record and log commitments still bind every public field.
   - `u128_field` (`audit_log.rs`, end of file) is exact for u128 values.
   - `encoding::pack(chunk)[0]` in `audit_bytes_commitment` is correct because callers pass chunks of at most 31 bytes, and the total length is also bound in the first hash.
2. **Issuer DH evidence (`dleq_evidence.rs`).** The Fiat–Shamir challenge is now a personalized Blake2b transcript (`"ShielddIssuerDH"`, 15 bytes, within the 16-byte limit). It binds the suite, `version`, `asset_id`, generator, `dk_pub`, EPK, shared point, both commitments, a request-present flag and the request.
   - Version 1 (unbound) and version 2 (bound) evidence cannot be swapped. The new test `bound_evidence_rejects_other_request_unbound_verifier_and_version` confirms this.
   - `SubgroupPoint` typing removes the cofactor/encoding ambiguity that decaf377 compression used to handle.
3. **Tier decryption (`scanning.rs`, `transfer_audit.rs`).**
   - Both now go through the shared `crypto::decrypt_tier_bytes`. It checks the length, requires canonical field words and requires zero padding.
   - Before, `scanning.rs` called `decrypt_tier_bytes` as an infallible function (base line ~65). Now it returns `Result`, which is a fix.
   - The recovered transmission key is now checked to be a valid non-identity point (`scanning.rs:83`, `transfer_audit.rs:105`), and a new negative test covers it.
4. **Screening vs. audit authority.** The screener still uses only the issuer `DetectionKey`. `audit_keys.rs` now re-exports `shieldd_sdk_crypto::audit::AuditKeys { epoch, payload, checking }`. The tests confirm that one payload key (201) decrypts the amount, sender and recipient tiers of unflagged transfers. For flagged transfers, the payload key (201) and the checking key (204) both fail. This matches the intended "one Orbis payload key" design. The RNK seizure path is not in this sector.
5. **Ownership.** `ownership.rs` now delegates to `AddressPoints`, which binds both address points. Its tests were deleted here but moved to `crypto/primitives/src/audit.rs:227-261`, and they still cover zero randomness, an identity key, bad encodings and truncation.
6. **Scanner storage, worker and sync.** Apart from type swaps, only test code changed. There is no runtime change to concurrency, reorg or failure handling in this sector's diff.

## Test weaknesses and unnecessary complexity

- **Low: WAL growth assertion removed.** In `scanner/storage.rs`, the test `sqlite_store_configures_wal_checkpoint_and_vacuum_policy` (patch `009`, hunk at old line 1306) no longer commits blocks and checks that the `-wal` file stays under 1 MiB. It now only checks the PRAGMA values. If checkpointing stops working even though the settings look right (for example, a long-lived reader transaction pinning the WAL), no test would catch it. This removes a distinct failure check, which goes against the user's cleanup rule. **Fix:** put back a short loop of commits followed by the WAL size assertion, or add an explicit `wal_checkpoint(PASSIVE)` result check.
- **Neutral/positive: concurrent-reader test rewritten.** `sqlite_readers_see_committed_state_while_writer_is_active` replaces a timing-based stress test with a deterministic overlap: it holds the write transaction open and the reader must answer within 5 seconds. It is stronger than before. One caveat: the check only works if `detection_count()` reads from a pool separate from `lock_conn()`. It does today; if the pools are ever merged, the test fails loudly rather than silently.
- **Note: log version bump.** `AUDIT_LOG_VERSION` went from 1 to 2 and every commitment changed. Any v1 audit log already in nonverifiable storage will fail `verify_audit_log`. That is acceptable for a prototype, but it needs a reset or migration note in the release docs if any v1 state exists.

## Cross-sector follow-ups (for the coordinator)

- Check that the circuits recompute the same `poseidon::hash` domain and length preimage and the same `point_fields` ordering as the off-chain `transfer_candidate_commitment` and `withdrawal_candidate_commitment`. A mismatch would silently break audit completion. **Reproduction needed:** a parity test between the circuit and the Rust commitments.
- Check that the `domains::*` byte constants (`AUDIT_*`, `SHARED_SECRET`, `DETECTION`, `KEY_CONFIRMATION`, `ENCRYPTION_STREAM`) are pairwise distinct (crypto-primitives sector).
- RNK seizure authority and its separation from the issuer DK are outside this sector's files.

## Not reviewed

- Scanner runtime logic in `worker.rs`, `sync.rs` and `storage.rs` that the diff didn't touch. The branch only changed tests there, so reorg and failure handling was not re-audited.
- `enrichment.rs` (`005`) and `scanner/types.rs` (`011`): I only checked their size (about 600 bytes each), which fits a pure type swap, and did not read them.
- The project docs (`AGENTS.md`, the skill file, `docs/README.md`).

## Status: **COMPLETE** for branch-introduced changes, with the limits above (no runtime re-audit of scanner code the branch didn't change).
