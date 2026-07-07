import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon1CompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon1_compare_chunk3 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (seg16Canon1Bits rho)[j]! * (1 - (seg16Canon1Bits rho)[j]! - seg16Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r475, r476, r477, r478, r479⟩
  unfold Seg16.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow475 at r475
  unfold Seg16.relationRow476 at r476
  unfold Seg16.relationRow477 at r477
  unfold Seg16.relationRow478 at r478
  unfold Seg16.relationRow479 at r479
  unfold Seg16.relationRow480 at r480
  unfold Seg16.relationRow481 at r481
  unfold Seg16.relationRow482 at r482
  unfold Seg16.relationRow483 at r483
  unfold Seg16.relationRow484 at r484
  unfold Seg16.relationRow485 at r485
  unfold Seg16.relationRow486 at r486
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 50 = rho 13444 from rfl]
    linear_combination r486
  · erw [seg16Canon1Bits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 51 = rho 13444 from rfl]
    linear_combination r485
  · erw [seg16Canon1Bits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 52 = rho 13444 from rfl]
    linear_combination r484
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 54 = rho 13443 from rfl]
    linear_combination r483
  · erw [seg16Canon1Bits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 55 = rho 13443 from rfl]
    linear_combination r482
  · erw [seg16Canon1Bits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 56 = rho 13443 from rfl]
    linear_combination r481
  · erw [seg16Canon1Bits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 57 = rho 13443 from rfl]
    linear_combination r480
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 59 = rho 13442 from rfl]
    linear_combination r479
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 61 = rho 13441 from rfl]
    linear_combination r478
  · erw [seg16Canon1Bits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 62 = rho 13441 from rfl]
    linear_combination r477
  · erw [seg16Canon1Bits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 63 = rho 13441 from rfl]
    linear_combination r476
  · erw [seg16Canon1Bits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 64 = rho 13441 from rfl]
    linear_combination r475

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
