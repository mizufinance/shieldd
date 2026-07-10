import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrue

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk0 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 0 ≤ j → j < 16 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
  unfold Seg48.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
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
  unfold Seg48.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r748, r749, r750, r751, r752, r753, r754, r755, r756, r757, r758, r759, r760, r761, r762, r763, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow748 at r748
  unfold Seg48.relationRow749 at r749
  unfold Seg48.relationRow750 at r750
  unfold Seg48.relationRow751 at r751
  unfold Seg48.relationRow752 at r752
  unfold Seg48.relationRow753 at r753
  unfold Seg48.relationRow754 at r754
  unfold Seg48.relationRow755 at r755
  unfold Seg48.relationRow756 at r756
  unfold Seg48.relationRow757 at r757
  unfold Seg48.relationRow758 at r758
  unfold Seg48.relationRow759 at r759
  unfold Seg48.relationRow760 at r760
  unfold Seg48.relationRow761 at r761
  unfold Seg48.relationRow762 at r762
  unfold Seg48.relationRow763 at r763
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 0 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 1 = rho 33524 from rfl]
    linear_combination r763
  · erw [seg48CanonBits_get rho 1 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 2 = rho 33524 from rfl]
    linear_combination r762
  · erw [seg48CanonBits_get rho 2 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 3 = rho 33524 from rfl]
    linear_combination r761
  · erw [seg48CanonBits_get rho 3 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 4 = rho 33524 from rfl]
    linear_combination r760
  · erw [seg48CanonBits_get rho 4 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 5 = rho 33524 from rfl]
    linear_combination r759
  · erw [seg48CanonBits_get rho 5 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 6 = rho 33524 from rfl]
    linear_combination r758
  · erw [seg48CanonBits_get rho 6 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 7 = rho 33524 from rfl]
    linear_combination r757
  · erw [seg48CanonBits_get rho 7 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 8 = rho 33524 from rfl]
    linear_combination r756
  · erw [seg48CanonBits_get rho 8 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 9 = rho 33524 from rfl]
    linear_combination r755
  · erw [seg48CanonBits_get rho 9 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 10 = rho 33524 from rfl]
    linear_combination r754
  · erw [seg48CanonBits_get rho 10 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 11 = rho 33524 from rfl]
    linear_combination r753
  · erw [seg48CanonBits_get rho 11 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 12 = rho 33524 from rfl]
    linear_combination r752
  · erw [seg48CanonBits_get rho 12 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 13 = rho 33524 from rfl]
    linear_combination r751
  · erw [seg48CanonBits_get rho 13 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 14 = rho 33524 from rfl]
    linear_combination r750
  · erw [seg48CanonBits_get rho 14 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 15 = rho 33524 from rfl]
    linear_combination r749
  · erw [seg48CanonBits_get rho 15 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 16 = rho 33524 from rfl]
    linear_combination r748

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
