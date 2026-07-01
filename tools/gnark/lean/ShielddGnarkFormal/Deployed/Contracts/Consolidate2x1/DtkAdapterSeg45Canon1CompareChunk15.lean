import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon1CompareChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon1_compare_chunk15 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 240 ≤ j → j < 253 → pmBit j = false → (seg45Canon1Bits rho)[j]! * (1 - (seg45Canon1Bits rho)[j]! - seg45Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r368, r369, r370, r371, r372, r373, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow368 at r368
  unfold Seg45.relationRow369 at r369
  unfold Seg45.relationRow370 at r370
  unfold Seg45.relationRow371 at r371
  unfold Seg45.relationRow372 at r372
  unfold Seg45.relationRow373 at r373
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 240 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 241 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 242 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 243 = rho 39020 from rfl]
    linear_combination r373
  · have hb : pmBit 243 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 244 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 245 = rho 39019 from rfl]
    linear_combination r372
  · have hb : pmBit 245 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 246 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 247 = rho 39018 from rfl]
    linear_combination r371
  · have hb : pmBit 247 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 248 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 249 = rho 39017 from rfl]
    linear_combination r370
  · have hb : pmBit 249 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 250 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 251 = rho 39016 from rfl]
    linear_combination r369
  · erw [seg45Canon1Bits_get rho 251 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 252 = rho 39016 from rfl]
    linear_combination r368
  · have hb : pmBit 252 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
