import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk8 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 128 ≤ j → j < 144 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
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
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r653, r654, r655, r656, r657, r658, r659, r660, r661, r662, r663, r664, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow653 at r653
  unfold Seg48.relationRow654 at r654
  unfold Seg48.relationRow655 at r655
  unfold Seg48.relationRow656 at r656
  unfold Seg48.relationRow657 at r657
  unfold Seg48.relationRow658 at r658
  unfold Seg48.relationRow659 at r659
  unfold Seg48.relationRow660 at r660
  unfold Seg48.relationRow661 at r661
  unfold Seg48.relationRow662 at r662
  unfold Seg48.relationRow663 at r663
  unfold Seg48.relationRow664 at r664
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 128 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 129 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 130 = rho 33494 from rfl]
    linear_combination r664
  · erw [seg48CanonBits_get rho 130 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 131 = rho 33494 from rfl]
    linear_combination r663
  · erw [seg48CanonBits_get rho 131 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 132 = rho 33494 from rfl]
    linear_combination r662
  · erw [seg48CanonBits_get rho 132 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 133 = rho 33494 from rfl]
    linear_combination r661
  · erw [seg48CanonBits_get rho 133 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 134 = rho 33494 from rfl]
    linear_combination r660
  · erw [seg48CanonBits_get rho 134 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 135 = rho 33494 from rfl]
    linear_combination r659
  · erw [seg48CanonBits_get rho 135 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 136 = rho 33494 from rfl]
    linear_combination r658
  · erw [seg48CanonBits_get rho 136 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 137 = rho 33494 from rfl]
    linear_combination r657
  · erw [seg48CanonBits_get rho 137 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 138 = rho 33494 from rfl]
    linear_combination r656
  · erw [seg48CanonBits_get rho 138 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 139 = rho 33494 from rfl]
    linear_combination r655
  · erw [seg48CanonBits_get rho 139 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 140 = rho 33494 from rfl]
    linear_combination r654
  · have hb : pmBit 140 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 141 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 142 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 143 = rho 33492 from rfl]
    linear_combination r653
  · have hb : pmBit 143 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
