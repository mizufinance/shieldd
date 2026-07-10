import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk6 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 96 ≤ j → j < 112 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
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
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r673, r674, r675, r676, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow673 at r673
  unfold Seg48.relationRow674 at r674
  unfold Seg48.relationRow675 at r675
  unfold Seg48.relationRow676 at r676
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 96 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 97 = rho 33515 from rfl]
    linear_combination r676
  · have hb : pmBit 97 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 98 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 99 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 100 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 101 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 102 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 103 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 104 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 105 = rho 33508 from rfl]
    linear_combination r675
  · have hb : pmBit 105 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 106 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 107 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 108 = rho 33506 from rfl]
    linear_combination r674
  · have hb : pmBit 108 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 109 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 110 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 111 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 112 = rho 33503 from rfl]
    linear_combination r673

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
