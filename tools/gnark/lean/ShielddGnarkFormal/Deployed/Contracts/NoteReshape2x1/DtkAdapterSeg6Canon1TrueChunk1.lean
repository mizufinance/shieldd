import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon1TrueChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_flag_step_chunk1 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ m, 16 ≤ m → m < 32 → seg6Canon1Flag rho m = trueFactor (seg6Canon1Bits rho) m * seg6Canon1Flag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg6Canon1Flag rho 16 = rho 1272 from rfl, show seg6Canon1Flag rho 17 = rho 1272 from rfl]
    have hb : pmBit 16 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 16 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 17 = rho 1272 from rfl, show seg6Canon1Flag rho 18 = rho 1272 from rfl]
    have hb : pmBit 17 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 17 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 18 = rho 1272 from rfl, show seg6Canon1Flag rho 19 = rho 1272 from rfl]
    have hb : pmBit 18 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 18 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 19 = rho 1272 from rfl, show seg6Canon1Flag rho 20 = rho 1272 from rfl]
    have hb : pmBit 19 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 19 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 20 = rho 1272 from rfl, show seg6Canon1Flag rho 21 = rho 1272 from rfl]
    have hb : pmBit 20 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 20 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 21 = rho 1272 from rfl, show seg6Canon1Flag rho 22 = rho 1272 from rfl]
    have hb : pmBit 21 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 21 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 22 = rho 1272 from rfl, show seg6Canon1Flag rho 23 = rho 1272 from rfl]
    have hb : pmBit 22 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 22 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 23 = rho 1272 from rfl, show seg6Canon1Flag rho 24 = rho 1272 from rfl]
    have hb : pmBit 23 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 23 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 24 = rho 1272 from rfl, show seg6Canon1Flag rho 25 = rho 1272 from rfl]
    have hb : pmBit 24 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 24 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 25 = rho 1272 from rfl, show seg6Canon1Flag rho 26 = rho 1272 from rfl]
    have hb : pmBit 25 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 25 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 26 = rho 1272 from rfl, show seg6Canon1Flag rho 27 = rho 1272 from rfl]
    have hb : pmBit 26 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 26 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 27 = rho 1272 from rfl, show seg6Canon1Flag rho 28 = rho 1272 from rfl]
    have hb : pmBit 27 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 27 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 28 = rho 1272 from rfl, show seg6Canon1Flag rho 29 = rho 1272 from rfl]
    have hb : pmBit 28 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 28 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 29 = rho 1272 from rfl, show seg6Canon1Flag rho 30 = rho 1272 from rfl]
    have hb : pmBit 29 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 29 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 30 = rho 1272 from rfl, show seg6Canon1Flag rho 31 = rho 1272 from rfl]
    have hb : pmBit 30 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 30 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg6Canon1Flag rho 31 = rho 1272 from rfl, show seg6Canon1Flag rho 32 = rho 1272 from rfl]
    have hb : pmBit 31 = false := by decide +kernel
    rw [show trueFactor (seg6Canon1Bits rho) 31 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
