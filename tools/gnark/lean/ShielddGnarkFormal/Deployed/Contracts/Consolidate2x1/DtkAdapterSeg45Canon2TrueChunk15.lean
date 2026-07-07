import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2TrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_flag_step_chunk15 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → seg45Canon2Flag rho m = trueFactor (seg45Canon2Bits rho) m * seg45Canon2Flag rho (m + 1) := by
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r792, r793, r794, r795, r796, r797, _, _⟩
  unfold Seg45.relationRow792 at r792
  unfold Seg45.relationRow793 at r793
  unfold Seg45.relationRow794 at r794
  unfold Seg45.relationRow795 at r795
  unfold Seg45.relationRow796 at r796
  unfold Seg45.relationRow797 at r797
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg45Canon2Flag rho 240 = rho 39364 from rfl, show seg45Canon2Flag rho 241 = rho 39363 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r797
  · rw [show seg45Canon2Flag rho 241 = rho 39363 from rfl, show seg45Canon2Flag rho 242 = rho 39362 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r796
  · rw [show seg45Canon2Flag rho 242 = rho 39362 from rfl, show seg45Canon2Flag rho 243 = rho 39362 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 243 = rho 39362 from rfl, show seg45Canon2Flag rho 244 = rho 39361 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r795
  · rw [show seg45Canon2Flag rho 244 = rho 39361 from rfl, show seg45Canon2Flag rho 245 = rho 39361 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 245 = rho 39361 from rfl, show seg45Canon2Flag rho 246 = rho 39360 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r794
  · rw [show seg45Canon2Flag rho 246 = rho 39360 from rfl, show seg45Canon2Flag rho 247 = rho 39360 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 247 = rho 39360 from rfl, show seg45Canon2Flag rho 248 = rho 39359 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r793
  · rw [show seg45Canon2Flag rho 248 = rho 39359 from rfl, show seg45Canon2Flag rho 249 = rho 39359 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 249 = rho 39359 from rfl, show seg45Canon2Flag rho 250 = rho 39358 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r792
  · rw [show seg45Canon2Flag rho 250 = rho 39358 from rfl, show seg45Canon2Flag rho 251 = rho 39358 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 251 = rho 39358 from rfl, show seg45Canon2Flag rho 252 = rho 39358 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 252 = rho 39358 from rfl, show seg45Canon2Flag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg45Canon2Bits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
