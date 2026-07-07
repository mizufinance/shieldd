import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon1CompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon1_compare_chunk5 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (seg34Canon1Bits rho)[j]! * (1 - (seg34Canon1Bits rho)[j]! - seg34Canon1Flag rho (j + 1)) = 0 := by
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
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r447, r448, r449, r450, r451, r452, r453, r454, r455, r456, r457, r458, r459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow447 at r447
  unfold Seg34.relationRow448 at r448
  unfold Seg34.relationRow449 at r449
  unfold Seg34.relationRow450 at r450
  unfold Seg34.relationRow451 at r451
  unfold Seg34.relationRow452 at r452
  unfold Seg34.relationRow453 at r453
  unfold Seg34.relationRow454 at r454
  unfold Seg34.relationRow455 at r455
  unfold Seg34.relationRow456 at r456
  unfold Seg34.relationRow457 at r457
  unfold Seg34.relationRow458 at r458
  unfold Seg34.relationRow459 at r459
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg34Canon1Bits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 81 = rho 32140 from rfl]
    linear_combination r459
  · erw [seg34Canon1Bits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 82 = rho 32140 from rfl]
    linear_combination r458
  · erw [seg34Canon1Bits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 83 = rho 32140 from rfl]
    linear_combination r457
  · erw [seg34Canon1Bits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 84 = rho 32140 from rfl]
    linear_combination r456
  · erw [seg34Canon1Bits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 85 = rho 32140 from rfl]
    linear_combination r455
  · erw [seg34Canon1Bits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 86 = rho 32140 from rfl]
    linear_combination r454
  · erw [seg34Canon1Bits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 87 = rho 32140 from rfl]
    linear_combination r453
  · erw [seg34Canon1Bits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 88 = rho 32140 from rfl]
    linear_combination r452
  · erw [seg34Canon1Bits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 89 = rho 32140 from rfl]
    linear_combination r451
  · erw [seg34Canon1Bits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 90 = rho 32140 from rfl]
    linear_combination r450
  · erw [seg34Canon1Bits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 91 = rho 32140 from rfl]
    linear_combination r449
  · erw [seg34Canon1Bits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 92 = rho 32140 from rfl]
    linear_combination r448
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon1Bits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 94 = rho 32139 from rfl]
    linear_combination r447
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
