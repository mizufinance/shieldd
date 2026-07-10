import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk2 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 32 ≤ j → j < 48 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
  unfold Seg48.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, p9,
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
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r717, r718, r719⟩
  unfold Seg48.relationPart9 at p9
  rcases p9 with ⟨r720, r721, r722, r723, r724, r725, r726, r727, r728, r729, r730, r731, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow717 at r717
  unfold Seg48.relationRow718 at r718
  unfold Seg48.relationRow719 at r719
  unfold Seg48.relationRow720 at r720
  unfold Seg48.relationRow721 at r721
  unfold Seg48.relationRow722 at r722
  unfold Seg48.relationRow723 at r723
  unfold Seg48.relationRow724 at r724
  unfold Seg48.relationRow725 at r725
  unfold Seg48.relationRow726 at r726
  unfold Seg48.relationRow727 at r727
  unfold Seg48.relationRow728 at r728
  unfold Seg48.relationRow729 at r729
  unfold Seg48.relationRow730 at r730
  unfold Seg48.relationRow731 at r731
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 32 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 33 = rho 33524 from rfl]
    linear_combination r731
  · erw [seg48CanonBits_get rho 33 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 34 = rho 33524 from rfl]
    linear_combination r730
  · erw [seg48CanonBits_get rho 34 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 35 = rho 33524 from rfl]
    linear_combination r729
  · erw [seg48CanonBits_get rho 35 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 36 = rho 33524 from rfl]
    linear_combination r728
  · erw [seg48CanonBits_get rho 36 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 37 = rho 33524 from rfl]
    linear_combination r727
  · erw [seg48CanonBits_get rho 37 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 38 = rho 33524 from rfl]
    linear_combination r726
  · erw [seg48CanonBits_get rho 38 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 39 = rho 33524 from rfl]
    linear_combination r725
  · erw [seg48CanonBits_get rho 39 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 40 = rho 33524 from rfl]
    linear_combination r724
  · erw [seg48CanonBits_get rho 40 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 41 = rho 33524 from rfl]
    linear_combination r723
  · erw [seg48CanonBits_get rho 41 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 42 = rho 33524 from rfl]
    linear_combination r722
  · erw [seg48CanonBits_get rho 42 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 43 = rho 33524 from rfl]
    linear_combination r721
  · erw [seg48CanonBits_get rho 43 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 44 = rho 33524 from rfl]
    linear_combination r720
  · erw [seg48CanonBits_get rho 44 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 45 = rho 33524 from rfl]
    linear_combination r719
  · erw [seg48CanonBits_get rho 45 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 46 = rho 33524 from rfl]
    linear_combination r718
  · erw [seg48CanonBits_get rho 46 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 47 = rho 33524 from rfl]
    linear_combination r717
  · have hb : pmBit 47 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
