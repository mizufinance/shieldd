import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk9 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 144 ≤ j → j < 160 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
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
  rcases p8 with ⟨_, _, _, _, _, _, r646, r647, r648, r649, r650, r651, r652, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow646 at r646
  unfold Seg48.relationRow647 at r647
  unfold Seg48.relationRow648 at r648
  unfold Seg48.relationRow649 at r649
  unfold Seg48.relationRow650 at r650
  unfold Seg48.relationRow651 at r651
  unfold Seg48.relationRow652 at r652
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 144 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 145 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 146 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 147 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 148 = rho 33488 from rfl]
    linear_combination r652
  · have hb : pmBit 148 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 149 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 150 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 151 = rho 33486 from rfl]
    linear_combination r651
  · erw [seg48CanonBits_get rho 151 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 152 = rho 33486 from rfl]
    linear_combination r650
  · erw [seg48CanonBits_get rho 152 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 153 = rho 33486 from rfl]
    linear_combination r649
  · erw [seg48CanonBits_get rho 153 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 154 = rho 33486 from rfl]
    linear_combination r648
  · have hb : pmBit 154 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 155 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 156 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 157 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 158 = rho 33483 from rfl]
    linear_combination r647
  · have hb : pmBit 158 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 159 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 160 = rho 33482 from rfl]
    linear_combination r646

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
