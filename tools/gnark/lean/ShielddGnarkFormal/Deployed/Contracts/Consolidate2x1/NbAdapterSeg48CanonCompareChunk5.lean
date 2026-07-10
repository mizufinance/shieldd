import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk5 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
  unfold Seg48.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg48.relationPart8 at p8
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r677, r678, r679, r680, r681, r682, r683, r684, r685, r686, r687, r688, r689, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow677 at r677
  unfold Seg48.relationRow678 at r678
  unfold Seg48.relationRow679 at r679
  unfold Seg48.relationRow680 at r680
  unfold Seg48.relationRow681 at r681
  unfold Seg48.relationRow682 at r682
  unfold Seg48.relationRow683 at r683
  unfold Seg48.relationRow684 at r684
  unfold Seg48.relationRow685 at r685
  unfold Seg48.relationRow686 at r686
  unfold Seg48.relationRow687 at r687
  unfold Seg48.relationRow688 at r688
  unfold Seg48.relationRow689 at r689
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 81 = rho 33518 from rfl]
    linear_combination r689
  · erw [seg48CanonBits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 82 = rho 33518 from rfl]
    linear_combination r688
  · erw [seg48CanonBits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 83 = rho 33518 from rfl]
    linear_combination r687
  · erw [seg48CanonBits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 84 = rho 33518 from rfl]
    linear_combination r686
  · erw [seg48CanonBits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 85 = rho 33518 from rfl]
    linear_combination r685
  · erw [seg48CanonBits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 86 = rho 33518 from rfl]
    linear_combination r684
  · erw [seg48CanonBits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 87 = rho 33518 from rfl]
    linear_combination r683
  · erw [seg48CanonBits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 88 = rho 33518 from rfl]
    linear_combination r682
  · erw [seg48CanonBits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 89 = rho 33518 from rfl]
    linear_combination r681
  · erw [seg48CanonBits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 90 = rho 33518 from rfl]
    linear_combination r680
  · erw [seg48CanonBits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 91 = rho 33518 from rfl]
    linear_combination r679
  · erw [seg48CanonBits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 92 = rho 33518 from rfl]
    linear_combination r678
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 94 = rho 33517 from rfl]
    linear_combination r677
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
