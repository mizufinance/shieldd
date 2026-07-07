import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon1CompareChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon1_compare_chunk15 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ j, 240 ≤ j → j < 253 → pmBit j = false → (seg16Canon1Bits rho)[j]! * (1 - (seg16Canon1Bits rho)[j]! - seg16Canon1Flag rho (j + 1)) = 0 := by
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
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r368, r369, r370, r371, r372, r373, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg16.relationRow368 at r368
  unfold Seg16.relationRow369 at r369
  unfold Seg16.relationRow370 at r370
  unfold Seg16.relationRow371 at r371
  unfold Seg16.relationRow372 at r372
  unfold Seg16.relationRow373 at r373
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 240 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 241 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 242 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 243 = rho 13364 from rfl]
    linear_combination r373
  · have hb : pmBit 243 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 244 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 245 = rho 13363 from rfl]
    linear_combination r372
  · have hb : pmBit 245 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 246 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 247 = rho 13362 from rfl]
    linear_combination r371
  · have hb : pmBit 247 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 248 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 249 = rho 13361 from rfl]
    linear_combination r370
  · have hb : pmBit 249 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg16Canon1Bits_get rho 250 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 251 = rho 13360 from rfl]
    linear_combination r369
  · erw [seg16Canon1Bits_get rho 251 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg16Canon1Flag rho 252 = rho 13360 from rfl]
    linear_combination r368
  · have hb : pmBit 252 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
