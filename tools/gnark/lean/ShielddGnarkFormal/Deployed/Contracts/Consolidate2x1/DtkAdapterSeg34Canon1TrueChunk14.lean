import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon1TrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon1_flag_step_chunk14 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → seg34Canon1Flag rho m = trueFactor (seg34Canon1Bits rho) m * seg34Canon1Flag rho (m + 1) := by
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
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r288, r289, r290, r291, r292, r293, r294, r295, r296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow288 at r288
  unfold Seg34.relationRow289 at r289
  unfold Seg34.relationRow290 at r290
  unfold Seg34.relationRow291 at r291
  unfold Seg34.relationRow292 at r292
  unfold Seg34.relationRow293 at r293
  unfold Seg34.relationRow294 at r294
  unfold Seg34.relationRow295 at r295
  unfold Seg34.relationRow296 at r296
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg34Canon1Flag rho 224 = rho 32075 from rfl, show seg34Canon1Flag rho 225 = rho 32075 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 225 = rho 32075 from rfl, show seg34Canon1Flag rho 226 = rho 32074 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r296
  · rw [show seg34Canon1Flag rho 226 = rho 32074 from rfl, show seg34Canon1Flag rho 227 = rho 32073 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r295
  · rw [show seg34Canon1Flag rho 227 = rho 32073 from rfl, show seg34Canon1Flag rho 228 = rho 32072 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r294
  · rw [show seg34Canon1Flag rho 228 = rho 32072 from rfl, show seg34Canon1Flag rho 229 = rho 32071 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r293
  · rw [show seg34Canon1Flag rho 229 = rho 32071 from rfl, show seg34Canon1Flag rho 230 = rho 32071 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 230 = rho 32071 from rfl, show seg34Canon1Flag rho 231 = rho 32070 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r292
  · rw [show seg34Canon1Flag rho 231 = rho 32070 from rfl, show seg34Canon1Flag rho 232 = rho 32070 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 232 = rho 32070 from rfl, show seg34Canon1Flag rho 233 = rho 32069 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r291
  · rw [show seg34Canon1Flag rho 233 = rho 32069 from rfl, show seg34Canon1Flag rho 234 = rho 32069 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 234 = rho 32069 from rfl, show seg34Canon1Flag rho 235 = rho 32068 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r290
  · rw [show seg34Canon1Flag rho 235 = rho 32068 from rfl, show seg34Canon1Flag rho 236 = rho 32068 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 236 = rho 32068 from rfl, show seg34Canon1Flag rho 237 = rho 32068 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 237 = rho 32068 from rfl, show seg34Canon1Flag rho 238 = rho 32067 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r289
  · rw [show seg34Canon1Flag rho 238 = rho 32067 from rfl, show seg34Canon1Flag rho 239 = rho 32066 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r288
  · rw [show seg34Canon1Flag rho 239 = rho 32066 from rfl, show seg34Canon1Flag rho 240 = rho 32066 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
