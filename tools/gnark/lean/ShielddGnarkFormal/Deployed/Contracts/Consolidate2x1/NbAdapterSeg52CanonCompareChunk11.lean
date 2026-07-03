import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonCompareChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_compare_chunk11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ j, 176 ≤ j → j < 192 → pmBit j = false → (seg52CanonBits rho)[j]! * (1 - (seg52CanonBits rho)[j]! - seg52CanonFlag rho (j + 1)) = 0 := by
  unfold Seg52.relation at h
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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Seg52.relationPart7 at p7
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r628, r629, r630, r631, r632, r633, r634, r635, r636, r637, _, _⟩
  unfold Seg52.relationRow628 at r628
  unfold Seg52.relationRow629 at r629
  unfold Seg52.relationRow630 at r630
  unfold Seg52.relationRow631 at r631
  unfold Seg52.relationRow632 at r632
  unfold Seg52.relationRow633 at r633
  unfold Seg52.relationRow634 at r634
  unfold Seg52.relationRow635 at r635
  unfold Seg52.relationRow636 at r636
  unfold Seg52.relationRow637 at r637
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg52CanonBits_get rho 176 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 177 = rho 45106 from rfl]
    linear_combination r637
  · erw [seg52CanonBits_get rho 177 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 178 = rho 45106 from rfl]
    linear_combination r636
  · have hb : pmBit 178 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 179 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 180 = rho 45105 from rfl]
    linear_combination r635
  · have hb : pmBit 180 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 181 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 182 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 183 = rho 45103 from rfl]
    linear_combination r634
  · have hb : pmBit 183 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 184 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 185 = rho 45102 from rfl]
    linear_combination r633
  · erw [seg52CanonBits_get rho 185 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 186 = rho 45102 from rfl]
    linear_combination r632
  · erw [seg52CanonBits_get rho 186 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 187 = rho 45102 from rfl]
    linear_combination r631
  · erw [seg52CanonBits_get rho 187 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 188 = rho 45102 from rfl]
    linear_combination r630
  · erw [seg52CanonBits_get rho 188 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 189 = rho 45102 from rfl]
    linear_combination r629
  · have hb : pmBit 189 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 190 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 191 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 192 = rho 45100 from rfl]
    linear_combination r628

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
