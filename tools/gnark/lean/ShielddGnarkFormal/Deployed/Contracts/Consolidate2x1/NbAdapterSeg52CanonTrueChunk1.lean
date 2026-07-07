import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 16 ≤ m → m < 32 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 16 = rho 45156 from rfl, show seg52CanonFlag rho 17 = rho 45156 from rfl]
    have hb : pmBit 16 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 16 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 17 = rho 45156 from rfl, show seg52CanonFlag rho 18 = rho 45156 from rfl]
    have hb : pmBit 17 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 17 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 18 = rho 45156 from rfl, show seg52CanonFlag rho 19 = rho 45156 from rfl]
    have hb : pmBit 18 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 18 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 19 = rho 45156 from rfl, show seg52CanonFlag rho 20 = rho 45156 from rfl]
    have hb : pmBit 19 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 19 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 20 = rho 45156 from rfl, show seg52CanonFlag rho 21 = rho 45156 from rfl]
    have hb : pmBit 20 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 20 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 21 = rho 45156 from rfl, show seg52CanonFlag rho 22 = rho 45156 from rfl]
    have hb : pmBit 21 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 21 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 22 = rho 45156 from rfl, show seg52CanonFlag rho 23 = rho 45156 from rfl]
    have hb : pmBit 22 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 22 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 23 = rho 45156 from rfl, show seg52CanonFlag rho 24 = rho 45156 from rfl]
    have hb : pmBit 23 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 23 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 24 = rho 45156 from rfl, show seg52CanonFlag rho 25 = rho 45156 from rfl]
    have hb : pmBit 24 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 24 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 25 = rho 45156 from rfl, show seg52CanonFlag rho 26 = rho 45156 from rfl]
    have hb : pmBit 25 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 25 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 26 = rho 45156 from rfl, show seg52CanonFlag rho 27 = rho 45156 from rfl]
    have hb : pmBit 26 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 26 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 27 = rho 45156 from rfl, show seg52CanonFlag rho 28 = rho 45156 from rfl]
    have hb : pmBit 27 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 27 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 28 = rho 45156 from rfl, show seg52CanonFlag rho 29 = rho 45156 from rfl]
    have hb : pmBit 28 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 28 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 29 = rho 45156 from rfl, show seg52CanonFlag rho 30 = rho 45156 from rfl]
    have hb : pmBit 29 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 29 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 30 = rho 45156 from rfl, show seg52CanonFlag rho 31 = rho 45156 from rfl]
    have hb : pmBit 30 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 30 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 31 = rho 45156 from rfl, show seg52CanonFlag rho 32 = rho 45156 from rfl]
    have hb : pmBit 31 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 31 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
