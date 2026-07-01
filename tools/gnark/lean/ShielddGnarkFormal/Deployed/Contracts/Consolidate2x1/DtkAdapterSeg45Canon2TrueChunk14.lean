import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2TrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_flag_step_chunk14 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → seg45Canon2Flag rho m = trueFactor (seg45Canon2Bits rho) m * seg45Canon2Flag rho (m + 1) := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r798, r799⟩
  unfold Seg45.relationPart10 at p10
  rcases p10 with ⟨r800, r801, r802, r803, r804, r805, r806, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg45.relationRow798 at r798
  unfold Seg45.relationRow799 at r799
  unfold Seg45.relationRow800 at r800
  unfold Seg45.relationRow801 at r801
  unfold Seg45.relationRow802 at r802
  unfold Seg45.relationRow803 at r803
  unfold Seg45.relationRow804 at r804
  unfold Seg45.relationRow805 at r805
  unfold Seg45.relationRow806 at r806
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg45Canon2Flag rho 224 = rho 39373 from rfl, show seg45Canon2Flag rho 225 = rho 39373 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 225 = rho 39373 from rfl, show seg45Canon2Flag rho 226 = rho 39372 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r806
  · rw [show seg45Canon2Flag rho 226 = rho 39372 from rfl, show seg45Canon2Flag rho 227 = rho 39371 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r805
  · rw [show seg45Canon2Flag rho 227 = rho 39371 from rfl, show seg45Canon2Flag rho 228 = rho 39370 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r804
  · rw [show seg45Canon2Flag rho 228 = rho 39370 from rfl, show seg45Canon2Flag rho 229 = rho 39369 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r803
  · rw [show seg45Canon2Flag rho 229 = rho 39369 from rfl, show seg45Canon2Flag rho 230 = rho 39369 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 230 = rho 39369 from rfl, show seg45Canon2Flag rho 231 = rho 39368 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r802
  · rw [show seg45Canon2Flag rho 231 = rho 39368 from rfl, show seg45Canon2Flag rho 232 = rho 39368 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 232 = rho 39368 from rfl, show seg45Canon2Flag rho 233 = rho 39367 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r801
  · rw [show seg45Canon2Flag rho 233 = rho 39367 from rfl, show seg45Canon2Flag rho 234 = rho 39367 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 234 = rho 39367 from rfl, show seg45Canon2Flag rho 235 = rho 39366 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r800
  · rw [show seg45Canon2Flag rho 235 = rho 39366 from rfl, show seg45Canon2Flag rho 236 = rho 39366 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 236 = rho 39366 from rfl, show seg45Canon2Flag rho 237 = rho 39366 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 237 = rho 39366 from rfl, show seg45Canon2Flag rho 238 = rho 39365 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r799
  · rw [show seg45Canon2Flag rho 238 = rho 39365 from rfl, show seg45Canon2Flag rho 239 = rho 39364 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r798
  · rw [show seg45Canon2Flag rho 239 = rho 39364 from rfl, show seg45Canon2Flag rho 240 = rho 39364 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
