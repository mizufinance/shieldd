import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon1CompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon1_compare_chunk7 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (seg5Canon1Bits rho)[j]! * (1 - (seg5Canon1Bits rho)[j]! - seg5Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r435, r436, r437, r438, r439, r440, r441, r442, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow435 at r435
  unfold Seg5.relationRow436 at r436
  unfold Seg5.relationRow437 at r437
  unfold Seg5.relationRow438 at r438
  unfold Seg5.relationRow439 at r439
  unfold Seg5.relationRow440 at r440
  unfold Seg5.relationRow441 at r441
  unfold Seg5.relationRow442 at r442
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg5Canon1Bits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 113 = rho 548 from rfl]
    linear_combination r442
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 115 = rho 547 from rfl]
    linear_combination r441
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 117 = rho 546 from rfl]
    linear_combination r440
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 119 = rho 545 from rfl]
    linear_combination r439
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 122 = rho 543 from rfl]
    linear_combination r438
  · erw [seg5Canon1Bits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 123 = rho 543 from rfl]
    linear_combination r437
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 126 = rho 541 from rfl]
    linear_combination r436
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 128 = rho 540 from rfl]
    linear_combination r435

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
