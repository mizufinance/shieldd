import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon1CompareChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon1_compare_chunk2 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 32 ≤ j → j < 48 → pmBit j = false → (seg5Canon1Bits rho)[j]! * (1 - (seg5Canon1Bits rho)[j]! - seg5Canon1Flag rho (j + 1)) = 0 := by
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
  rcases p6 with ⟨_, _, _, _, _, _, _, r487, r488, r489, r490, r491, r492, r493, r494, r495, r496, r497, r498, r499, r500, r501, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow487 at r487
  unfold Seg5.relationRow488 at r488
  unfold Seg5.relationRow489 at r489
  unfold Seg5.relationRow490 at r490
  unfold Seg5.relationRow491 at r491
  unfold Seg5.relationRow492 at r492
  unfold Seg5.relationRow493 at r493
  unfold Seg5.relationRow494 at r494
  unfold Seg5.relationRow495 at r495
  unfold Seg5.relationRow496 at r496
  unfold Seg5.relationRow497 at r497
  unfold Seg5.relationRow498 at r498
  unfold Seg5.relationRow499 at r499
  unfold Seg5.relationRow500 at r500
  unfold Seg5.relationRow501 at r501
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg5Canon1Bits_get rho 32 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 33 = rho 569 from rfl]
    linear_combination r501
  · erw [seg5Canon1Bits_get rho 33 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 34 = rho 569 from rfl]
    linear_combination r500
  · erw [seg5Canon1Bits_get rho 34 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 35 = rho 569 from rfl]
    linear_combination r499
  · erw [seg5Canon1Bits_get rho 35 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 36 = rho 569 from rfl]
    linear_combination r498
  · erw [seg5Canon1Bits_get rho 36 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 37 = rho 569 from rfl]
    linear_combination r497
  · erw [seg5Canon1Bits_get rho 37 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 38 = rho 569 from rfl]
    linear_combination r496
  · erw [seg5Canon1Bits_get rho 38 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 39 = rho 569 from rfl]
    linear_combination r495
  · erw [seg5Canon1Bits_get rho 39 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 40 = rho 569 from rfl]
    linear_combination r494
  · erw [seg5Canon1Bits_get rho 40 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 41 = rho 569 from rfl]
    linear_combination r493
  · erw [seg5Canon1Bits_get rho 41 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 42 = rho 569 from rfl]
    linear_combination r492
  · erw [seg5Canon1Bits_get rho 42 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 43 = rho 569 from rfl]
    linear_combination r491
  · erw [seg5Canon1Bits_get rho 43 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 44 = rho 569 from rfl]
    linear_combination r490
  · erw [seg5Canon1Bits_get rho 44 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 45 = rho 569 from rfl]
    linear_combination r489
  · erw [seg5Canon1Bits_get rho 45 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 46 = rho 569 from rfl]
    linear_combination r488
  · erw [seg5Canon1Bits_get rho 46 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 47 = rho 569 from rfl]
    linear_combination r487
  · have hb : pmBit 47 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
