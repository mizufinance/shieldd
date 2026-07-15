# SnarkPack Formal Handoff

This is the typed evidence ledger. Implementation-boundary F* rows cover the
current extracted Rust target set; the RIPP implementation map is reviewed; no
rows remain `open`. The `assumed` rows are standing external/tool/cryptographic
assumptions with named postconditions and removal paths, not missing
implementation work.

Evidence statuses:

- `proved`: mechanically checked in F* against hax-extracted executed Rust.
- `refined`: reviewed against the published algorithm, backed by tests and
  signed review.
- `composed`: enforced by Rust types plus proved/refined pieces, tests, and
  invariant guards.
- `assumed`: explicit external/tool/cryptographic assumption with owner,
  rationale, supporting evidence, and removal path.
- `open`: completion blocker; none remain in this ledger.

Pinned tools: hax `v0.3.7`, F* `v2026.05.24`, Rust `1.89`, OCaml `5.1.1`,
Z3 `4.14.1`, OPAM switch `hax-0.3.7`. Any hax/F*/OCaml/Z3/Rust pin change
requires rerunning `just snarkpack-formal`, reviewing generated extraction
diffs and support shims, updating the verification marker, and refreshing the
proof artifact stamp.

Proof artifact stamp: sha256:ee8515bfa1b354f64e31b49b15b1ee3d119510d63ac40ad19e500946a226d3d6

The stamp is the SHA-256 of the committed SnarkPack F* proof files and
`scripts/snarkpack-formal.sh` plus
`crates/crypto/proof-aggregation/formal/snarkpack/toolchain.toml`. It is
checked by `just snarkpack-invariants`.

## Final Implementation Claim

If Shieldd aggregate verification accepts, then the accepted backend call was
produced from recomputed local artifacts, passed verified statement, wrapper,
padding, and challenge preflight, and reached a local RIPP implementation
reviewed against the intended algorithm. Validity then depends only on named
cryptographic, arkworks, hax, and refinement assumptions.

The aggregate-to-per-proof S1 implication is machine-checked by
`Ipp.s1_soundness`. The claim remains conditional on the named cryptographic
assumptions and quantitative random-oracle bounds below; implementation/model
faithfulness and Groth16 circuit soundness remain separate ledger boundaries.

## Completion Rules

Statement encoding injectivity is `proved` for the current extracted Rust target
set by `lemma_encode_statement_injective`. It cannot be downgraded to
`composed`. Digest reduction, SRS/VK preimage binding, padding canonicality,
challenge-preimage injectivity, wrapper binding, typed aggregate preflight, family
routing, and app-level aggregate composition all depend on that proved row plus
their named proof/test evidence.
If a future change reopens statement encoding injectivity, those dependent rows
must be re-reviewed and either reopened or given an explicit replacement proof
dependency.

Security-binding or semantic RIPP deviations in
`ripp-refinement.md` are blockers unless mechanically
`proved-equivalent` or explicitly accepted as `assumed` by security/crypto
review. Prose review can support `refined`, but not `proved-equivalent`.

Every assumption row must have an owner, rationale, supporting evidence, removal
path, and security/crypto reviewer signoff. Disputed RIPP deviation
classification defaults to the higher-risk class until resolved.

## Proof And Evidence Index

| Obligation | Rust path | Extracted or evidence target | Backend/evidence | Proof or evidence file | Lemma or row | Status | Tool version | Verification marker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| statement byte-field framing injectivity | `crates/crypto/proof-aggregation/src/statement.rs` | `StatementFieldBytes`, `StatementPublicInputRow`, `StatementPaddedRows` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/StatementEncodingProofs.fst` | byte-field, row, and field framing injectivity | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| full statement encoding injectivity | `crates/crypto/proof-aggregation/src/statement.rs` | `StatementEncodingInput`, `encode_statement` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/StatementEncodingProofs.fst` | `lemma_encode_statement_injective` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| statement digest equality reduces to canonical statement equality | `crates/crypto/proof-aggregation/src/statement.rs` | `statement_digest`, `encode_statement` | F* corollary plus SHA-256 CR assumption | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/StatementEncodingProofs.fst` | digest reduction modulo SHA-256 collision resistance | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| SRS dev-shape count gate | `crates/crypto/proof-aggregation/src/srs.rs` | `dev_srs_supports_count` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/DigestBindingProofs.fst` | `lemma_dev_srs_supports_count_iff` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| default SRS-id preimage determinism and injectivity | `crates/crypto/proof-aggregation/src/srs.rs` | `default_dev_srs_id_preimage` | F* via hax plus SHA-256 CR assumption for final digest | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/DigestBindingProofs.fst` | `lemma_default_srs_id_preimage_injective` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| VK digest preimage binding | `crates/crypto/proof-aggregation/src/statement.rs` | `vk_digest_preimage` | F* via hax plus SHA-256 CR assumption for final digest | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/DigestBindingProofs.fst` | `lemma_vk_digest_preimage_injective` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| count validation rejects zero real count | `crates/crypto/proof-aggregation/src/statement.rs` | `validate_counts` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/ValidationProofs.fst` | `lemma_validate_counts_rejects_zero` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| count validation branch coverage | `crates/crypto/proof-aggregation/src/statement.rs` | `validate_counts` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/ValidationProofs.fst` | bad-count, bad-padding, and success guard lemmas | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| count validation iff | `crates/crypto/proof-aggregation/src/statement.rs` | `validate_counts` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/ValidationProofs.fst` | `lemma_validate_counts_iff` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| row arity validation iff | `crates/crypto/proof-aggregation/src/statement.rs` | `validate_row_arity` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/ValidationProofs.fst` | `lemma_validate_row_arity_iff_top` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| padding canonicality and bounded non-malleability | `crates/crypto/proof-aggregation/src/statement.rs`; `crates/crypto/proof-aggregation/src/padding.rs` | `validate_repeat_final_padding` and statement binding of `real_count` | F* via hax plus Rust tests | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/ValidationProofs.fst` | `lemma_validate_repeat_final_padding_iff` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| wrapper oversize rejects before parsing | `crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs` | `decode_wrapped_aggregate_proof_inner_range` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/WrapperProofs.fst` | `lemma_wrapper_rejects_oversize_before_parsing` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| wrapper outer decode oversize rejects before inner exposure | `crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs` | `decode_wrapped_aggregate_proof` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/WrapperProofs.fst` | `lemma_wrapper_decode_rejects_oversize_before_inner_exposure` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| wrapper round trip and exact inner range | `crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs` | wrapper encode/decode core | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/WrapperProofs.fst` | `lemma_wrapper_roundtrip` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| wrapper digest mismatch rejects before inner exposure | `crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs` | wrapper decode core | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/WrapperProofs.fst` | `lemma_wrapper_digest_mismatch_before_range` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| challenge preimage byte framing and injectivity, including every deployed stage label | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs` | `challenge_preimage`; typed `(stage, context, nonce, messages)` framing | F* via hax plus Lean | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/ChallengePreimageProofs.fst`; `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/ChallengeEncoding.lean` | `lemma_challenge_preimage_layout`; `lemma_challenge_preimage_injective`; `Ipp.ChallengeEncoding.challengePreimage_injective`; `Ipp.ChallengeEncoding.serialized_challenge_preimage_injective` | proved | hax `v0.3.7`, F* `v2026.05.24`, Lean `v4.30.0` | formal gate plus `lake build Ipp` and axiom audit |
| challenge context constructor derives from statement digest | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs` | `ChallengeContext::from_statement_digest` | F* via hax plus Rust privacy guard | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/ChallengePreimageProofs.fst`; invariant script | `lemma_challenge_context_preimage_layout`; `lemma_challenge_context_bytes_injective` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| challenge context has no alternate production constructor | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs` | `ChallengeContext` privacy and invariant guards | Rust type system plus `just snarkpack-invariants` | `scripts/check-snarkpack-invariants.sh` | no `Default`, tuple constructor, or TLS context | composed | n/a | invariant gate passed |
| preflight work-gate truth table (backend-allowed iff every cheap flag holds) | `crates/crypto/proof-aggregation/src/preflight.rs` | `PreflightCheapChecks`, `PreflightWorkGate`, `preflight_work_gate` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/PreflightProofs.fst` | `lemma_preflight_gate_allows_backend_work_iff` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| family routing totality and route-tag injectivity | `crates/crypto/proof-aggregation/src/bundle.rs` | `FamilyRouteKind`, `FamilyRoute`, `FamilyRouteError`, `family_route_from_proto_fields` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/FamilyRoutingProofs.fst` | totality, cross-family rejection, VK-slot, and transcript-domain tag lemmas | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| aggregate backend receives only preflighted bytes | `crates/crypto/proof-aggregation/src/preflight.rs`; `src/backend.rs` | `VerifiedAggregateBackendCall`, `VerifiedInnerProofBytes` | Rust type system plus invariant guards | `scripts/check-snarkpack-invariants.sh` | raw verifier entrypoints route through typed preflight | composed | n/a | invariant gate passed |
| app-level aggregate composition | `crates/core/app/src/app/mod.rs` | aggregate bundle verification pipeline | Rust tests plus typed backend preflight | `docs/snarkpack/verification.md` verification matrix | recomputed statement material reaches typed preflight | composed | n/a | invariant gate passed |
| deterministic and property conformance | `crates/crypto/proof-aggregation/src/backend.rs`; `crates/crypto/proof-aggregation-reference/src/lib.rs` | production/reference/batch oracle parity, Groth16 oracle table, mutation matrices, aggregate determinism | Rust deterministic tests plus proptest | `docs/snarkpack/verification.md` verification matrix | clean and mutated aggregate decisions agree across production, reference, and batch oracles | composed | n/a | test and invariant gates passed |
| untrusted-byte fuzz smoke coverage | `crates/crypto/proof-aggregation/src/aggregate_proof_wrapper.rs`; `src/preflight.rs`; `src/backend.rs`; `crates/core/app/src/app/preconsensus.rs`; `crates/core/app/src/app/mod.rs`; `crates/crypto/proof-aggregation-fuzz` | wrapper, preflight, aggregate deserialization, sidecar, aggregate-bundle shape, and proposal-validation byte boundaries | Stable proptest plus cargo-fuzz smoke targets | `just snarkpack-fuzz-smoke`; `scripts/check-snarkpack-invariants.sh` | byte-boundary entrypoints return bounded Ok/Err without panics in smoke coverage | composed | n/a | test, fuzz, and invariant gates passed |
| optimization preserves byte trace or versions the protocol | `crates/crypto/proof-aggregation/src/backend.rs`; `crates/crypto/proof-aggregation-reference/src/lib.rs`; `crates/crypto/proof-aggregation/src/ipp/dh_commitments/src/afgho16/mod.rs`; `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs`; `../../optimization-playbook.md`; `crates/bench/benches/vanilla/snarkpack.rs` | committed aggregate-byte and ShielddByte-trace baselines; `msm_keys` final commitment-key recombination; corpus-backed bench plus compile-time `bench-baseline` A/B seam | Rust golden-baseline tests plus unit equivalence; documented playbook process | `aggregate_bytes_match_committed_baseline`; `shieldd_byte_trace_matches_committed_baseline`; `msm_keys_equals_sequential_fold`; committed fixtures under `tests/fixtures/`; `../../optimization-playbook.md` | aggregate bytes and transcript are locked to a version-tagged baseline; the playbook constrains optimizations to categories 1/2 (never transcript), measured honestly, so a change either preserves bytes or bumps `AGGREGATE_PROTOCOL_VERSION` with an adaptation-register row | composed | n/a | test gates passed |
| local RIPP implementation maps to intended algorithm | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src` | proof-relevant RIPP symbols | refinement map plus tests/review | `ripp-refinement.md` | all scoped rows refined against `ripp-spec.md` | refined | n/a | ripp refinement reviewed; invariant gate passed |
| SnarkPack aggregation implies every per-proof Groth16 pairing equation (S1) | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs`; `tipa`; `groth16_aggregation` | abstract FS-compiled combined-verifier game | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/S1.lean` | `Ipp.s1_soundness` (module `Ipp.S1`) | proved | Lean `v4.30.0` | `just snarkpack-lean-ipp`; every ROM bad-event bound is concrete, including dependency-order and round-slot-order candidate-pair bounds of `Q^2/card(F)`; no residual ROM-budget hypothesis; axiom audit: `propext`, `Classical.choice`, `Quot.sound` only |
| exact FS wrapped probability transport | abstract FS source and single-index wrapped games | `wrapFs` structured-log erasure and event pushforward | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/FsFork.lean`; `Ipp/FsBadEvents.lean` | `Ipp.probEvent_wrapFs_eq`; `Ipp.wrapped_good_probability_eq` | proved | Lean `v4.30.0` | exact equality, stronger than the former lower-bound field; focused builds and axiom audit |
| accepted round points are queried and in the whole-game budget | abstract cached FS verifier game | accepted round query export plus `Q qb = qb + 1` total-query cap | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/FsBadEvents.lean` | `Ipp.accepted_not_badUnqueried`; `Ipp.round_unqueried_bound` | proved | Lean `v4.30.0` | bad-event probability is exactly zero; focused builds and axiom audit |
| dependency-order candidate-pair ROM bound | abstract cached FS verifier game | accepted dependency chain plus ordered structured-query candidates | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/FsCandidateBounds.lean`; `Ipp/FsOrderEvents.lean`; `Ipp/FsBadEvents.lean` | `Ipp.dependency_order_candidate_bound`; `Ipp.dependency_order_bound` | proved | Lean `v4.30.0` | adaptive payload selection is covered by a pairwise union bound of `Q^2/card(F)`; focused builds and axiom audit |
| adjacent-round candidate-pair ROM bound | abstract cached FS verifier game | accepted adjacent-round chain plus ordered structured-query candidates | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/FsCandidateBounds.lean`; `Ipp/FsOrderEvents.lean`; `Ipp/FsBadEvents.lean` | `Ipp.round_slot_order_candidate_bound`; `Ipp.round_slot_order_bound` | proved | Lean `v4.30.0` | adaptive adjacent-round selection is covered by a pairwise union bound of `Q^2/card(F)`; focused builds and axiom audit |
| GIPA rescale fold refines `Ipp.foldMsg` | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs` | `rescale_fold_inner` | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/RescaleFold.lean` | `Ipp.Extracted.hax_translated_rescale_fold_eq` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact generated finite-range loop and upper/lower ordering; production branch parity remains Rust test evidence |
| product-form evaluation refines `Ipp.transcript_prod_form_eval` at `z²` | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs` | `polynomial_evaluation_product_form_from_transcript` | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/PolynomialEvaluationProductForm.lean` | `Ipp.Extracted.hax_translated_polynomial_evaluation_product_form_eq`; `Ipp.Extracted.hax_translated_polynomial_evaluation_product_form_eq_coefficients` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact two generated loops; product and transcript-coefficient sum are proved with the protocol's `z²` variable |
| inverse-power construction refines the `tipp-mipp.power-sequence` model | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs` | `inverse_powers_with_inverse` | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/InversePowers.lean` | `Ipp.Extracted.hax_translated_inverse_powers_eq`; `Ipp.Extracted.hax_translated_inverse_powers_nonzero_eq` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact extracted loop result and nonzero-inverse specialization |
| shifted commitment-key construction is pointwise scalar action | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs` | `build_shifted_ck_2_inner` | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/ShiftedCommitmentKey.lean` | `Ipp.Extracted.hax_translated_shifted_commitment_key_eq` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact paired-slice traversal; composes with the proved inverse-power vector |
| structured terminal scalar refines `Ipp.terminalR` | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs` | `structured_scalar_final_from_raw_transcript_inner` | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/StructuredScalar.lean` | `Ipp.Extracted.hax_translated_structured_scalar_final_eq` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | arbitrary round count, squared-power schedule, and explicit reversed chronology |
| G2 commitment-key KZG accept equation refines the `tipp-mipp.kzg-equations` abstract pairing shape | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs` | `verify_commitment_key_g2_kzg_equation` | Lean via hax/Aeneas, abstract pairing effect | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/KzgVerifiers.lean` | `Ipp.Extracted.hax_translated_verify_g2_kzg_eq`; `Ipp.Extracted.hax_translated_verify_g2_kzg_true_iff` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact operand/sign/order and boolean equation; product evaluation is separately proved, while public-wrapper extraction and arkworks pairing conformance remain open |
| G1 commitment-key KZG accept equation refines the `tipp-mipp.kzg-equations` abstract pairing shape | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs` | `verify_commitment_key_g1_kzg_equation` | Lean via hax/Aeneas, abstract pairing effect | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/KzgVerifiers.lean` | `Ipp.Extracted.hax_translated_verify_g1_kzg_eq`; `Ipp.Extracted.hax_translated_verify_g1_kzg_true_iff` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact operand/sign/order and boolean equation; product evaluation is separately proved, while public-wrapper extraction and arkworks pairing conformance remain open |

## Assumptions

| Assumption | Owner | Rationale | Why not proved here | Supporting evidence | Removal path | Required signoff | Status |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SHA-256 collision resistance | cryptography lead | Statement digest binding reduces to this after encoding injectivity is proved. | External cryptographic primitive assumption. | Postcondition: distinct encoded statements do not collide under SHA-256 at the chosen security margins; evidence is standard SHA-256 analysis plus fixed domain prefixes. | replace primitive or obtain external audit evidence; no end-to-end FV is planned for this primitive | security/crypto | assumed |
| SHA-256 preimage resistance | cryptography lead | Challenge context and wrapper digests use SHA-256-derived commitments. | External cryptographic primitive assumption. | Postcondition: attacker cannot choose proof/wrapper/challenge bytes that invert the recorded SHA-256 commitments at the chosen security margins; evidence is standard SHA-256 analysis plus fixed domain prefixes. | replace primitive or obtain external audit evidence; no end-to-end FV is planned for this primitive | security/crypto | assumed |
| Domain separation by fixed distinct prefixes | proof-aggregation maintainers | Separate statement digest, challenge context, challenge preimage, VK digest, and wrapper domains. | Reduces to fixed-prefix review plus hash assumptions. | Postcondition: statement digest, challenge context, challenge preimage, VK digest, and wrapper domains have disjoint fixed prefixes; evidence is golden-layout tests plus invariant review. | prove prefix disjointness mechanically if this becomes proof-critical | security/crypto | assumed |
| `assume.challenge-message-serialization-injective` | proof-aggregation maintainers | Connects the typed `ChallengePoint` payload objects to the final `messages` byte field framed by `challenge_preimage`. | Canonical curve/field object serialization remains outside the framing theorem. | Postcondition: each canonical field/group component serializer is injective; `Ipp.ChallengeEncoding.append_serializers_injective` composes fixed-length components, `serialized_challenge_preimage_injective` proves full preimage injectivity, and `Ipp.challengePoint_frame_eq_same_constructor` proves the model's five constructors are byte-frame disjoint. | prove canonical arkworks field/group serialization injective on checked subgroup objects and prove each stage's component concatenation equals the supplied Lean serializer | security/crypto/formal | assumed |
| abstract Groth16 soundness | cryptography lead | Aggregate verification ultimately depends on Groth16 proof soundness. | Out of implementation-boundary FV scope. | Postcondition: accepted Groth16 proofs satisfy the verified circuits under the published Groth16 assumptions; evidence is published Groth16 proof material and existing Shieldd circuit audits. | standing assumption; replace only with external audit or separate Groth16 proof campaign | security/crypto | assumed |
| `assume.kzg-structured-key-binding` | cryptography lead | q-SDH-type binding of the structured KZG keys; bundles the KZG-challenge Schwartz--Zippel step because the verifier checks only the evaluation at `z`. | Computational BLS12-377 assumption, represented exactly by the `Ipp.KzgStructuredKeyBinding` `Prop` definition in `Ipp/Algebra.lean`. | Postcondition: every accepted `(final key, opening)` equals the honest structured SRS MSM at the transcript coefficients; consumed explicitly by `Ipp.s1_soundness`. | replace with a reduction for the deployed KZG scheme and curve | security/crypto | assumed |
| `assume.pairing-commitment-binding` | cryptography lead | AFGHO/double-pairing binding at the SRS keys for the A/C product lane and real B lane. | Computational BLS12-377 assumption, represented exactly by the `Ipp.PairingCommitmentBinding` `Prop` definition in `Ipp/Algebra.lean`. | Postcondition: the pairing vector commitment is message-injective at the supplied keys; the removed synthetic scalar column is not an instance. | replace with a reduction for the deployed pairing commitment | security/crypto | assumed |
| arkworks field/group/pairing mathematical operation implementations | proof-aggregation maintainers | The implementation calls arkworks arithmetic primitives. | Full library verification is outside this scope. | Postcondition: arkworks field, group, and pairing operations implement the algebra used by SnarkPack; evidence is upstream tests plus `arkworks_pairing_identity_and_generator_consistency`, `arkworks_g1_g2_compressed_round_trip_and_identity`, and `arkworks_g1_g2_subgroup_and_torsion_rejection`. | verified arithmetic backend or external audit artifact | security/crypto | assumed |
| arkworks MSM implementation computes intended linear combination | proof-aggregation maintainers | MSM is an implementation-heavy dependency, not a pure algebra axiom. | Full arkworks MSM verification is outside this scope. | Postcondition: arkworks MSM returns the same linear combination as the naive fold for the boundary cases used by aggregation; evidence is `arkworks_msm_boundary_zero_scalar_identity_and_random_parity`. | verified MSM or external audit artifact | security/crypto | assumed |
| arkworks serialization and subgroup behavior | proof-aggregation maintainers | SRS, VK, proof bytes, and digests depend on arkworks encoding checks. | Full serialization/subgroup proof is outside this scope. | Postcondition: checked compressed G1/G2 decoding rejects malformed and non-subgroup encodings and round-trips valid/identity encodings; evidence is `arkworks_g1_g2_compressed_round_trip_and_identity`, `arkworks_g1_g2_malformed_compressed_bytes_reject`, and `arkworks_g1_g2_subgroup_and_torsion_rejection`. | verified serialization backend or external audit artifact | security/crypto | assumed |
| hax extraction preserves modeled Rust semantics for the extracted safe subset | formal verification owner | F* proofs are over hax output. | hax semantic preservation is not proved inside this repo. | Postcondition: each extracted safe-subset target preserves the Rust semantics recorded in `hax-extraction-boundary.md`; evidence is pinned versions and invariant guards over the target list and support assumptions. | upstream hax soundness proof or independent translation validation | security/crypto/formal | assumed |
| `impl_u32__is_power_of_two` shim preserves Rust semantics | formal verification owner | Required because pinned hax support output is not directly accepted by pinned F*. | Compatibility shim, not an implementation property. | Postcondition: shim truth value equals Rust `u32::is_power_of_two`; evidence is the semantic postcondition in `hax-extraction-boundary.md`. | remove when hax/F* support library accepts this definition directly | security/crypto/formal | assumed |
| `impl__starts_with` shim preserves Rust slice semantics | formal verification owner | Required because pinned hax support output is not directly accepted by pinned F*. | Compatibility shim, not an implementation property. | Postcondition: shim truth value equals Rust slice `starts_with`; evidence is the semantic postcondition in `hax-extraction-boundary.md`. | remove when hax/F* support library accepts this definition directly | security/crypto/formal | assumed |
| recorded hax support shims preserve Rust support-library semantics | formal verification owner | Required because pinned hax support output omits or cannot directly discharge several byte-framing, slice-range, array-conversion, integer-roundtrip, and checked-arithmetic facts. | Compatibility shims, not implementation properties. | Postcondition: each appended support shim matches the Rust support-library fact named in `hax-extraction-boundary.md`; evidence is the per-shim semantic postconditions for all shims appended by `scripts/snarkpack-formal.sh`. | remove each shim when hax/F* support libraries expose an accepted definition or lemma | security/crypto/formal | assumed |
| decaf377 group, field, and encoding behavior | proof-aggregation maintainers | The production and reference crates depend on decaf377 curve, field, and encoding behavior. | Full decaf377 backend verification is outside this scope. | Postcondition: decaf377 group/field arithmetic and encodings used by aggregation match the backend assumptions; evidence is `decaf377_vk_digest_round_trips_after_serialization`, `srs_id_is_stable`, `reference_srs_matches_public_production_id`, arkworks subgroup/serialization tests, and production/reference parity tests. | verified curve/encoding backend or external audit artifact | security/crypto | assumed |

## Arkworks Boundary Test Obligations

These are evidence obligations, not proofs. They narrow the arkworks
implementation assumptions above.

- compressed G1 deserialization rejects non-subgroup encodings
- compressed G2 deserialization rejects non-subgroup encodings
- identity points round-trip according to arkworks documented semantics
- torsion-injection fixtures reject for G1 and G2
- malformed compressed bytes reject
- valid G1/G2 points serialize and deserialize round trip
- verifying key digest is stable under serialize/deserialize
- SRS id is stable under serialize/deserialize
- MSM with zero scalars matches naive linear combination
- MSM with identity elements matches naive linear combination
- MSM on small random vectors matches naive linear combination

Implemented test evidence:
`arkworks_pairing_identity_and_generator_consistency`,
`arkworks_msm_boundary_zero_scalar_identity_and_random_parity`,
`arkworks_g1_g2_compressed_round_trip_and_identity`,
`arkworks_g1_g2_malformed_compressed_bytes_reject`,
`arkworks_g1_g2_subgroup_and_torsion_rejection`,
`decaf377_vk_digest_round_trips_after_serialization`,
`srs_id_is_stable`, and `reference_srs_matches_public_production_id`.

## Hax Extraction Discipline

The current extracted target list is
`crates/crypto/proof-aggregation/formal/snarkpack/hax-targets.txt`. Per-target
features, preconditions, arithmetic mode, control-flow forms, panics, unsafe,
and support shims are recorded in
`crates/crypto/proof-aggregation/formal/snarkpack/hax-extraction-boundary.md`.

Unrecorded `assume val`, `admit`, `--admit_smt_queries`, duplicate
formal-only encoders, tuple/default `ChallengeContext` constructors, and
unmapped RIPP refinement symbols are rejected by `just snarkpack-invariants`.
Any recorded extraction-only traversal branch must have a boundary row and
normal plus `cfg(hax)` parity coverage.

## S1 Mechanization Boundary Notes

`Ipp.s1_soundness` replaces both Filecoin-lineage trust rows. Its strict
four-way combined-replay tree recurrence is unconditional but geometrically
loose in the round count; tightening it with an expected-time/ACK-style
extractor is future work, not an additional assumption.

The six quantitative random-oracle event bounds and the source-to-wrapped
probability transport remain explicit at the current S1 interface. Two fields,
randomizer root-set and KZG bad-set, now have concrete constructors from the
whole-game query cap and finite-set cardinality premises; the interface has not
yet been changed to supply them. Their union algebra, per-structured-miss
uniformity, fixed-set union over mixed structured log ordinals, query-bound
transfer, forking recurrence, deterministic projections, and final S1
composition are proved. No parametric bound is hidden in the S1 theorem.

`Ipp.ChallengeEncoding` proves the exact domain/length-label/context/nonce/message
byte framing injective for every deployed stage, and lifts this to typed payloads
from the single named serializer-injectivity premise above. Rust-to-Lean byte
parity and hash-as-RO remain at the `fs.challenge-preimage` Shieldd-byte and
trace-parity boundary. Fuel-bounded nonce rejection mirrors `challenge.rs`: the randomizer
rejects `{0,1}` and scalar stages reject zero. `DependencyOrdered` is extraction
bookkeeping, not a verifier check, and the reversed transcript view is pinned
to Rust by the proved two-round parity lemma.

Lean models abstract `F`-modules and a bilinear pairing. Faithfulness to
`gipa.rs`, `tipa`, and `groth16_aggregation` therefore remains at the
abstract-trace/refinement rows until S2. ALG-I4 continues to exhaustively
cross-check transcript shapes through the SRS maximum; it is model/implementation
evidence, not the S1 soundness proof.

## S2 Tier1 scale-out (serial)

Rust was adapted for extraction in three behavior-preserving changes. `gipa.rs`
now forwards the associated `rescale_fold` method to the named
`rescale_fold_inner` helper; its `hax_compilation` branch is an indexed traversal
with the same output order as the production sequential/Rayon branches. The
final-key method forwards to `compute_final_commitment_keys`; its hax-only MSM
branch is the existing ordered MSM semantics expressed as an explicit fold.
`tipa/mod.rs` retains the production iterator coefficient construction and adds
an hax-only indexed construction with the same coefficient and zero positions.
Normal Rust tests passed after each edit; the hax-compilation Rust test pass also
covered the extraction views.

The S2-03 rescale extraction completed with the scoped invocation
`cargo hax into -v --output-dir /root/shieldd-s2-rescale-fold-scoped-hax2
aeneas-lean --charon-args='--start-from crate::gipa::rescale_fold_inner'
--lakefile`. Generated loop code is vendored in
`Ipp/Extracted/RescaleFoldGenerated.lean`; the exact loop-to-`Fin` equality is
the no-sorry scaffold `Ipp.Extracted.rescale_fold_refinement_statement` in
`Ipp/Extracted/RescaleFold.lean`. Its remaining goal is the finite-list loop
bridge from the Aeneas `Vec` model to `Ipp.foldMsg`.

S2-04 used
`cargo hax into -v --output-dir /root/shieldd-s2-final-keys2 aeneas-lean
--charon-args='--start-from crate::gipa::compute_final_commitment_keys'
--lakefile`. Charon compiled the target, but Aeneas stopped before Lean output
on the mixed `ark_ff::Field`/`PrimeField` associated-type group and
`DoublyHomomorphicCommitment::msm_keys`; the exact target proposition is kept
as `Ipp.Extracted.final_commitment_keys_refinement_statement`.

S2-06 used
`cargo hax into -v --output-dir /root/shieldd-s2-coefficients2 aeneas-lean
--charon-args='--start-from crate::tipa::polynomial_coefficients_from_transcript'
--lakefile` and completed Aeneas generation. Its generated Vec/array support
graph was not silently replaced by a handwritten implementation; the exact
length/even-index/odd-zero goal is recorded as
`Ipp.Extracted.polynomial_coefficients_refinement_statement`.

No S2 abstract-trace row is promoted by this serial pass: rescale, final keys,
and coefficients remain scaffolded until their extracted-result equalities are
green. No prover or release-gated circuit tests were applicable or run.

## S2 Tier1 scale-out (serial) — continuation

This continuation processed the remaining isolated Tier 1 arithmetic helpers
and attempted the KZG/Groth16 orchestration targets. Rust was adapted only for
hax extraction: the production iterator/Rayon paths remain the normal paths,
while named generic helpers expose equivalent indexed loops under
`hax_compilation`. The `ark-ip-proofs` Rust tests passed after each adapted
section (16 passed, 2 ignored, 0 failed in normal mode; the corresponding
`RUSTFLAGS=--cfg hax_compilation` test runs also exited successfully). No
prover or release-gated circuit tests were applicable or run.

Rust adaptations:

- `tipa::polynomial_evaluation_product_form_from_transcript` gained an
  extraction-only owned-arithmetic/indexed-product implementation.
- `applications::groth16_aggregation` gained the generic inner helpers
  `structured_scalar_final_from_raw_transcript_inner`,
  `inverse_powers_with_inverse`, and `build_shifted_ck_2_inner`; the existing
  wrappers retain their production arithmetic and parallel branches.

The generated Lean for the four helper extractions is vendored under
`Ipp/Extracted/*Generated.lean`; each corresponding public file contains a
no-sorry refinement statement. None of these loop-to-`Fin`/`Finset` bridges is
proved yet, so no abstract-trace row is promoted.

## S2 pairing/loop adaptation and promotions

The Aeneas runtime now gives generated loops a finite relational semantics,
proves result uniqueness, and connects an executable fuel witness to the
logical loop. This closes the previously opaque loop boundary for
`inverse_powers_with_inverse`, whose exact power sequence is now proved.

The public KZG verifiers retain their existing product evaluation and delegate
the final check to extracted generic G1/G2 equation kernels. Those kernels are
parametric over one `PairingEquation` effect; the production implementation is
the existing arkworks multi-pairing check and preserves failure-as-`false`.
Their exact equations are proved against the Ipp bilinear-map model. The
generated product evaluator is now also proved at `z²`, both as a factor product
and as the `transcriptCoeffs` sum; rescale, inverse powers, shifted-key
construction, and the structured terminal scalar are proved as well. These
portions and the G1/G2 accept shapes are promoted in the proof index above.
Public-wrapper extraction and arkworks arithmetic conformance remain open.

`verify_tipp_mipp` now delegates to the explicit typed
`verify_tipp_mipp_core`; the core has a single error exit after its round loop,
and its closed hax graph is vendored in
`Ipp/Extracted/VerifyTippMippGenerated.lean`. Normal Rust tests preserve
behavior, and scoped hax no longer reports the early-loop-return diagnostic.
S2-34 now routes the profiled combined-check wrapper through the explicit
`verify_combined_checks_core`; its closed graph is vendored in
`Ipp/Extracted/CombinedChecksGenerated.lean` with executable runtime support
for the standard-library functions required by the graph. The graph exposes
`CombinedChecksPpeInput`, `CombinedChecksCoreInput`, `CombinedChecksError`,
`CombinedChecksCoreOutput`, `verify_combined_ppe_core`, and
`verify_combined_checks_core`. The S2-31..33 and S2-35 refinement theorems
remain open; no theorem promotion is claimed by this extraction session.

## Gates

Run `just snarkpack-formal` for the formal gate. It checks the pinned toolchain,
hax extraction, F* module imports, smoke bindings to extracted functions, and
proved rows above. The SnarkPack proof files are checked without
`--admit_smt_queries`.

The clean-image `.github/workflows/snarkpack-formal.yml` job installs the pinned
Z3, F*, and hax versions from `toolchain.toml`, runs `just snarkpack-formal`,
then runs `just snarkpack-invariants`, `just snarkpack-fuzz-smoke`,
`just snarkpack-filecoin-shape`, `just snarkpack-dos-gate`, and
`just snarkpack-lean-conformance`. Its separate `lean-ipp` job installs Lean
`v4.30.0` and runs `just snarkpack-lean-ipp`, including the package build,
zero-`sorry` scan, and axiom-declaration guard. Keep the full
formal gate out of default `just check` unless it satisfies the default CI
runtime policy; it remains a required SnarkPack workflow gate.
