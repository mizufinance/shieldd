import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon2TrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_flag_step_chunk15 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → seg16Canon2Flag rho m = trueFactor (seg16Canon2Bits rho) m * seg16Canon2Flag rho (m + 1) := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r792, r793, r794, r795, r796, r797, _, _⟩
  unfold Seg16.relationRow792 at r792
  unfold Seg16.relationRow793 at r793
  unfold Seg16.relationRow794 at r794
  unfold Seg16.relationRow795 at r795
  unfold Seg16.relationRow796 at r796
  unfold Seg16.relationRow797 at r797
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg16Canon2Flag rho 240 = rho 13708 from rfl, show seg16Canon2Flag rho 241 = rho 13707 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r797
  · rw [show seg16Canon2Flag rho 241 = rho 13707 from rfl, show seg16Canon2Flag rho 242 = rho 13706 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r796
  · rw [show seg16Canon2Flag rho 242 = rho 13706 from rfl, show seg16Canon2Flag rho 243 = rho 13706 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 243 = rho 13706 from rfl, show seg16Canon2Flag rho 244 = rho 13705 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r795
  · rw [show seg16Canon2Flag rho 244 = rho 13705 from rfl, show seg16Canon2Flag rho 245 = rho 13705 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 245 = rho 13705 from rfl, show seg16Canon2Flag rho 246 = rho 13704 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r794
  · rw [show seg16Canon2Flag rho 246 = rho 13704 from rfl, show seg16Canon2Flag rho 247 = rho 13704 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 247 = rho 13704 from rfl, show seg16Canon2Flag rho 248 = rho 13703 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r793
  · rw [show seg16Canon2Flag rho 248 = rho 13703 from rfl, show seg16Canon2Flag rho 249 = rho 13703 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 249 = rho 13703 from rfl, show seg16Canon2Flag rho 250 = rho 13702 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r792
  · rw [show seg16Canon2Flag rho 250 = rho 13702 from rfl, show seg16Canon2Flag rho 251 = rho 13702 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 251 = rho 13702 from rfl, show seg16Canon2Flag rho 252 = rho 13702 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (seg16Canon2Bits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg16Canon2Flag rho 252 = rho 13702 from rfl, show seg16Canon2Flag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg16Canon2Bits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
