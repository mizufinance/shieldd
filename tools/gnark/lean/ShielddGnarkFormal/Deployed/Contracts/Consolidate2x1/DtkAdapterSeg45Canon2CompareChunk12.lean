import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2CompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_compare_chunk12 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (seg45Canon2Bits rho)[j]! * (1 - (seg45Canon2Bits rho)[j]! - seg45Canon2Flag rho (j + 1)) = 0 := by
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
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r900, r901, r902, r903, r904, r905, r906, r907, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow900 at r900
  unfold Seg45.relationRow901 at r901
  unfold Seg45.relationRow902 at r902
  unfold Seg45.relationRow903 at r903
  unfold Seg45.relationRow904 at r904
  unfold Seg45.relationRow905 at r905
  unfold Seg45.relationRow906 at r906
  unfold Seg45.relationRow907 at r907
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg45Canon2Bits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 193 = rho 39388 from rfl]
    linear_combination r907
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 196 = rho 39386 from rfl]
    linear_combination r906
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 198 = rho 39385 from rfl]
    linear_combination r905
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 200 = rho 39384 from rfl]
    linear_combination r904
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 202 = rho 39383 from rfl]
    linear_combination r903
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 204 = rho 39382 from rfl]
    linear_combination r902
  · erw [seg45Canon2Bits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 205 = rho 39382 from rfl]
    linear_combination r901
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 207 = rho 39381 from rfl]
    linear_combination r900
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
