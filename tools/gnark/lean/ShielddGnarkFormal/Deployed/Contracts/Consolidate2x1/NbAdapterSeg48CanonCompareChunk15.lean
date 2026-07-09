import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompareChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_compare_chunk15 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ j, 240 ≤ j → j < 253 → pmBit j = false → (seg48CanonBits rho)[j]! * (1 - (seg48CanonBits rho)[j]! - seg48CanonFlag rho (j + 1)) = 0 := by
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
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r598, r599, r600, r601, r602, r603, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg48.relationRow598 at r598
  unfold Seg48.relationRow599 at r599
  unfold Seg48.relationRow600 at r600
  unfold Seg48.relationRow601 at r601
  unfold Seg48.relationRow602 at r602
  unfold Seg48.relationRow603 at r603
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 240 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 241 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 242 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 243 = rho 33442 from rfl]
    linear_combination r603
  · have hb : pmBit 243 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 244 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 245 = rho 33441 from rfl]
    linear_combination r602
  · have hb : pmBit 245 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 246 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 247 = rho 33440 from rfl]
    linear_combination r601
  · have hb : pmBit 247 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 248 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 249 = rho 33439 from rfl]
    linear_combination r600
  · have hb : pmBit 249 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg48CanonBits_get rho 250 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 251 = rho 33438 from rfl]
    linear_combination r599
  · erw [seg48CanonBits_get rho 251 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg48CanonFlag rho 252 = rho 33438 from rfl]
    linear_combination r598
  · have hb : pmBit 252 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
