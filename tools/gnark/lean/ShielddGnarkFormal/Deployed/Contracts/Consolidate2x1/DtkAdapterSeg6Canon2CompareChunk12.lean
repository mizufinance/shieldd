import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon2CompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon2_compare_chunk12 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (seg6Canon2Bits rho)[j]! * (1 - (seg6Canon2Bits rho)[j]! - seg6Canon2Flag rho (j + 1)) = 0 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r900, r901, r902, r903, r904, r905, r906, r907, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow900 at r900
  unfold Seg6.relationRow901 at r901
  unfold Seg6.relationRow902 at r902
  unfold Seg6.relationRow903 at r903
  unfold Seg6.relationRow904 at r904
  unfold Seg6.relationRow905 at r905
  unfold Seg6.relationRow906 at r906
  unfold Seg6.relationRow907 at r907
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg6Canon2Bits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 193 = rho 1558 from rfl]
    linear_combination r907
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 196 = rho 1556 from rfl]
    linear_combination r906
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 198 = rho 1555 from rfl]
    linear_combination r905
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 200 = rho 1554 from rfl]
    linear_combination r904
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 202 = rho 1553 from rfl]
    linear_combination r903
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 204 = rho 1552 from rfl]
    linear_combination r902
  · erw [seg6Canon2Bits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 205 = rho 1552 from rfl]
    linear_combination r901
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon2Bits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon2Flag rho 207 = rho 1551 from rfl]
    linear_combination r900
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
