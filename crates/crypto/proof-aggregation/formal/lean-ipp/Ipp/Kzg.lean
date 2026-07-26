/-
U3: KZG polynomial-commitment opening soundness for the final-round commitment
checks (v/w openings) of the combined TIPP/MIPP argument.

The mechanized content is the transcript-polynomial algebra: the product-form
identity `∏_j (1 + c_j·X^{2^j}) = ∑_i coeff_i · X^i` whose coefficient `i` is the
product of the (shift-adjusted) challenges at the set bits of `i`. This mirrors
`polynomial_coefficients_from_transcript` /
`polynomial_evaluation_product_form_from_transcript` in
`crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/tipa/mod.rs`. The binding
step itself (an accepted pairing check pins the final key to the honest
structured evaluation) is the named `Ipp.KzgStructuredKeyBinding` hypothesis, not
proved here.

Rust product form (tipa/mod.rs, `polynomial_evaluation_product_form_from_transcript`):
`∏_j (1 + x_j · (z²·r)^{2^j})`, with coefficients (interleaved into X², so the
polynomial variable is z²) `coeff_i = ∏_{j∈bits i} (x_j · r^{2^j}) = r^i · ∏ x_j`
(`polynomial_coefficients_from_transcript`). The `v` side is opened with the raw
transcript and shift `1`; the `w` side with the inverse transcript and shift
`r⁻¹` (groth16_aggregation.rs verifier).

Spec: `ripp-spec.md` §Combined TIPP/MIPP, rows `tipp-mipp.kzg-equations`,
`tipp-mipp.power-sequence`, `gipa.round-folding`.
-/
import Ipp.Algebra
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Nat.Bitwise

namespace Ipp

open scoped BigOperators
open Polynomial

variable {F : Type*} [Field F]

/-- Coefficient `i` of the transcript polynomial: product of the challenges at
    the set bits of `i` over a `range μ` index (the µ-independent carrier used
    for the induction). Mirrors `polynomial_coefficients_from_transcript`. -/
private def bitProdN (a : ℕ → F) (μ i : ℕ) : F :=
  ∏ j ∈ Finset.range μ, if i.testBit j then a j else 1

private lemma bitProdN_succ_lt (a : ℕ → F) {μ i : ℕ} (hi : i < 2 ^ μ) :
    bitProdN a (μ + 1) i = bitProdN a μ i := by
  have hlast : (if i.testBit μ then a μ else 1) = 1 := by
    rw [Nat.testBit_lt_two_pow hi]; rfl
  unfold bitProdN
  rw [Finset.prod_range_succ, hlast, mul_one]

private lemma bitProdN_succ_add (a : ℕ → F) {μ i : ℕ} (hi : i < 2 ^ μ) :
    bitProdN a (μ + 1) (2 ^ μ + i) = bitProdN a μ i * a μ := by
  have hlast : (if (2 ^ μ + i).testBit μ then a μ else 1) = a μ := by
    rw [Nat.testBit_two_pow_add_eq, Nat.testBit_lt_two_pow hi]; rfl
  unfold bitProdN
  rw [Finset.prod_range_succ, hlast]
  congr 1
  refine Finset.prod_congr rfl (fun j hj => ?_)
  rw [Nat.testBit_two_pow_add_gt (Finset.mem_range.mp hj) i]

/-- Product-form identity as a `Polynomial F` equation, µ-independent carrier.
    Proved by induction on `μ` via the binary carry split of `range (2^{μ+1})`.
    Spec `tipp-mipp.kzg-equations`. -/
private theorem genPolyIdentity (a : ℕ → F) (μ : ℕ) :
    (∏ j ∈ Finset.range μ, (1 + C (a j) * X ^ (2 ^ j)))
      = ∑ i ∈ Finset.range (2 ^ μ), C (bitProdN a μ i) * X ^ i := by
  induction μ with
  | zero => simp [bitProdN]
  | succ μ ih =>
    have hpow : 2 ^ (μ + 1) = 2 ^ μ + 2 ^ μ := by rw [pow_succ, Nat.mul_two]
    rw [Finset.prod_range_succ, ih, hpow, Finset.sum_range_add]
    have hA : (∑ i ∈ Finset.range (2 ^ μ), C (bitProdN a (μ + 1) i) * X ^ i)
              = ∑ i ∈ Finset.range (2 ^ μ), C (bitProdN a μ i) * X ^ i := by
      refine Finset.sum_congr rfl (fun i hi => ?_)
      rw [bitProdN_succ_lt a (Finset.mem_range.mp hi)]
    have hB : (∑ i ∈ Finset.range (2 ^ μ), C (bitProdN a (μ + 1) (2 ^ μ + i)) * X ^ (2 ^ μ + i))
              = (C (a μ) * X ^ (2 ^ μ)) * ∑ i ∈ Finset.range (2 ^ μ), C (bitProdN a μ i) * X ^ i := by
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl (fun i hi => ?_)
      rw [bitProdN_succ_add a (Finset.mem_range.mp hi), map_mul, pow_add]
      ring
    rw [hA, hB]; ring

/-- Transcript coefficients from `μ` challenges (`Fin μ → F`, chronological order
    matching the Rust `transcript` argument) and a shift `rShift`: coefficient
    `i` is the product over the set bits `j` of `i` of `x_j · rShift^{2^j}`.
    Matches `polynomial_coefficients_from_transcript` (tipa/mod.rs). For the `v`
    side `rShift = 1`; for the `w` side `rShift = r⁻¹` with `x` the inverse
    transcript. Spec `tipp-mipp.power-sequence`. -/
def transcriptCoeffs {μ : ℕ} (x : Fin μ → F) (rShift : F) (i : Fin (2 ^ μ)) : F :=
  ∏ j : Fin μ, if (i : ℕ).testBit (j : ℕ) then x j * rShift ^ (2 ^ (j : ℕ)) else 1

/-- The shift-adjusted challenge `x_j · rShift^{2^j}` extended to `ℕ` (junk `0`
    past `μ`, never evaluated inside `bitProdN μ`). -/
private def adjChallenge {μ : ℕ} (x : Fin μ → F) (rShift : F) (j : ℕ) : F :=
  (if h : j < μ then x ⟨j, h⟩ else 0) * rShift ^ (2 ^ j)

private lemma adjChallenge_coe {μ : ℕ} (x : Fin μ → F) (rShift : F) (j : Fin μ) :
    adjChallenge x rShift (j : ℕ) = x j * rShift ^ (2 ^ (j : ℕ)) := by
  rw [adjChallenge, dif_pos j.isLt]

private lemma transcriptCoeffs_eq {μ : ℕ} (x : Fin μ → F) (rShift : F) (i : Fin (2 ^ μ)) :
    transcriptCoeffs x rShift i = bitProdN (adjChallenge x rShift) μ (i : ℕ) := by
  unfold transcriptCoeffs bitProdN
  rw [← Fin.prod_univ_eq_prod_range
    (fun j => if (i : ℕ).testBit j then adjChallenge x rShift j else 1)]
  refine Finset.prod_congr rfl (fun j _ => ?_)
  rw [adjChallenge_coe]

/-- Product-form identity in `Polynomial F`, indexed by the transcript
    challenges (`Fin μ`): the structured factor product equals the coefficient
    expansion with `transcriptCoeffs`. This is `∏_j (1 + x_j·rShift^{2^j}·X^{2^j})`;
    instantiating the evaluation at `z := z₀²` recovers the Rust product-form base
    `rShift·z₀²`. Spec `tipp-mipp.kzg-equations`, `tipp-mipp.power-sequence`. -/
theorem transcript_prod_form {μ : ℕ} (x : Fin μ → F) (rShift : F) :
    (∏ j : Fin μ, (1 + C (x j * rShift ^ (2 ^ (j : ℕ))) * X ^ (2 ^ (j : ℕ))))
      = ∑ i : Fin (2 ^ μ), C (transcriptCoeffs x rShift i) * X ^ (i : ℕ) := by
  have hlhs : (∏ j : Fin μ, (1 + C (x j * rShift ^ (2 ^ (j : ℕ))) * X ^ (2 ^ (j : ℕ))))
            = ∏ j ∈ Finset.range μ, (1 + C (adjChallenge x rShift j) * X ^ (2 ^ j)) := by
    rw [← Fin.prod_univ_eq_prod_range
      (fun j => 1 + C (adjChallenge x rShift j) * X ^ (2 ^ j))]
    refine Finset.prod_congr rfl (fun j _ => ?_)
    rw [adjChallenge_coe]
  have hrhs : (∑ i : Fin (2 ^ μ), C (transcriptCoeffs x rShift i) * X ^ (i : ℕ))
            = ∑ i ∈ Finset.range (2 ^ μ), C (bitProdN (adjChallenge x rShift) μ i) * X ^ i := by
    rw [← Fin.sum_univ_eq_sum_range
      (fun i => C (bitProdN (adjChallenge x rShift) μ i) * X ^ i)]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [transcriptCoeffs_eq]
  rw [hlhs, hrhs, genPolyIdentity]

/-- Evaluation corollary at a point `z`: matches
    `polynomial_evaluation_product_form_from_transcript` under `z := z₀²`. -/
theorem transcript_prod_form_eval {μ : ℕ} (x : Fin μ → F) (rShift z : F) :
    (∏ j : Fin μ, (1 + (x j * rShift ^ (2 ^ (j : ℕ))) * z ^ (2 ^ (j : ℕ))))
      = ∑ i : Fin (2 ^ μ), transcriptCoeffs x rShift i * z ^ (i : ℕ) := by
  have h := congrArg (fun p : F[X] => p.eval z) (transcript_prod_form x rShift)
  simpa only [eval_prod, eval_finsetSum, eval_add, eval_one, eval_mul, eval_C,
    eval_pow, eval_X] using h

variable {G1 G2 : Type*}
variable [AddCommGroup G1] [Module F G1]
variable [AddCommGroup G2] [Module F G2]

/-- U3 (single side): an accepted KZG opening pins the final commitment key to
    the honest structured MSM of the SRS with the transcript coefficients.
    `accept` is the abstract pairing check (`verify_commitment_key_g{1,2}_kzg_opening`);
    `hbind` is the named q-SDH-type binding. Spec `tipp-mipp.kzg-equations`,
    `gipa.round-folding`. -/
theorem kzg_final_key_structured {μ : ℕ} {G : Type*} [AddCommGroup G] [Module F G]
    (srs : Fin (2 ^ μ) → G) (accept : F → (Fin (2 ^ μ) → F) → G → G → Prop)
    (z : F) (x : Fin μ → F) (rShift : F) (key opening : G)
    (hbind : KzgStructuredKeyBinding srs accept)
    (hacc : accept z (transcriptCoeffs x rShift) key opening) :
    key = msm (transcriptCoeffs x rShift) srs :=
  hbind z _ _ _ hacc

/-- U3 capstone (exact shape U4 consumes): the combined verifier's two accepted
    openings pin both final keys to the honest structured MSMs. `v` is opened on
    the raw transcript `xV` at shift `rShiftV` (concretely `1`, group `G2`); `w`
    on the inverse transcript `xW` at shift `rShiftW` (concretely `r⁻¹`, group
    `G1`). Spec `tipp-mipp.kzg-equations`, `tipp-mipp.power-sequence`,
    `gipa.round-folding`. -/
theorem kzg_final_keys_structured {μ : ℕ}
    (srsV : Fin (2 ^ μ) → G2) (srsW : Fin (2 ^ μ) → G1)
    (acceptV : F → (Fin (2 ^ μ) → F) → G2 → G2 → Prop)
    (acceptW : F → (Fin (2 ^ μ) → F) → G1 → G1 → Prop)
    (z : F) (xV xW : Fin μ → F) (rShiftV rShiftW : F)
    (vFinal vOpening : G2) (wFinal wOpening : G1)
    (hbindV : KzgStructuredKeyBinding srsV acceptV)
    (hbindW : KzgStructuredKeyBinding srsW acceptW)
    (haccV : acceptV z (transcriptCoeffs xV rShiftV) vFinal vOpening)
    (haccW : acceptW z (transcriptCoeffs xW rShiftW) wFinal wOpening) :
    vFinal = msm (transcriptCoeffs xV rShiftV) srsV ∧
    wFinal = msm (transcriptCoeffs xW rShiftW) srsW :=
  ⟨hbindV z _ _ _ haccV, hbindW z _ _ _ haccW⟩

end Ipp
