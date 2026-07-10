import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon2CompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon2_compare_chunk12 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (seg5Canon2Bits rho)[j]! * (1 - (seg5Canon2Bits rho)[j]! - seg5Canon2Flag rho (j + 1)) = 0 := by
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
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r900, r901, r902, r903, r904, r905, r906, r907, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow900 at r900
  unfold Seg5.relationRow901 at r901
  unfold Seg5.relationRow902 at r902
  unfold Seg5.relationRow903 at r903
  unfold Seg5.relationRow904 at r904
  unfold Seg5.relationRow905 at r905
  unfold Seg5.relationRow906 at r906
  unfold Seg5.relationRow907 at r907
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg5Canon2Bits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 193 = rho 855 from rfl]
    linear_combination r907
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 196 = rho 853 from rfl]
    linear_combination r906
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 198 = rho 852 from rfl]
    linear_combination r905
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 200 = rho 851 from rfl]
    linear_combination r904
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 202 = rho 850 from rfl]
    linear_combination r903
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 204 = rho 849 from rfl]
    linear_combination r902
  · erw [seg5Canon2Bits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 205 = rho 849 from rfl]
    linear_combination r901
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon2Bits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon2Flag rho 207 = rho 848 from rfl]
    linear_combination r900
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
