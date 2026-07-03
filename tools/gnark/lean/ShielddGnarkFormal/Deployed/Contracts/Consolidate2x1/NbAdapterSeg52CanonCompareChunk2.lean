import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonCompareChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_compare_chunk2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ j, 32 ≤ j → j < 48 → pmBit j = false → (seg52CanonBits rho)[j]! * (1 - (seg52CanonBits rho)[j]! - seg52CanonFlag rho (j + 1)) = 0 := by
  unfold Seg52.relation at h
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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Seg52.relationPart8 at p8
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r717, r718, r719⟩
  unfold Seg52.relationPart9 at p9
  rcases p9 with ⟨r720, r721, r722, r723, r724, r725, r726, r727, r728, r729, r730, r731, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow717 at r717
  unfold Seg52.relationRow718 at r718
  unfold Seg52.relationRow719 at r719
  unfold Seg52.relationRow720 at r720
  unfold Seg52.relationRow721 at r721
  unfold Seg52.relationRow722 at r722
  unfold Seg52.relationRow723 at r723
  unfold Seg52.relationRow724 at r724
  unfold Seg52.relationRow725 at r725
  unfold Seg52.relationRow726 at r726
  unfold Seg52.relationRow727 at r727
  unfold Seg52.relationRow728 at r728
  unfold Seg52.relationRow729 at r729
  unfold Seg52.relationRow730 at r730
  unfold Seg52.relationRow731 at r731
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg52CanonBits_get rho 32 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 33 = rho 45156 from rfl]
    linear_combination r731
  · erw [seg52CanonBits_get rho 33 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 34 = rho 45156 from rfl]
    linear_combination r730
  · erw [seg52CanonBits_get rho 34 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 35 = rho 45156 from rfl]
    linear_combination r729
  · erw [seg52CanonBits_get rho 35 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 36 = rho 45156 from rfl]
    linear_combination r728
  · erw [seg52CanonBits_get rho 36 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 37 = rho 45156 from rfl]
    linear_combination r727
  · erw [seg52CanonBits_get rho 37 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 38 = rho 45156 from rfl]
    linear_combination r726
  · erw [seg52CanonBits_get rho 38 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 39 = rho 45156 from rfl]
    linear_combination r725
  · erw [seg52CanonBits_get rho 39 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 40 = rho 45156 from rfl]
    linear_combination r724
  · erw [seg52CanonBits_get rho 40 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 41 = rho 45156 from rfl]
    linear_combination r723
  · erw [seg52CanonBits_get rho 41 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 42 = rho 45156 from rfl]
    linear_combination r722
  · erw [seg52CanonBits_get rho 42 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 43 = rho 45156 from rfl]
    linear_combination r721
  · erw [seg52CanonBits_get rho 43 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 44 = rho 45156 from rfl]
    linear_combination r720
  · erw [seg52CanonBits_get rho 44 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 45 = rho 45156 from rfl]
    linear_combination r719
  · erw [seg52CanonBits_get rho 45 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 46 = rho 45156 from rfl]
    linear_combination r718
  · erw [seg52CanonBits_get rho 46 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 47 = rho 45156 from rfl]
    linear_combination r717
  · have hb : pmBit 47 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
