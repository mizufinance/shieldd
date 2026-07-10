import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon2CompareChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon2_compare_chunk10 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 160 ≤ j → j < 176 → pmBit j = false → (seg5Canon2Bits rho)[j]! * (1 - (seg5Canon2Bits rho)[j]! - seg5Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r918, r919, r920, r921, r922, r923, r924, r925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow918 at r918
  unfold Seg5.relationRow919 at r919
  unfold Seg5.relationRow920 at r920
  unfold Seg5.relationRow921 at r921
  unfold Seg5.relationRow922 at r922
  unfold Seg5.relationRow923 at r923
  unfold Seg5.relationRow924 at r924
  unfold Seg5.relationRow925 at r925
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg5Canon2Bits_get rho 160 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 161 = rho 869 from rfl]
    linear_combination r925
  · have hb : pmBit 161 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 162 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 163 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 164 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 165 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 166 = rho 865 from rfl]
    linear_combination r924
  · erw [seg5Canon2Bits_get rho 166 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 167 = rho 865 from rfl]
    linear_combination r923
  · erw [seg5Canon2Bits_get rho 167 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 168 = rho 865 from rfl]
    linear_combination r922
  · have hb : pmBit 168 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 169 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 170 = rho 864 from rfl]
    linear_combination r921
  · have hb : pmBit 170 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 171 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 172 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 173 = rho 862 from rfl]
    linear_combination r920
  · erw [seg5Canon2Bits_get rho 173 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 174 = rho 862 from rfl]
    linear_combination r919
  · have hb : pmBit 174 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 175 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 176 = rho 861 from rfl]
    linear_combination r918

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
