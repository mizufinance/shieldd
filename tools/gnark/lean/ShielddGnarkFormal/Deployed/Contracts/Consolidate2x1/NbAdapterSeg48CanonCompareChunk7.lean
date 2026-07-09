import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk7 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 112 ≤ j → j < 128 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
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
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r665, r666, r667, r668, r669, r670, r671, r672, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow665 at r665
  unfold Seg48.relationRow666 at r666
  unfold Seg48.relationRow667 at r667
  unfold Seg48.relationRow668 at r668
  unfold Seg48.relationRow669 at r669
  unfold Seg48.relationRow670 at r670
  unfold Seg48.relationRow671 at r671
  unfold Seg48.relationRow672 at r672
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 112 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 113 = rho 33503 from rfl]
    linear_combination r672
  · have hb : pmBit 113 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 114 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 115 = rho 33502 from rfl]
    linear_combination r671
  · have hb : pmBit 115 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 116 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 117 = rho 33501 from rfl]
    linear_combination r670
  · have hb : pmBit 117 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 118 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 119 = rho 33500 from rfl]
    linear_combination r669
  · have hb : pmBit 119 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 120 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 121 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 122 = rho 33498 from rfl]
    linear_combination r668
  · erw [seg48CanonBits_get rho 122 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 123 = rho 33498 from rfl]
    linear_combination r667
  · have hb : pmBit 123 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 124 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 125 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 126 = rho 33496 from rfl]
    linear_combination r666
  · have hb : pmBit 126 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 127 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 128 = rho 33495 from rfl]
    linear_combination r665

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
