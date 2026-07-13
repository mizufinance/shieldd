import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon1CompareChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_compare_chunk13 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 208 ≤ j → j < 224 → pmBit j = false → (seg6Canon1Bits rho)[j]! * (1 - (seg6Canon1Bits rho)[j]! - seg6Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r381, r382, r383, r384, r385, r386, r387, r388, r389, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow381 at r381
  unfold Seg6.relationRow382 at r382
  unfold Seg6.relationRow383 at r383
  unfold Seg6.relationRow384 at r384
  unfold Seg6.relationRow385 at r385
  unfold Seg6.relationRow386 at r386
  unfold Seg6.relationRow387 at r387
  unfold Seg6.relationRow388 at r388
  unfold Seg6.relationRow389 at r389
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg6Canon1Bits_get rho 208 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 209 = rho 1208 from rfl]
    linear_combination r389
  · erw [seg6Canon1Bits_get rho 209 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 210 = rho 1208 from rfl]
    linear_combination r388
  · have hb : pmBit 210 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 211 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 212 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 213 = rho 1206 from rfl]
    linear_combination r387
  · have hb : pmBit 213 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 214 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 215 = rho 1205 from rfl]
    linear_combination r386
  · erw [seg6Canon1Bits_get rho 215 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 216 = rho 1205 from rfl]
    linear_combination r385
  · erw [seg6Canon1Bits_get rho 216 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 217 = rho 1205 from rfl]
    linear_combination r384
  · have hb : pmBit 217 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 218 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 219 = rho 1204 from rfl]
    linear_combination r383
  · have hb : pmBit 219 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 220 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 221 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 222 = rho 1202 from rfl]
    linear_combination r382
  · erw [seg6Canon1Bits_get rho 222 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 223 = rho 1202 from rfl]
    linear_combination r381
  · have hb : pmBit 223 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
