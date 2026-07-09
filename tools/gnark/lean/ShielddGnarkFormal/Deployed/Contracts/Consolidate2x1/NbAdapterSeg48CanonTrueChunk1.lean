import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonTrueChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_flag_step_chunk1 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ m, 16 ≤ m → m < 32 → seg48CanonFlag rho m = trueFactor (seg48CanonBits rho) m * seg48CanonFlag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg48CanonFlag rho 16 = rho 33524 from rfl, show seg48CanonFlag rho 17 = rho 33524 from rfl]
    have hb : pmBit 16 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 16 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 17 = rho 33524 from rfl, show seg48CanonFlag rho 18 = rho 33524 from rfl]
    have hb : pmBit 17 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 17 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 18 = rho 33524 from rfl, show seg48CanonFlag rho 19 = rho 33524 from rfl]
    have hb : pmBit 18 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 18 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 19 = rho 33524 from rfl, show seg48CanonFlag rho 20 = rho 33524 from rfl]
    have hb : pmBit 19 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 19 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 20 = rho 33524 from rfl, show seg48CanonFlag rho 21 = rho 33524 from rfl]
    have hb : pmBit 20 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 20 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 21 = rho 33524 from rfl, show seg48CanonFlag rho 22 = rho 33524 from rfl]
    have hb : pmBit 21 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 21 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 22 = rho 33524 from rfl, show seg48CanonFlag rho 23 = rho 33524 from rfl]
    have hb : pmBit 22 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 22 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 23 = rho 33524 from rfl, show seg48CanonFlag rho 24 = rho 33524 from rfl]
    have hb : pmBit 23 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 23 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 24 = rho 33524 from rfl, show seg48CanonFlag rho 25 = rho 33524 from rfl]
    have hb : pmBit 24 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 24 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 25 = rho 33524 from rfl, show seg48CanonFlag rho 26 = rho 33524 from rfl]
    have hb : pmBit 25 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 25 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 26 = rho 33524 from rfl, show seg48CanonFlag rho 27 = rho 33524 from rfl]
    have hb : pmBit 26 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 26 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 27 = rho 33524 from rfl, show seg48CanonFlag rho 28 = rho 33524 from rfl]
    have hb : pmBit 27 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 27 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 28 = rho 33524 from rfl, show seg48CanonFlag rho 29 = rho 33524 from rfl]
    have hb : pmBit 28 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 28 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 29 = rho 33524 from rfl, show seg48CanonFlag rho 30 = rho 33524 from rfl]
    have hb : pmBit 29 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 29 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 30 = rho 33524 from rfl, show seg48CanonFlag rho 31 = rho 33524 from rfl]
    have hb : pmBit 30 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 30 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg48CanonFlag rho 31 = rho 33524 from rfl, show seg48CanonFlag rho 32 = rho 33524 from rfl]
    have hb : pmBit 31 = false := by decide +kernel
    rw [show trueFactor (seg48CanonBits rho) 31 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
