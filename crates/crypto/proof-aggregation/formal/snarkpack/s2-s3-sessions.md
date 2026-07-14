# S2, S3, and verifier-serialization session breakdown

## 2026-07-13 serial adaptation status

- S2-00 now includes a finite relational Aeneas loop semantics with uniqueness
  and fuel-to-result lemmas.
- S2-08 and S2-09 are green for the extracted generic pairing-equation kernels;
  composition with S2-07's still-scaffolded product evaluation remains open.
- The `inverse_powers_with_inverse` half of S2-10 is green; shifted-key
  construction remains scaffolded.
- `verify_tipp_mipp` is single-exit after its loop. Its early-return blocker is
  retired; the full closed extraction remains gated by arkworks trait groups.
- S3-F00/C01/C02/P00 have a green foundation module with exact constants,
  explicit arithmetic/ellipticity certificate propositions, conditional
  Mathlib groups, affine representation, and executable pairing split. It does
  not claim primality, arkworks conformance, or bilinearity.

Status: executable work order. This file decomposes the remaining formal-verification
work described by `s2-tier1-plan.md`, `s3-arithmetic-plan.md`,
`optimization-vs-fv.md`, and `formal-handoff.md`. It does not broaden S2 into a
proof of prover orchestration: the S2 inventory here is the Tier-1 verifier
boundary named in those documents.

## Dispatch rules and priority

Priority is **S2 first, verifier serialization/subgroup validation immediately
behind it, and profile-selected S3 packages after that**. The two residual U5a
sessions are independent pure-Lean work and may run while the toolchain-gated
tracks wait.

- `NOW` means a pure-Lean session that can execute on the pinned Lean `v4.30.0`
  toolchain today. Run one `lake` process at a time with `LEAN_NUM_THREADS=1`.
- `GATED` means the session needs a supported Rust build host: MSVC Build Tools
  plus the Windows SDK on Windows, or the supported Linux/Nix environment, and
  the pinned Rust/hax toolchain. Sessions using the existing F* extraction gate
  also need the pinned Z3/F* installation.
- `HARD (sol)` is theorem/design work. `MECHANICAL (luna)` is extraction,
  plumbing, generated-code freshness, ledger, or deterministic integration work.
- A session owns one theorem-sized result. It must add focused checks and an
  axiom audit where Lean is changed. Generated hax output stays immutable;
  handwritten refinement theorems import it.
- S2 remains parametric over field/group/pairing laws and an explicit MSM
  conformance premise. S3 and GAP discharge those implementation premises.
- `bench-baseline` is proof-relevant only when it is in the release gate. If it
  remains bench-only, record that fact at the extraction boundary instead of
  making it a production compatibility path.

## Track S2 — executed orchestration refines `Ipp`

The order follows the smallest closed extraction graphs first, then the
high-priority verifier GT folds, KZG checks, PPE, and aggregate capstone.

1. **S2-00 — hax target and refinement harness** — `MECHANICAL (luna)` — `GATED`
   - **Deliverable:** Extract the closed Tier-1 target graph, record every target/shim/precondition in `hax-targets.txt` and `hax-extraction-boundary.md`, and add the single arithmetic adapter plus slice/`Fin` and successful-`Result` refinement harness consumed by all later S2 theorems.
   - **Dependencies:** none; requires the supported Rust+hax host and pinned Z3/F* where the existing formal gate invokes them.

2. **S2-01 — `fold_output` refines `Ipp.foldCom`** — `HARD (sol)` — `GATED`
   - **Deliverable:** Prove that the translated mutation returns `c • L + current + c⁻¹ • R` under `c ≠ 0`, including `mem::take`, evaluation order, and production/`bench-baseline` parity when that feature is gated.
   - **Dependencies:** S2-00.
   - **Retires:** the fold equation in `gipa.verifier-folding`.

3. **S2-02 — recursive GIPA verifier folds and transcript order** — `HARD (sol)` — `GATED`
   - **Deliverable:** Prove `_compute_recursive_challenges`, conditional on the decoded nonzero challenges, reverses proof rounds and the returned transcript exactly as `Ipp.foldRounds`/`Ipp.reversedView` require and applies S2-01 to all three accumulators.
   - **Dependencies:** S2-01; challenge-byte/digest correspondence remains a separately named boundary.
   - **Retires:** the proof-round reversal and accumulator portions of `gipa.verifier-folding`.

4. **S2-03 — `rescale_fold` and profiled wrapper refine `Ipp.foldMsg`** — `HARD (sol)` — `GATED`
   - **Deliverable:** Prove `rescale_fold scaled upper s = Ipp.foldMsg s (upperLower scaled upper)`, prove sequential/Rayon selection equality, and prove `rescale_fold_profiled` projects the same vector while time is observational only.
   - **Dependencies:** S2-00.
   - **Retires:** the rescale and sequential/parallel parity portions of `gipa.round-folding`.

5. **S2-04 — final commitment keys refine `foldKey`/`transcriptCoeffs`** — `HARD (sol)` — `GATED`
   - **Deliverable:** Prove `_compute_final_commitment_keys` returns the two `Ipp.msm` values at inverse/raw transcript coefficients for nonzero challenges and length `2^μ`, then connect both to `Ipp.foldKey` with `foldKey_transcriptCoeffs`.
   - **Dependencies:** S2-00 and the adapter's explicit MSM-conformance premise.
   - **Retires:** the remaining key-exponent part of `gipa.round-folding`, key recombination in `gipa.verifier-folding`, and the covered `tipp-mipp.power-sequence` evidence.

6. **S2-05 — base commitment verification refines the leaf equations** — `HARD (sol)` — `GATED`
   - **Deliverable:** Prove `_verify_base_commitment = true` iff its three singleton commitment equations hold, mapped to the first three applicable `Ipp.LeafData` equations and `Ipp.AcceptTree.base`, with inner-product and error propagation explicit.
   - **Dependencies:** S2-00 and the commitment-trait-to-bilinear-model adapter laws.
   - **Retires:** the terminal generic-GIPA portion of `gipa.verifier-folding`.

7. **S2-06 — transcript coefficient vector refines `Ipp.transcriptCoeffs`** — `HARD (sol)` — `GATED`
   - **Deliverable:** Prove `polynomial_coefficients_from_transcript` has length `2^(μ+1)-1`, equals `transcriptCoeffs x rShift i` at every even index `2*i`, and is zero at every in-range odd index.
   - **Dependencies:** S2-00.
   - **Retires:** coefficient construction in `tipp-mipp.kzg-equations` and `tipp-mipp.power-sequence`.

8. **S2-07 — product-form evaluation refines `Ipp.transcript_prod_form_eval`** — `HARD (sol)` — `GATED`
   - **Deliverable:** Prove `polynomial_evaluation_product_form_from_transcript` equals the product over `1 + x_j(rShift*z^2)^(2^j)` and its `Ipp.transcriptCoeffs` sum at `z^2`.
   - **Dependencies:** S2-06 and `Ipp.transcript_prod_form_eval`.
   - **Retires:** product/evaluation construction in `tipp-mipp.kzg-equations`.

9. **S2-08 — G2 KZG verifier refines the `acceptV` equation** — `HARD (sol)` — `GATED`
   - **Deliverable:** Prove `verify_commitment_key_g2_kzg_opening = true` iff `e g (key - eval • h) - e (gβ - z • g) opening = 0`, including pairing failure returning `false`.
   - **Dependencies:** S2-07 and the bilinear/additive-`GT` adapter.
   - **Retires:** the G2 accept-shape portion of `tipp-mipp.kzg-equations`; it does not retire `assume.kzg-structured-key-binding`.

10. **S2-09 — G1 KZG verifier refines the `acceptW` equation** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove `verify_commitment_key_g1_kzg_opening = true` iff `e (key - eval • g) h - e opening (hα - z • h) = 0`, including sign/order and pairing-failure behavior.
    - **Dependencies:** S2-07 and the bilinear/additive-`GT` adapter.
    - **Retires:** the G1 accept-shape portion of `tipp-mipp.kzg-equations`; it does not retire `assume.kzg-structured-key-binding`.

11. **S2-10 — inverse powers and shifted key construction** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove `inverse_powers len r` is `i ↦ r⁻ⁱ` for `r ≠ 0` and `build_shifted_ck_2` is its pointwise scalar action, with sequential/Rayon equality; record it as excluded if the final closed verifier graph does not reach these helpers.
    - **Dependencies:** S2-00.
    - **Retires:** the reached `ck_2_r_inv` part of `groth16.folded-inputs`; otherwise this is the ready bridge for the later prover-side S2 extension.

12. **S2-11 — structured terminal scalar refines `Ipp.terminalR`** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove `structured_scalar_final_from_raw_transcript x r = Ipp.terminalR r (Ipp.reversedView x)` for arbitrary round count, replacing the current two-round parity-only evidence.
    - **Dependencies:** S2-00.
    - **Retires:** the structured-scalar part of `tipp-mipp.base-equations` and `tipp-mipp.power-sequence`.

13. **S2-12 — public-input folding refines the Groth16 sum** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove `fold_public_inputs` returns `rSum = ∑i r^i` and `gIC = rSum • gamma_abc[0] + ∑j (∑i r^i*inputs[i][j]) • gamma_abc[j+1]`, including shape assertions and the `r = 1` branch.
    - **Dependencies:** S2-00 and nonempty/equal-arity input preconditions.
    - **Retires:** the verifier portion of `groth16.folded-inputs`.

14. **S2-13 — optimized PPE refines the `Ipp.FsAccepts` PPE** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove `verify_ppe` is equivalent to `e (rSum • alpha) beta + e gIC gamma + e aggC delta = ipAb`, including prepared signs, normalization, pairing failure, and optimized/three-pair baseline equality when gated.
    - **Dependencies:** S2-00, S2-12, and the prepared-pairing adapter laws.
    - **Retires:** the verifier equation in `groth16.ppe`.

15. **S2-14 — `verify_tipp_mipp` refines `Ipp.LeafData`** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove `verify_tipp_mipp = true` iff `Ipp.LeafData stmt proof transcript`, including reversed round iteration, five exact `fold_output` accumulators, both KZG calls, the five terminal equations, nonzero inversions, and all `Result` failures.
    - **Dependencies:** S2-01, S2-06 through S2-09, and S2-11; consume S2-05 where the generic base helper is actually called.
    - **Retires:** the verifier portions of `tipp-mipp.gipa`, `tipp-mipp.base-equations`, `tipp-mipp.kzg-equations`, and the covered GIPA rows.

16. **S2-15 — combined-check orchestration preserves both results and trace order** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove `verify_combined_checks_profiled` enforces the nonzero-power-of-two/round-count preconditions and returns exactly `(LeafData, PPE)` with identical trace replay and result propagation in sequential and `rayon::join` branches.
    - **Dependencies:** S2-12 through S2-14.

17. **S2-16 — unprofiled aggregate verifier refines `Ipp.FsAccepts`** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove `verify_aggregate_proof_with_trace = true` iff `Ipp.FsAccepts stmt proof transcript`, conditional on the existing challenge-byte/digest trace correspondence and fixed decoded challenges.
    - **Dependencies:** S2-15 and the randomizer/challenge trace boundary.
    - **Retires:** the covered review-only portions of `groth16.folded-inputs`, `groth16.ppe`, and the combined verifier rows.

18. **S2-17 — profiled aggregate verifier projects the same acceptance** — `MECHANICAL (luna)` — `GATED`
    - **Deliverable:** Prove `verify_aggregate_proof_profiled_with_trace.accepted` equals S2-16 and that every timing field is observational, without duplicating the semantic proof.
    - **Dependencies:** S2-16.

19. **S2-18 — S2 gate and row retirement** — `MECHANICAL (luna)` — `GATED`
    - **Deliverable:** Gate target completeness, generated-code freshness, no unrecorded shim, all refinement theorems, focused/full Lean checks, and axiom audits, then replace the covered `abstract-trace` evidence in `ripp-spec.md`/`ripp-refinement.md` and update `formal-handoff.md` without claiming S3, serialization, hash-as-RO, or computational binding.
    - **Dependencies:** S2-01 through S2-17.

## Track GAP — canonical decoding and subgroup/torsion validation

This track is ahead of S3 production work because `deserialize_ms` is the
measured number-one verifier cost and an aggregate proof contains `4 + 8μ` GT
elements. The first sessions specify the current checked decoder; the optional
batch path is allowed only after its soundness and end-to-end A/B gates pass.

1. **GAP-00 — typed canonical-wire model and proof-object coverage** — `MECHANICAL (luna)` — `NOW`
   - **Deliverable:** Define pure Lean byte/flag/component records for the pinned arkworks Fq/Fq2/Fq12, G1, G2, and `PairingOutput` formats and prove the `AggregateProof` traversal covers every top-level and per-round element, including the exact `4 + 8μ` GT count.
   - **Dependencies:** none.

2. **GAP-01 — canonical field-component decode injectivity** — `HARD (sol)` — `NOW`
   - **Deliverable:** Prove canonical bounded-integer decoding is left-inverse/injective for Fq and lift it componentwise to Fq2/Fq6/Fq12, with noncanonical limbs, spare bits, and trailing bytes rejected.
   - **Dependencies:** GAP-00 and the BLS12-377 modulus facts; this is a wire theorem, not field-operation conformance.

3. **GAP-02 — G1 compressed decode injectivity** — `HARD (sol)` — `NOW`
   - **Deliverable:** Prove the G1 compressed decoder specification is injective on accepted canonical bytes, including infinity uniqueness, x recovery, sign-bit root selection, on-curve validity, malformed flags, and exact consumption.
   - **Dependencies:** GAP-01 and the pure Mathlib G1 curve instantiation from S3-C01.

4. **GAP-03 — G2 compressed decode injectivity** — `HARD (sol)` — `NOW`
   - **Deliverable:** Prove the G2 compressed decoder specification is injective on accepted canonical bytes over Fq2, with the same infinity/sign/on-curve/exact-consumption cases.
   - **Dependencies:** GAP-01 and the pure Mathlib G2/twist instantiation from S3-C01.

5. **GAP-04 — GT canonical decode injectivity** — `HARD (sol)` — `NOW`
   - **Deliverable:** Prove the pinned `PairingOutput<Bls12_377>` Fq12 canonical decoder is injective on accepted bytes and distinguishes canonical field decoding from the later order-`r` membership check.
   - **Dependencies:** GAP-01.

6. **GAP-05 — G1 subgroup/torsion membership statement** — `HARD (sol)` — `NOW`
   - **Deliverable:** Prove the exact BLS12-377 G1 checked-membership predicate is equivalent to membership in the intended order-`r` subgroup and excludes every nontrivial cofactor/torsion component, including identity semantics.
   - **Dependencies:** S3-C01 and reviewed G1 order/cofactor facts.

7. **GAP-06 — G2 subgroup/torsion membership statement** — `HARD (sol)` — `NOW`
   - **Deliverable:** Prove the exact G2 checked-membership predicate on the twist is equivalent to membership in the intended order-`r` subgroup and excludes nontrivial torsion, including identity semantics.
   - **Dependencies:** S3-C01 and reviewed G2 order/cofactor/twist facts.

8. **GAP-07 — GT subgroup membership statement** — `HARD (sol)` — `NOW`
   - **Deliverable:** Prove the checked `PairingOutput` predicate is equivalent to `x^r = 1` in Fq12 (with the pinned arkworks zero/identity convention made explicit) and hence to the intended order-`r` target subgroup under the reviewed factorization facts.
   - **Dependencies:** GAP-04 and the pure extension-field/group facts from S3-P00.

9. **GAP-08 — executed G1 checked decoder refines the specification** — `HARD (sol)` — `GATED`
   - **Deliverable:** Extract the pinned arkworks G1 `CanonicalDeserialize`/validation path and prove success iff GAP-02's canonical point and GAP-05's subgroup predicate both hold, with every error branch preserved.
   - **Dependencies:** GAP-02, GAP-05, and the relevant verified field/curve operations or explicit still-open S3 premises.

10. **GAP-09 — executed G2 checked decoder refines the specification** — `HARD (sol)` — `GATED`
    - **Deliverable:** Extract the pinned arkworks G2 `CanonicalDeserialize`/validation path and prove success iff GAP-03's canonical point and GAP-06's subgroup predicate both hold.
    - **Dependencies:** GAP-03, GAP-06, and the relevant verified field/curve operations or explicit still-open S3 premises.

11. **GAP-10 — executed GT checked decoder refines the specification** — `HARD (sol)` — `GATED`
    - **Deliverable:** Extract the pinned `PairingOutput<Bls12_377>` decoder/`Valid::check` path and prove success iff GAP-04's canonical Fq12 value and GAP-07's target-subgroup predicate both hold.
    - **Dependencies:** GAP-04, GAP-07, and the relevant verified Fq12/exponentiation operations or explicit still-open S3 premises.

12. **GAP-11 — aggregate decoder and challenge-serializer composition** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove `deserialize_aggregate_proof` composes GAP-08 through GAP-10 over the entire derived structure with exact byte consumption, and prove the challenge-stage component concatenations equal the Lean serializers used by `Ipp.ChallengeEncoding`.
    - **Dependencies:** GAP-08 through GAP-10 and S2-00's typed extraction boundary.
    - **Retires:** `assume.challenge-message-serialization-injective` once stage parity is complete; narrows `arkworks serialization and subgroup behavior` to any unproved non-aggregate consumers.

13. **GAP-12 — batched GT membership soundness** — `HARD (sol)` — `NOW`
    - **Deliverable:** Prove the actual BLS12-377 randomized batch predicate covers all `4 + 8μ` decoded GT values and accepts an off-subgroup input with at most the stated error, using the exact cofactor factorization, fresh verifier randomness, and no adversary-chosen coefficient gaps.
    - **Dependencies:** GAP-00 and GAP-07; this theorem must not replace a conjunction by a random linear check without an explicit bound.

14. **GAP-13 — batched GT implementation refinement and A/B gate** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove the executed batch validator implements GAP-12, preserves canonical decoding and G1/G2 checks, then retain it only if release-build `verify_family_aggregate` medians on the deterministic corpus improve above noise with unchanged valid bytes/traces and the proved rejection/error contract.
    - **Dependencies:** GAP-10 through GAP-12 and a compile-time current-vs-batch benchmark seam.

15. **GAP-14 — serialization/subgroup gate and row retirement** — `MECHANICAL (luna)` — `GATED`
    - **Deliverable:** Gate generated-code freshness, decoder coverage, malformed/trailing/noncanonical/torsion fixtures, focused/full proofs, axiom audits, and A/B evidence, then retire `arkworks serialization and subgroup behavior` only for the fully proved G1/G2/GT boundary.
    - **Dependencies:** GAP-11; GAP-13 only if batched GT validation becomes production.

## Track S3 — profile-selected arithmetic implementation correctness

S3 is deliberately not one campaign. `Field377`, `Curve377`, and `Pairing377`
land independently and retire only their matching part of the arithmetic rows.
The two field production branches below are exclusive: after the decision gate,
delete the rejected experiment rather than maintaining dual production paths.

### Field377 and extension tower

1. **S3-F00 — BLS12-377 modulus and `ZMod` foundations** — `HARD (sol)` — `NOW`
   - **Deliverable:** Prove the base/scalar moduli prime and record canonical `ZMod q`/`ZMod r`, limb-range, Montgomery-radix, encode/decode, and checked-input specifications used by both field spikes.
   - **Dependencies:** none.

2. **S3-F01A — fiat-backed adapter feasibility slice** — `HARD (sol)` — `GATED`
   - **Deliverable:** Generate/instantiate fiat-crypto code for both moduli and prove one end-to-end adapter slice covering representation, Montgomery encode/decode, addition, multiplication, and square against S3-F00.
   - **Dependencies:** S3-F00 and a Rust-capable benchmark host.

3. **S3-F01B — arkworks hax multiplication/reduction spike** — `HARD (sol)` — `GATED`
   - **Deliverable:** Extract the monomorphized four-limb arkworks multiplication/reduction call graph and prove one complete range-preserving `decode (mul a b) = decode a * decode b` theorem without opaque assembly/unsafe/result shims.
   - **Dependencies:** S3-F00 and S2-00's extraction discipline.

4. **S3-F02 — field-route end-to-end A/B decision** — `MECHANICAL (luna)` — `GATED`
   - **Deliverable:** Benchmark current arkworks, the S3-F01A fiat adapter, and post-hoc instrumentation in identical release builds on the deterministic SnarkPack corpus, then choose fiat only if prover/verify medians are above-noise better or indistinguishable with a material proof/maintenance win; choose post-hoc only if S3-F01B succeeded.
   - **Dependencies:** S3-F01A and S3-F01B; record proof bytes, ShielddByte traces, acceptance, subgroup rejection, arithmetic vectors, hardware, flags, threads, variance, and medians.

5. **S3-F03A — fiat add/sub/neg and representation refinement** — `HARD (sol)` — `GATED`
   - **Deliverable:** On the selected fiat route, prove base/scalar representation invariants and `0`, `1`, add, sub, neg, Montgomery encode/decode against `ZMod`.
   - **Dependencies:** S3-F02 selecting fiat.

6. **S3-F04A — fiat multiplication and squaring refinement** — `HARD (sol)` — `GATED`
   - **Deliverable:** Prove fiat-backed multiplication and square, including all carry/range postconditions, for both BLS12-377 fields.
   - **Dependencies:** S3-F03A.

7. **S3-F05A — fiat inversion, square root, and canonical bytes** — `HARD (sol)` — `GATED`
   - **Deliverable:** Prove the fixed addition-chain inversion/square-root paths and canonical `from_bytes`/`to_bytes` behavior, with zero/nonresidue failures explicit.
   - **Dependencies:** S3-F04A.

8. **S3-F03B — arkworks limb/range and basic-operation refinement** — `HARD (sol)` — `GATED`
   - **Deliverable:** On the selected post-hoc route, prove the monomorphized four-limb representation relation plus `0`, `1`, add, sub, and neg carry/reduction routines against `ZMod`.
   - **Dependencies:** S3-F02 selecting post-hoc.

9. **S3-F04B — arkworks multiplication and square refinement** — `HARD (sol)` — `GATED`
   - **Deliverable:** Generalize the successful spike to every executed multiplication/square/reduction path for Fq and Fr, with machine-word overflow semantics and range preservation.
   - **Dependencies:** S3-F03B and S3-F01B.

10. **S3-F05B — arkworks inversion, square root, and canonical bytes** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove the executed inversion, square-root, `from_bytes`, and `to_bytes` paths against `ZMod`, including failure cases and no opaque arithmetic boundary.
    - **Dependencies:** S3-F04B.

11. **S3-F06 — selected field adapter capstone** — `MECHANICAL (luna)` — `GATED`
    - **Deliverable:** Expose exactly one proved `Field377` adapter to S2/GAP, run cross-backend vectors and end-to-end A/B checks, delete the rejected field path, and retire only the field portion of `arkworks field/group/pairing mathematical operation implementations`.
    - **Dependencies:** S3-F05A or S3-F05B, according to S3-F02.

12. **S3-X01 — Fq2 implementation refinement** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove the executed Fq2 representation and all used add/sub/neg/mul/square/inverse/Frobenius operations against the finite extension over `Field377`.
    - **Dependencies:** S3-F06.

13. **S3-X02 — Fq6 implementation refinement** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove the executed Fq6 tower, sparse multiplication, inverse, and Frobenius operations against the specified extension.
    - **Dependencies:** S3-X01.

14. **S3-X03 — Fq12 implementation refinement** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove the executed Fq12 tower, sparse/cyclotomic operations, conjugation, inverse, and Frobenius operations used by pairing and GT validation.
    - **Dependencies:** S3-X02.

### Curve377

15. **S3-C00 — EC/MSM profile gate** — `MECHANICAL (luna)` — `GATED`
    - **Deliverable:** Use the release-build deterministic corpus and existing GIPA/KZG/public-input profile fields to confirm which G1/G2 scalar-mul, normalization, or MSM kernel is above the end-to-end noise floor before committing production proof effort.
    - **Dependencies:** the S3-F02 measurement harness; the pure foundations below may proceed before this gate.

16. **S3-C01 — Mathlib BLS12-377 G1/G2 instantiation** — `HARD (sol)` — `NOW`
    - **Deliverable:** Instantiate the BLS12-377 G1 curve and G2 twist over `ZMod q`/Fq2, prove discriminants nonzero, and define the reviewed prime-order subgroup/cofactor parameters.
    - **Dependencies:** S3-F00.

17. **S3-C02 — representation relations and normalization** — `HARD (sol)` — `NOW`
    - **Deliverable:** Define affine/projective/Jacobian-to-Mathlib point-class relations and prove infinity, zero-`Z`, coordinate equivalence, affine conversion, and normalization preserve the represented point.
    - **Dependencies:** S3-C01.

18. **S3-C03 — executed G1 add/double/neg formulas** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove the actually monomorphized arkworks G1 affine/projective/mixed formulas refine Mathlib addition, doubling, and negation across infinity, equal, opposite, and zero-`Z` branches.
    - **Dependencies:** S3-C00 go, S3-C02, and S3-F06.

19. **S3-C04 — executed G2 add/double/neg formulas** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove the actually monomorphized G2/twist formulas refine Mathlib addition, doubling, and negation across all exceptional branches.
    - **Dependencies:** S3-C00 go, S3-C02, and S3-X01.

20. **S3-C05 — scalar multiplication refinement** — `HARD (sol)` — `GATED`
    - **Deliverable:** Lift S3-C03/S3-C04 by induction over the executed scalar-bit loop to prove G1/G2 scalar multiplication and batch normalization represent `k • p`.
    - **Dependencies:** S3-C03 and S3-C04.

21. **S3-C06 — MSM refinement** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove the executed `VariableBaseMSM`/`msm` paths for G1 and G2 represent `∑i scalar_i • point_i`, including empty, length-error, zero-scalar, identity, window, and bucket branches.
    - **Dependencies:** S3-C05 and the selected field adapter.
    - **Retires:** `arkworks MSM implementation computes intended linear combination`.

22. **S3-C07 — curve/subgroup integration gate** — `MECHANICAL (luna)` — `GATED`
    - **Deliverable:** Feed the curve theorems to the S2 adapter and GAP subgroup decoders, run focused/full checks and axiom audits, and retire only the group/MSM portion of the arkworks arithmetic row.
    - **Dependencies:** S3-C03 through S3-C06 and GAP-05/GAP-06 for checked subgroup consumers.

### Pairing377

23. **S3-P00 — pinned optimal-ate executable specification** — `HARD (sol)` — `NOW`
    - **Deliverable:** Pin one published optimal-ate/BLS12 algorithm and encode its exact signed loop parameter, bit/NAF order, twist map, line functions, Frobenius constants, sparse Fq12 operations, conjugations, and easy/hard final-exponentiation chain as Lean pseudocode.
    - **Dependencies:** S3-F00 and S3-C01; the literature claim of bilinearity/non-degeneracy remains a named assumption.

24. **S3-P01 — pairing-kernel profile/A-B gate** — `MECHANICAL (luna)` — `GATED`
    - **Deliverable:** Measure current and candidate Miller-loop/final-exponentiation kernels on `aggregate_family` and `verify_family_aggregate`, retaining a production candidate only if the realistic end-to-end medians pay above noise or are neutral with a material proof/maintenance win.
    - **Dependencies:** the S3-F02 harness and S3-P00; record pairing, final-exponentiation, GIPA, KZG, and total profiles.

25. **S3-P02 — prepared points and line evaluation** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove prepared-point construction and every executed line-evaluation/sparse-multiplication step decode to `specLineEval` from S3-P00.
    - **Dependencies:** S3-P01 go, S3-C05, and S3-X03.

26. **S3-P03 — Miller-loop refinement** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove the executed signed-loop schedule, conjugations, line accumulation, and multi-Miller accumulation equal `optimalAteMillerLoop specParams p q`.
    - **Dependencies:** S3-P02.

27. **S3-P04 — final-exponentiation refinement** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove the executed easy/hard chain returns `f^((q^12-1)/r)` on success and preserves the implementation's explicit failure domain.
    - **Dependencies:** S3-X03 and S3-P00.

28. **S3-P05 — multi-pairing capstone** — `HARD (sol)` — `GATED`
    - **Deliverable:** Prove `multi_pairing`/`cfg_multi_pairing` decodes to the product of the pinned published pairing over all input pairs by composing S3-P03 and S3-P04.
    - **Dependencies:** S3-P03 and S3-P04.

29. **S3-P06 — pairing integration and row retirement** — `MECHANICAL (luna)` — `GATED`
    - **Deliverable:** Feed `Pairing377` to S2/GAP, gate focused/full checks, generated-code freshness, A/B evidence, and axiom audits, then retire the pairing-implementation portion of the arkworks arithmetic row while retaining the cited optimal-ate bilinearity/non-degeneracy and cryptographic-hardness assumptions.
    - **Dependencies:** S3-P05 and GAP-07/GAP-10 for GT consumers.

## Ready residual U5a sessions

The current adaptive game does **not** justify either existing `μ*Q/|F|`
field: the adversary selects the accepted proof from multiple early and later
candidate queries after seeing their answers. These sessions therefore target
sound candidate-pair bounds. Do not attempt the old constants unless a separate
session first adds and proves a protocol-enforced non-adaptive commitment
invariant.

1. **U5a-R1 — dependency-order candidate-pair bound** — `HARD (sol)` — `NOW`
   - **Deliverable:** Prove a cached-RO pair/birthday lemma for the exact `Accepted ∧ BadDependency` event, transport it through `fsProbComp`, replace `BadEventBudget.dependency_order_bound` by the resulting sound `Q²/|F|`-style per-level bound, and update `q0_lower_bound`'s printed error term.
   - **Dependencies:** current `fresh_miss_uniform`, `fresh_miss_mem_le`, query-log/cache transfer lemmas, and `accepted_not_good_bad` in `Ipp/FsBadEvents.lean`.
   - **Retires:** `assume.ro-dependency-order-union-bound`.

2. **U5a-R2 — adjacent-round candidate-pair bound** — `HARD (sol)` — `NOW`
   - **Deliverable:** Reuse the R1 pair lemma to prove the exact `Accepted ∧ BadRoundOrder` bound over adjacent accepted round slots, replace `round_slot_order_bound`, assemble a premise-free order budget, and update S1/ledger consumers and the final quantitative error.
   - **Dependencies:** U5a-R1 plus the existing transcript-chaining, chronological first-occurrence, and accepted-round-query witnesses.
   - **Retires:** `assume.ro-round-slot-order-union-bound`; after this session `BadEventBudget` has no parametric residual probability fields.

## Critical path and immediate dispatch

The implementation-refinement critical path is
`S2-00 -> S2-01/S2-06/S2-07 -> S2-08/S2-09/S2-11/S2-12/S2-13 ->
S2-14 -> S2-15 -> S2-16 -> S2-18`, followed for the measured verifier hotspot
by `GAP-00/01 -> GAP-02..07 -> GAP-08..11 -> GAP-14` (and
`GAP-12 -> GAP-13` only if batched GT validation is selected). Full discharge
of the arithmetic premises then follows the selected
`S3-F00 -> S3-F01A/F01B -> S3-F02 -> one field branch -> S3-F06`, after which
Curve377 and the extension/Pairing377 paths proceed by their listed dependencies.

Dispatchable `NOW` without MSVC/SDK/hax/Z3 work are `GAP-00`, `GAP-01`,
`S3-F00`, `S3-C01`, `S3-P00`, and `U5a-R1`; after those foundations land,
`GAP-02` through `GAP-07`, `GAP-12`, `S3-C02`, and `U5a-R2` become immediately
dispatchable on the same pure-Lean host.

**Sequencing recommendation:** start `U5a-R1` and the pure GAP/S3 foundations
now, bring up the supported hax host for S2-00 in parallel, finish S2 before
changing verifier orchestration, then close the measured decode/subgroup gap
before funding only the S3 package whose end-to-end A/B gate pays.
