import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon1CompareChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon1_compare_chunk15 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, 240 ≤ j → j < 253 → pmBit j = false → (seg5Canon1Bits rho)[j]! * (1 - (seg5Canon1Bits rho)[j]! - seg5Canon1Flag rho (j + 1)) = 0 := by
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
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r368, r369, r370, r371, r372, r373, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg5.relationRow368 at r368
  unfold Seg5.relationRow369 at r369
  unfold Seg5.relationRow370 at r370
  unfold Seg5.relationRow371 at r371
  unfold Seg5.relationRow372 at r372
  unfold Seg5.relationRow373 at r373
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 240 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 241 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 242 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 243 = rho 487 from rfl]
    linear_combination r373
  · have hb : pmBit 243 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 244 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 245 = rho 486 from rfl]
    linear_combination r372
  · have hb : pmBit 245 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 246 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 247 = rho 485 from rfl]
    linear_combination r371
  · have hb : pmBit 247 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 248 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 249 = rho 484 from rfl]
    linear_combination r370
  · have hb : pmBit 249 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg5Canon1Bits_get rho 250 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 251 = rho 483 from rfl]
    linear_combination r369
  · erw [seg5Canon1Bits_get rho 251 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg5Canon1Flag rho 252 = rho 483 from rfl]
    linear_combination r368
  · have hb : pmBit 252 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
