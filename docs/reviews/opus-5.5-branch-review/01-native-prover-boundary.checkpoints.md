# Opus 5.5: 01-native-prover-boundary

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

Key file: pari.rs. Read it and the patches.

Checkpoint: I've read `pari.rs`, `circuits/proof.rs` and patches 0001, 0002, 0004 and 0005, and found nothing blocking so far. Next I'm checking the envelope decode path on the caller side.

# Sector 01 – native prover boundary: review report (PARTIAL)

I found no confirmed soundness bugs. The sector is marked PARTIAL because some assigned files were not read (listed at the end).

## What I covered
- **Registry code:** read all of `crates/crypto/proof-params/src/pari.rs` up to the tests (lines 1–493). This covers manifest admission, key decoding, checking keys against their relation, the registry ID, the prove, verify and batch-verify calls, the proof capability type, and development key generation.
- **Proof envelope:** read `crates/crypto/circuits/src/proof.rs:60-223` (encoding, decoding, the context checks, and single and batch verification).
- **Caller decode:** read `crates/core/component/shielded-pool/src/proof.rs`.
- **Local vendor patches:** read all four in the series directory (0001, 0002, 0004, 0005).

## Findings

**No critical or high findings.**

Things I checked statically and found sound:
- **Key must match the compiled relation.** `pari.rs:178-204`. A loaded verifying key is compared against the locally compiled relation: relation digest, domain size, public-input count, block layout and public columns. The per-family cache only skips the check when the exact same key and domain were validated before.
- **Proof statement is bound.** `proof.rs:165-177`. A proof must have the expected family, the relation digest from the local key, exactly one public input equal to the statement derived from the action, and exactly one commitment. The key always comes from the local registry, never from the message. Batch verification applies the same check to every item and uses fresh OS randomness for its batching coefficients (`proof.rs:196-222`).
- **Decoding is strict.** Envelopes must be exactly 244 bytes, with the right suite and a known family, and no trailing bytes. Keys use exact length limits and also reject trailing bytes. The key files are size-limited, their size and SHA-256 are checked against the manifest, and the manifest must list every family exactly once.
- **Patch 0001 (polynomial API port):** it only changes the prover. A wrong port could make valid proofs fail, but cannot make the verifier accept a bad proof.
- **Patch 0002 (`matches_relation`):** this adds an extra check and can only reject more keys. Its tests cover each field being changed.
- **Patch 0004 (two-sided square assertions):** it turns the other side's deferred square into a real row, so the assertion no longer reads a zero placeholder. This fixes an under-constrained relation. The exhaustive test compares satisfaction against the source circuit.
- **Patch 0005 (constant copy):** the added row forces `(1 - copy)^2 = 0`, so `copy = 1` in a prime field. It is sound, and the test checks that changing the copy value breaks satisfaction.

### Low 1 — the proof capability does not check which registry issued it
- **Where:** `pari.rs:107-113`, `Verified::ensure_binds`.
- **What happens:** it compares the family and the proof item, but not `registry_id` against the registry currently in use. The ID is exposed through `registry_id()`, but nothing here enforces it.
- **Consequence (untested guess):** if a capability survives a registry reload or key rotation, it could be accepted under a registry that did not verify it.
- **Why the branch introduced it:** this capability type is new in this branch.
- **Suggested fix:** add an `expected_registry: [u8; 32]` parameter to `ensure_binds`, or confirm that every caller checks the ID. Callers are outside this sector (see follow-ups).

### Low 2 — the upgrade path to production keys is closed
- **Where:** `pari.rs:217-222`.
- **What happens:** the manifest must say `setup == "development"`, and the only generator is `generate_development`, which uses OS randomness and does not write out the setup secret.
- **Consequence:** production keys can't be loaded yet. That is safe, but any deployment currently runs on development keys where one party generated the setup.
- **Suggested fix:** add a tracked item for how ceremony keys will be admitted. The registry ID (`pari.rs:254-260`) hashes the suite and verifying-key digests but not the `setup` label. That is fine as long as a verifying-key digest is unique to one setup.

### Info
- **Proving key is only partly checked.** `pari.rs:342-346` checks that the proving key contains the trusted verifying key, but not its commitment keys or other key material. A tampered proving key only causes proving to fail, which is a liveness issue, not a soundness one. The SHA-256 check already covers tampering.
- **Proving is serialised through a mutex.** `pari.rs:329-349` holds one lock across the whole proving call, including evaluating the witness. This is intended, but prove calls for different families block each other.

## Test weaknesses
- The only test of loading a real registry (`pari.rs:476`) is `#[ignore]` and needs the `SHIELDD_PARI_KEYS` environment variable. Tampered-key rejection at load is only checked when someone runs it by hand.
- **Reproduction for the coordinator:** run that ignored test with keys configured. Also add a test that loads a `.vk` whose digest matches the manifest but whose relation belongs to a different family, and confirm it is rejected.

## Follow-ups for other sectors
- Check that callers of `Verified` (the action handlers in shielded-pool, disclosure and the seizure path) compare `registry_id()` with the active registry.
- Check that the statement scalar passed to verify is derived from the action's own fields and never taken from the proof.
- Check whether `Envelope::prove` should verify its own output before a proof goes into durable jobs.

## Not reviewed
- `scripts/commonware.py`: I did not check its provenance or pin enforcement.
- `third_party/commonware-patches/provenance.json` and README.
- `historical.rs`, the `lib.rs` diff, `examples/pari_setup.rs`, and the rest of the packet list past line 196.
- The upstream Pari verifier. I assumed `pari::verify` binds the verifying-key digest into the transcript; I did not confirm this.

**Status: PARTIAL.** The runtime boundary and all four patches are covered. Provenance tooling, `historical.rs` and `lib.rs` still need a pass.
