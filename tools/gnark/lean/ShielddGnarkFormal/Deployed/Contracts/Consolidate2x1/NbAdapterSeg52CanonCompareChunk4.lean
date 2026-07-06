import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonCompareChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_compare_chunk4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ j, 64 ≤ j → j < 80 → pmBit j = false → (seg52CanonBits rho)[j]! * (1 - (seg52CanonBits rho)[j]! - seg52CanonFlag rho (j + 1)) = 0 := by
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
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r690, r691, r692, r693, r694, r695, r696, r697, r698, r699, r700, r701, r702, r703, r704, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow690 at r690
  unfold Seg52.relationRow691 at r691
  unfold Seg52.relationRow692 at r692
  unfold Seg52.relationRow693 at r693
  unfold Seg52.relationRow694 at r694
  unfold Seg52.relationRow695 at r695
  unfold Seg52.relationRow696 at r696
  unfold Seg52.relationRow697 at r697
  unfold Seg52.relationRow698 at r698
  unfold Seg52.relationRow699 at r699
  unfold Seg52.relationRow700 at r700
  unfold Seg52.relationRow701 at r701
  unfold Seg52.relationRow702 at r702
  unfold Seg52.relationRow703 at r703
  unfold Seg52.relationRow704 at r704
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 64 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 65 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 66 = rho 45150 from rfl]
    linear_combination r704
  · erw [seg52CanonBits_get rho 66 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 67 = rho 45150 from rfl]
    linear_combination r703
  · erw [seg52CanonBits_get rho 67 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 68 = rho 45150 from rfl]
    linear_combination r702
  · erw [seg52CanonBits_get rho 68 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 69 = rho 45150 from rfl]
    linear_combination r701
  · erw [seg52CanonBits_get rho 69 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 70 = rho 45150 from rfl]
    linear_combination r700
  · erw [seg52CanonBits_get rho 70 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 71 = rho 45150 from rfl]
    linear_combination r699
  · erw [seg52CanonBits_get rho 71 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 72 = rho 45150 from rfl]
    linear_combination r698
  · erw [seg52CanonBits_get rho 72 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 73 = rho 45150 from rfl]
    linear_combination r697
  · erw [seg52CanonBits_get rho 73 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 74 = rho 45150 from rfl]
    linear_combination r696
  · erw [seg52CanonBits_get rho 74 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 75 = rho 45150 from rfl]
    linear_combination r695
  · erw [seg52CanonBits_get rho 75 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 76 = rho 45150 from rfl]
    linear_combination r694
  · erw [seg52CanonBits_get rho 76 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 77 = rho 45150 from rfl]
    linear_combination r693
  · erw [seg52CanonBits_get rho 77 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 78 = rho 45150 from rfl]
    linear_combination r692
  · erw [seg52CanonBits_get rho 78 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 79 = rho 45150 from rfl]
    linear_combination r691
  · erw [seg52CanonBits_get rho 79 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 80 = rho 45150 from rfl]
    linear_combination r690

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
