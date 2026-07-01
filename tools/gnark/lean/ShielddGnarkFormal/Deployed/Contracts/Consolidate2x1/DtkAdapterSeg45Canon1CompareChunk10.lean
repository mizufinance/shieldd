import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon1CompareChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon1_compare_chunk10 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ j, 160 ≤ j → j < 176 → pmBit j = false → (seg45Canon1Bits rho)[j]! * (1 - (seg45Canon1Bits rho)[j]! - seg45Canon1Flag rho (j + 1)) = 0 := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, r408, r409, r410, r411, r412, r413, r414, r415, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow408 at r408
  unfold Seg45.relationRow409 at r409
  unfold Seg45.relationRow410 at r410
  unfold Seg45.relationRow411 at r411
  unfold Seg45.relationRow412 at r412
  unfold Seg45.relationRow413 at r413
  unfold Seg45.relationRow414 at r414
  unfold Seg45.relationRow415 at r415
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [seg45Canon1Bits_get rho 160 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 161 = rho 39060 from rfl]
    linear_combination r415
  · have hb : pmBit 161 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 162 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 163 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 164 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 165 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 166 = rho 39056 from rfl]
    linear_combination r414
  · erw [seg45Canon1Bits_get rho 166 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 167 = rho 39056 from rfl]
    linear_combination r413
  · erw [seg45Canon1Bits_get rho 167 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 168 = rho 39056 from rfl]
    linear_combination r412
  · have hb : pmBit 168 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 169 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 170 = rho 39055 from rfl]
    linear_combination r411
  · have hb : pmBit 170 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 171 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 172 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 173 = rho 39053 from rfl]
    linear_combination r410
  · erw [seg45Canon1Bits_get rho 173 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 174 = rho 39053 from rfl]
    linear_combination r409
  · have hb : pmBit 174 = true := by decide +kernel
    simp [hb] at hpm
  · erw [seg45Canon1Bits_get rho 175 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show seg45Canon1Flag rho 176 = rho 39052 from rfl]
    linear_combination r408

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
