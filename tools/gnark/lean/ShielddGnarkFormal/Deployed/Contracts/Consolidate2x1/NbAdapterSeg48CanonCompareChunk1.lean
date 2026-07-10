import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk1 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 16 ≤ j → j < 32 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
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
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r732, r733, r734, r735, r736, r737, r738, r739, r740, r741, r742, r743, r744, r745, r746, r747, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow732 at r732
  unfold Seg48.relationRow733 at r733
  unfold Seg48.relationRow734 at r734
  unfold Seg48.relationRow735 at r735
  unfold Seg48.relationRow736 at r736
  unfold Seg48.relationRow737 at r737
  unfold Seg48.relationRow738 at r738
  unfold Seg48.relationRow739 at r739
  unfold Seg48.relationRow740 at r740
  unfold Seg48.relationRow741 at r741
  unfold Seg48.relationRow742 at r742
  unfold Seg48.relationRow743 at r743
  unfold Seg48.relationRow744 at r744
  unfold Seg48.relationRow745 at r745
  unfold Seg48.relationRow746 at r746
  unfold Seg48.relationRow747 at r747
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 16 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 17 = rho 33524 from rfl]
    linear_combination r747
  · erw [seg48CanonBits_get rho 17 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 18 = rho 33524 from rfl]
    linear_combination r746
  · erw [seg48CanonBits_get rho 18 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 19 = rho 33524 from rfl]
    linear_combination r745
  · erw [seg48CanonBits_get rho 19 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 20 = rho 33524 from rfl]
    linear_combination r744
  · erw [seg48CanonBits_get rho 20 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 21 = rho 33524 from rfl]
    linear_combination r743
  · erw [seg48CanonBits_get rho 21 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 22 = rho 33524 from rfl]
    linear_combination r742
  · erw [seg48CanonBits_get rho 22 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 23 = rho 33524 from rfl]
    linear_combination r741
  · erw [seg48CanonBits_get rho 23 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 24 = rho 33524 from rfl]
    linear_combination r740
  · erw [seg48CanonBits_get rho 24 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 25 = rho 33524 from rfl]
    linear_combination r739
  · erw [seg48CanonBits_get rho 25 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 26 = rho 33524 from rfl]
    linear_combination r738
  · erw [seg48CanonBits_get rho 26 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 27 = rho 33524 from rfl]
    linear_combination r737
  · erw [seg48CanonBits_get rho 27 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 28 = rho 33524 from rfl]
    linear_combination r736
  · erw [seg48CanonBits_get rho 28 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 29 = rho 33524 from rfl]
    linear_combination r735
  · erw [seg48CanonBits_get rho 29 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 30 = rho 33524 from rfl]
    linear_combination r734
  · erw [seg48CanonBits_get rho 30 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 31 = rho 33524 from rfl]
    linear_combination r733
  · erw [seg48CanonBits_get rho 31 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 32 = rho 33524 from rfl]
    linear_combination r732

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
