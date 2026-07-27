import Ipp.Bls12377Subgroups
import Mathlib.Tactic

/-! Scalar facts excluding every exceptional mixed-add branch in the ate schedule. -/

namespace Ipp.Extracted.ArkworksG2PreparedScalar

open Ipp.Bls12377

/-- Scalar represented by the accumulator while `remaining` ate bits remain. -/
def accumulatedScalar (remaining : Nat) : Nat :=
  ateLoopParameter / 2 ^ remaining

/-- Post-double scalars at the six schedule positions whose ate bit is true. -/
def additionDoubledScalars : List Nat :=
  [32, 132, 4256, 68112, 136226, 9586122913090633728]

/-- The concrete true-bit positions and accumulated scalars of BLS12-377. -/
theorem ate_addition_scalar_table :
    (List.range 63).reverse.filterMap (fun position =>
      if ateLoopParameter.testBit position then
        some (position, accumulatedScalar (position + 1),
          2 * accumulatedScalar (position + 1))
      else none) =
      [(58, 16, 32), (56, 66, 132), (51, 2128, 4256),
       (47, 34056, 68112), (46, 68113, 136226),
       (0, 4793061456545316864, 9586122913090633728)] := by
  decide

private theorem doubledScalar_fin :
    ∀ remaining : Fin 64,
      0 < remaining.val →
      ateLoopParameter.testBit (remaining.val - 1) = true →
      2 * accumulatedScalar remaining.val ∈ additionDoubledScalars := by
  decide

private theorem accumulatedScalar_step_fin :
    ∀ remaining : Fin 64,
      0 < remaining.val →
      accumulatedScalar (remaining.val - 1) =
        2 * accumulatedScalar remaining.val +
          if ateLoopParameter.testBit (remaining.val - 1) then 1 else 0 := by
  decide

/-- One countdown step extends the concrete high-bit prefix by its scheduled bit. -/
theorem accumulatedScalar_step {remaining : Nat}
    (hpos : 0 < remaining) (hbound : remaining ≤ 63) :
    accumulatedScalar (remaining - 1) =
      2 * accumulatedScalar remaining +
        if ateLoopParameter.testBit (remaining - 1) then 1 else 0 := by
  exact accumulatedScalar_step_fin ⟨remaining, by omega⟩ hpos

@[simp] theorem accumulatedScalar_initial : accumulatedScalar 63 = 1 := by
  decide

@[simp] theorem accumulatedScalar_final :
    accumulatedScalar 0 = ateLoopParameter := by
  simp [accumulatedScalar]

/-- Any true countdown step selects one of the six certified doubled scalars. -/
theorem doubledScalar_mem {remaining : Nat}
    (hpos : 0 < remaining) (hbound : remaining ≤ 63)
    (hbit : ateLoopParameter.testBit (remaining - 1) = true) :
    2 * accumulatedScalar remaining ∈ additionDoubledScalars := by
  exact doubledScalar_fin ⟨remaining, by omega⟩ hpos hbit

/-- The six scalars are nonzero, nonunit, and their successors remain below `r`. -/
theorem additionDoubledScalars_safe :
    ∀ n ∈ additionDoubledScalars,
      n ≠ 0 ∧ n ≠ 1 ∧ n + 1 < scalarModulus := by
  decide

/-- Equivalently, none of the six scalars is `0`, `1`, or `-1` modulo `r`. -/
theorem additionDoubledScalars_mod_safe :
    ∀ n ∈ additionDoubledScalars,
      n % scalarModulus ≠ 0 ∧
      n % scalarModulus ≠ 1 ∧
      n % scalarModulus ≠ scalarModulus - 1 := by
  decide

/-- A nonzero point killed by the prime scalar modulus has exact order `r`. -/
theorem addOrderOf_eq_scalarModulus {G : Type} [AddCommGroup G]
    {Q : G} (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0) :
    addOrderOf Q = scalarModulus := by
  have hdvd : addOrderOf Q ∣ scalarModulus :=
    addOrderOf_dvd_iff_nsmul_eq_zero.mpr hsub
  rcases scalarModulus_prime.eq_one_or_self_of_dvd _ hdvd with hone | hr
  · exact (hne (AddMonoid.addOrderOf_eq_one_iff.mp hone)).elim
  · exact hr

/-- Scalars strictly between zero and `r` do not kill a nonzero subgroup point. -/
theorem nsmul_ne_zero_of_lt_scalarModulus {G : Type} [AddCommGroup G]
    {Q : G} (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    {n : Nat} (hnpos : 0 < n) (hnlt : n < scalarModulus) :
    n • Q ≠ 0 := by
  intro hz
  have hdvd : scalarModulus ∣ n := by
    rw [← addOrderOf_eq_scalarModulus hsub hne]
    exact addOrderOf_dvd_iff_nsmul_eq_zero.mpr hz
  exact (Nat.not_le_of_gt hnlt) (Nat.le_of_dvd hnpos hdvd)

/-- A certified ate addition scalar represents neither `0`, `Q`, nor `-Q`. -/
theorem additionScalar_generic {G : Type} [AddCommGroup G]
    {Q : G} (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    {n : Nat} (hmem : n ∈ additionDoubledScalars) :
    n • Q ≠ 0 ∧ n • Q ≠ Q ∧ n • Q ≠ -Q := by
  obtain ⟨hn0, hn1, hsucc⟩ := additionDoubledScalars_safe n hmem
  have hnpos : 0 < n := Nat.pos_of_ne_zero hn0
  have hnlt : n < scalarModulus := lt_of_lt_of_le (Nat.lt_succ_self n) hsucc.le
  refine ⟨nsmul_ne_zero_of_lt_scalarModulus hsub hne hnpos hnlt, ?_, ?_⟩
  · intro heq
    have hz : (n - 1) • Q = 0 := by
      have hn : n = (n - 1) + 1 := by omega
      rw [hn, add_nsmul, one_nsmul] at heq
      have hcancel := congrArg (fun value => value - Q) heq
      simpa using hcancel
    have hdvd : scalarModulus ∣ n - 1 := by
      rw [← addOrderOf_eq_scalarModulus hsub hne]
      exact addOrderOf_dvd_iff_nsmul_eq_zero.mpr hz
    have hpredpos : 0 < n - 1 := by omega
    have hpredlt : n - 1 < scalarModulus := by omega
    exact (Nat.not_le_of_gt hpredlt) (Nat.le_of_dvd hpredpos hdvd)
  · intro heq
    have hz : (n + 1) • Q = 0 := by
      rw [add_nsmul, one_nsmul, heq, neg_add_cancel]
    have hdvd : scalarModulus ∣ n + 1 := by
      rw [← addOrderOf_eq_scalarModulus hsub hne]
      exact addOrderOf_dvd_iff_nsmul_eq_zero.mpr hz
    exact (Nat.not_le_of_gt hsucc)
      (Nat.le_of_dvd (by omega) hdvd)

#print axioms ate_addition_scalar_table
#print axioms doubledScalar_mem
#print axioms accumulatedScalar_step
#print axioms additionDoubledScalars_safe
#print axioms additionDoubledScalars_mod_safe
#print axioms addOrderOf_eq_scalarModulus
#print axioms nsmul_ne_zero_of_lt_scalarModulus
#print axioms additionScalar_generic

end Ipp.Extracted.ArkworksG2PreparedScalar
