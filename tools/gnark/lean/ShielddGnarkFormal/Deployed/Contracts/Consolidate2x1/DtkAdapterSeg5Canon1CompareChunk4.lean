import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon1CompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon1_compare_chunk4 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (seg5Canon1Bits rho)[j]! * (1 - (seg5Canon1Bits rho)[j]! - seg5Canon1Flag rho (j + 1)) = 0 := by
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
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r460, r461, r462, r463, r464, r465, r466, r467, r468, r469, r470, r471, r472, r473, r474, _, _, _, _, _⟩
  unfold Seg5.relationRow460 at r460
  unfold Seg5.relationRow461 at r461
  unfold Seg5.relationRow462 at r462
  unfold Seg5.relationRow463 at r463
  unfold Seg5.relationRow464 at r464
  unfold Seg5.relationRow465 at r465
  unfold Seg5.relationRow466 at r466
  unfold Seg5.relationRow467 at r467
  unfold Seg5.relationRow468 at r468
  unfold Seg5.relationRow469 at r469
  unfold Seg5.relationRow470 at r470
  unfold Seg5.relationRow471 at r471
  unfold Seg5.relationRow472 at r472
  unfold Seg5.relationRow473 at r473
  unfold Seg5.relationRow474 at r474
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 66 = rho 563 from rfl]
    linear_combination r474
  · erw [seg5Canon1Bits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 67 = rho 563 from rfl]
    linear_combination r473
  · erw [seg5Canon1Bits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 68 = rho 563 from rfl]
    linear_combination r472
  · erw [seg5Canon1Bits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 69 = rho 563 from rfl]
    linear_combination r471
  · erw [seg5Canon1Bits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 70 = rho 563 from rfl]
    linear_combination r470
  · erw [seg5Canon1Bits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 71 = rho 563 from rfl]
    linear_combination r469
  · erw [seg5Canon1Bits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 72 = rho 563 from rfl]
    linear_combination r468
  · erw [seg5Canon1Bits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 73 = rho 563 from rfl]
    linear_combination r467
  · erw [seg5Canon1Bits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 74 = rho 563 from rfl]
    linear_combination r466
  · erw [seg5Canon1Bits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 75 = rho 563 from rfl]
    linear_combination r465
  · erw [seg5Canon1Bits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 76 = rho 563 from rfl]
    linear_combination r464
  · erw [seg5Canon1Bits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 77 = rho 563 from rfl]
    linear_combination r463
  · erw [seg5Canon1Bits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 78 = rho 563 from rfl]
    linear_combination r462
  · erw [seg5Canon1Bits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 79 = rho 563 from rfl]
    linear_combination r461
  · erw [seg5Canon1Bits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 80 = rho 563 from rfl]
    linear_combination r460

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
