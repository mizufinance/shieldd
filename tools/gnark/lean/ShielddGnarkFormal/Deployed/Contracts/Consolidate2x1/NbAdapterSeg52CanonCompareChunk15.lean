import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonCompareChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_compare_chunk15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ j, 240 ≤ j → j < 253 → pmBit j = false → (seg52CanonBits rho)[j]! * (1 - (seg52CanonBits rho)[j]! - seg52CanonFlag rho (j + 1)) = 0 := by
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
  rcases p7 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r598, r599, r600, r601, r602, r603, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg52.relationRow598 at r598
  unfold Seg52.relationRow599 at r599
  unfold Seg52.relationRow600 at r600
  unfold Seg52.relationRow601 at r601
  unfold Seg52.relationRow602 at r602
  unfold Seg52.relationRow603 at r603
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 240 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 241 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 242 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 243 = rho 45074 from rfl]
    linear_combination r603
  · have hb : pmBit 243 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 244 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 245 = rho 45073 from rfl]
    linear_combination r602
  · have hb : pmBit 245 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 246 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 247 = rho 45072 from rfl]
    linear_combination r601
  · have hb : pmBit 247 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 248 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 249 = rho 45071 from rfl]
    linear_combination r600
  · have hb : pmBit 249 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg52CanonBits_get rho 250 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 251 = rho 45070 from rfl]
    linear_combination r599
  · erw [seg52CanonBits_get rho 251 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg52CanonFlag rho 252 = rho 45070 from rfl]
    linear_combination r598
  · have hb : pmBit 252 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
