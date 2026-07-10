import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon1CompareChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon1_compare_chunk1 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 16 ≤ j → j < 32 → pmBit j = false → (seg5Canon1Bits rho)[j]! * (1 - (seg5Canon1Bits rho)[j]! - seg5Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r502, r503, r504, r505, r506, r507, r508, r509, r510, r511, r512, r513, r514, r515, r516, r517, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow502 at r502
  unfold Seg5.relationRow503 at r503
  unfold Seg5.relationRow504 at r504
  unfold Seg5.relationRow505 at r505
  unfold Seg5.relationRow506 at r506
  unfold Seg5.relationRow507 at r507
  unfold Seg5.relationRow508 at r508
  unfold Seg5.relationRow509 at r509
  unfold Seg5.relationRow510 at r510
  unfold Seg5.relationRow511 at r511
  unfold Seg5.relationRow512 at r512
  unfold Seg5.relationRow513 at r513
  unfold Seg5.relationRow514 at r514
  unfold Seg5.relationRow515 at r515
  unfold Seg5.relationRow516 at r516
  unfold Seg5.relationRow517 at r517
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg5Canon1Bits_get rho 16 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 17 = rho 569 from rfl]
    linear_combination r517
  · erw [seg5Canon1Bits_get rho 17 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 18 = rho 569 from rfl]
    linear_combination r516
  · erw [seg5Canon1Bits_get rho 18 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 19 = rho 569 from rfl]
    linear_combination r515
  · erw [seg5Canon1Bits_get rho 19 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 20 = rho 569 from rfl]
    linear_combination r514
  · erw [seg5Canon1Bits_get rho 20 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 21 = rho 569 from rfl]
    linear_combination r513
  · erw [seg5Canon1Bits_get rho 21 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 22 = rho 569 from rfl]
    linear_combination r512
  · erw [seg5Canon1Bits_get rho 22 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 23 = rho 569 from rfl]
    linear_combination r511
  · erw [seg5Canon1Bits_get rho 23 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 24 = rho 569 from rfl]
    linear_combination r510
  · erw [seg5Canon1Bits_get rho 24 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 25 = rho 569 from rfl]
    linear_combination r509
  · erw [seg5Canon1Bits_get rho 25 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 26 = rho 569 from rfl]
    linear_combination r508
  · erw [seg5Canon1Bits_get rho 26 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 27 = rho 569 from rfl]
    linear_combination r507
  · erw [seg5Canon1Bits_get rho 27 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 28 = rho 569 from rfl]
    linear_combination r506
  · erw [seg5Canon1Bits_get rho 28 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 29 = rho 569 from rfl]
    linear_combination r505
  · erw [seg5Canon1Bits_get rho 29 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 30 = rho 569 from rfl]
    linear_combination r504
  · erw [seg5Canon1Bits_get rho 30 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 31 = rho 569 from rfl]
    linear_combination r503
  · erw [seg5Canon1Bits_get rho 31 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 32 = rho 569 from rfl]
    linear_combination r502

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
