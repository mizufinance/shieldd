import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon2TrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon2_flag_step_chunk15 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → seg6Canon2Flag rho m = trueFactor (seg6Canon2Bits rho) m * seg6Canon2Flag rho (m + 1) := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r792, r793, r794, r795, r796, r797, _, _⟩
  unfold Seg6.relationRow792 at r792
  unfold Seg6.relationRow793 at r793
  unfold Seg6.relationRow794 at r794
  unfold Seg6.relationRow795 at r795
  unfold Seg6.relationRow796 at r796
  unfold Seg6.relationRow797 at r797
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg6Canon2Flag rho 240 = rho 1534 from rfl, show seg6Canon2Flag rho 241 = rho 1533 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r797
  · rw [show seg6Canon2Flag rho 241 = rho 1533 from rfl, show seg6Canon2Flag rho 242 = rho 1532 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r796
  · rw [show seg6Canon2Flag rho 242 = rho 1532 from rfl, show seg6Canon2Flag rho 243 = rho 1532 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 243 = rho 1532 from rfl, show seg6Canon2Flag rho 244 = rho 1531 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r795
  · rw [show seg6Canon2Flag rho 244 = rho 1531 from rfl, show seg6Canon2Flag rho 245 = rho 1531 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 245 = rho 1531 from rfl, show seg6Canon2Flag rho 246 = rho 1530 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r794
  · rw [show seg6Canon2Flag rho 246 = rho 1530 from rfl, show seg6Canon2Flag rho 247 = rho 1530 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 247 = rho 1530 from rfl, show seg6Canon2Flag rho 248 = rho 1529 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r793
  · rw [show seg6Canon2Flag rho 248 = rho 1529 from rfl, show seg6Canon2Flag rho 249 = rho 1529 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 249 = rho 1529 from rfl, show seg6Canon2Flag rho 250 = rho 1528 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r792
  · rw [show seg6Canon2Flag rho 250 = rho 1528 from rfl, show seg6Canon2Flag rho 251 = rho 1528 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 251 = rho 1528 from rfl, show seg6Canon2Flag rho 252 = rho 1528 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (seg6Canon2Bits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon2Flag rho 252 = rho 1528 from rfl, show seg6Canon2Flag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg6Canon2Bits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
