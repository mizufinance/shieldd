# SnarkPack Formal Handoff

## Final Conditional Implementation Claim

If Shieldd aggregate verification accepts, locally recomputed statement,
wrapper, padding, and challenge artifacts passed typed preflight and reached the
executed RIPP verifier core. The S2 aggregate-verifier refinement identifies
that core with `Ipp.FsAccepts`; `Ipp.S1.s1_soundness` then implies every
constituent Groth16 pairing equation. This claim is conditional only on the
standing cryptographic, production-correspondence, dependency, and
translation-tool boundaries recorded below.

The reached BLS12-377 arithmetic, scalar-multiplication, normalization, MSM,
pairing execution, strict G1/G2/GT decoding, aggregate traversal/injectivity,
and challenge-message serialization paths are proved. They are not
implementation assumptions.

## Lean Roots

- S1: `Ipp.S1.s1_soundness`.
- S2: `Ipp.Extracted.AggregateVerifier.verify_aggregate_proof_refinement_statement`
  and
  `Ipp.Extracted.AggregateVerifier.verify_aggregate_proof_pairing_adapter_statement`.
- S3: the audited arithmetic roots for Fq, Fr, Fq2, Fq6, and Fq12; G1/G2
  group-law, scalar-multiplication, normalization, and
  `Ipp.Extracted.ArkworksMsm.executed_g1_msm` /
  `executed_g2_msm`; G2 preparation, line evaluation, Miller and multi-Miller
  traversal, final exponentiation, multi-pairing, GT membership, subgroup
  checks, and the concrete pairing adapter.
- Strict decode:
  `Ipp.StrictG1Decode.g1_strict_checked_{success_iff,byte_injective}`,
  `Ipp.StrictG2Decode.g2_strict_checked_{success_iff,byte_injective}`, and
  `Ipp.StrictGtDecode.gt_strict_checked_{success_iff,byte_injective}`.
- Aggregate and transcript:
  `Ipp.AggregateSerialization.aggregate_strict_decode_injective`,
  `Ipp.AggregateSerialization.aggregate_decoder_traversal_conformance`,
  `Ipp.ChallengeMessageSerialization.challenge_message_serialize_injective`,
  and `challenge_preimage_typed_injective`.

The authoritative audited list is
[`Ipp/ProofAudit.lean`](../lean-ipp/Ipp/ProofAudit.lean) plus
[`Ipp/ProofAuditMiller.lean`](../lean-ipp/Ipp/ProofAuditMiller.lean): 145
capstones, checked against the allowlist `propext`, `Classical.choice`, and
`Quot.sound`.

The GAP-14 serialization/subgroup retirement is deliberately limited to the
reached BLS12-377 aggregate-proof boundary in
`backend.rs::deserialize_aggregate_proof` through
`deserialize_compressed_strict`. Its nested malformed flags, trailing bytes,
noncanonical GT field encodings, G1/G2 infinity aliases, non-subgroup
components, and valid round trips are covered by the strict-decode and
aggregate roots above plus Rust boundary fixtures. SRS, VK, and other
proof-byte consumers, hax/Aeneas or copy correspondence, and delegator/Rayon
parity are outside this retirement.

## Assumptions

| Assumption | Owner | Rationale | Why not proved here | Supporting evidence | Removal path | Required signoff | Status |
| --- | --- | --- | --- | --- | --- | --- | --- |
| SHA-256 collision resistance | cryptography lead | Statement, SRS, VK, wrapper, and challenge binding reduce to collision resistance after the proved encodings. | SHA-256 cryptanalysis is external to this repository. | Postcondition: distinct bound preimages do not collide at the chosen security margin; evidence is standard SHA-256 analysis and the proved byte-framing reductions. | replace the primitive or obtain an external cryptographic audit artifact | security/crypto | assumed |
| SHA-256 preimage resistance | cryptography lead | Digest commitments must not be attacker-invertible. | SHA-256 cryptanalysis is external to this repository. | Postcondition: attackers cannot invert the recorded statement, wrapper, or challenge commitments at the chosen security margin; evidence is standard SHA-256 analysis and fixed-domain review. | replace the primitive or obtain an external cryptographic audit artifact | security/crypto | assumed |
| Domain separation by fixed distinct prefixes | proof-aggregation maintainers | Statement digest, challenge context, challenge preimage, VK digest, and wrapper hashing occupy distinct domains. | The cryptographic consequence composes fixed-prefix review with the SHA-256 assumptions. | Postcondition: the five hash domains remain disjoint and unambiguous; evidence is the fixed constants, golden-layout tests, and invariant review. | mechanize prefix disjointness and bind it to every hash call site | security/crypto | assumed |
| abstract Groth16 soundness | cryptography lead | Aggregate acceptance ultimately relies on each recovered Groth16 pairing equation being sound for its circuit. | Circuit and Groth16 soundness are separate from the SnarkPack implementation proof. | Postcondition: every accepted Groth16 proof satisfies its verified circuit under the published Groth16 assumptions; evidence is the published construction and Shieldd circuit audits. | replace with a separate Groth16 and circuit-soundness proof or external audit | security/crypto | assumed |
| `assume.kzg-structured-key-binding` | cryptography lead | Supplies the q-SDH-style binding and KZG evaluation step consumed by S1. | This is a computational BLS12-377 assumption represented by `Ipp.KzgStructuredKeyBinding`. | Postcondition: every accepted final key and opening equals the honest structured-SRS MSM at the transcript coefficients; evidence is the explicit premise of `Ipp.S1.s1_soundness`. | provide a reduction for the deployed KZG scheme and curve | security/crypto | assumed |
| `assume.pairing-commitment-binding` | cryptography lead | Supplies AFGHO/double-pairing binding for the A/C product lane and real B lane. | This is a computational BLS12-377 assumption represented by `Ipp.PairingCommitmentBinding`. | Postcondition: the pairing vector commitment is message-injective at the supplied keys; evidence is the exact S1 premise and the removal of the synthetic scalar column. | provide a reduction for the deployed pairing commitment | security/crypto | assumed |
| `assume.bls12377-curve-orders` | proof-aggregation maintainers | Supplies the two concrete G1/G2 point-cardinality equalities used to construct prime subgroups. | Lean proves the field primes and cofactor arithmetic, but not the two point counts. | Postcondition: `Ipp.Bls12377.PublishedCurveOrderFacts` holds for the BLS12-377 curve and D-twist; evidence is arkworks-rs/algebra commit `df907e8c1601a898c2903ed7ab7bbbb10607f36b` and Bowe et al., IACR ePrint 2018/962, Section 8. | derive the concrete point counts in a checked development | security/crypto/formal | assumed |
| `assume.bls12377-optimal-ate-pairing-laws` | proof-aggregation maintainers | Supplies `Ipp.Bls12377.PublishedPairingBilinearNondegenerate` for the executable pairing on the two prime subgroups. | The repository lacks divisor and Miller-function theory from which to derive the published optimal-ate theorem. | Postcondition: the executable pairing is additive in each source argument and left/right nondegenerate; evidence is the cited optimal-ate literature and the proved S3 Miller/final-exponent execution chain. | formalize the concrete optimal-ate theorem and identify it with the executed S3 chain | security/crypto/formal | assumed |
| `assume.bls12377-g1-glv-eigenspace` | proof-aggregation maintainers | The optimized G1 scalar path uses the configured endomorphism and eigenvalue. | The executed joint loop is proved conditionally, but the concrete subgroup eigenvalue identity is a published-parameter boundary. | Postcondition: every prime-subgroup G1 point satisfies `phi(P) = lambda • P`; evidence is `ark-bls12-377` v0.5.0 G1 parameters, `ark-ec` v0.5.0 GLV documentation, and `Ipp.Extracted.ArkworksScalarMul.runJoint_eigenvalue`. | prove the parameter identity over the concrete G1 subgroup | security/crypto/formal | assumed |
| production-copy/delegator/Rayon parity | proof-aggregation maintainers | Lean proves translation-validated monomorphic S3 copies; production calls retain generic delegators and parallel paths. | Kernel identification of each copy with the production generic/parallel implementation is not present. | Postcondition: reached production delegators and Rayon executions equal the proved ordered monomorphic executions and preserve transcript-visible results; evidence is edge plus 512-random copy parity, MSM parity, pairing parity, and committed byte-trace tests. | extract the production delegators/parallel paths directly or obtain an independent translation audit | security/crypto/formal | assumed |
| residual arkworks serialization implementations outside the aggregate boundary | proof-aggregation maintainers | SRS, VK, and other proof-byte consumers are not reached by the retired aggregate decoder boundary. | GAP-14 proves only the exact BLS12-377 aggregate traversal and its nested G1/G2/GT checks. | Postcondition: residual arkworks byte consumers enforce their documented canonicality, subgroup, and full-consumption requirements; evidence is SRS/VK round trips, subgroup fixtures, and dependency tests. | prove each reached residual consumer or replace it with the proved strict aggregate decoder pattern | security/crypto | assumed |
| decaf377 group, field, and encoding behavior | proof-aggregation maintainers | The production and reference crates depend on decaf377 curve, field, and encoding behavior. | Full decaf377 backend verification is outside this scope. | Postcondition: decaf377 group/field arithmetic and encodings used by aggregation match the backend assumptions; evidence is `decaf377_vk_digest_round_trips_after_serialization`, `srs_id_is_stable`, `reference_srs_matches_public_production_id`, subgroup/serialization tests, and production/reference parity. | provide a verified curve/encoding backend or external audit artifact | security/crypto | assumed |
| hax and Aeneas extraction preserve modeled Rust semantics | formal verification owner | F* and Lean implementation proofs consume generated translations. | End-to-end semantic preservation for the pinned translators is not proved in this repository. | Postcondition: every extracted target preserves the modeled Rust safe-subset semantics recorded by the F* boundary and Lean manifest/copy provenance; evidence is pinned toolchains, regeneration, normalization, parity, and freshness gates. | use proved translators or independently translation-validate every extracted root | security/crypto/formal | assumed |
| `impl_u32__is_power_of_two` shim preserves Rust semantics | formal verification owner | Required because pinned hax support output is not directly accepted by pinned F*. | Compatibility shim, not an implementation property. | Postcondition: shim truth value equals Rust `u32::is_power_of_two`; evidence is the semantic postcondition in `hax-extraction-boundary.md`. | remove when hax/F* support library accepts this definition directly | security/crypto/formal | assumed |
| `impl__starts_with` shim preserves Rust slice semantics | formal verification owner | Required because pinned hax support output is not directly accepted by pinned F*. | Compatibility shim, not an implementation property. | Postcondition: shim truth value equals Rust slice `starts_with`; evidence is the semantic postcondition in `hax-extraction-boundary.md`. | remove when hax/F* support library accepts this definition directly | security/crypto/formal | assumed |
| recorded hax support shims preserve Rust support-library semantics | formal verification owner | Required because pinned hax support output omits or cannot directly discharge several byte-framing, slice-range, array-conversion, integer-roundtrip, and checked-arithmetic facts. | Compatibility shims, not implementation properties. | Postcondition: each appended support shim matches the Rust support-library fact named in `hax-extraction-boundary.md`; evidence is the per-shim semantic postconditions for all shims appended by `scripts/snarkpack-formal.sh`. | remove each shim when hax/F* support libraries expose an accepted definition or lemma | security/crypto/formal | assumed |

## Extraction And Copy Provenance

[`lean-extraction-manifest.json`](lean-extraction-manifest.json) is the
canonical 32-record graph ledger. It pins roots, source and parity-test hashes,
copy provenance, raw and normalized output hashes, commands, and toolchain
revisions.

The S3 arithmetic copy sources are
`src/ipp/ip_proofs/src/s3_07_arkworks_fq_spike.rs` and
`s3_07_arkworks_fr_spike.rs`, derived from the manifest-named ark-ff,
ark-bls12-377, and ark-ec v0.5.0 sources. Their parity sources are
`tests/bls12_377_arkworks_fq_spike.rs` and
`bls12_377_arkworks_fr_spike.rs`. Production-copy identification remains
parity-pinned; it is not promoted to a proof by extraction freshness.

## Gates And Toolchains

- `just snarkpack-fv`: extraction freshness/reproduction, parity, pinned Lean
  `4.30.0`, a single `lake` at a time with `LEAN_NUM_THREADS=1`, and the
  145-capstone audit.
- `just snarkpack-formal`: unchanged hax `v0.3.7` and F* `v2026.05.24`
  pipeline with Rust `1.89`, OCaml `5.1.1`, Z3 `4.14.1`, and OPAM switch
  `hax-0.3.7`.
- `just snarkpack-invariants`: runtime boundaries, F*/hax metadata, assumption
  row completeness, and the F* artifact stamp.

## Retained F* Proof Evidence

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
| challenge preimage byte framing and injectivity, including every deployed verifier message | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs`; `src/applications/groth16_aggregation.rs` | `challenge_preimage`; randomizer, x0, GIPA round, final bridge, and KZG message concatenations | F* via hax plus Lean | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/ChallengePreimageProofs.fst`; `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/ChallengeEncoding.lean`; `Ipp/CanonicalSerializers.lean`; `Ipp/ChallengeMessageSerialization.lean` | `lemma_challenge_preimage_layout`; `lemma_challenge_preimage_injective`; `Ipp.ChallengeMessageSerialization.challenge_message_serialize_injective`; `challenge_preimage_typed_injective` | proved | hax `v0.3.7`, F* `v2026.05.24`, Lean `v4.30.0` | formal and FV gates passed |
| challenge context constructor derives from statement digest | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/challenge.rs` | `ChallengeContext::from_statement_digest` | F* via hax plus Rust privacy guard | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/ChallengePreimageProofs.fst`; invariant script | `lemma_challenge_context_preimage_layout`; `lemma_challenge_context_bytes_injective` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| preflight work-gate truth table (backend-allowed iff every cheap flag holds) | `crates/crypto/proof-aggregation/src/preflight.rs` | `PreflightCheapChecks`, `PreflightWorkGate`, `preflight_work_gate` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/PreflightProofs.fst` | `lemma_preflight_gate_allows_backend_work_iff` | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |
| family routing totality and route-tag injectivity | `crates/crypto/proof-aggregation/src/bundle.rs` | `FamilyRouteKind`, `FamilyRoute`, `FamilyRouteError`, `family_route_from_proto_fields` | F* via hax | `crates/crypto/proof-aggregation/formal/snarkpack/fstar/FamilyRoutingProofs.fst` | totality, cross-family rejection, VK-slot, and transcript-domain tag lemmas | proved | hax `v0.3.7`, F* `v2026.05.24` | formal gate passed |

Proof artifact stamp: sha256:ee8515bfa1b354f64e31b49b15b1ee3d119510d63ac40ad19e500946a226d3d6

This existing stamp is unchanged. It hashes the SnarkPack F* proof files,
`scripts/snarkpack-formal.sh`, and
`crates/crypto/proof-aggregation/formal/snarkpack/toolchain.toml`; none is
modified by this handoff.
