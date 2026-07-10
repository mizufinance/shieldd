import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk14 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 224 ≤ j → j < 240 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
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
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r604, r605, r606, r607, r608, r609, r610, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow604 at r604
  unfold Seg48.relationRow605 at r605
  unfold Seg48.relationRow606 at r606
  unfold Seg48.relationRow607 at r607
  unfold Seg48.relationRow608 at r608
  unfold Seg48.relationRow609 at r609
  unfold Seg48.relationRow610 at r610
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg48CanonBits_get rho 224 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 225 = rho 33453 from rfl]
    linear_combination r610
  · have hb : pmBit 225 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 226 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 227 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 228 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 229 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 230 = rho 33449 from rfl]
    linear_combination r609
  · have hb : pmBit 230 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 231 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 232 = rho 33448 from rfl]
    linear_combination r608
  · have hb : pmBit 232 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 233 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 234 = rho 33447 from rfl]
    linear_combination r607
  · have hb : pmBit 234 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 235 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 236 = rho 33446 from rfl]
    linear_combination r606
  · erw [seg48CanonBits_get rho 236 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 237 = rho 33446 from rfl]
    linear_combination r605
  · have hb : pmBit 237 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 238 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 239 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 240 = rho 33444 from rfl]
    linear_combination r604

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
