import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon1CompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon1_compare_chunk7 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (seg45Canon1Bits rho)[j]! * (1 - (seg45Canon1Bits rho)[j]! - seg45Canon1Flag rho (j + 1)) = 0 := by
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
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r435, r436, r437, r438, r439, r440, r441, r442, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow435 at r435
  unfold Seg45.relationRow436 at r436
  unfold Seg45.relationRow437 at r437
  unfold Seg45.relationRow438 at r438
  unfold Seg45.relationRow439 at r439
  unfold Seg45.relationRow440 at r440
  unfold Seg45.relationRow441 at r441
  unfold Seg45.relationRow442 at r442
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg45Canon1Bits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 113 = rho 39081 from rfl]
    linear_combination r442
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 115 = rho 39080 from rfl]
    linear_combination r441
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 117 = rho 39079 from rfl]
    linear_combination r440
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 119 = rho 39078 from rfl]
    linear_combination r439
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 122 = rho 39076 from rfl]
    linear_combination r438
  · erw [seg45Canon1Bits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 123 = rho 39076 from rfl]
    linear_combination r437
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 126 = rho 39074 from rfl]
    linear_combination r436
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 128 = rho 39073 from rfl]
    linear_combination r435

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
