import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonCompareChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_compare_chunk5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ j, 80 ≤ j → j < 96 → pmBit j = false → (seg52CanonBits rho)[j]! * (1 - (seg52CanonBits rho)[j]! - seg52CanonFlag rho (j + 1)) = 0 := by
  unfold Seg52.relation at h
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
  unfold Seg52.relationPart8 at p8
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r677, r678, r679, r680, r681, r682, r683, r684, r685, r686, r687, r688, r689, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow677 at r677
  unfold Seg52.relationRow678 at r678
  unfold Seg52.relationRow679 at r679
  unfold Seg52.relationRow680 at r680
  unfold Seg52.relationRow681 at r681
  unfold Seg52.relationRow682 at r682
  unfold Seg52.relationRow683 at r683
  unfold Seg52.relationRow684 at r684
  unfold Seg52.relationRow685 at r685
  unfold Seg52.relationRow686 at r686
  unfold Seg52.relationRow687 at r687
  unfold Seg52.relationRow688 at r688
  unfold Seg52.relationRow689 at r689
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg52CanonBits_get rho 80 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 81 = rho 45150 from rfl]
    linear_combination r689
  · erw [seg52CanonBits_get rho 81 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 82 = rho 45150 from rfl]
    linear_combination r688
  · erw [seg52CanonBits_get rho 82 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 83 = rho 45150 from rfl]
    linear_combination r687
  · erw [seg52CanonBits_get rho 83 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 84 = rho 45150 from rfl]
    linear_combination r686
  · erw [seg52CanonBits_get rho 84 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 85 = rho 45150 from rfl]
    linear_combination r685
  · erw [seg52CanonBits_get rho 85 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 86 = rho 45150 from rfl]
    linear_combination r684
  · erw [seg52CanonBits_get rho 86 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 87 = rho 45150 from rfl]
    linear_combination r683
  · erw [seg52CanonBits_get rho 87 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 88 = rho 45150 from rfl]
    linear_combination r682
  · erw [seg52CanonBits_get rho 88 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 89 = rho 45150 from rfl]
    linear_combination r681
  · erw [seg52CanonBits_get rho 89 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 90 = rho 45150 from rfl]
    linear_combination r680
  · erw [seg52CanonBits_get rho 90 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 91 = rho 45150 from rfl]
    linear_combination r679
  · erw [seg52CanonBits_get rho 91 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 92 = rho 45150 from rfl]
    linear_combination r678
  · have hb : pmBit 92 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 93 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 94 = rho 45149 from rfl]
    linear_combination r677
  · have hb : pmBit 94 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 95 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
