# Release checklist — shielded-pool soundness binding

**Status:** executor-authored (Task 17, 2026-07-06). This is the deployment/release
gate for the *soundness* surface: it binds the machine-checked proofs and stamped
artifacts to the binaries that actually ship. It is the discharge point for
SnarkPack **SL4** (artifact identity — "are the deployed VKs/SRS the ones the rows
were stamped against?") and for the assurance-case edges **R1.2** (compiled artifact
= proved artifact) and **R4** (completeness on the *release* artifacts).

Run every item below on the exact commit/tag being released. A release is
soundness-clean only when all REQUIRED items pass. Items marked ADVISORY are
expected-noise-tolerant (timeouts, non-gating provers) and must be reviewed, not
necessarily green.

Scope: this checklist covers the shapes that are formally bound today —
**consolidate2x1** and **transfer**. Shapes that are explicitly *not* covered
(split, ics20, any future family) are called out in §5 and must not be represented
as soundness-bound.

---

## 1. Artifact-hash equality (the deployed binary is the proved object)

- [ ] **`.sr1cs` manifest pin** — `bash scripts/check-manifest-pin.sh` (both
  circuits). Recompiles each circuit's R1CS from source and asserts
  `sr1cs_sha256_hex` is byte-identical to the committed
  `tools/gnark/artifacts/<c>/<c>-manifest.json`.
- [ ] **Coverage `relation_sha256_hex` pin** — `bash scripts/check-constraint-coverage.sh`
  (also run inside `check-lean-circuit-fv.sh`). The Rust extractor recomputes the
  per-segment relation hashes and diffs them against the committed coverage
  manifest (`crates/core/component/shielded-pool/formal/<c>-coverage-manifest.json`).
- [ ] **Deployed VK / `.sr1cs` identity** — the VK and `.sr1cs` shipped in the
  release artifact bundle hash-match the committed
  `tools/gnark/artifacts/<c>/{verifying_key.bin,<c>.sr1cs}` that the manifest pin and
  Lean whole-circuit artifact were stamped against. (Compare sha256 of the bundled
  files to the committed ones; any diff means re-prove before shipping.)
- [ ] **SnarkPack SL4 aggregate VK / SRS identity** — the deployed aggregation VKs
  and SRS id match the ones the SnarkPack F*/row evidence was stamped against
  (`crates/crypto/proof-aggregation/formal/snarkpack/formal-handoff.md`;
  `srs_id_is_stable`, `reference_srs_matches_public_production_id`,
  `decaf377_vk_digest_round_trips_after_serialization`).

## 2. Gate battery (the machine-checked layers are green on this commit)

- [ ] `bash scripts/check-soundness-invariants.sh` — ledger/scope/stamp integrity.
- [ ] `bash scripts/check-lean-circuit-fv.sh full consolidate2x1 transfer` — Lean
  whole-circuit soundness artifacts + coverage tripwire + emitted-Lean lint +
  Go↔Lean wiring-transcript parity + axiom/sorry hygiene.
- [ ] `nix shell nixpkgs#alloy6 --command bash scripts/compliance-alloy.sh` — Alloy
  bounded-model outcomes (statement-sufficiency + state-invariant models UNSAT/SAT).
- [ ] `bash scripts/check-snarkpack-invariants.sh` — SnarkPack assumptions/rows.
- [ ] Statement-field seam (Rust↔Go): `go test ./internal/abi -run TestRustGoStatementFieldDifferential`
  and `go test ./internal/primitives -run TestConsolidate2x1StatementSeamMatchesShielddVectors`
  (from `tools/gnark`).
- [ ] S5 VK-arity conformance: `family_vks_expose_single_statement_hash_public_input`
  + `committed_family_artifacts_carry_verified_hashes`
  (`crates/core/component/shielded-pool/src/gnark/artifacts.rs`).
- [ ] ADVISORY (nightly / heavy): Tamarin (`compliance-symbolic.sh`), DLEQ Lean full
  (`compliance-lean-dleq.sh full`), F* injectivity (`shielded-pool-formal.sh`),
  Picus leaf battery (`circuit-constraint-check.sh`).

## 3. Prover round-trip on the release artifacts (completeness — R4)

Prove-then-verify against the *shipped* proving/verifying keys, per shape:

- [ ] **transfer** (Rust): `transfer_hidden_arity_1x1_roundtrip_*`
  (`crates/core/component/shielded-pool/src/transfer/proof.rs`).
- [ ] **transfer statement hash** (Go): `TestTransferStatementHashGroth16RoundTrip`
  (`tools/gnark/internal/primitives/statement_hash_test.go`).
- [ ] **consolidate2x1 / phase0** (Go): `TestPhase0Groth16Bls12377RoundTrip`
  (`tools/gnark/internal/primitives/phase0_test.go`).

A green round-trip on the release keys is what rules out a bricked-but-sound
deployment (an honest user who cannot produce an accepted proof).

## 4. Assurance-case TODO audit (scoped to shipped surfaces)

- [ ] Open every `[TODO …]` and evidence-gap edge in
  `docs/soundness/assurance-case.md` that falls under a **shipped** shape
  (consolidate2x1, transfer). Each must be either resolved for this release or
  explicitly accepted (rowed) by the crypto/security owner. Current open items to
  confirm are still acceptable: Gap #1 (R2.2 repeated-nullifier rejection test),
  Gap #2 (R3.2 spend-auth rdsa row), R5.2 (encryption security properties), R5.3
  (consolidate2x1 compliance exemption — discharged by protocol-owner decision
  on 2026-07-08; reopen if consolidate gains a cross-owner output path).
- [ ] Confirm no edge flipped to a *finding* (contradicted evidence) since the last
  release.

## 5. Scope boundary statement (covered vs. not covered)

State this explicitly in the release notes so the soundness claim is not
over-read:

- **Covered (soundness-bound):** consolidate2x1 and transfer — whole-circuit Lean
  soundness, coverage + `.sr1cs` manifest pins, Alloy statement-sufficiency,
  Rust↔Go statement seam, S5 VK arity, SnarkPack aggregation rows (SL1–SL4).
- **NOT covered:** split, ics20, and any other action shape. These have **no**
  whole-circuit soundness artifact and **no** statement-sufficiency model; their
  Picus/coverage status is partial or absent. They must not be described as
  soundness-verified. Adding a shape means giving it the full §1–§3 treatment
  before it can move into the covered set.
