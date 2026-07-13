import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon2CompareChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon2_compare_chunk15 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 240 ≤ j → j < 253 → pmBit j = false → (seg6Canon2Bits rho)[j]! * (1 - (seg6Canon2Bits rho)[j]! - seg6Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r878, r879⟩
  unfold Seg6.relationPart11 at p11
  rcases p11 with ⟨r880, r881, r882, r883, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow878 at r878
  unfold Seg6.relationRow879 at r879
  unfold Seg6.relationRow880 at r880
  unfold Seg6.relationRow881 at r881
  unfold Seg6.relationRow882 at r882
  unfold Seg6.relationRow883 at r883
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 240 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 241 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 242 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 243 = rho 1532 from rfl]
    linear_combination r883
  · have hb : pmBit 243 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 244 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 245 = rho 1531 from rfl]
    linear_combination r882
  · have hb : pmBit 245 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 246 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 247 = rho 1530 from rfl]
    linear_combination r881
  · have hb : pmBit 247 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 248 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 249 = rho 1529 from rfl]
    linear_combination r880
  · have hb : pmBit 249 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 250 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 251 = rho 1528 from rfl]
    linear_combination r879
  · erw [seg6Canon2Bits_get rho 251 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 252 = rho 1528 from rfl]
    linear_combination r878
  · have hb : pmBit 252 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
