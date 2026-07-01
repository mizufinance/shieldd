import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon1CompareChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon1_compare_chunk12 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ j, 192 ≤ j → j < 208 → pmBit j = false → (seg16Canon1Bits rho)[j]! * (1 - (seg16Canon1Bits rho)[j]! - seg16Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r390, r391, r392, r393, r394, r395, r396, r397, _, _⟩
  unfold Seg16.relationRow390 at r390
  unfold Seg16.relationRow391 at r391
  unfold Seg16.relationRow392 at r392
  unfold Seg16.relationRow393 at r393
  unfold Seg16.relationRow394 at r394
  unfold Seg16.relationRow395 at r395
  unfold Seg16.relationRow396 at r396
  unfold Seg16.relationRow397 at r397
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg16Canon1Bits_get rho 192 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 193 = rho 13390 from rfl]
    linear_combination r397
  · have hb : pmBit 193 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 194 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 195 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 196 = rho 13388 from rfl]
    linear_combination r396
  · have hb : pmBit 196 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 197 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 198 = rho 13387 from rfl]
    linear_combination r395
  · have hb : pmBit 198 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 199 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 200 = rho 13386 from rfl]
    linear_combination r394
  · have hb : pmBit 200 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 201 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 202 = rho 13385 from rfl]
    linear_combination r393
  · have hb : pmBit 202 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 203 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 204 = rho 13384 from rfl]
    linear_combination r392
  · erw [seg16Canon1Bits_get rho 204 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 205 = rho 13384 from rfl]
    linear_combination r391
  · have hb : pmBit 205 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 206 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 207 = rho 13383 from rfl]
    linear_combination r390
  · have hb : pmBit 207 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
