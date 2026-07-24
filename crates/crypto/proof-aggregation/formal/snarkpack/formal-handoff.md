# SnarkPack Formal Handoff

This is the typed evidence ledger. Implementation-boundary F* rows cover the
current extracted Rust target set, and the S2 executed verifier cores have
conditional Lean refinements; no rows remain `open`. The `assumed` rows are
standing external/tool/cryptographic assumptions with named postconditions and
removal paths, not missing implementation work.

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
padding, and challenge preflight, and reached the executed RIPP verifier core.
The S2 claim is that this core refines `Ipp.FsAccepts`, conditional on (a) the
named challenge-serializer/digest trace boundary, (b) the explicit
`OrderedMsmConformance` premise, now narrowed by S3-31 to the production-copy
and retained Rayon correspondences after proving the checked monomorphic G1/G2
copies through `executed_g1_msm` and `executed_g2_msm`, (c) the remaining commitment/orchestration
refinement premises, and (d) the concrete delegator layer being pinned by Rust
parity tests, not proofs. S3-41's specialized capstone fixes the statement map
and both pairing effects to the executable BLS12-377 adapter and proves their
normalization, preparation, ordered two-pair, and failure laws; its sole
pairing-mathematics premise is the cited subgroup bilinearity boundary.

This claim makes no S3 arithmetic, serialization/subgroup, hash-as-a-random-
oracle, KZG-binding, or pairing-commitment-binding claim. Those remain the
separate assumptions and future tracks below.

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
| BLS12-377 scalar-modulus primality certificate | pinned `scalarModulus` | checked Pocklington certificate | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Bls12377Certificates.lean` | `Ipp.Bls12377Certificates.Certificate.scalarModulus_prime` | proved | Lean `v4.30.0` | focused certificate/foundation gates; axiom audit: `propext`, `Classical.choice`, `Quot.sound` only |
| BLS12-377 base-modulus primality certificate | pinned `baseModulus` | checked Pocklington certificate | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Bls12377Certificates.lean` | `Ipp.Bls12377Certificates.Certificate.baseModulus_prime` | proved | Lean `v4.30.0` | focused certificate/foundation gates; axiom audit: `propext`, `Classical.choice`, `Quot.sound` only |
| BLS12-377 Fq2 nonresidue certificate | pinned `-5` in `ZMod baseModulus` | checked Euler-criterion residue | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Bls12377Certificates.lean` | `Ipp.Bls12377Certificates.fq2Nonresidue` | proved | Lean `v4.30.0` | focused certificate/foundation gates; axiom audit: `propext`, `Classical.choice`, `Quot.sound` only |
| BLS12-377 Fq6 tower foundation (S3-18) | pinned tower `Fq6 = Fq2[v]/(v^3-u)` over `Fq2 = QuadraticAlgebra Fq (-5) 0` | checked cubic-residue certificate, Kummer irreducibility, canonical `AdjoinRoot` field, `Fq6Model` coordinate equivalence | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Bls12377Fq6.lean`; `Ipp/Bls12377Certificates.lean` | `Ipp.Bls12377.fq2U_not_cube`; `fq6Polynomial_irreducible`; `fq6Canonical_field_available` (Field instance derived from `AdjoinRoot.instField`, not postulated); `fq6Coefficients_{zero,one,add,mul,mulByV,bijective}` | proved | Lean `v4.30.0` | focused `lake build Ipp.Bls12377Fq6` and full `lake build Ipp` passed single-threaded; axiom audit: `propext`, `Classical.choice`, `Quot.sound` only; model-level foundation — executed Fq6 conformance is S3-19 |
| BLS12-377 Fq12 tower foundation (S3-20) | pinned tower `Fq12 = Fq6[w]/(w^2-v)` over the S3-18 canonical Fq6 | quadratic-nonresidue proof (no new certificate: `v^((q^6-1)/2)` collapses to the existing Euler residue `(-5)^((q-1)/2) = -1`), no-root irreducibility, canonical `AdjoinRoot` field, power-basis cardinalities, `Fq12Model` equivalence | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Bls12377Fq12.lean`; `Ipp/Bls12377Fq6.lean`; `Ipp/Bls12377Certificates.lean` | `Ipp.Bls12377.fq6V_not_square`; `fq12Polynomial_irreducible`; `fq12Canonical_field_available` (Field derived, not postulated); `fq6_card = q^6`; `fq12_card = q^12` (Fintype, no axiom); `fq12Coefficients_{one,mul,pow,bijective}` | proved | Lean `v4.30.0` | focused `lake build Ipp.Bls12377Fq12` and full `lake build Ipp` passed single-threaded; axiom audit: `propext`, `Classical.choice`, `Quot.sound` only; model-level foundation — executed Fq12 conformance is S3-21, GT order-r is S3-22 |
| BLS12-377 GT structure (S3-22) | intended GT over the S3-20 canonical Fq12 | exact `q^12-1 = r * cofactor` and `q^4-q^2+1 = r * cofactor'` factorizations, coprimality (`r` divides once), r-torsion subgroup of `(Fq12Canonical)^x` with cardinality `r` via finite-field cyclicity, cyclotomic-membership consequence, explicit identity/`PairingOutput`-notation bridge | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Bls12377Gt.lean` | `Ipp.Bls12377.fq12_order_factorization`; `cyclotomic_order_factorization`; `scalarModulus_coprime_gtCofactor`; `GtGroup`/`mem_gtGroup`; `gtGroup_card = r`; `gt_pow_cyclotomic_order_eq_one`; `ArkPairingOutput` adapter (`0 ↦ 1`, `+ ↦ *`, `n • ↦ ^n`) | proved | Lean `v4.30.0` | focused `lake build Ipp.Bls12377Gt` and full `lake build Ipp` passed single-threaded; axiom audit: `propext`, `Classical.choice`, `Quot.sound` only; supplies GAP-07 and the S3-38/39 cyclotomic hypothesis |
| BLS12-377 Fq safe-Rust Montgomery multiplication | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/s3_07_arkworks_fq_spike.rs`; parity against `ark_bls12_377::Fq` | monomorphic `mul -> round x6 -> mac -> subtract_modulus` closure | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/ArkworksFqMulGenerated.lean`; `Ipp/Extracted/ArkworksFqMul.lean` | `Ipp.Extracted.ArkworksFqMul.decode_extracted_mul` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | focused `lake build Ipp.Extracted.ArkworksFqMul` and full `lake build Ipp` passed single-threaded; 36 edge plus 512 deterministic random parity pairs; no `sorry` or declared axiom; theorem covers canonical inputs on the safe-Rust no-carry path, not BMI2/ADX assembly |
| dependency-order candidate-pair ROM bound | abstract cached FS verifier game | accepted dependency chain plus ordered structured-query candidates | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/FsCandidateBounds.lean`; `Ipp/FsOrderEvents.lean`; `Ipp/FsBadEvents.lean` | `Ipp.dependency_order_candidate_bound`; `Ipp.dependency_order_bound` | proved | Lean `v4.30.0` | adaptive payload selection is covered by a pairwise union bound of `Q^2/card(F)`; focused builds and axiom audit |
| adjacent-round candidate-pair ROM bound | abstract cached FS verifier game | accepted adjacent-round chain plus ordered structured-query candidates | Lean (`lean-ipp`) | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/FsCandidateBounds.lean`; `Ipp/FsOrderEvents.lean`; `Ipp/FsBadEvents.lean` | `Ipp.round_slot_order_candidate_bound`; `Ipp.round_slot_order_bound` | proved | Lean `v4.30.0` | adaptive adjacent-round selection is covered by a pairwise union bound of `Q^2/card(F)`; focused builds and axiom audit |
| GIPA rescale fold refines `Ipp.foldMsg` | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs` | `rescale_fold_inner` | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/RescaleFold.lean` | `Ipp.Extracted.hax_translated_rescale_fold_eq` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact generated finite-range loop and upper/lower ordering; production branch parity remains Rust test evidence |
| product-form evaluation refines `Ipp.transcript_prod_form_eval` at `z²` | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs` | `polynomial_evaluation_product_form_from_transcript` | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/PolynomialEvaluationProductForm.lean` | `Ipp.Extracted.hax_translated_polynomial_evaluation_product_form_eq`; `Ipp.Extracted.hax_translated_polynomial_evaluation_product_form_eq_coefficients` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact two generated loops; product and transcript-coefficient sum are proved with the protocol's `z²` variable |
| inverse-power construction refines the `tipp-mipp.power-sequence` model | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs` | `inverse_powers_with_inverse` | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/InversePowers.lean` | `Ipp.Extracted.hax_translated_inverse_powers_eq`; `Ipp.Extracted.hax_translated_inverse_powers_nonzero_eq` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact extracted loop result and nonzero-inverse specialization |
| shifted commitment-key construction is pointwise scalar action | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs` | `build_shifted_ck_2_inner` | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/ShiftedCommitmentKey.lean` | `Ipp.Extracted.hax_translated_shifted_commitment_key_eq` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact paired-slice traversal; composes with the proved inverse-power vector |
| structured terminal scalar refines `Ipp.terminalR` | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs` | `structured_scalar_final_from_raw_transcript_inner` | Lean via hax/Aeneas | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/StructuredScalar.lean` | `Ipp.Extracted.hax_translated_structured_scalar_final_eq` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | arbitrary round count, squared-power schedule, and explicit reversed chronology |
| G2 commitment-key KZG accept equation refines the `tipp-mipp.kzg-equations` abstract pairing shape | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs` | `verify_commitment_key_g2_kzg_equation` | Lean via hax/Aeneas, concrete S3-41 pairing effect | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/KzgVerifiers.lean`; `Ipp/Bls12377PairingAdapter.lean` | `Ipp.Extracted.hax_translated_verify_g2_kzg_eq`; `Ipp.Extracted.hax_translated_verify_g2_kzg_true_iff`; `Ipp.Bls12377.tippPairingEffect_two_pair_law` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact operand/sign/order and boolean equation; product evaluation and the concrete effect's ordered two-pair/failure semantics are proved, while the public delegator remains pinned by Rust parity |
| G1 commitment-key KZG accept equation refines the `tipp-mipp.kzg-equations` abstract pairing shape | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs` | `verify_commitment_key_g1_kzg_equation` | Lean via hax/Aeneas, concrete S3-41 pairing effect | `crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/KzgVerifiers.lean`; `Ipp/Bls12377PairingAdapter.lean` | `Ipp.Extracted.hax_translated_verify_g1_kzg_eq`; `Ipp.Extracted.hax_translated_verify_g1_kzg_true_iff`; `Ipp.Bls12377.tippPairingEffect_two_pair_law` | proved | hax/Aeneas installed toolchain, Lean `v4.30.0` | exact operand/sign/order and boolean equation; product evaluation and the concrete effect's ordered two-pair/failure semantics are proved, while the public delegator remains pinned by Rust parity |
| S2 extracted helper and terminal refinements | `gipa.rs`; `tipa/mod.rs`; `groth16_aggregation.rs` | generated S2 core graphs and handwritten refinements | Lean via hax/Aeneas | `formal/snarkpack/s2-refinement-theorems.txt`; `formal/lean-ipp/Ipp/S2AxiomAudit.lean` | named coefficient, final-key, base-commitment, round/fold, public-input, PPE, combined-check, and KZG theorems | proved | Lean `v4.30.0`, hax/Aeneas installed toolchain | focused S2 builds, named `#print axioms`, and source/artifact freshness manifest passed |
| executed TIPP/MIPP and combined-check orchestration | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs` | `verify_tipp_mipp_core`; `verify_combined_checks_core` | Lean over explicit typed effects | `Ipp.Extracted.verify_tipp_mipp_refinement_statement`; `Ipp.Extracted.CombinedChecks.verify_combined_checks_refinement_statement`; `Ipp.Bls12377.ppePairingAdapterLaws` | exact round failure state, five terminal folds, downstream error propagation, count/round guards, conjunction, and concrete pairing-effect adapter laws | proved | Lean `v4.30.0` | pairing effects are fixed and their adapter laws discharged by S3-41; whole-run commitment/orchestration refinement and delegator/scheduling parity remain explicit premises or Rust tests |
| executed aggregate verifier core refines `Ipp.FsAccepts` | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs` | `verify_aggregate_proof_core` | Lean over the generated aggregate graph and concrete S3-41 pairing adapter | `Ipp.Extracted.AggregateVerifier.verify_aggregate_proof_refinement_statement`; `Ipp.Extracted.AggregateVerifier.verify_aggregate_proof_pairing_adapter_statement` | fixed randomizer retry trace, combined result, errors, conjunction, concrete statement/effect specialization, and `Ipp.FsAccepts` iff | proved | Lean `v4.30.0` | the specialization depends on cited subgroup bilinearity plus named challenge trace, MSM, commitment/orchestration, and Rust delegator boundaries; it has no arbitrary pairing-effect law |
| profiled aggregate projection | `crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/groth16_aggregation.rs` | `verify_aggregate_proof_profiled_with_trace` | Lean projection plus Rust parity | `Ipp.Extracted.AggregateVerifier.profiledOutput_observational`; `verify_aggregate_proof_profiled_with_trace_refinement_statement` | timing fields are observational and `accepted` projects the S2-36 core Boolean | proved | Lean `v4.30.0` | normal/profiled and benchmark-baseline trace/acceptance parity tests; timing is not in the semantic theorem |

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
| `assume.bls12377-curve-orders` | proof-aggregation maintainers | Supplies exactly the two point-cardinality equalities in `Ipp.Bls12377.PublishedCurveOrderFacts`: `|E(Fq)| = h1 * r` and `|E'(Fq2)| = h2 * r` for the concrete BLS12-377 G1 curve `y^2 = x^3 + 1` and D-type sextic twist `y^2 = x^3 + 1/u`. | Retained cited mathematics boundary only; no claim that Lean derives either cardinality from curve arithmetic. The primality of `q` and `r` is kernel-proved in `Ipp/Bls12377Certificates.lean`; the exact cofactor products, cofactor/`r` coprimality, divisibility, and prime-power consequences are kernel-proved in `Ipp/Bls12377Subgroups.lean`. | Postcondition: G1 order `258664426012969094010652733694893533536393512754914660539884262666720468348340822774968888139563774001527230824448` and G2 order `66907285284618762516179251892498138576011520021772958506141914906595914232678740282226827271676970130419140598508556341525183081340042409483740343529628495544958523157897449553724368660947169855001598703830131538604937367781377`; evidence: arkworks-rs/algebra commit `df907e8c1601a898c2903ed7ab7bbbb10607f36b` [`curves/mod.rs`](https://github.com/arkworks-rs/algebra/blob/df907e8c1601a898c2903ed7ab7bbbb10607f36b/curves/bls12_377/src/curves/mod.rs#L19-L29), [`curves/g1.rs`](https://github.com/arkworks-rs/algebra/blob/df907e8c1601a898c2903ed7ab7bbbb10607f36b/curves/bls12_377/src/curves/g1.rs#L26-L46), [`curves/g2.rs` cofactor and coefficients](https://github.com/arkworks-rs/algebra/blob/df907e8c1601a898c2903ed7ab7bbbb10607f36b/curves/bls12_377/src/curves/g2.rs#L23-L60), [`curves/g2.rs` twist equation](https://github.com/arkworks-rs/algebra/blob/df907e8c1601a898c2903ed7ab7bbbb10607f36b/curves/bls12_377/src/curves/g2.rs#L171-L177), [`fields/fq.rs`](https://github.com/arkworks-rs/algebra/blob/df907e8c1601a898c2903ed7ab7bbbb10607f36b/curves/bls12_377/src/fields/fq.rs#L1-L7), and [`fields/fr.rs`](https://github.com/arkworks-rs/algebra/blob/df907e8c1601a898c2903ed7ab7bbbb10607f36b/curves/bls12_377/src/fields/fr.rs#L21-L27); Bowe et al., "Zexe: Enabling Decentralized Private Computation" [BCGMMW20], [IACR ePrint 2018/962](https://eprint.iacr.org/2018/962), Section 8, Figure 16, p. 41. | replace with a checked point-count derivation over the concrete curves | security/crypto/formal | assumed |
| `assume.bls12377-optimal-ate-pairing-laws` | proof-aggregation maintainers | Supplies exactly `Ipp.Bls12377.PublishedPairingBilinearNondegenerate` for `executablePairing` on `g1PrimeSubgroup × g2PrimeSubgroup`: additivity in each argument and genuine left/right nondegeneracy. S2 consumes only the separately named `PublishedPairingBilinear` conjunct. | Mathlib has no elliptic-curve divisor, Miller-function, or pairing theory from which to derive optimal-ate bilinearity. This row does not assume target membership: `executedFinalExponent_mem_gtGroup` proves that every successful S3-40 final-exponent value is a nonzero `r`-torsion unit, and `successfulFinalExponentGt` packages it in the cardinal-`r` `GtGroup`; the zero/inversion branch remains executable failure. | Postcondition: for prime-subgroup `P₁,P₂,Q`, `e(P₁+P₂,Q)=e(P₁,Q)e(P₂,Q)`, symmetrically in G2, and every nonidentity point in either source subgroup pairs nontrivially with some point in the other. Formula and pairing evidence: Aranha et al., ["Implementing Pairings at the 192-bit Security Level"](https://eprint.iacr.org/2012/232), Theorem 1 and Table 3 (BLS12 optimal ate); Aranha et al., ["The Realm of the Pairings"](https://eprint.iacr.org/2013/722), homogeneous D-twist Miller formulas (9)--(10); El Housni et al., ["On the Computation of the Optimal Ate Pairing"](https://eprint.iacr.org/2016/130), Proposition 1 (the BLS12 map `G1 × G2 → μr` is bilinear and nondegenerate). The S3-40 exponent's factor three is kernel-proved by `executedPairingExponent_mul_scalarModulus`. | formalize divisors and Miller functions for the concrete BLS12-377 curve/twist in Lean, prove the optimal-ate theorem, and identify that theorem with the S3-40 executable fold/final-exponent chain | security/crypto/formal | assumed |
| `assume.bls12377-g1-glv-eigenspace` | proof-aggregation maintainers | The optimized G1 scalar path uses the configured endomorphism `phi(X,Y) = (beta*X,Y)` and scalar eigenvalue `lambda = 8444461749428370424248824938781546531284005582649182570233710176290576793600`. | Retained cited curve-parameter boundary only. It is neither an axiom nor a statement about arbitrary on-curve points: every consumer must provide the explicit `GlvEigenPrecondition` premise for a prime-subgroup G1 point. | Postcondition: for every prime-subgroup G1 point `P`, `phi(P) = lambda • P`; parameter and implementation evidence: `ark-bls12-377` v0.5.0 `src/curves/g1.rs:69-94`, with the intended GLV relation documented by `ark-ec` v0.5.0 `src/scalar_mul/glv.rs:10-22`; the conditional loop substitution is `Ipp.Extracted.ArkworksScalarMul.runJoint_eigenvalue`. | replace with a checked parameter proof over the concrete G1 curve and subgroup | security/crypto/formal | assumed |
| arkworks field/group/pairing mathematical operation implementations | proof-aggregation maintainers | The implementation calls arkworks arithmetic primitives; the concrete scalar-prime, base-prime, and Fq2 nonresidue prerequisite slice is separately proved by the three certificate rows above, and the published curve point counts are isolated in `assume.bls12377-curve-orders`. The COMPLETE prime-field layer is now proved on the executed safe-Rust closures (S3-F03B..F05B, S3-15): Fq mul/square/add/sub/neg/GKP-inverse/Tonelli–Shanks sqrt/canonical bytes (`ArkworksFqMul/Ops/Square/Inv/SqrtBytes.lean`) and Fr mul/add/sub/neg/GKP-inverse/canonical bytes (`ArkworksFr.lean`), packaged for S2's scalar model instances as `Ipp.Bls12377FrAdapter.executedScalarAdapter`. The proofs attach to faithful monomorphic copies pinned to production `MontBackend` paths by edge+512-random parity tests (design decision A); Fr sqrt and a dedicated Fr square do not exist on executed paths (recorded exclusions). The executed Fq2 layer (S3-16) is now proved on the extracted graph in `ArkworksFq2.lean`: add/sub/neg/double, the fused two-product `sum_of_products2` Montgomery kernel, mul/square against `QuadraticAlgebra Fq (-5) 0`, the four pinned nonresidue helpers, and the norm-route inverse some-branch (`decode·input = 1` + canonicity). S3-17 completed the executed Fq2 layer: Frobenius (`decode_fq2_frobenius = star`, the `b = 0` conjugation), the inverse none-direction (`fq2_inv = none ↔ input decodes to zero`, via the base-inverse zero-guard plus the `fq2Nonresidue` norm-nonvanishing certificate), the square root (`decode_extracted_fq2_sqrt`, spec-conformance `decode r² = decode a` for the arkworks complex-method sqrt, proven from the executed candidate re-square plus the base-field Tonelli–Shanks `decode_extracted_sqrt`; TS-completeness not claimed, per the F02 decision), and the compression sign-selection (`extracted_fq2_less_spec`, the executed `into_bigint` comparison refines the decoder ordering `fq2Less` on canonical `(c0, c1)` representatives). The Fq2 portion of the arkworks field row is thereby retired. S3-19 retired the executed Fq6 slice: every reached Fq6 routine (add/sub/neg/double, Karatsuba `mul_assign`, CH-SQR2 `square_in_place`, sparse `mul_by_01`, `mul_base_field_by_nonresidue`, the Algorithm-17 inverse in both directions with the cubic-norm nonvanishing argument, and Frobenius powers 1/2 with pinned coefficient tables certified equal to canonical `u`-powers) is proved in `Ipp/Extracted/ArkworksFq6.lean` (graph `ArkworksFq6Generated.lean`, extraction root `extract_s3_19`, edge+512-random parity vs `ark_bls12_377::Fq6`) to refine `Fq6Model`, and `canonical_field_fq6_mul/square/inv` transport the executed operations through the S3-18 `fq6Coefficients` bijection into the canonical field `Fq6Canonical`; Fq6 `mul_by_1` is M-twist-only and unreached on BLS12-377 (recorded exclusion). S3-21 retired the executed Fq12 slice: every reached Fq12 routine (full mul, square, sparse `mul_by_034`, conjugation, cyclotomic inverse, full inverse both directions via the quadratic-norm nonvanishing argument, Frobenius powers 1/2 with C1 constants certified equal to canonical `u`-powers, Granger–Scott `cyclotomic_square` and the 64-digit-NAF `cyclotomic_exp` against exact executable model formulas via loop-fuel induction, and canonical 576-byte to/from-bytes with the exact acceptance/rejection classification against `CanonicalGtDecode`) is proved in `Ipp/Extracted/ArkworksFq12.lean` (graph `ArkworksFq12Generated.lean`, root `extract_s3_21`, edge+512-random parity vs `ark_bls12_377::Fq12`); Fq12 `mul_by_014` is M-twist-only and unreached (recorded exclusion). The cyclotomic laws are UNCONDITIONAL refinements of the exact model formulas (`fq12CyclotomicSquare`/`fq12CyclotomicExp`); the semantic identities GS-square = square and cyclotomic-exp = pow hold only on the order `q^4-q^2+1` cyclotomic subgroup (NOT on the larger unitary/norm-1 subgroup — refuted by an exact-field witness, see the S3-21 part-6 record) and are owed with that hypothesis by the final-exponentiation sessions (S3-38/39), where the easy-part output provably lands in that subgroup. S3-26 proved the executed G1 group-formula slice: the monomorphic G1 projective/mixed add-2007-bl/madd-2007-bl, the a=0 `double_in_place` shortcut, and projective/affine negation (extraction root `extract_s3_26`, graph `ArkworksG1Generated.lean`, edge+512-random projective-class parity vs `ark_bls12_377::G1Projective`) decode to the affine `chordAdd`/`tangentDouble` coordinate model across the infinity/equal/opposite/zero-Z branches in `Ipp/Extracted/ArkworksG1.lean`, and `Ipp/Extracted/ArkworksG1Mathlib.lean` lifts them to the Mathlib `WeierstrassCurve.Affine.Point` group law (`executed_g1_{add,add_mixed,double,neg}_*_refines_mathlib`) on decoded represented classes under an explicit on-curve/prime-subgroup boundary (discharged by S3-32/GAP-08); the group-operation identification itself uses no subgroup premise. Normalization/`into_affine` landed for both curves in S3-29. S3-27 proved the executed G2 group-formula slice identically over the D-type sextic twist (COEFF_A=(0,0), COEFF_B=b/u): the monomorphic `g2_*` add-2007-bl/madd-2007-bl/a=0-double/neg (root `extract_s3_27`, graph `ArkworksG2Generated.lean`, projective-class parity vs `ark_bls12_377::G2Projective`) decode to `chordAddG2`/`tangentDoubleG2` over Fq2 across all exceptional branches in `Ipp/Extracted/ArkworksG2.lean` (the heavy identity proven via a generic-field `chord_decode_core` + `clear_value`, the branch routers via structural comparison-bind peeling — both bounded at ~2 GB), and `Ipp/Extracted/ArkworksG2Mathlib.lean` lifts them to the Mathlib `g2Curve.toAffine.Point` group law (`executed_g2_{add,add_mixed,double,neg}_*_refines_mathlib`) under an explicit on-curve/prime-subgroup boundary (S3-32/GAP-08/09). | Full library verification remains outside this scope. The extension tower (Fq2/Fq6/Fq12 foundations + executed conformance, and the GT order-r structure — see the S3-18/20/22 rows above) is fully proved, as are the executed G1 (S3-26) and G2 (S3-27) group-formula slices. The remaining unproved portions are: the Rust delegator/copy correspondence (parity-pinned, not proved), MSM (S3-30..32); S3-28 scalar multiplication is now landed and proved via generic loops, the G1 GLV decomposition/joint loop, and the final k•P relation, retaining the explicit `assume.bls12377-g1-glv-eigenspace` premise, and the optimal-ate subgroup bilinearity/nondegeneracy theorem retained as `assume.bls12377-optimal-ate-pairing-laws`; S3-33..41 prove the reached executable pairing pipeline, successful-output GT membership, and S2 effect adapter. | Postcondition: arkworks field, group, and pairing operations implement the algebra used by SnarkPack; evidence is the proved prime-field layer above, upstream tests, `arkworks_pairing_identity_and_generator_consistency`, `arkworks_g1_g2_compressed_round_trip_and_identity`, and `arkworks_g1_g2_subgroup_and_torsion_rejection`. | prove the cited optimal-ate subgroup theorem and the remaining Rust copy/delegator and MSM correspondence, or obtain an external audit artifact | security/crypto | assumed |
| arkworks MSM implementation computes intended linear combination | proof-aggregation maintainers | S3-30 proves signed-digit generation, bucket semantics, and executed single-window G1/G2 results. S3-31 discharges row-major scalar/window packaging (`g1_collect_digits`, `g2_collect_digits`, `collectedDigits_get`), the executed outer window collectors (`valid_g1_windows`, `valid_g2_windows`), high-to-low recombination (`valid_g1_cross_window`, `valid_g2_cross_window`), positional exchange (`msm_windowValue_eq_ordered`), and the complete unchecked-body/checked-wrapper compositions `executed_g1_msm` and `executed_g2_msm`. Thus each successful equal-length execution of the monomorphic copy represents the ordered linear combination; the checked mismatch branch returns `Err(min(len))`, and empty equal-length input returns the identity. These capstones cover the copy used for the reached `afgho16::msm_group`, `MultiexponentiationInnerProduct::inner_product`, polynomial-commitment MSM, and `tipa::kzg_opening_profiled` call shapes. | Those reached production calls use production `G::msm(normalize_batch)`, while the kernel proof is over the translation-validated monomorphic safe-Rust copy. Identifying the proved copy with production remains parity-pinned rather than kernel-proved; the Rayon parallel-path correspondence is also retained wherever a reached production caller is parallel. | `OrderedMsmConformance` remains `assumed` only for the production-copy identification and retained Rayon correspondence. Runtime evidence remains `arkworks_msm_boundary_zero_scalar_identity_and_random_parity`; no monomorphic MSM arithmetic or checked-wrapper composition remains in this row. | prove or externally audit the production-copy and retained parallel-path correspondence | security/crypto/formal | assumed |
| arkworks serialization and subgroup behavior | proof-aggregation maintainers | SRS, VK, proof bytes, and digests depend on arkworks encoding checks. | Pure G1 and G2 wire decoding and checked-membership byte injectivity are proved in `Ipp/CanonicalG1DecodeInjectivity.lean` and `Ipp/CanonicalG2DecodeInjectivity.lean`: raw finite bytes are injective away from the explicit y = 0 sign-tie boundary, infinity is unique, and decode plus the corresponding `arkworksG1CheckedMembership`/`arkworksG2CheckedMembership` predicate is injective because odd-order prime-subgroup membership excludes finite 2-torsion. GAP-07 retired the pure GT subgroup mathematics: `Ipp/Bls12377GtMembership.lean` proves the concrete checked `PairingOutput` boolean (`fq12Pow x r = fq12One`, the pinned arkworks check) is exactly nonzero r-torsion in canonical Fq12, in type equivalence with the cardinal-`r` `GtGroup`, with the wire-level checked-decode iff and explicit zero/identity conventions. Executed arkworks decoder conformance and remaining subgroup behavior stay outside this slice (GAP-08/09/10). | Postcondition: checked compressed G1/G2 decoding rejects malformed and non-subgroup encodings and round-trips valid/identity encodings; evidence is `arkworks_g1_g2_compressed_round_trip_and_identity`, `arkworks_g1_g2_malformed_compressed_bytes_reject`, and `arkworks_g1_g2_subgroup_and_torsion_rejection`. | verified serialization backend or external audit artifact | security/crypto | assumed |
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
`gipa.rs`, `tipa`, and `groth16_aggregation` is now split: the named executed
S2 cores have conditional Lean refinements, while byte/digest correspondence,
concrete adapter laws, and the production delegators remain separate
boundaries. ALG-I4 continues to exhaustively cross-check transcript shapes
through the SRS maximum; it is model/implementation evidence, not the S1
soundness proof.

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

The landed extracted helper graphs are now paired with their exact refinement
theorems: `hax_translated_rescale_fold_eq`,
`hax_translated_polynomial_evaluation_product_form_eq`,
`hax_translated_inverse_powers_eq`,
`hax_translated_shifted_commitment_key_eq`,
`hax_translated_structured_scalar_final_eq`,
`polynomial_coefficients_refinement`, and the final-key corollaries. The
recorded hax/artifact hash manifest gates these vendored outputs against the
target source snapshot; it is not a claim that hax semantic preservation or
the concrete arithmetic backend has been proved here.

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
no-sorry refinement theorem listed in
`formal/snarkpack/s2-refinement-theorems.txt`. Their production iterator/Rayon
delegators remain pinned by Rust parity tests.

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
The concrete pairing adapter is now proved from the cited subgroup bilinearity
boundary: it supplies the `ZMod r` modules, additive GT wrapper, ordinary and
prepared effects, ordered two-pair laws, and failure-as-`none` behavior. The
remaining commitment/orchestration refinements, serialization/subgroup
behavior, MSM implementation, and cryptographic binding rows remain assumptions
or separate work; the public delegators are covered by Rust parity tests rather
than Lean.

Prepared-G2 schedule, doubling/addition lines, full executed G2Prepared
coefficient-sequence validity, finite-G1 line evaluation (`g1_ell_spec`), the
single-pair Miller schedule (`miller_schedule_spec`), and the multi-Miller
product refinement (`multi_miller_schedule_spec`) are landed in S3-33..37.
S3-38..40 land final exponentiation and the multi-pairing product theorem.
S3-41 proves successful-output GT membership and the S2 adapter; only the named
optimal-ate bilinearity/nondegeneracy literature boundary remains cited.

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
`verify_combined_checks_core`. The later S2-31..33 and S2-35 sessions proved
the round/fold/leaf and combined-check refinements consumed by S2-36.

## S2-36 aggregate verifier capstone

`verify_aggregate_proof_with_trace` now delegates its non-benchmark result path
to the associated-type-free `verify_aggregate_proof_core`. The scoped WSL
Charon/Aeneas graph is vendored as
`Ipp/Extracted/AggregateVerifierGenerated.lean`. Its effect state records the
chronological randomizer attempts and the later combined call; the extracted
loop retries exactly decoded `None`, zero, and one, starts at nonce zero,
propagates challenge and combined errors unchanged, and returns the conjunction
of the two combined checks.

`Ipp.Extracted.AggregateVerifier.verify_aggregate_proof_refinement_statement`
composes that graph with S2-35 and proves acceptance iff `Ipp.FsAccepts`.
`verify_aggregate_proof_pairing_adapter_statement` specializes its statement
map and both pairing effects to the executable BLS12-377 adapter. The ordinary
effect's exact ordered two-pair and failure laws, plus the PPE normalization,
prepared-negative, ordered two-pair, and failure laws, are proved; no arbitrary
pairing-effect law remains in the specialization. Its `htipp` and `hppe`
premises are now exact whole-run commitment/orchestration refinements for those
fixed effects, not pairing adapter laws. The only remaining pairing mathematics
is `PublishedPairingBilinear`, cited by
`assume.bls12377-optimal-ate-pairing-laws`. Hash-as-random-oracle and serializer
parity are not silently discharged; serialization/subgroup, KZG binding,
pairing-commitment binding, MSM correspondence, and Rust delegator parity remain
separate boundaries.

## S2-37 profiled projection

The non-benchmark `verify_aggregate_proof_profiled_with_trace` path now runs
the same `verify_aggregate_proof_core` through a timing-recording delegator.
`accepted` is copied from the core output, while the five elapsed-time fields
are populated only by `Instant` observations. The benchmark-baseline path keeps
its profiling implementation; normal/profiled acceptance and trace parity is
tested in both configurations.

`Ipp.Extracted.AggregateVerifier.profiledOutput_observational` proves that all
timing fields are observational, and
`verify_aggregate_proof_profiled_with_trace_refinement_statement` invokes the
S2-36 semantic theorem exactly once while projecting its acceptance Boolean.
The semantic statement contains no timing value. Rust tests are
`aggregate_profiled_matches_normal_acceptance_and_trace` and
`aggregate_profiled_baseline_matches_normal_acceptance_and_trace`.

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
`v4.30.0` and runs `just snarkpack-lean-ipp`, including focused S2 module
builds, the named `#print axioms` audit, exactly one full `lake build Ipp`, the
zero-`sorry`/`native_decide` scan, and the axiom-declaration guard. The static
invariant gate also checks hax target/source completeness, the recorded
generated-artifact freshness manifest, the named theorem list, and the
extracted-directory no-shim scan. Keep the full formal gate out of default
`just check` unless it satisfies the default CI runtime policy; it remains a
required SnarkPack workflow gate.

S3-38..40 final exponentiation and the multi-pairing wrapper are landed. S3-41
lands the GT-valued pairing boundary and S2 pairing-effect adapter. The formal
remainder is the explicitly cited optimal-ate subgroup bilinearity (and the
separately stated, S2-unused nondegeneracy), plus the non-pairing boundaries
listed above.
