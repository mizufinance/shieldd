import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon1CompareChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon1_compare_chunk13 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 208 ≤ j → j < 224 → pmBit j = false → (seg5Canon1Bits rho)[j]! * (1 - (seg5Canon1Bits rho)[j]! - seg5Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r381, r382, r383, r384, r385, r386, r387, r388, r389, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow381 at r381
  unfold Seg5.relationRow382 at r382
  unfold Seg5.relationRow383 at r383
  unfold Seg5.relationRow384 at r384
  unfold Seg5.relationRow385 at r385
  unfold Seg5.relationRow386 at r386
  unfold Seg5.relationRow387 at r387
  unfold Seg5.relationRow388 at r388
  unfold Seg5.relationRow389 at r389
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg5Canon1Bits_get rho 208 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 209 = rho 505 from rfl]
    linear_combination r389
  · erw [seg5Canon1Bits_get rho 209 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 210 = rho 505 from rfl]
    linear_combination r388
  · have hb : pmBit 210 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 211 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 212 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 213 = rho 503 from rfl]
    linear_combination r387
  · have hb : pmBit 213 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 214 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 215 = rho 502 from rfl]
    linear_combination r386
  · erw [seg5Canon1Bits_get rho 215 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 216 = rho 502 from rfl]
    linear_combination r385
  · erw [seg5Canon1Bits_get rho 216 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 217 = rho 502 from rfl]
    linear_combination r384
  · have hb : pmBit 217 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 218 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 219 = rho 501 from rfl]
    linear_combination r383
  · have hb : pmBit 219 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 220 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 221 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 222 = rho 499 from rfl]
    linear_combination r382
  · erw [seg5Canon1Bits_get rho 222 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 223 = rho 499 from rfl]
    linear_combination r381
  · have hb : pmBit 223 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
