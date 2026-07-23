import Ipp.Extracted.ArkworksMsmGenerated
import Mathlib.Tactic

/-!
Pure signed-digit and bucket semantics for the extracted window MSM.
The bucket layer is generic over an additive commutative group.
-/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std
open scoped BigOperators

abbrev WnafDigit := ark_ip_proofs.s3_07_arkworks_fq_spike.WnafDigit

namespace WnafDigit

/-- Signed integer denoted by the extracted sign-magnitude digit. -/
def value (digit : WnafDigit) : Int :=
  if digit.negative then -Int.ofNat digit.magnitude.val
  else Int.ofNat digit.magnitude.val

/-- Zero has the unique nonnegative sign representation. -/
def Canonical (digit : WnafDigit) : Prop :=
  digit.magnitude.val = 0 → digit.negative = false

@[simp]
theorem value_of_not_negative (digit : WnafDigit)
    (hnegative : digit.negative = false) :
    digit.value = Int.ofNat digit.magnitude.val := by
  simp [value, hnegative]

@[simp]
theorem value_of_negative (digit : WnafDigit)
    (hnegative : digit.negative = true) :
    digit.value = -Int.ofNat digit.magnitude.val := by
  simp [value, hnegative]

@[simp]
theorem value_of_magnitude_zero (digit : WnafDigit)
    (hmagnitude : digit.magnitude.val = 0) :
    digit.value = 0 := by
  simp [value, hmagnitude]

theorem not_negative_of_magnitude_zero (digit : WnafDigit)
    (hcanonical : digit.Canonical) (hmagnitude : digit.magnitude.val = 0) :
    digit.negative = false :=
  hcanonical hmagnitude

theorem bucket_index_lt {bucketCount : Nat} (digit : WnafDigit)
    (hnonzero : digit.magnitude.val ≠ 0)
    (hbound : digit.magnitude.val ≤ bucketCount) :
    digit.magnitude.val - 1 < bucketCount := by
  omega

end WnafDigit

section Buckets

variable {G : Type} [AddCommGroup G]

abbrev Buckets (bucketCount : Nat) := Fin bucketCount → G

/-- The base contribution selected by a sign-magnitude digit. -/
def signedBase (digit : WnafDigit) (base : G) : G :=
  if digit.negative then -base else base

/-- Contribution of one point to one numbered bucket. -/
def bucketContribution (digit : WnafDigit) (base : G)
    {bucketCount : Nat} (bucket : Fin bucketCount) : G :=
  if digit.magnitude.val = bucket.val + 1 then signedBase digit base else 0

/-- One bounded bucket update. Out-of-range inputs are rejected by doing nothing. -/
def updateBucket {bucketCount : Nat} (buckets : Buckets (G := G) bucketCount)
    (digit : WnafDigit) (base : G) : Buckets (G := G) bucketCount :=
  if hzero : digit.magnitude.val = 0 then buckets
  else if hbound : digit.magnitude.val ≤ bucketCount then
    let bucket : Fin bucketCount :=
      ⟨digit.magnitude.val - 1, WnafDigit.bucket_index_lt digit hzero hbound⟩
    Function.update buckets bucket (buckets bucket + signedBase digit base)
  else buckets

theorem updateBucket_apply {bucketCount : Nat}
    (buckets : Buckets (G := G) bucketCount) (digit : WnafDigit) (base : G)
    (hbound : digit.magnitude.val ≤ bucketCount) (bucket : Fin bucketCount) :
    updateBucket buckets digit base bucket =
      buckets bucket + bucketContribution digit base bucket := by
  by_cases hzero : digit.magnitude.val = 0
  · rw [updateBucket, dif_pos hzero]
    simp [bucketContribution, hzero]
  · rw [updateBucket, dif_neg hzero, dif_pos hbound]
    let selected : Fin bucketCount :=
      ⟨digit.magnitude.val - 1,
        WnafDigit.bucket_index_lt digit hzero hbound⟩
    change Function.update buckets selected
        (buckets selected + signedBase digit base) bucket =
      buckets bucket + bucketContribution digit base bucket
    by_cases hselected : selected = bucket
    · subst bucket
      have hmagnitude :
          digit.magnitude.val = selected.val + 1 := by
        dsimp [selected]
        omega
      simp [bucketContribution, hmagnitude]
    · have hmagnitude :
          digit.magnitude.val ≠ bucket.val + 1 := by
        intro heq
        apply hselected
        apply Fin.ext
        dsimp [selected]
        omega
      have hreverse : bucket ≠ selected := Ne.symm hselected
      simp [Function.update, hreverse, bucketContribution, hmagnitude]

/-- Sequential point processing, kept independent of any curve representation. -/
def processBuckets {bucketCount : Nat} :
    List (WnafDigit × G) → Buckets (G := G) bucketCount →
      Buckets (G := G) bucketCount
  | [], buckets => buckets
  | (digit, base) :: rest, buckets =>
      processBuckets rest (updateBucket buckets digit base)

/-- Bucket-prefix invariant after processing an arbitrary point prefix. -/
theorem processBuckets_apply {bucketCount : Nat}
    (pairs : List (WnafDigit × G))
    (buckets : Buckets (G := G) bucketCount)
    (hbound : ∀ pair ∈ pairs, pair.1.magnitude.val ≤ bucketCount)
    (bucket : Fin bucketCount) :
    processBuckets pairs buckets bucket =
      buckets bucket +
        (pairs.map (fun pair =>
          bucketContribution pair.1 pair.2 bucket)).sum := by
  induction pairs generalizing buckets with
  | nil => simp [processBuckets]
  | cons pair rest ih =>
      rcases pair with ⟨digit, base⟩
      have hhead : digit.magnitude.val ≤ bucketCount :=
        hbound (digit, base) (by simp)
      have hrest : ∀ pair ∈ rest, pair.1.magnitude.val ≤ bucketCount := by
        intro pair hpair
        exact hbound pair (by simp [hpair])
      rw [processBuckets, ih (updateBucket buckets digit base) hrest]
      rw [updateBucket_apply buckets digit base hhead bucket]
      simp only [List.map_cons, List.sum_cons]
      abel

/-- Weighted bucket sum computed by the reverse running-sum schedule. -/
def weightedBucketSum {bucketCount : Nat}
    (buckets : Buckets (G := G) bucketCount) : G :=
  ∑ bucket : Fin bucketCount, (bucket.val + 1) • buckets bucket

theorem weighted_bucketContribution {bucketCount : Nat}
    (digit : WnafDigit) (base : G)
    (hbound : digit.magnitude.val ≤ bucketCount) :
    (∑ bucket : Fin bucketCount,
        (bucket.val + 1) • bucketContribution digit base bucket) =
      digit.value • base := by
  by_cases hzero : digit.magnitude.val = 0
  · simp [bucketContribution, hzero]
  · let selected : Fin bucketCount :=
      ⟨digit.magnitude.val - 1,
        WnafDigit.bucket_index_lt digit hzero hbound⟩
    rw [Finset.sum_eq_single selected]
    · have hmagnitude :
          digit.magnitude.val = selected.val + 1 := by
        dsimp [selected]
        omega
      rw [bucketContribution, if_pos hmagnitude, ← hmagnitude]
      cases hnegative : digit.negative <;>
        simp [signedBase, WnafDigit.value, hnegative]
    · intro bucket _ hne
      have hmagnitude : digit.magnitude.val ≠ bucket.val + 1 := by
        intro heq
        apply hne
        apply Fin.ext
        dsimp [selected]
        omega
      simp [bucketContribution, hmagnitude]
    · simp

theorem weightedBucketSum_update {bucketCount : Nat}
    (buckets : Buckets (G := G) bucketCount)
    (digit : WnafDigit) (base : G)
    (hbound : digit.magnitude.val ≤ bucketCount) :
    weightedBucketSum (updateBucket buckets digit base) =
      weightedBucketSum buckets + digit.value • base := by
  unfold weightedBucketSum
  simp_rw [updateBucket_apply buckets digit base hbound, nsmul_add]
  rw [Finset.sum_add_distrib, weighted_bucketContribution digit base hbound]

/-- One-window result after all signed point contributions are bucketed. -/
theorem oneWindow_value {bucketCount : Nat}
    (pairs : List (WnafDigit × G))
    (hbound : ∀ pair ∈ pairs, pair.1.magnitude.val ≤ bucketCount) :
    weightedBucketSum
        (processBuckets pairs (fun _ => 0 : Buckets (G := G) bucketCount)) =
      (pairs.map (fun pair => pair.1.value • pair.2)).sum := by
  suffices hgeneral :
      ∀ buckets : Buckets (G := G) bucketCount,
        weightedBucketSum (processBuckets pairs buckets) =
          weightedBucketSum buckets +
            (pairs.map (fun pair => pair.1.value • pair.2)).sum by
    simpa [weightedBucketSum] using hgeneral (fun _ => 0)
  induction pairs with
  | nil => simp [processBuckets]
  | cons pair rest ih =>
      rcases pair with ⟨digit, base⟩
      intro buckets
      have hhead : digit.magnitude.val ≤ bucketCount :=
        hbound (digit, base) (by simp)
      have hrest : ∀ pair ∈ rest, pair.1.magnitude.val ≤ bucketCount := by
        intro pair hpair
        exact hbound pair (by simp [hpair])
      rw [processBuckets, ih hrest]
      rw [weightedBucketSum_update buckets digit base hhead]
      simp only [List.map_cons, List.sum_cons]
      abel

theorem oneWindow_zero_digits {bucketCount : Nat}
    (pairs : List (WnafDigit × G))
    (hbound : ∀ pair ∈ pairs, pair.1.magnitude.val ≤ bucketCount)
    (hzero : ∀ pair ∈ pairs, pair.1.value = 0) :
    weightedBucketSum
        (processBuckets pairs (fun _ => 0 : Buckets (G := G) bucketCount)) =
      0 := by
  rw [oneWindow_value pairs hbound]
  induction pairs with
  | nil => simp
  | cons pair rest ih =>
      have hhead := hzero pair (by simp)
      have htail : ∀ pair ∈ rest, pair.1.value = 0 := by
        intro pair hpair
        exact hzero pair (by simp [hpair])
      have hboundTail :
          ∀ pair ∈ rest, pair.1.magnitude.val ≤ bucketCount := by
        intro pair hpair
        exact hbound pair (by simp [hpair])
      simp [hhead, ih hboundTail htail]

theorem oneWindow_identity_bases {bucketCount : Nat}
    (pairs : List (WnafDigit × G))
    (hbound : ∀ pair ∈ pairs, pair.1.magnitude.val ≤ bucketCount)
    (hzero : ∀ pair ∈ pairs, pair.2 = 0) :
    weightedBucketSum
        (processBuckets pairs (fun _ => 0 : Buckets (G := G) bucketCount)) =
      0 := by
  rw [oneWindow_value pairs hbound]
  induction pairs with
  | nil => simp
  | cons pair rest ih =>
      have hhead := hzero pair (by simp)
      have htail : ∀ pair ∈ rest, pair.2 = 0 := by
        intro pair hpair
        exact hzero pair (by simp [hpair])
      have hboundTail :
          ∀ pair ∈ rest, pair.1.magnitude.val ≤ bucketCount := by
        intro pair hpair
        exact hbound pair (by simp [hpair])
      simp [hhead, ih hboundTail htail]

/-- State returned by the reverse bucket fold: running sum and result. -/
def reverseRunningFold : List G → G × G
  | [] => (0, 0)
  | bucket :: rest =>
      let tail := reverseRunningFold rest
      let running := tail.1 + bucket
      (running, tail.2 + running)

/-- Recursive weighted-list semantics of the reverse running-sum fold. -/
def weightedBucketList : List G → G
  | [] => 0
  | bucket :: rest => bucket + weightedBucketList rest + rest.sum

theorem reverseRunningFold_spec (buckets : List G) :
    reverseRunningFold buckets = (buckets.sum, weightedBucketList buckets) := by
  induction buckets with
  | nil => rfl
  | cons bucket rest ih =>
      simp only [reverseRunningFold, ih, weightedBucketList, List.sum_cons]
      apply Prod.ext <;> simp <;> abel

end Buckets

#print axioms WnafDigit.value_of_not_negative
#print axioms WnafDigit.value_of_negative
#print axioms WnafDigit.value_of_magnitude_zero
#print axioms WnafDigit.not_negative_of_magnitude_zero
#print axioms WnafDigit.bucket_index_lt
#print axioms updateBucket_apply
#print axioms processBuckets_apply
#print axioms weighted_bucketContribution
#print axioms weightedBucketSum_update
#print axioms oneWindow_value
#print axioms oneWindow_zero_digits
#print axioms oneWindow_identity_bases
#print axioms reverseRunningFold_spec

end Ipp.Extracted.ArkworksMsm
