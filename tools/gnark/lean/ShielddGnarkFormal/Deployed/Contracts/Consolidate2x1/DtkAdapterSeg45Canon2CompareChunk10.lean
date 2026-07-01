import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2CompareChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_compare_chunk10 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 160 ≤ j → j < 176 → pmBit j = false → (seg45Canon2Bits rho)[j]! * (1 - (seg45Canon2Bits rho)[j]! - seg45Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r918, r919, r920, r921, r922, r923, r924, r925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow918 at r918
  unfold Seg45.relationRow919 at r919
  unfold Seg45.relationRow920 at r920
  unfold Seg45.relationRow921 at r921
  unfold Seg45.relationRow922 at r922
  unfold Seg45.relationRow923 at r923
  unfold Seg45.relationRow924 at r924
  unfold Seg45.relationRow925 at r925
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg45Canon2Bits_get rho 160 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 161 = rho 39402 from rfl]
    linear_combination r925
  · have hb : pmBit 161 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 162 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 163 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 164 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 165 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 166 = rho 39398 from rfl]
    linear_combination r924
  · erw [seg45Canon2Bits_get rho 166 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 167 = rho 39398 from rfl]
    linear_combination r923
  · erw [seg45Canon2Bits_get rho 167 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 168 = rho 39398 from rfl]
    linear_combination r922
  · have hb : pmBit 168 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 169 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 170 = rho 39397 from rfl]
    linear_combination r921
  · have hb : pmBit 170 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 171 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 172 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 173 = rho 39395 from rfl]
    linear_combination r920
  · erw [seg45Canon2Bits_get rho 173 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 174 = rho 39395 from rfl]
    linear_combination r919
  · have hb : pmBit 174 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 175 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 176 = rho 39394 from rfl]
    linear_combination r918

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
