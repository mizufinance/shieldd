import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon1CompareChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon1_compare_chunk11 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 176 ≤ j → j < 192 → pmBit j = false → (seg45Canon1Bits rho)[j]! * (1 - (seg45Canon1Bits rho)[j]! - seg45Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, p4, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r398, r399⟩
  unfold Seg45.relationPart5 at p5
  rcases p5 with ⟨r400, r401, r402, r403, r404, r405, r406, r407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow398 at r398
  unfold Seg45.relationRow399 at r399
  unfold Seg45.relationRow400 at r400
  unfold Seg45.relationRow401 at r401
  unfold Seg45.relationRow402 at r402
  unfold Seg45.relationRow403 at r403
  unfold Seg45.relationRow404 at r404
  unfold Seg45.relationRow405 at r405
  unfold Seg45.relationRow406 at r406
  unfold Seg45.relationRow407 at r407
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg45Canon1Bits_get rho 176 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 177 = rho 39052 from rfl]
    linear_combination r407
  · erw [seg45Canon1Bits_get rho 177 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 178 = rho 39052 from rfl]
    linear_combination r406
  · have hb : pmBit 178 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 179 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 180 = rho 39051 from rfl]
    linear_combination r405
  · have hb : pmBit 180 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 181 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 182 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 183 = rho 39049 from rfl]
    linear_combination r404
  · have hb : pmBit 183 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 184 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 185 = rho 39048 from rfl]
    linear_combination r403
  · erw [seg45Canon1Bits_get rho 185 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 186 = rho 39048 from rfl]
    linear_combination r402
  · erw [seg45Canon1Bits_get rho 186 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 187 = rho 39048 from rfl]
    linear_combination r401
  · erw [seg45Canon1Bits_get rho 187 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 188 = rho 39048 from rfl]
    linear_combination r400
  · erw [seg45Canon1Bits_get rho 188 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 189 = rho 39048 from rfl]
    linear_combination r399
  · have hb : pmBit 189 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 190 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 191 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 192 = rho 39046 from rfl]
    linear_combination r398

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
