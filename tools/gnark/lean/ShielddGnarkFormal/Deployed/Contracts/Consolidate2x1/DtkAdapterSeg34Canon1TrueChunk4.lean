import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon1TrueChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon1_flag_step_chunk4 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) :
    ∀ m, 64 ≤ m → m < 80 → seg34Canon1Flag rho m = trueFactor (seg34Canon1Bits rho) m * seg34Canon1Flag rho (m + 1) := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow362 at r362
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg34Canon1Flag rho 64 = rho 32141 from rfl, show seg34Canon1Flag rho 65 = rho 32140 from rfl]
    have hb : pmBit 64 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [seg34Canon1Bits_get rho 64 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r362
  · rw [show seg34Canon1Flag rho 65 = rho 32140 from rfl, show seg34Canon1Flag rho 66 = rho 32140 from rfl]
    have hb : pmBit 65 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 65 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 66 = rho 32140 from rfl, show seg34Canon1Flag rho 67 = rho 32140 from rfl]
    have hb : pmBit 66 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 66 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 67 = rho 32140 from rfl, show seg34Canon1Flag rho 68 = rho 32140 from rfl]
    have hb : pmBit 67 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 67 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 68 = rho 32140 from rfl, show seg34Canon1Flag rho 69 = rho 32140 from rfl]
    have hb : pmBit 68 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 68 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 69 = rho 32140 from rfl, show seg34Canon1Flag rho 70 = rho 32140 from rfl]
    have hb : pmBit 69 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 69 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 70 = rho 32140 from rfl, show seg34Canon1Flag rho 71 = rho 32140 from rfl]
    have hb : pmBit 70 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 70 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 71 = rho 32140 from rfl, show seg34Canon1Flag rho 72 = rho 32140 from rfl]
    have hb : pmBit 71 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 71 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 72 = rho 32140 from rfl, show seg34Canon1Flag rho 73 = rho 32140 from rfl]
    have hb : pmBit 72 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 72 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 73 = rho 32140 from rfl, show seg34Canon1Flag rho 74 = rho 32140 from rfl]
    have hb : pmBit 73 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 73 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 74 = rho 32140 from rfl, show seg34Canon1Flag rho 75 = rho 32140 from rfl]
    have hb : pmBit 74 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 74 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 75 = rho 32140 from rfl, show seg34Canon1Flag rho 76 = rho 32140 from rfl]
    have hb : pmBit 75 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 75 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 76 = rho 32140 from rfl, show seg34Canon1Flag rho 77 = rho 32140 from rfl]
    have hb : pmBit 76 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 76 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 77 = rho 32140 from rfl, show seg34Canon1Flag rho 78 = rho 32140 from rfl]
    have hb : pmBit 77 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 77 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 78 = rho 32140 from rfl, show seg34Canon1Flag rho 79 = rho 32140 from rfl]
    have hb : pmBit 78 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 78 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg34Canon1Flag rho 79 = rho 32140 from rfl, show seg34Canon1Flag rho 80 = rho 32140 from rfl]
    have hb : pmBit 79 = false := by decide +kernel
    rw [show trueFactor (seg34Canon1Bits rho) 79 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
