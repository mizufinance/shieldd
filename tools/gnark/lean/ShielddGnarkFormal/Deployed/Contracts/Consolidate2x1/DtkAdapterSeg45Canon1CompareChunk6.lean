import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon1CompareChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon1_compare_chunk6 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 96 ≤ j → j < 112 → pmBit j = false → (seg45Canon1Bits rho)[j]! * (1 - (seg45Canon1Bits rho)[j]! - seg45Canon1Flag rho (j + 1)) = 0 := by
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
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r443, r444, r445, r446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow443 at r443
  unfold Seg45.relationRow444 at r444
  unfold Seg45.relationRow445 at r445
  unfold Seg45.relationRow446 at r446
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg45Canon1Bits_get rho 96 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 97 = rho 39093 from rfl]
    linear_combination r446
  · have hb : pmBit 97 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 98 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 99 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 100 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 101 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 102 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 103 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 104 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 105 = rho 39086 from rfl]
    linear_combination r445
  · have hb : pmBit 105 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 106 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 107 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 108 = rho 39084 from rfl]
    linear_combination r444
  · have hb : pmBit 108 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 109 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 110 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 111 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 112 = rho 39081 from rfl]
    linear_combination r443

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
