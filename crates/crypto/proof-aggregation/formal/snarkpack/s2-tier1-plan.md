# S2 Tier 1 — executed Rust to Lean model equivalence

Status: design complete; execution is blocked on this machine because hax must
consume a Rust build and the installed Windows environment has neither MSVC
Build Tools nor the Windows SDK. Do not start extraction here.

## Objective and boundary

Translate the proof-relevant orchestration that currently supports
`abstract-trace` rows only by tests and review, then prove that the translated
Rust functions refine the already proved `Ipp` functions. The extracted code is
the implementation side of each theorem; no second handwritten Rust model is
acceptable. Arithmetic operations remain abstract and law-governed in S2.

The extraction boundary exposes a field `F`, additive groups `G1`, `G2`, and
`GT`, scalar multiplication, addition, inversion, equality, MSM, and a bilinear
pairing. Its Lean interpretation is the existing `[Field F]`,
`[AddCommGroup G]`, `[Module F G]`, `Ipp.msm`, and
`e : G1 →ₗ[F] G2 →ₗ[F] GT` model. The translation proof may assume only the
trait laws represented by these typeclasses plus a separately named MSM
conformance premise. It must not assume the result of a function being proved.
Arkworks arithmetic conformance is S3, not part of these theorems.

## Function inventory and target theorems

All slice functions below use a refinement precondition that converts equal,
nonempty, power-of-two Rust slices into `Fin n → _`. `run` means the successful
result of the hax-translated function after discharging its documented
assertions and `Option`/`Result` branches.

### `gipa.rs`

| Rust function | Current Lean model | Equivalence theorem to prove | Rows retired |
| --- | --- | --- | --- |
| `fold_output` | `Ipp.foldCom` (`Ipp/Gipa.lean`) | `translated_fold_output L X R c c⁻¹ = Ipp.foldCom c L X R`, under `c ≠ 0`; also prove the mutation of `current` returns this value | `gipa.verifier-folding` fold equation |
| `GIPA::rescale_fold` and `rescale_fold_profiled` | `Ipp.foldMsg` | for `scaled_half, unscaled_half : Fin n → G`, `translated_rescale_fold scaled_half unscaled_half s = Ipp.foldMsg s (upperLower scaled_half unscaled_half)`; prove both parallel-selection branches have the same result and the profiled wrapper projects it | `gipa.round-folding` rescale equation and sequential/parallel parity |
| `GIPA::_compute_final_commitment_keys` | `Ipp.foldKey`, `Ipp.transcriptCoeffs`, `Ipp.foldKey_transcriptCoeffs` | for `x : Fin μ → F`, nonzero challenges, and keys of length `2^μ`, `run (translated_compute_final_commitment_keys ckA ckB x) = (Ipp.msm (Ipp.transcriptCoeffs (fun j => (x j)⁻¹) 1) ckA, Ipp.msm (Ipp.transcriptCoeffs x 1) ckB)`; separately connect each component to `Ipp.foldKey` with `foldKey_transcriptCoeffs` | remaining `gipa.round-folding` key-exponent formula and `gipa.verifier-folding` key recombination |
| `GIPA::_verify_base_commitment` | `Ipp.LeafData`'s first three equations and `Ipp.AcceptTree.base` | `run (translated_verify_base_commitment ck com proof) = true ↔` the three singleton commitment equations represented by the corresponding `AcceptTree.base`; commitment-trait `verify` is mapped to equality with the bilinear model | terminal part of `gipa.verifier-folding` |

`fold_keys_baseline` and `fold_output_baseline` are bench-only paths. Prove them
equal to the same models if `bench-baseline` is included in the release gate;
they are not a production extraction substitute.

### `tipa/mod.rs`

Rust coefficient vectors interleave a zero after each logical coefficient, so
index `2*i` corresponds to Lean coefficient `i` and index `2*i+1` is zero.

| Rust function | Current Lean model | Equivalence theorem to prove | Rows retired |
| --- | --- | --- | --- |
| `polynomial_coefficients_from_transcript` | `Ipp.transcriptCoeffs` | for `x : Fin μ → F`, `run translated_polynomial_coefficients x rShift` has length `2^(μ+1)-1`, value `transcriptCoeffs x rShift i` at every even index `2*i`, and zero at every in-range odd index | coefficient-construction part of `tipp-mipp.kzg-equations` and `tipp-mipp.power-sequence` |
| `polynomial_evaluation_product_form_from_transcript` | `Ipp.transcript_prod_form_eval` | `translated_polynomial_evaluation x z rShift = ∏ j, (1 + x j * (rShift * z^2)^(2^j)) = ∑ i, transcriptCoeffs x rShift i * (z^2)^i`; the second equality is `transcript_prod_form_eval` | product/evaluation part of `tipp-mipp.kzg-equations` |
| `verify_commitment_key_g2_kzg_opening` | `FsStatement.acceptV` / `KzgStructuredKeyBinding` accept shape | `run translated_verify_g2 srs key opening x rShift z = true ↔ e g (key - eval • h) - e (gβ - z • g) opening = 0`, where `eval` is the Lean product form | G2 accept-shape portion of `tipp-mipp.kzg-equations` |
| `verify_commitment_key_g1_kzg_opening` | `FsStatement.acceptW` / `KzgStructuredKeyBinding` accept shape | `run translated_verify_g1 srs key opening x rShift z = true ↔ e (key - eval • g) h - e opening (hα - z • h) = 0` | G1 accept-shape portion of `tipp-mipp.kzg-equations` |

The two verifier theorems establish the exact pairing equations only. They do
not prove `KzgStructuredKeyBinding`; that remains the named q-SDH-type
cryptographic assumption consumed by `Ipp.kzg_final_keys_structured`.

### `groth16_aggregation.rs` verifier path

Extract the executed chain, not only the leaf helpers:

- `verify_aggregate_proof_with_trace` and
  `verify_aggregate_proof_profiled_with_trace`;
- `verify_combined_checks_profiled` and `verify_tipp_mipp`;
- `fold_output`, `structured_scalar_final_from_raw_transcript`,
  `fold_public_inputs`, and `verify_ppe`;
- `build_shifted_ck_2` and `inverse_powers` where reached;
- calls to the two TIPA KZG verifiers above.

The target statements are:

```text
translated_structured_scalar_final x r
  = Ipp.terminalR r (Ipp.reversedView x)

translated_verify_tipp_mipp input = true
  ↔ Ipp.LeafData stmt proof transcript

translated_fold_public_inputs vk inputs r
  = (∑ i, r^i,
     (∑ i, r^i) • vk.gamma_abc[0]
       + ∑ j, (∑ i, r^i * inputs[i][j]) • vk.gamma_abc[j+1])

translated_verify_ppe pvk proof rSum gIC = true
  ↔ e (rSum • alpha) beta + e gIC gamma + e proof.aggC delta
       = proof.ipAb

translated_verify_aggregate input = true
  ↔ Ipp.FsAccepts stmt proof transcript
```

The final theorem is conditional on the already separate challenge-byte/digest
trace correspondence: hax proves orchestration after the decoded challenges
are fixed, while `Ipp.ChallengeEncoding` proves framing injectivity. It must
also prove that `verify_tipp_mipp` reverses the round list and transcript in the
same places as `Ipp.reversedView`, and that its five `fold_output` accumulators
are exactly `Ipp.terminalFold`.

These proofs retire the review-only portions of `groth16.folded-inputs`,
`groth16.ppe`, `tipp-mipp.gipa`, `tipp-mipp.base-equations`, and the covered
parts of `gipa.round-folding`, `gipa.verifier-folding`,
`tipp-mipp.kzg-equations`, and `tipp-mipp.power-sequence`. They do not retire
`shieldd-byte` rows, hash-as-RO, KZG/pairing commitment binding, or arithmetic
backend conformance.

## Hax workflow

1. On a supported host install MSVC Build Tools plus Windows SDK, or use the
   repository's supported Linux/Nix environment; install the repository-pinned
   Rust toolchain, hax `v0.3.7`, and the Lean `v4.30.0` toolchain.
2. Extend `hax-targets.txt` with every function above and all proof-relevant
   transitive data types/helpers. Never replace an untranslatable executed loop
   with an unrelated formal implementation. A `cfg(hax)` structural traversal
   is permitted only when byte/result parity with the runtime branch is tested
   and recorded.
3. Add one row per target to `hax-extraction-boundary.md`: feature set,
   preconditions, checked arithmetic, control flow, panics, unsafe use, and each
   support shim's semantic postcondition. In particular record power-of-two
   length assertions, nonzero inversions, vector-length equality, iterator
   ordering, `parallel` and `bench-baseline` selection, and pairing failure
   propagation.
4. Extract the smallest closed call graph first: polynomial helpers, folds,
   final keys, KZG equation shapes, terminal fold, then the aggregate verifier.
   Keep generated modules immutable; place refinement theorems in handwritten
   Lean modules importing generated output and `Ipp`.
5. Interpret the extracted arithmetic trait through one adapter module. Prove
   adapter laws once. MSM receives an explicit `translated_msm = Ipp.msm`
   premise until S3; pairing receives bilinearity plus the exact additive-GT
   notation map. Do not introduce provider traits for internal functions.
6. Gate generated-code freshness, target completeness, no unrecorded shim, all
   refinement theorems, `lake build Ipp`, and axiom audits. Update
   `formal-handoff.md` only after the end-to-end verifier theorem is green.

## Go/no-go and estimate

Verdict: **GO on a toolchain-capable host, no-go on this Windows host.** The
functions are pure orchestration with bounded vector traversals and already
have close Lean counterparts. The main translation risks are arkworks trait
associated types, iterator adapters (`zip`, `interleave`, `cycle`), mutable
accumulators, Rayon feature branches, and prepared-pairing types.

Estimated effort for one engineer familiar with hax and Lean:

- extraction closure and semantic adapters: 2–3 weeks;
- folds, coefficients, final keys, and KZG equation shapes: 2–3 weeks;
- combined verifier and public-input/PPE refinement: 3–5 weeks;
- CI hardening and ledger review: 1 week.

Total: **8–12 engineer-weeks**, with a stop/go review after the coefficient and
`rescale_fold` proofs. Stop if either requires an opaque semantic shim for the
function result, or if the extracted aggregate verifier omits an executed
branch. Continue if generated output is stable and the first two equivalence
theorems use only the declared arithmetic adapter laws.
