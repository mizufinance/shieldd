import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon1CompareChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_compare_chunk14 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 224 ≤ j → j < 240 → pmBit j = false → (seg6Canon1Bits rho)[j]! * (1 - (seg6Canon1Bits rho)[j]! - seg6Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r374, r375, r376, r377, r378, r379, r380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow374 at r374
  unfold Seg6.relationRow375 at r375
  unfold Seg6.relationRow376 at r376
  unfold Seg6.relationRow377 at r377
  unfold Seg6.relationRow378 at r378
  unfold Seg6.relationRow379 at r379
  unfold Seg6.relationRow380 at r380
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg6Canon1Bits_get rho 224 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 225 = rho 1195 from rfl]
    linear_combination r380
  · have hb : pmBit 225 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 226 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 227 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 228 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 229 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 230 = rho 1191 from rfl]
    linear_combination r379
  · have hb : pmBit 230 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 231 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 232 = rho 1190 from rfl]
    linear_combination r378
  · have hb : pmBit 232 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 233 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 234 = rho 1189 from rfl]
    linear_combination r377
  · have hb : pmBit 234 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 235 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 236 = rho 1188 from rfl]
    linear_combination r376
  · erw [seg6Canon1Bits_get rho 236 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 237 = rho 1188 from rfl]
    linear_combination r375
  · have hb : pmBit 237 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 238 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 239 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 240 = rho 1186 from rfl]
    linear_combination r374

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
