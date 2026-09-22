# Opus 5.5: 08b-proof-adapters-capsules

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

# Sector 08b review (proof adapters and recovery capsules): PARTIAL, no blocking findings so far

I found no current regressions in what I read. Everything below is read-only static review; I built and ran nothing.

## What I covered
| Path | How it was reviewed |
|---|---|
| `src/pari.rs` (new file) | Read the whole current file: transfer, reshape, withdrawal and seizure adapters, plus its tests |
| `src/recovery_capsule.rs` | Read the whole diff: encrypt, opening check, commitment, confirmation, wire codec (new suite byte), tests |
| `src/note.rs` | Read the recovery and payload-key changes, address point accessors and the note byte-layout shift (offsets 129..161). Other hunks skimmed only |
| `src/public_input_hash.rs` | Checked `seizure_statement` against the seizure adapter field by field. Checked the adapters' use of `audit()` and `withdrawal_statement()`. **The transfer/reshape statement builders and the audit-projection body in this 47 KB diff were not read line by line** |
| `src/note_seizure.rs` | Read the prove, verify and encoding paths (`:532-575`) and the witness test (`:990-1021`). The rest of the 26 KB diff was not read |
| `src/volume_accumulator.rs` | Read the first part of the diff: plaintext grows from 92 to 93 bytes, domain/poseidon migration. The tail was not read |

## Checks that came back clean
- **Seizure statement vs. adapter:** `pari::seizure` (`pari.rs:558-571`) builds its statement from `seizure_statement` (`public_input_hash.rs:216-232`). The one exception is `address`, which both sides build from the same `p.authorization.address`. All 12 fields line up, including `authorization: a.commitment()`.
- **Payload key for capsules:** every adapter uses `payload_key(leaf, regulated)`. Regulated assets get the ring's `audit_keys.payload` and unregulated ones get `UNREGULATED_RING`. `output()` re-encrypts the capsule and requires its commitment to equal the note's `recovery_commitment` (`pari.rs:173-176`), so a note whose capsule was made under a different key fails before proving. This matches the "one Orbis audit payload key" intent for regulated assets.
- **Recovery capsule:** a zero randomizer is guarded in both `encrypt` and `verify_opening`, identity keys and `epk` are rejected, and the key confirmation now includes both `epk` coordinates. The wire format adds a suite byte, which is checked on decode, and the field offsets are shifted consistently in `to_bytes` and `from_bytes`. The test offset was updated too (`bytes[33..65]`).
- **Input range checks in the adapters:**
  - timestamp must fit in u64;
  - volume position must be below 2^48;
  - compliance position must be below 2^32, with depth 16 and 3 siblings per layer;
  - the prior accumulator proof's position and commitment must match the plan (`pari.rs:198-213`);
  - reshape family mismatches are rejected, and any family other than 1×8 or 8×1 is refused.
- **Proving is self-checking:** `NoteSeizureProof::prove` verifies the new proof against `public.statement_hash()` before returning (`note_seizure.rs:562-566`). A mismatch between adapter and statement therefore fails at proof time rather than yielding a bad proof.

## Findings
None blocking.

**Test gap (low severity, coverage only, not a runtime bug):** the non-prover seizure witness test (`note_seizure.rs:1010-1014`) only checks that the circuit is satisfied. The transfer, reshape and withdrawal tests go through `pari.rs:587-601 check()`, which also asserts `w.digest(..) == statement_hash()`. Seizure never gets that digest check.
- **What slips through:** a future drift between `pari::seizure` and `seizure_statement` (for example, in address or capsule field order) would pass this test and only show up in a release/prover-gated proof.
- **Fix:** add a seizure case to `pari.rs` tests using `check(seizure(&p,&w)?, p.statement_hash()?)`, or assert the digest in the existing test.

## Test notes
- `runtime_withdrawal_witnesses_preserve_volume_and_full_effect_hash` overrides the effect-hash limbs to `u128::MAX` after the fixture is built. That's fine for exercising the limb range, but it means the test doesn't cover the fixture's real effect-hash derivation. That derivation needs coverage somewhere else.
- The transfer and withdrawal tests use `OsRng`, so they are not deterministic.

## Follow-ups for other sectors or the coordinator
- `withdrawal()` hard-codes `TransferProofContext::Ordinary` for volume (`pari.rs:533`). This looks intended, but the circuit sector should confirm the withdrawal circuit pins the same context constant.
- Reproduction to run: execute the `pari.rs` tests and the `note_seizure` witness test (non-release), then one prover-gated seizure round trip.

## Not reviewed (why this is PARTIAL)
- `public_input_hash.rs`: the bodies of the transfer and reshape statement builders, and the full `audit()` projection.
- `note_seizure.rs`: the diff outside the prove/verify section and the test.
- `volume_accumulator.rs`: the diff after the domain migration (the 93-byte plaintext layout and encryption).
- `note.rs`: hunks beyond the recovery and layout changes.

**Sector status: PARTIAL.**
