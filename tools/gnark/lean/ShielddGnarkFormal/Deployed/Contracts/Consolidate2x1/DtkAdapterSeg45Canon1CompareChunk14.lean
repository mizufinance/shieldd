import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon1CompareChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon1_compare_chunk14 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 224 ≤ j → j < 240 → pmBit j = false → (seg45Canon1Bits rho)[j]! * (1 - (seg45Canon1Bits rho)[j]! - seg45Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r374, r375, r376, r377, r378, r379, r380, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow374 at r374
  unfold Seg45.relationRow375 at r375
  unfold Seg45.relationRow376 at r376
  unfold Seg45.relationRow377 at r377
  unfold Seg45.relationRow378 at r378
  unfold Seg45.relationRow379 at r379
  unfold Seg45.relationRow380 at r380
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg45Canon1Bits_get rho 224 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 225 = rho 39031 from rfl]
    linear_combination r380
  · have hb : pmBit 225 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 226 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 227 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 228 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 229 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 230 = rho 39027 from rfl]
    linear_combination r379
  · have hb : pmBit 230 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 231 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 232 = rho 39026 from rfl]
    linear_combination r378
  · have hb : pmBit 232 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 233 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 234 = rho 39025 from rfl]
    linear_combination r377
  · have hb : pmBit 234 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 235 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 236 = rho 39024 from rfl]
    linear_combination r376
  · erw [seg45Canon1Bits_get rho 236 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 237 = rho 39024 from rfl]
    linear_combination r375
  · have hb : pmBit 237 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 238 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 239 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 240 = rho 39022 from rfl]
    linear_combination r374

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
