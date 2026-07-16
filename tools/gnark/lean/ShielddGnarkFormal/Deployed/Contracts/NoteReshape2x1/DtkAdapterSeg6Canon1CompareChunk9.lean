import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon1CompareChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_compare_chunk9 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 144 ≤ j → j < 160 → pmBit j = false → (seg6Canon1Bits rho)[j]! * (1 - (seg6Canon1Bits rho)[j]! - seg6Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r416, r417, r418, r419, r420, r421, r422, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow416 at r416
  unfold Seg6.relationRow417 at r417
  unfold Seg6.relationRow418 at r418
  unfold Seg6.relationRow419 at r419
  unfold Seg6.relationRow420 at r420
  unfold Seg6.relationRow421 at r421
  unfold Seg6.relationRow422 at r422
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 144 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 145 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 146 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 147 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 148 = rho 1236 from rfl]
    linear_combination r422
  · have hb : pmBit 148 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 149 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 150 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 151 = rho 1234 from rfl]
    linear_combination r421
  · erw [seg6Canon1Bits_get rho 151 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 152 = rho 1234 from rfl]
    linear_combination r420
  · erw [seg6Canon1Bits_get rho 152 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 153 = rho 1234 from rfl]
    linear_combination r419
  · erw [seg6Canon1Bits_get rho 153 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 154 = rho 1234 from rfl]
    linear_combination r418
  · have hb : pmBit 154 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 155 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 156 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 157 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 158 = rho 1231 from rfl]
    linear_combination r417
  · have hb : pmBit 158 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 159 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 160 = rho 1230 from rfl]
    linear_combination r416

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
