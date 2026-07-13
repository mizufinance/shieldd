import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon1CompareChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_compare_chunk8 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 128 ≤ j → j < 144 → pmBit j = false → (seg6Canon1Bits rho)[j]! * (1 - (seg6Canon1Bits rho)[j]! - seg6Canon1Flag rho (j + 1)) = 0 := by
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
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r423, r424, r425, r426, r427, r428, r429, r430, r431, r432, r433, r434, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow423 at r423
  unfold Seg6.relationRow424 at r424
  unfold Seg6.relationRow425 at r425
  unfold Seg6.relationRow426 at r426
  unfold Seg6.relationRow427 at r427
  unfold Seg6.relationRow428 at r428
  unfold Seg6.relationRow429 at r429
  unfold Seg6.relationRow430 at r430
  unfold Seg6.relationRow431 at r431
  unfold Seg6.relationRow432 at r432
  unfold Seg6.relationRow433 at r433
  unfold Seg6.relationRow434 at r434
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 128 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 129 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 130 = rho 1242 from rfl]
    linear_combination r434
  · erw [seg6Canon1Bits_get rho 130 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 131 = rho 1242 from rfl]
    linear_combination r433
  · erw [seg6Canon1Bits_get rho 131 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 132 = rho 1242 from rfl]
    linear_combination r432
  · erw [seg6Canon1Bits_get rho 132 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 133 = rho 1242 from rfl]
    linear_combination r431
  · erw [seg6Canon1Bits_get rho 133 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 134 = rho 1242 from rfl]
    linear_combination r430
  · erw [seg6Canon1Bits_get rho 134 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 135 = rho 1242 from rfl]
    linear_combination r429
  · erw [seg6Canon1Bits_get rho 135 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 136 = rho 1242 from rfl]
    linear_combination r428
  · erw [seg6Canon1Bits_get rho 136 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 137 = rho 1242 from rfl]
    linear_combination r427
  · erw [seg6Canon1Bits_get rho 137 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 138 = rho 1242 from rfl]
    linear_combination r426
  · erw [seg6Canon1Bits_get rho 138 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 139 = rho 1242 from rfl]
    linear_combination r425
  · erw [seg6Canon1Bits_get rho 139 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 140 = rho 1242 from rfl]
    linear_combination r424
  · have hb : pmBit 140 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 141 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 142 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 143 = rho 1240 from rfl]
    linear_combination r423
  · have hb : pmBit 143 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
