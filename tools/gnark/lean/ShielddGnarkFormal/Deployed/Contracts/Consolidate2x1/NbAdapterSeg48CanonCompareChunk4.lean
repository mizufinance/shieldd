import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk4 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
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
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r690, r691, r692, r693, r694, r695, r696, r697, r698, r699, r700, r701, r702, r703, r704, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow690 at r690
  unfold Seg48.relationRow691 at r691
  unfold Seg48.relationRow692 at r692
  unfold Seg48.relationRow693 at r693
  unfold Seg48.relationRow694 at r694
  unfold Seg48.relationRow695 at r695
  unfold Seg48.relationRow696 at r696
  unfold Seg48.relationRow697 at r697
  unfold Seg48.relationRow698 at r698
  unfold Seg48.relationRow699 at r699
  unfold Seg48.relationRow700 at r700
  unfold Seg48.relationRow701 at r701
  unfold Seg48.relationRow702 at r702
  unfold Seg48.relationRow703 at r703
  unfold Seg48.relationRow704 at r704
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 66 = rho 33518 from rfl]
    linear_combination r704
  · erw [seg48CanonBits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 67 = rho 33518 from rfl]
    linear_combination r703
  · erw [seg48CanonBits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 68 = rho 33518 from rfl]
    linear_combination r702
  · erw [seg48CanonBits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 69 = rho 33518 from rfl]
    linear_combination r701
  · erw [seg48CanonBits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 70 = rho 33518 from rfl]
    linear_combination r700
  · erw [seg48CanonBits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 71 = rho 33518 from rfl]
    linear_combination r699
  · erw [seg48CanonBits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 72 = rho 33518 from rfl]
    linear_combination r698
  · erw [seg48CanonBits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 73 = rho 33518 from rfl]
    linear_combination r697
  · erw [seg48CanonBits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 74 = rho 33518 from rfl]
    linear_combination r696
  · erw [seg48CanonBits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 75 = rho 33518 from rfl]
    linear_combination r695
  · erw [seg48CanonBits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 76 = rho 33518 from rfl]
    linear_combination r694
  · erw [seg48CanonBits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 77 = rho 33518 from rfl]
    linear_combination r693
  · erw [seg48CanonBits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 78 = rho 33518 from rfl]
    linear_combination r692
  · erw [seg48CanonBits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 79 = rho 33518 from rfl]
    linear_combination r691
  · erw [seg48CanonBits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 80 = rho 33518 from rfl]
    linear_combination r690

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
