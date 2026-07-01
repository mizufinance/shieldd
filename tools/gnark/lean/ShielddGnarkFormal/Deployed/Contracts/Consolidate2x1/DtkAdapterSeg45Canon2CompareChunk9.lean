import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2CompareChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_compare_chunk9 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 144 ≤ j → j < 160 → pmBit j = false → (seg45Canon2Bits rho)[j]! * (1 - (seg45Canon2Bits rho)[j]! - seg45Canon2Flag rho (j + 1)) = 0 := by
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
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r926, r927, r928, r929, r930, r931, r932, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow926 at r926
  unfold Seg45.relationRow927 at r927
  unfold Seg45.relationRow928 at r928
  unfold Seg45.relationRow929 at r929
  unfold Seg45.relationRow930 at r930
  unfold Seg45.relationRow931 at r931
  unfold Seg45.relationRow932 at r932
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 144 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 145 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 146 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 147 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 148 = rho 39408 from rfl]
    linear_combination r932
  · have hb : pmBit 148 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 149 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 150 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 151 = rho 39406 from rfl]
    linear_combination r931
  · erw [seg45Canon2Bits_get rho 151 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 152 = rho 39406 from rfl]
    linear_combination r930
  · erw [seg45Canon2Bits_get rho 152 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 153 = rho 39406 from rfl]
    linear_combination r929
  · erw [seg45Canon2Bits_get rho 153 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 154 = rho 39406 from rfl]
    linear_combination r928
  · have hb : pmBit 154 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 155 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 156 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 157 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 158 = rho 39403 from rfl]
    linear_combination r927
  · have hb : pmBit 158 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon2Bits_get rho 159 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon2Flag rho 160 = rho 39402 from rfl]
    linear_combination r926

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
