import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonCompareChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_compare_chunk9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ j, 144 ≤ j → j < 160 → pmBit j = false → (seg52CanonBits rho)[j]! * (1 - (seg52CanonBits rho)[j]! - seg52CanonFlag rho (j + 1)) = 0 := by
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
  rcases p8 with ⟨_, _, _, _, _, _, r646, r647, r648, r649, r650, r651, r652, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow646 at r646
  unfold Seg52.relationRow647 at r647
  unfold Seg52.relationRow648 at r648
  unfold Seg52.relationRow649 at r649
  unfold Seg52.relationRow650 at r650
  unfold Seg52.relationRow651 at r651
  unfold Seg52.relationRow652 at r652
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 144 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 145 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 146 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 147 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 148 = rho 45120 from rfl]
    linear_combination r652
  · have hb : pmBit 148 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 149 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 150 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 151 = rho 45118 from rfl]
    linear_combination r651
  · erw [seg52CanonBits_get rho 151 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 152 = rho 45118 from rfl]
    linear_combination r650
  · erw [seg52CanonBits_get rho 152 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 153 = rho 45118 from rfl]
    linear_combination r649
  · erw [seg52CanonBits_get rho 153 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 154 = rho 45118 from rfl]
    linear_combination r648
  · have hb : pmBit 154 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 155 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 156 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 157 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 158 = rho 45115 from rfl]
    linear_combination r647
  · have hb : pmBit 158 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 159 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 160 = rho 45114 from rfl]
    linear_combination r646

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
