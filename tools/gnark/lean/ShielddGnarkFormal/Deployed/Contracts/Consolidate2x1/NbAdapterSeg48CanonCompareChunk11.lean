import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk11 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 176 ≤ j → j < 192 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
  unfold Seg48.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, p7, _, _,
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
  unfold Seg48.relationPart7 at p7
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r628, r629, r630, r631, r632, r633, r634, r635, r636, r637, _, _⟩
  unfold Seg48.relationRow628 at r628
  unfold Seg48.relationRow629 at r629
  unfold Seg48.relationRow630 at r630
  unfold Seg48.relationRow631 at r631
  unfold Seg48.relationRow632 at r632
  unfold Seg48.relationRow633 at r633
  unfold Seg48.relationRow634 at r634
  unfold Seg48.relationRow635 at r635
  unfold Seg48.relationRow636 at r636
  unfold Seg48.relationRow637 at r637
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 176 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 177 = rho 33474 from rfl]
    linear_combination r637
  · erw [seg48CanonBits_get rho 177 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 178 = rho 33474 from rfl]
    linear_combination r636
  · have hb : pmBit 178 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 179 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 180 = rho 33473 from rfl]
    linear_combination r635
  · have hb : pmBit 180 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 181 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 182 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 183 = rho 33471 from rfl]
    linear_combination r634
  · have hb : pmBit 183 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 184 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 185 = rho 33470 from rfl]
    linear_combination r633
  · erw [seg48CanonBits_get rho 185 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 186 = rho 33470 from rfl]
    linear_combination r632
  · erw [seg48CanonBits_get rho 186 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 187 = rho 33470 from rfl]
    linear_combination r631
  · erw [seg48CanonBits_get rho 187 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 188 = rho 33470 from rfl]
    linear_combination r630
  · erw [seg48CanonBits_get rho 188 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 189 = rho 33470 from rfl]
    linear_combination r629
  · have hb : pmBit 189 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 190 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 191 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 192 = rho 33468 from rfl]
    linear_combination r628

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
