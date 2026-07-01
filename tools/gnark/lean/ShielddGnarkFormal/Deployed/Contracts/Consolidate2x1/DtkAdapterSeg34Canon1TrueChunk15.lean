import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon1TrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon1_flag_step_chunk15 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → seg34Canon1Flag rho m = trueFactor (seg34Canon1Bits rho) m * seg34Canon1Flag rho (m + 1) := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r282, r283, r284, r285, r286, r287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow282 at r282
  unfold Seg34.relationRow283 at r283
  unfold Seg34.relationRow284 at r284
  unfold Seg34.relationRow285 at r285
  unfold Seg34.relationRow286 at r286
  unfold Seg34.relationRow287 at r287
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg34Canon1Flag rho 240 = rho 32066 from rfl, show seg34Canon1Flag rho 241 = rho 32065 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r287
  · rw [show seg34Canon1Flag rho 241 = rho 32065 from rfl, show seg34Canon1Flag rho 242 = rho 32064 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r286
  · rw [show seg34Canon1Flag rho 242 = rho 32064 from rfl, show seg34Canon1Flag rho 243 = rho 32064 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 243 = rho 32064 from rfl, show seg34Canon1Flag rho 244 = rho 32063 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r285
  · rw [show seg34Canon1Flag rho 244 = rho 32063 from rfl, show seg34Canon1Flag rho 245 = rho 32063 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 245 = rho 32063 from rfl, show seg34Canon1Flag rho 246 = rho 32062 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r284
  · rw [show seg34Canon1Flag rho 246 = rho 32062 from rfl, show seg34Canon1Flag rho 247 = rho 32062 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 247 = rho 32062 from rfl, show seg34Canon1Flag rho 248 = rho 32061 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r283
  · rw [show seg34Canon1Flag rho 248 = rho 32061 from rfl, show seg34Canon1Flag rho 249 = rho 32061 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 249 = rho 32061 from rfl, show seg34Canon1Flag rho 250 = rho 32060 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r282
  · rw [show seg34Canon1Flag rho 250 = rho 32060 from rfl, show seg34Canon1Flag rho 251 = rho 32060 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 251 = rho 32060 from rfl, show seg34Canon1Flag rho 252 = rho 32060 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 252 = rho 32060 from rfl, show seg34Canon1Flag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
