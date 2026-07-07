import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon1CompareChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon1_compare_chunk13 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ j, 208 ≤ j → j < 224 → pmBit j = false → (seg34Canon1Bits rho)[j]! * (1 - (seg34Canon1Bits rho)[j]! - seg34Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r381, r382, r383, r384, r385, r386, r387, r388, r389, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow381 at r381
  unfold Seg34.relationRow382 at r382
  unfold Seg34.relationRow383 at r383
  unfold Seg34.relationRow384 at r384
  unfold Seg34.relationRow385 at r385
  unfold Seg34.relationRow386 at r386
  unfold Seg34.relationRow387 at r387
  unfold Seg34.relationRow388 at r388
  unfold Seg34.relationRow389 at r389
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg34Canon1Bits_get rho 208 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 209 = rho 32082 from rfl]
    linear_combination r389
  · erw [seg34Canon1Bits_get rho 209 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 210 = rho 32082 from rfl]
    linear_combination r388
  · have hb : pmBit 210 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 211 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon1Bits_get rho 212 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 213 = rho 32080 from rfl]
    linear_combination r387
  · have hb : pmBit 213 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon1Bits_get rho 214 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 215 = rho 32079 from rfl]
    linear_combination r386
  · erw [seg34Canon1Bits_get rho 215 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 216 = rho 32079 from rfl]
    linear_combination r385
  · erw [seg34Canon1Bits_get rho 216 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 217 = rho 32079 from rfl]
    linear_combination r384
  · have hb : pmBit 217 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon1Bits_get rho 218 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 219 = rho 32078 from rfl]
    linear_combination r383
  · have hb : pmBit 219 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 220 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg34Canon1Bits_get rho 221 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 222 = rho 32076 from rfl]
    linear_combination r382
  · erw [seg34Canon1Bits_get rho 222 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg34Canon1Flag rho 223 = rho 32076 from rfl]
    linear_combination r381
  · have hb : pmBit 223 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
