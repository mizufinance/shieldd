import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon2CompareChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_compare_chunk9 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ j, 144 ≤ j → j < 160 → pmBit j = false → (seg16Canon2Bits rho)[j]! * (1 - (seg16Canon2Bits rho)[j]! - seg16Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r926, r927, r928, r929, r930, r931, r932, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow926 at r926
  unfold Seg16.relationRow927 at r927
  unfold Seg16.relationRow928 at r928
  unfold Seg16.relationRow929 at r929
  unfold Seg16.relationRow930 at r930
  unfold Seg16.relationRow931 at r931
  unfold Seg16.relationRow932 at r932
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 144 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 145 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 146 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 147 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 148 = rho 13752 from rfl]
    linear_combination r932
  · have hb : pmBit 148 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 149 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 150 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 151 = rho 13750 from rfl]
    linear_combination r931
  · erw [seg16Canon2Bits_get rho 151 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 152 = rho 13750 from rfl]
    linear_combination r930
  · erw [seg16Canon2Bits_get rho 152 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 153 = rho 13750 from rfl]
    linear_combination r929
  · erw [seg16Canon2Bits_get rho 153 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 154 = rho 13750 from rfl]
    linear_combination r928
  · have hb : pmBit 154 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 155 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 156 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 157 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 158 = rho 13747 from rfl]
    linear_combination r927
  · have hb : pmBit 158 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon2Bits_get rho 159 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon2Flag rho 160 = rho 13746 from rfl]
    linear_combination r926

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
