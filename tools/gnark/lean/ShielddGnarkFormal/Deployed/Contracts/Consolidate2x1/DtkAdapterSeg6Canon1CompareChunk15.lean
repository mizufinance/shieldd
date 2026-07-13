import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon1CompareChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_compare_chunk15 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ j, 240 ≤ j → j < 253 → pmBit j = false → (seg6Canon1Bits rho)[j]! * (1 - (seg6Canon1Bits rho)[j]! - seg6Canon1Flag rho (j + 1)) = 0 := by
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
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r368, r369, r370, r371, r372, r373, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg6.relationRow368 at r368
  unfold Seg6.relationRow369 at r369
  unfold Seg6.relationRow370 at r370
  unfold Seg6.relationRow371 at r371
  unfold Seg6.relationRow372 at r372
  unfold Seg6.relationRow373 at r373
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 240 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 241 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 242 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 243 = rho 1190 from rfl]
    linear_combination r373
  · have hb : pmBit 243 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 244 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 245 = rho 1189 from rfl]
    linear_combination r372
  · have hb : pmBit 245 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 246 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 247 = rho 1188 from rfl]
    linear_combination r371
  · have hb : pmBit 247 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 248 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 249 = rho 1187 from rfl]
    linear_combination r370
  · have hb : pmBit 249 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg6Canon1Bits_get rho 250 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 251 = rho 1186 from rfl]
    linear_combination r369
  · erw [seg6Canon1Bits_get rho 251 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg6Canon1Flag rho 252 = rho 1186 from rfl]
    linear_combination r368
  · have hb : pmBit 252 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
