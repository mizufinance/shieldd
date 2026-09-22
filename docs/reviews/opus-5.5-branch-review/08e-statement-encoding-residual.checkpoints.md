# Opus 5.5: 08e-statement-encoding-residual

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

CHECKPOINT: I've read the note.rs diff and most of the volume_accumulator diff. No findings yet. Next I'm checking that the note commitment field order in note.rs matches the circuit.

Note commitment field order matches the circuit (`circuits/src/note.rs:26`). Next: the note_seizure diff.

Next: public_input_hash.rs, the largest residual.

The current file is only ~300 lines, so I'll read it all.

That array has a fixed length, so there's no issue. Last step: checking what the public_input_hash diff removed, especially checks or parity tests.

The public_input_hash diff deletes its whole `tests` module. Checking whether those failure classes are still covered elsewhere.

I've finished all four residual paths. I found no correctness or security defects. Coverage is **COMPLETE**, apart from the limits noted in the last section.

## Scope and coverage
The artifact is `57eb44e8ca..c4b8b6d28e`, sector 08e.

| Path | How it was reviewed |
|---|---|
| `shielded-pool/src/note.rs` | Read the whole diff. Checked the commitment's field order against `crates/crypto/circuits/src/note.rs:26-37`. |
| `shielded-pool/src/volume_accumulator.rs` | Read the whole diff: the 93-byte layout, suite byte, `validate()`, padding, the Result-returning `selected_payload`, and the changed tests. |
| `shielded-pool/src/note_seizure.rs` | Read every diff hunk outside prove/verify, which 08b already covered: the suite bytes, the wide reduction, `CapsuleReleaseRequest` validation and codec, the DLEQ challenge, the decoders, and the tests. |
| `shielded-pool/src/public_input_hash.rs` | Read the current file in full. Grepped the diff 028 hunks (removed functions and tests) and checked parity against the circuit statement types. |

## Findings (by severity)

**No blocking or runtime findings.** Static checks that passed:

- **Note commitment parity.** `note.rs:380-400` hashes `[blinding, amount, asset, gx, gy, px, py, recovery]` under `domains::NOTE`. That is the same order and domain as the circuit's `Note::fields`, which the spend, output, seizure and disclosure circuits all use. The byte layout grows the address from 48 to 49 bytes (0..49), then 49..65, 65..97, 97..129, 129..161. Encoding and decoding agree, and `NOTE_CIPHERTEXT_BYTES` is now derived from it. The OVK unwrap now requires exactly 32 bytes of plaintext, where it used to slice `[0..32]`. That is stricter and removes a possible slice panic.
- **Statement construction has parity by design.** `public_input_hash.rs` fills the circuit catalogue's own `transfer`, `reshape`, `withdrawal` and `seizure` `Statement<Fq>` types and hashes their `fields()`, so the field order comes from one place. Checks:
  - Reshape count `8+4i+2o` matches `reshape.rs:57-79`.
  - The two reshape shapes give 28 and 42 fields. Because those differ, `hash()`'s count check at `:249-256` would reject a statement whose shape doesn't match its family. The circuit also panics on any other shape (`reshape.rs:50-55`).
  - Transfer `57+4·2+2·2=69` equals `transfer::STATEMENT_FIELDS`.
  - I tallied the seizure count of 22 at `:284` by hand: anchor, commitment, nullifier, history, floor, address 4, asset, amount, capsule 8, seed, rnk, authorization.
  - `rk` goes through `encoding::nonidentity`.
  - `withdrawal_statement`'s `chunks_exact(32)` cannot silently drop trailing bytes: the source is a fixed `[u8; 96]` (`compliance/src/withdrawal.rs:25`).
- **Transfer audit statement** (`:62-113`). It checks the metadata timestamp against the statement timestamp and requires 1-word core and 3-word extended ciphertext shapes. It binds `audit_epoch`, all four salts and the policy hashes. This fits the intent of one payload key per audit epoch.
- **note_seizure.** The release ID and authorization commitment now use Blake2b-512 with a `SUITE` byte and `from_bytes_wide`, which removes the old mod-order reduction bias. The request now carries `audit_epoch > 0` and requires `payload_key != ring_pk`, which enforces the separate issuer/RNK authority from the user intent. The DLEQ challenge (`ShielddCapDLEQ` personalization, 14 bytes, within Blake2b's 16-byte limit) covers SUITE, release_id, generator, payload_key, EPK, the recovered point and both commitments. release_id already binds the full request, including the epoch. The new test comment at `note_seizure.rs:~931` states that release evidence does not prove ownership; ownership stays in the note proof. That keeps decryption evidence and authority separate.
- **volume_accumulator.** Byte 0 is `SUITE` and is checked on decode. The existing 92-byte payload moves to offset 1 unchanged. Continuation now rejects `prior_position ≥ 2^48`, matching the circuit's 48-bit position decomposition (`circuits/src/note.rs:140`). It also checks a matching commitment and monotonic volume, both in the constructor and in `validate()`, which `selected_payload` now calls.

## Test weaknesses (worth acting on, not defects)

1. **Transfer metadata-binding tests were deleted without a like-for-like replacement.** Diff 028 removes the `public_input_hash` tests module, including:
   - `transfer_statement_rejects_metadata_timestamp_drift`
   - `transfer_statement_binds_core_confirmation_and_private_metadata`
   - `transfer_statement_hash_commits_to_every_factored_metadata_field`

   The only place that references the timestamp guard at `public_input_hash.rs:67-70` is the guard itself; no test exercises it. `shielded_withdrawal/proof.rs:~307-330` still has a per-field mutation test for withdrawal, but I found no transfer equivalent. The transfer tests in `transfer/proof.rs` and `circuits/src/transfer/tests.rs` are roundtrip and satisfiability tests. They show host and circuit agree on an honest statement; they don't show that each audit field changes the hash or is rejected.
   - Suggested fix: add a cheap, non-proving transfer test that bumps each salt, `audit_epoch`, confirmation and policy hash and asserts the statement hash changes, plus one test that the timestamp drift is rejected.
   - This is a coverage limit. Construction through the typed struct makes a missed field unlikely.
2. **Hard-coded seizure count.** `note_seizure_statement_hash` uses a literal `22` (`:284`), while transfer uses the circuit's `STATEMENT_FIELDS`. A `seizure::STATEMENT_FIELDS` constant, or deriving the count the way transfer does, would remove this drift risk. Cleanup only.
3. **Redundant count helpers.** `transfer_statement_field_count` and `shielded_withdrawal_statement_field_count` exist only for a fixed arity (`transfer/generated.rs:5`, `:280`). They duplicate the circuit constant and could be removed. Optional.

## Cross-sector follow-ups
- **Payload-key generator.** Release DLEQ and `from_payload_secret_for_test` assume the payload key is `SPEND_AUTH · sk`. The coordinator should confirm (08b capsule/keys sector) that `RecoveryCapsule::encrypt` and Orbis key generation use that same generator.
- **Reproduction for the coordinator.** Apply the per-field transfer-hash mutation check from item 1 as a bounded, non-proving unit test.
- **Nullifier input order.** Volume continuation uses `Nullifier::derive(nk, position, commitment)`. The circuit's `NOTE_NULLIFIER` order is `[nk, commitment, position]`. I did not check how `derive` orders its internal fields. That belongs to the sct/nullifier sector.

## Not reviewed
- The internals of the circuit `fields()` for transfer, withdrawal and capsule. I relied on the typed-struct construction, the count checks and existing satisfiability tests.
- note_seizure prove/verify, which 08b already reviewed.
- No builds or tests were run (read-only review).

**Status: COMPLETE**
