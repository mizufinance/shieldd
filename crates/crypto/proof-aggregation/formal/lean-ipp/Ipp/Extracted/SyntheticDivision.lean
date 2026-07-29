import Ipp.Extracted.PolynomialCoefficients
import Ipp.Extracted.SyntheticDivisionGenerated
import Mathlib.Algebra.Polynomial.Div
import Mathlib.Algebra.Polynomial.OfFn

/-!
Algebraic target for the extracted `synthetic_division_coefficients` loop.

The production helper returns `n - 1` ascending quotient coefficients and the
KZG caller appends one zero before its full-length MSM. This module models both
vectors and proves the regenerated Aeneas loop returns the unpadded one.
-/

namespace Ipp.Extracted.SyntheticDivision

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open Polynomial
open scoped BigOperators

noncomputable section

variable {F : Type} [Field F]

private def cloneModel (T : Type) : core.clone.Clone T where
  clone value := .ok value

private def addModel (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add left right := .ok (left + right)

private def mulModel (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul left right := .ok (left * right)

private def finSlice {T : Type} {n : Nat}
    (values : Fin n → T) : Slice T :=
  ⟨List.ofFn values⟩

private def finVec {T : Type} {n : Nat}
    (values : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn values⟩

/-- A finite coefficient vector interpreted in ascending degree order. -/
def coefficientPolynomial {n : Nat} (coefficients : Fin n → F) : F[X] :=
  ∑ i : Fin n, C (coefficients i) * X ^ (i : Nat)

theorem coefficientPolynomial_eq_ofFn {n : Nat}
    (coefficients : Fin n → F) [DecidableEq F] :
    coefficientPolynomial coefficients = Polynomial.ofFn n coefficients := by
  classical
  rw [Polynomial.ofFn_eq_sum_monomial]
  simp only [coefficientPolynomial, C_mul_X_pow_eq_monomial]

theorem coefficientPolynomial_natDegree_lt {n : Nat}
    (coefficients : Fin n → F) (hn : 0 < n) :
    (coefficientPolynomial coefficients).natDegree < n := by
  classical
  rw [coefficientPolynomial_eq_ofFn]
  exact Polynomial.ofFn_natDegree_lt (by omega) coefficients

/-- The mathematical coefficient vector that the reverse synthetic loop must
return before the caller's final zero padding. -/
def quotientCoefficients {n : Nat}
    (coefficients : Fin n → F) (z : F) : Fin (n - 1) → F :=
  fun i =>
    (coefficientPolynomial coefficients /ₘ (X - C z)).coeff (i : Nat)

/-- Recurrence implemented by one iteration of the production reverse loop.
The Rust update writes `coefficient + accumulator * point`; commutativity
accounts for the multiplication order in Mathlib's theorem. -/
theorem quotient_coeff_rec {n : Nat}
    (coefficients : Fin n → F) (z : F) (i : Nat) :
    (coefficientPolynomial coefficients /ₘ (X - C z)).coeff i =
      (coefficientPolynomial coefficients).coeff (i + 1) +
        (coefficientPolynomial coefficients /ₘ (X - C z)).coeff (i + 1) * z := by
  simpa [mul_comm] using
    Polynomial.coeff_divByMonic_X_sub_C_rec
      (coefficientPolynomial coefficients) z i

/-- Every quotient coefficient at or above `n - 1` is zero. This supplies the
initial reverse-loop invariant: the first accumulator is the input's leading
coefficient because the next quotient coefficient vanishes. -/
theorem quotient_coeff_eq_zero_of_length_le {n : Nat}
    (coefficients : Fin n → F) (z : F) (i : Nat)
    (hi : n - 1 ≤ i) :
    (coefficientPolynomial coefficients /ₘ (X - C z)).coeff i = 0 := by
  rw [Polynomial.coeff_divByMonic_X_sub_C]
  have hdegree :
      (coefficientPolynomial coefficients).natDegree < i + 1 := by
    by_cases hn : n = 0
    · subst n
      simp [coefficientPolynomial]
    · have hpoly :=
        coefficientPolynomial_natDegree_lt coefficients (Nat.pos_of_ne_zero hn)
      omega
  rw [Finset.Icc_eq_empty (by omega), Finset.sum_empty]

private def quotientAt {n : Nat}
    (coefficients : Fin n → F) (z : F) (i : Nat) : F :=
  (coefficientPolynomial coefficients /ₘ (X - C z)).coeff i

private def descendingFrom {n : Nat}
    (coefficients : Fin n → F) (z : F) : Nat → List F
  | 0 => []
  | i + 1 => quotientAt coefficients z i ::
      descendingFrom coefficients z i

private theorem descendingFrom_reverse {n : Nat}
    (coefficients : Fin n → F) (z : F) (m : Nat) :
    (descendingFrom coefficients z m).reverse =
      List.ofFn (fun i : Fin m => quotientAt coefficients z i) := by
  induction m with
  | zero => rfl
  | succ m ih =>
      rw [descendingFrom, List.reverse_cons, ih]
      simpa [List.concat_eq_append] using
        (List.ofFn_succ'
          (fun i : Fin (Nat.succ m) =>
            quotientAt coefficients z (i : Nat))).symm

theorem coefficientPolynomial_coeff_of_lt {n : Nat}
    (coefficients : Fin n → F) (i : Nat) (hi : i < n) :
    (coefficientPolynomial coefficients).coeff i =
      coefficients ⟨i, hi⟩ := by
  classical
  rw [coefficientPolynomial_eq_ofFn,
    Polynomial.ofFn_coeff_eq_val_of_lt _ hi]

private def syntheticBody {n : Nat}
    (coefficients : Fin n → F) (z : F) :
    (alloc.vec.Vec F × Usize × F) →
      Result (ControlFlow
        (alloc.vec.Vec F × Usize × F)
        (alloc.vec.Vec F)) :=
  fun (descending, index, accumulator) =>
    ark_ip_proofs.tipa.synthetic_division_coefficients_loop.body
      (cloneModel F) (addModel F) (mulModel F)
      (finSlice coefficients) z descending index accumulator

private theorem syntheticFuel {n : Nat}
    (coefficients : Fin n → F) (z : F)
    (index : Nat) (hindex : 0 < index) (hbound : index < n)
    (descending : List F) :
    loopFuel (syntheticBody coefficients z) index
      (⟨descending⟩, ⟨index⟩,
        quotientAt coefficients z (index - 1)) =
      .ok ⟨descending ++
        descendingFrom coefficients z (index - 1)⟩ := by
  induction index generalizing descending with
  | zero => omega
  | succ index ih =>
      cases index with
      | zero =>
          rw [loopFuel]
          simp [syntheticBody,
            ark_ip_proofs.tipa.synthetic_division_coefficients_loop.body,
            descendingFrom]
      | succ index =>
          have hcoefficient : index + 1 < n := by omega
          rw [loopFuel]
          simp only [syntheticBody,
            ark_ip_proofs.tipa.synthetic_division_coefficients_loop.body,
            Usize.ofNat]
          have hgt : (index + 1 + 1 : Nat) > 1 := by omega
          simp only [Aeneas.Std.Usize.lt_iff_val_lt, hgt, ↓reduceIte,
            Result.bind_ok]
          rw [Aeneas.Std.MacCampaign.sub_eq
            (⟨index + 1 + 1⟩ : Usize) (⟨1⟩ : Usize) (by simp)]
          simp only [Result.bind_ok]
          have hindexPred : index + 1 + 1 - 1 = index + 1 := by omega
          simp only [hindexPred, Aeneas.Std.Slice.index_usize]
          rw [show
            (finSlice coefficients).val[index + 1]? =
              some (coefficients ⟨index + 1, hcoefficient⟩) by
                simp [finSlice, hcoefficient]]
          simp only [cloneModel, mulModel, addModel, Result.bind_ok,
            alloc.vec.Vec.push, Nat.add_sub_cancel]
          have hrec :
              coefficients ⟨index + 1, hcoefficient⟩ +
                  quotientAt coefficients z (index + 1) * z =
                quotientAt coefficients z index := by
            rw [← coefficientPolynomial_coeff_of_lt coefficients
              (index + 1) hcoefficient]
            exact (quotient_coeff_rec coefficients z index).symm
          rw [hrec]
          have hrun := ih (by omega) (by omega)
            (descending := descending ++
              [quotientAt coefficients z index])
          simpa [descendingFrom, List.append_assoc] using hrun

private theorem syntheticLoop {n : Nat}
    (coefficients : Fin n → F) (z : F)
    (index : Nat) (hindex : 0 < index) (hbound : index < n)
    (descending : List F) :
    ark_ip_proofs.tipa.synthetic_division_coefficients_loop
        (cloneModel F) (addModel F) (mulModel F)
        (finSlice coefficients) z ⟨descending⟩ ⟨index⟩
        (quotientAt coefficients z (index - 1)) =
      .ok ⟨descending ++
        descendingFrom coefficients z (index - 1)⟩ := by
  unfold ark_ip_proofs.tipa.synthetic_division_coefficients_loop
  apply loop_eq_of_fuel (fuel := index) (by simp)
  exact syntheticFuel coefficients z index hindex hbound descending

private theorem initial_quotient_coefficient {n : Nat}
    (coefficients : Fin n → F) (z : F) (hn : 1 < n) :
    quotientAt coefficients z (n - 2) =
      coefficients ⟨n - 1, by omega⟩ := by
  rw [quotientAt, quotient_coeff_rec coefficients z (n - 2)]
  have hindex : n - 2 + 1 = n - 1 := by omega
  rw [hindex, coefficientPolynomial_coeff_of_lt coefficients
    (n - 1) (by omega)]
  rw [quotient_coeff_eq_zero_of_length_le coefficients z
    (n - 1) (by omega)]
  simp

/-- The regenerated Aeneas function returns exactly the unpadded ascending
coefficients of `P /ₘ (X-C z)`. -/
theorem synthetic_division_coefficients_exact {n : Nat}
    (coefficients : Fin n → F) (z : F) :
    ark_ip_proofs.tipa.synthetic_division_coefficients
        (cloneModel F) (addModel F) (mulModel F)
        (finSlice coefficients) z =
      .ok (finVec (quotientCoefficients coefficients z)) := by
  by_cases hn : n ≤ 1
  · by_cases hn0 : n = 0
    · subst n
      simp [ark_ip_proofs.tipa.synthetic_division_coefficients,
        finSlice, finVec, Aeneas.Std.Slice.len,
        Aeneas.Std.Usize.le_iff_val_le, Aeneas.Std.Usize.ofNat,
        ark_ip_proofs.alloc.vec.Vec.new]
    · have hn1 : n = 1 := by omega
      subst n
      simp [ark_ip_proofs.tipa.synthetic_division_coefficients,
        finSlice, finVec, Aeneas.Std.Slice.len,
        Aeneas.Std.Usize.le_iff_val_le, Aeneas.Std.Usize.ofNat,
        ark_ip_proofs.alloc.vec.Vec.new]
  · have hn' : 1 < n := by omega
    unfold ark_ip_proofs.tipa.synthetic_division_coefficients
    simp [finSlice, Aeneas.Std.Slice.len,
      Aeneas.Std.Usize.le_iff_val_le, Aeneas.Std.Usize.ofNat, hn]
    have hsub :
        ((⟨n⟩ : Usize) - (⟨1⟩ : Usize) : Result Usize) =
          .ok ⟨n - 1⟩ :=
      Aeneas.Std.MacCampaign.sub_eq _ _ (by simp; omega)
    rw [hsub]
    simp only [Result.bind_ok]
    have hlast : n - 1 < n := by omega
    have hget :
        (List.ofFn coefficients)[n - 1]? =
          some (coefficients ⟨n - 1, hlast⟩) := by
      simp [hlast]
    simp only [Aeneas.Std.Slice.index_usize]
    rw [hget]
    simp only [Result.bind_ok, cloneModel,
      Aeneas.Std.alloc.vec.Vec.with_capacity,
      Aeneas.Std.alloc.vec.Vec.push]
    rw [← initial_quotient_coefficient coefficients z hn']
    have hloop := syntheticLoop coefficients z (n - 1)
      (by omega) (by omega)
      [quotientAt coefficients z (n - 2)]
    have hpred : n - 1 - 1 = n - 2 := by omega
    rw [hpred] at hloop
    simp only [List.nil_append]
    have hloop' := hloop
    simp only [cloneModel, finSlice] at hloop'
    rw [hloop']
    simp only [Result.bind_ok,
      ark_ip_proofs.alloc.vec.Vec.deref_mut,
      ark_ip_proofs.core.slice.Slice.reverse, lift]
    rw [show
      [quotientAt coefficients z (n - 2)] ++
          descendingFrom coefficients z (n - 2) =
        descendingFrom coefficients z (n - 1) by
          rw [show n - 1 = (n - 2) + 1 by omega]
          simp [descendingFrom]]
    rw [descendingFrom_reverse]
    rfl

/-- The unpadded vector reconstructs the exact monic quotient polynomial. -/
theorem coefficientPolynomial_quotientCoefficients {n : Nat}
    (coefficients : Fin n → F) (z : F) :
    coefficientPolynomial (quotientCoefficients coefficients z) =
      coefficientPolynomial coefficients /ₘ (X - C z) := by
  classical
  conv_lhs => rw [coefficientPolynomial_eq_ofFn]
  apply Polynomial.ext
  intro i
  by_cases hi : i < n - 1
  · rw [Polynomial.ofFn_coeff_eq_val_of_lt _ hi]
    rfl
  · rw [Polynomial.ofFn_coeff_eq_zero_of_ge _
      (Nat.le_of_not_gt hi)]
    exact (quotient_coeff_eq_zero_of_length_le coefficients z i
      (Nat.le_of_not_gt hi)).symm

/-- Vector passed to the opening MSM after production resizes the `n - 1`
synthetic result to the original SRS length. -/
def paddedQuotientCoefficients {n : Nat}
    (coefficients : Fin n → F) (z : F) : Fin n → F :=
  fun i =>
    if h : (i : Nat) < n - 1
    then quotientCoefficients coefficients z ⟨i, h⟩
    else 0

theorem coefficientPolynomial_paddedQuotientCoefficients {n : Nat}
    (coefficients : Fin n → F) (z : F) :
    coefficientPolynomial (paddedQuotientCoefficients coefficients z) =
      coefficientPolynomial coefficients /ₘ (X - C z) := by
  rw [← coefficientPolynomial_quotientCoefficients coefficients z]
  classical
  conv_lhs => rw [coefficientPolynomial_eq_ofFn]
  conv_rhs => rw [coefficientPolynomial_eq_ofFn]
  apply Polynomial.ext
  intro i
  by_cases hsmall : i < n - 1
  · have hfull : i < n := by omega
    rw [Polynomial.ofFn_coeff_eq_val_of_lt _ hfull,
      Polynomial.ofFn_coeff_eq_val_of_lt _ hsmall]
    simp [paddedQuotientCoefficients, hsmall]
  · have hshort : n - 1 ≤ i := Nat.le_of_not_gt hsmall
    by_cases hfull : i < n
    · rw [Polynomial.ofFn_coeff_eq_val_of_lt _ hfull,
        Polynomial.ofFn_coeff_eq_zero_of_ge _ hshort]
      simp [paddedQuotientCoefficients, hsmall]
    · have houtside : n ≤ i := Nat.le_of_not_gt hfull
      rw [Polynomial.ofFn_coeff_eq_zero_of_ge _ houtside,
        Polynomial.ofFn_coeff_eq_zero_of_ge _ hshort]

/-- Convenient extraction target: entrywise agreement with the padded
coefficient model is enough to obtain the exact quotient equation. -/
theorem output_mapping_exact {n : Nat}
    (coefficients output : Fin n → F) (z : F)
    (houtput :
      output = paddedQuotientCoefficients coefficients z) :
    coefficientPolynomial output =
      coefficientPolynomial coefficients /ₘ (X - C z) := by
  rw [houtput, coefficientPolynomial_paddedQuotientCoefficients]

/-- Extracted-loop result and the exact quotient polynomial, packaged for the
shipping KZG contract. -/
theorem extracted_output_mapping_exact {n : Nat}
    (coefficients : Fin n → F) (z : F) :
    ∃ output : Fin (n - 1) → F,
      ark_ip_proofs.tipa.synthetic_division_coefficients
          (cloneModel F) (addModel F) (mulModel F)
          (finSlice coefficients) z =
        .ok (finVec output) ∧
      coefficientPolynomial output =
        coefficientPolynomial coefficients /ₘ (X - C z) := by
  refine ⟨quotientCoefficients coefficients z,
    synthetic_division_coefficients_exact coefficients z, ?_⟩
  exact coefficientPolynomial_quotientCoefficients coefficients z

#print axioms extracted_output_mapping_exact

end

end Ipp.Extracted.SyntheticDivision
