# Opus 5.5: 16-disclosure-packages

Artifact: `57eb44e8cae809c68974ed5d6723bdb904b2f8c1..c4b8b6d28e54b5e1d50769ee12209b56d613a60d`. Read-only, bounded sector review.

Current file is easier to read.

Checking the new proof tests and confirming callers pair `verify` with the chain membership check.

# Sector 16 (disclosure packages): review report

I found no validated defects in this sector. It is **PARTIAL** only because three small paths were not read (listed under Coverage). Nothing was built, tested or proven; every conclusion below comes from reading the code.

## Coverage

Artifact: `57eb44e8..c4b8b6d2`. Paths are relative to `crates/disclosure/`.

| Path | How it was covered |
|---|---|
| `src/proof.rs` | Read the first part of the diff and the whole current file (`statement`, `witness`, `verify_pari`, `prove`) |
| `src/proof/tests.rs` (new) | Read in full |
| `src/evidence.rs` | Read the current `verify` for the Pari, Openings and PayloadKeys branches, plus the openings and signatures helpers |
| `src/orbis.rs` | Read the diff (first 197 of 259 lines, which covers every runtime hunk) and the current `prepare_packages`, `seal` and `validate_package` |
| `src/issuer.rs` | Read the diff and the current `verify` / `verify_fields` |
| `src/claims.rs` | Read the diff and the current `validate_request` / `verify_controls` |
| `src/audit.rs` | Read the current `verify_audit_candidate` and `accepted_audit_ciphertext`; did not read the diff itself |
| `src/transaction.rs`, `src/types.rs` | Read the diffs and the current `verify_candidates` |
| `tests/handoff.rs` | Read the diff |
| Callers | Checked the `verify_candidates` calls at `crates/bin/pcli/src/command/disclosure.rs:373,673` and `audit_opening` at `shielded-pool/src/transfer/plan.rs:51` |
| **Not read** | `Cargo.toml`, `examples/accepted_fixture.rs`, `tests/claims.rs` |

## Findings

None validated. These are the invariants I checked and found in place:

1. **Every statement fact is bound in the proof.** `proof.rs:109-117` hashes the entire serialized `DisclosureStatement` (request, outputs, totals, challenge, recipient) with a domain tag and the suite into `context`/`context_hash`. `verify_pari` rebuilds the public statement from the package's JSON instead of taking prover-supplied scalars (`proof.rs:260-266`). A prover therefore can't choose the inactive or padding values:
   - Inactive `total_*` values and padding slots are always zero, set by the verifier (`proof.rs:118-128, 176-185`).
   - The **inactive `total_asset` canonicalization** concern doesn't apply here, because the verifier derives that value itself. Whether the circuit also constrains it is for the circuit sector.
2. **Revealed values must match the request.**
   - Revealed amounts, assets and addresses must use canonical encodings (`amount`, `asset`, `recipient` round-trip checks, `proof.rs:~96-112`).
   - Each revealed field must correspond to a flag in the claim; asking for a predicate forces the asset to be revealed (`proof.rs:138-144`).
   - `predicate()` rejects a result given without a predicate, and the reverse.
   - Total shape: `proof.rs:172-175, 187-190`.
3. **The circuit and key can't be swapped.**
   - The proof family is picked from the validated request count, and the circuit ID must match it (`proof.rs:249-253`).
   - The verification key digest is compared against the registry key for that family (`:254-257`).
   - The proof envelope's own family byte is checked through `registry.verify(selected, …)`; the ignored test `one_note_package_rejects_evidence_family_and_request_substitution` targets this.
   - Control signatures are verified after the proof.
4. **Commitment membership.** `verify` returns `Acceptance::NotChecked` (`evidence.rs:91-94`) and so doesn't claim the output was accepted on chain. Membership is handled by `verify_candidates` (`transaction.rs:163-187`), which rebuilds the `PublicOutput` from the candidate transaction. Both pcli verification paths call it. This separation is by design, not a gap.
5. **Orbis: one payload key per epoch without cross-field leakage.**
   - `decode_package` now uses `keys.payload` for every field (`orbis.rs` diff, around line 102).
   - Field separation still holds: each tier has its own `epk`/`c2` (`audit.rs:187-189`), and `decode_package` checks `SPEND_AUTH * scalar == accepted.epk` for the tier bound to the package.
   - An opening for one field therefore can't decrypt another tier's ciphertext, assuming the compliance encryptor uses a separate ephemeral per tier. That assumption belongs to the compliance sector (see follow-ups).
   - `decode_package` newly checks the version and the ring point.
   - The `ring_pk` delivery point is now a BLS12-381 Orbis point (`point()` rejects the identity point), which is correctly separate from the Jubjub `policy.ring.ring_pk`.
6. **Issuer evidence.** Points go through `encoding::nonidentity`, which replaces decaf377's inherent prime-order decoding, and scalars go through a canonical check. The detection DLEQ and the selected-value DLEQ are both bound to `request_digest` and the accepted ciphertext's `epk`s (`issuer.rs:227-239`). Issuer screening stays separate from Orbis general access (`AuditAccess::General` is required).
7. **Control keys.** `claims.rs:273-275` now runs `nonidentity` before `reddsa` parsing. That is at least as strict as the old identity-only check, and it adds a subgroup check if `nonidentity` does one (not verified here).

**Zero-amount disclosure:** I found no path in this sector where a real, non-padding note reaches a zero-amount-specific requirement, so I didn't pursue it further. **Hidden-total overflow:** not repeated, per your note.

## Test weaknesses (actionable, not defects)

- **Proof-level tests are all ignored.** The only tests that exercise real Pari proofs — context/challenge substitution, verification key substitution and family/circuit swaps (`proof/tests.rs:140-200`) — are `#[ignore]` and need `SHIELDD_PARI_KEYS`. The non-ignored tests only check that the native relation is satisfied (`catalogue::evaluate`). Verifier-side binding (`verify_pari` recomputing the statement) is therefore not tested by default.
- **Totals-disabled paths aren't covered in `proof/tests.rs`.** The fixture always sets `total: Some(reveal: true, predicate: GreaterThan 0)`. Nothing there covers `total: None` or `reveal: false` with a predicate. Your note says circuit tests cover totals-disabled; proof-runtime coverage for it is still missing.
- **`runtime_disclosure_rejects_changed_fields_totals_and_context` doesn't mutate the predicate, `reveal_*` bits or `total_asset`.** A relation that ignored `total_asset` or `predicate.result` would still pass this test.

## Cross-sector follow-ups

- **Compliance / encryption:** confirm that `encrypt_transfer` uses a separate ephemeral scalar per tier (amount, sender, receiver) now that one payload key is shared. This is what point 5 relies on.
- **Circuits:** confirm `disclosure.rs` constrains `total_asset` and `total_predicate` to zero when `total_enabled = 0`, and that padding slots are constrained inactive. The runtime here always zeroes them, so a gap would only matter to verifiers other than this crate.
- **Crypto:** confirm that `shieldd_sdk_crypto::encoding::nonidentity` checks prime-order subgroup membership. Issuer DLEQ soundness and control-key checks rely on it after replacing decaf377.
- **Orbis:** confirm `GroupAffine::from_bytes` in `orbis_crypto` performs subgroup and canonical checks for BLS12-381 `ring_pk`.

## Suggested checks for the coordinator

1. Run the two ignored Pari tests in `proof/tests.rs` with real keys.
2. Add a fault-sensitivity check: mutate `total_asset` and a slot's `predicate.result` in `runtime_disclosure_rejects_changed_fields_totals_and_context` and confirm the relation fails.

## Remaining / unreviewed

- `crates/disclosure/Cargo.toml`, `examples/accepted_fixture.rs` and `tests/claims.rs` (diff ~12 KB) were not read.
- The `audit.rs` and `evidence.rs` diffs weren't read line by line; their current runtime functions were inspected instead.

**Verdict: PARTIAL.** Runtime and security coverage is complete; the three paths above are unread.
