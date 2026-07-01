import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon1CompareChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon1_compare_chunk9 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ j, 144 ≤ j → j < 160 → pmBit j = false → (seg34Canon1Bits rho)[j]! * (1 - (seg34Canon1Bits rho)[j]! - seg34Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r416, r417, r418, r419, r420, r421, r422, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow416 at r416
  unfold Seg34.relationRow417 at r417
  unfold Seg34.relationRow418 at r418
  unfold Seg34.relationRow419 at r419
  unfold Seg34.relationRow420 at r420
  unfold Seg34.relationRow421 at r421
  unfold Seg34.relationRow422 at r422
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 144 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 145 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 146 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon1Bits_get rho 147 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 148 = rho 32110 from rfl]
    linear_combination r422
  · have hb : pmBit 148 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 149 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon1Bits_get rho 150 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 151 = rho 32108 from rfl]
    linear_combination r421
  · erw [seg34Canon1Bits_get rho 151 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 152 = rho 32108 from rfl]
    linear_combination r420
  · erw [seg34Canon1Bits_get rho 152 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 153 = rho 32108 from rfl]
    linear_combination r419
  · erw [seg34Canon1Bits_get rho 153 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 154 = rho 32108 from rfl]
    linear_combination r418
  · have hb : pmBit 154 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 155 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 156 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon1Bits_get rho 157 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 158 = rho 32105 from rfl]
    linear_combination r417
  · have hb : pmBit 158 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon1Bits_get rho 159 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 160 = rho 32104 from rfl]
    linear_combination r416

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
