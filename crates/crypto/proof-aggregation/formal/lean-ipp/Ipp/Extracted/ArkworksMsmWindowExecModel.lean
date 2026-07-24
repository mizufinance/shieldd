import Ipp.Extracted.ArkworksMsmModel

/-! Generic list/function bridge for executed reverse bucket folding. -/

namespace Ipp.Extracted.ArkworksMsm

open scoped BigOperators

variable {G : Type} [AddCommGroup G]

/-- The reverse-fold list weight agrees with the function-indexed bucket weight. -/
theorem weightedBucketList_ofFn {bucketCount : Nat}
    (buckets : Buckets (G := G) bucketCount) :
    weightedBucketList (List.ofFn buckets) = weightedBucketSum buckets := by
  induction bucketCount with
  | zero =>
      simp [weightedBucketList, weightedBucketSum]
  | succ count ih =>
      rw [List.ofFn_succ, weightedBucketList]
      rw [ih (fun index => buckets index.succ)]
      simp only [weightedBucketSum, Fin.sum_univ_succ, Fin.val_zero,
        zero_add, one_nsmul, Fin.val_succ, List.sum_ofFn]
      rw [add_assoc, ← Finset.sum_add_distrib]
      congr 1
      apply Finset.sum_congr rfl
      intro index _
      conv_lhs => rhs
                  rw [← one_nsmul (buckets index.succ)]
      rw [← add_nsmul]

/-- A zero-initialized reverse fold returns the generic one-window value. -/
theorem reverseRunningFold_oneWindow {bucketCount : Nat}
    (pairs : List (WnafDigit × G))
    (hbound : ∀ pair ∈ pairs, pair.1.magnitude.val ≤ bucketCount) :
    (reverseRunningFold
      (List.ofFn (processBuckets pairs
        (fun _ => 0 : Buckets (G := G) bucketCount)))).2 =
      (pairs.map (fun pair => pair.1.value • pair.2)).sum := by
  rw [reverseRunningFold_spec]
  exact (weightedBucketList_ofFn
    (processBuckets pairs
      (fun _ => 0 : Buckets (G := G) bucketCount))).trans
    (oneWindow_value pairs hbound)

#print axioms weightedBucketList_ofFn
#print axioms reverseRunningFold_oneWindow

end Ipp.Extracted.ArkworksMsm
