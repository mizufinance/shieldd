import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon1True

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_compare_chunk0 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 0 ≤ j → j < 16 → pmBit j = false → (seg6Canon1Bits rho)[j]! * (1 - (seg6Canon1Bits rho)[j]! - seg6Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r518, r519, r520, r521, r522, r523, r524, r525, r526, r527, r528, r529, r530, r531, r532, r533, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow518 at r518
  unfold Seg6.relationRow519 at r519
  unfold Seg6.relationRow520 at r520
  unfold Seg6.relationRow521 at r521
  unfold Seg6.relationRow522 at r522
  unfold Seg6.relationRow523 at r523
  unfold Seg6.relationRow524 at r524
  unfold Seg6.relationRow525 at r525
  unfold Seg6.relationRow526 at r526
  unfold Seg6.relationRow527 at r527
  unfold Seg6.relationRow528 at r528
  unfold Seg6.relationRow529 at r529
  unfold Seg6.relationRow530 at r530
  unfold Seg6.relationRow531 at r531
  unfold Seg6.relationRow532 at r532
  unfold Seg6.relationRow533 at r533
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg6Canon1Bits_get rho 0 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 1 = rho 1272 from rfl]
    linear_combination r533
  · erw [seg6Canon1Bits_get rho 1 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 2 = rho 1272 from rfl]
    linear_combination r532
  · erw [seg6Canon1Bits_get rho 2 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 3 = rho 1272 from rfl]
    linear_combination r531
  · erw [seg6Canon1Bits_get rho 3 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 4 = rho 1272 from rfl]
    linear_combination r530
  · erw [seg6Canon1Bits_get rho 4 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 5 = rho 1272 from rfl]
    linear_combination r529
  · erw [seg6Canon1Bits_get rho 5 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 6 = rho 1272 from rfl]
    linear_combination r528
  · erw [seg6Canon1Bits_get rho 6 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 7 = rho 1272 from rfl]
    linear_combination r527
  · erw [seg6Canon1Bits_get rho 7 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 8 = rho 1272 from rfl]
    linear_combination r526
  · erw [seg6Canon1Bits_get rho 8 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 9 = rho 1272 from rfl]
    linear_combination r525
  · erw [seg6Canon1Bits_get rho 9 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 10 = rho 1272 from rfl]
    linear_combination r524
  · erw [seg6Canon1Bits_get rho 10 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 11 = rho 1272 from rfl]
    linear_combination r523
  · erw [seg6Canon1Bits_get rho 11 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 12 = rho 1272 from rfl]
    linear_combination r522
  · erw [seg6Canon1Bits_get rho 12 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 13 = rho 1272 from rfl]
    linear_combination r521
  · erw [seg6Canon1Bits_get rho 13 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 14 = rho 1272 from rfl]
    linear_combination r520
  · erw [seg6Canon1Bits_get rho 14 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 15 = rho 1272 from rfl]
    linear_combination r519
  · erw [seg6Canon1Bits_get rho 15 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 16 = rho 1272 from rfl]
    linear_combination r518

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
