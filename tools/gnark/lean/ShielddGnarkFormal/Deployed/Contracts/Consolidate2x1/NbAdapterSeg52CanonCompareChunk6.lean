import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonCompareChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_compare_chunk6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ j, 96 ≤ j → j < 112 → pmBit j = false → (seg52CanonBits rho)[j]! * (1 - (seg52CanonBits rho)[j]! - seg52CanonFlag rho (j + 1)) = 0 := by
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
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r673, r674, r675, r676, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow673 at r673
  unfold Seg52.relationRow674 at r674
  unfold Seg52.relationRow675 at r675
  unfold Seg52.relationRow676 at r676
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg52CanonBits_get rho 96 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 97 = rho 45147 from rfl]
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
  · erw [seg52CanonBits_get rho 104 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 105 = rho 45140 from rfl]
    linear_combination r675
  · have hb : pmBit 105 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 106 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 107 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 108 = rho 45138 from rfl]
    linear_combination r674
  · have hb : pmBit 108 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 109 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 110 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 111 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 112 = rho 45135 from rfl]
    linear_combination r673

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
