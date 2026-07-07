import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon1CompareChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon1_compare_chunk9 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 144 ≤ j → j < 160 → pmBit j = false → (seg45Canon1Bits rho)[j]! * (1 - (seg45Canon1Bits rho)[j]! - seg45Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r416, r417, r418, r419, r420, r421, r422, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow416 at r416
  unfold Seg45.relationRow417 at r417
  unfold Seg45.relationRow418 at r418
  unfold Seg45.relationRow419 at r419
  unfold Seg45.relationRow420 at r420
  unfold Seg45.relationRow421 at r421
  unfold Seg45.relationRow422 at r422
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 144 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 145 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 146 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 147 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 148 = rho 39066 from rfl]
    linear_combination r422
  · have hb : pmBit 148 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 149 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 150 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 151 = rho 39064 from rfl]
    linear_combination r421
  · erw [seg45Canon1Bits_get rho 151 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 152 = rho 39064 from rfl]
    linear_combination r420
  · erw [seg45Canon1Bits_get rho 152 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 153 = rho 39064 from rfl]
    linear_combination r419
  · erw [seg45Canon1Bits_get rho 153 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 154 = rho 39064 from rfl]
    linear_combination r418
  · have hb : pmBit 154 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 155 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 156 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 157 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 158 = rho 39061 from rfl]
    linear_combination r417
  · have hb : pmBit 158 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 159 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 160 = rho 39060 from rfl]
    linear_combination r416

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
