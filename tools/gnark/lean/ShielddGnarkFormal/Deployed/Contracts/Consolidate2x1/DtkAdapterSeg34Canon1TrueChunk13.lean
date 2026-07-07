import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon1TrueChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon1_flag_step_chunk13 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ m, 208 ≤ m → m < 224 → seg34Canon1Flag rho m = trueFactor (seg34Canon1Bits rho) m * seg34Canon1Flag rho (m + 1) := by
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
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r297, r298, r299, r300, r301, r302, r303, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow297 at r297
  unfold Seg34.relationRow298 at r298
  unfold Seg34.relationRow299 at r299
  unfold Seg34.relationRow300 at r300
  unfold Seg34.relationRow301 at r301
  unfold Seg34.relationRow302 at r302
  unfold Seg34.relationRow303 at r303
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg34Canon1Flag rho 208 = rho 32082 from rfl, show seg34Canon1Flag rho 209 = rho 32082 from rfl]
    have hb : pmBit 208 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 208 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 209 = rho 32082 from rfl, show seg34Canon1Flag rho 210 = rho 32082 from rfl]
    have hb : pmBit 209 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 209 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 210 = rho 32082 from rfl, show seg34Canon1Flag rho 211 = rho 32081 from rfl]
    have hb : pmBit 210 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 210 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r303
  · rw [show seg34Canon1Flag rho 211 = rho 32081 from rfl, show seg34Canon1Flag rho 212 = rho 32080 from rfl]
    have hb : pmBit 211 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 211 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r302
  · rw [show seg34Canon1Flag rho 212 = rho 32080 from rfl, show seg34Canon1Flag rho 213 = rho 32080 from rfl]
    have hb : pmBit 212 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 212 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 213 = rho 32080 from rfl, show seg34Canon1Flag rho 214 = rho 32079 from rfl]
    have hb : pmBit 213 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 213 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r301
  · rw [show seg34Canon1Flag rho 214 = rho 32079 from rfl, show seg34Canon1Flag rho 215 = rho 32079 from rfl]
    have hb : pmBit 214 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 214 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 215 = rho 32079 from rfl, show seg34Canon1Flag rho 216 = rho 32079 from rfl]
    have hb : pmBit 215 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 215 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 216 = rho 32079 from rfl, show seg34Canon1Flag rho 217 = rho 32079 from rfl]
    have hb : pmBit 216 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 216 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 217 = rho 32079 from rfl, show seg34Canon1Flag rho 218 = rho 32078 from rfl]
    have hb : pmBit 217 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 217 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r300
  · rw [show seg34Canon1Flag rho 218 = rho 32078 from rfl, show seg34Canon1Flag rho 219 = rho 32078 from rfl]
    have hb : pmBit 218 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 218 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 219 = rho 32078 from rfl, show seg34Canon1Flag rho 220 = rho 32077 from rfl]
    have hb : pmBit 219 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 219 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r299
  · rw [show seg34Canon1Flag rho 220 = rho 32077 from rfl, show seg34Canon1Flag rho 221 = rho 32076 from rfl]
    have hb : pmBit 220 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 220 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r298
  · rw [show seg34Canon1Flag rho 221 = rho 32076 from rfl, show seg34Canon1Flag rho 222 = rho 32076 from rfl]
    have hb : pmBit 221 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 221 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 222 = rho 32076 from rfl, show seg34Canon1Flag rho 223 = rho 32076 from rfl]
    have hb : pmBit 222 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 222 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 223 = rho 32076 from rfl, show seg34Canon1Flag rho 224 = rho 32075 from rfl]
    have hb : pmBit 223 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 223 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r297

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
