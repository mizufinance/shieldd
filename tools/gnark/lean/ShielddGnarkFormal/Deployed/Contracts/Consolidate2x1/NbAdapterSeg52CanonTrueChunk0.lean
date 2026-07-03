import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonTrueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_flag_step_chunk0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ m, 0 ≤ m → m < 16 → seg52CanonFlag rho m = trueFactor (seg52CanonBits rho) m * seg52CanonFlag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg52CanonFlag rho 0 = rho 45156 from rfl, show seg52CanonFlag rho 1 = rho 45156 from rfl]
    have hb : pmBit 0 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 0 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 1 = rho 45156 from rfl, show seg52CanonFlag rho 2 = rho 45156 from rfl]
    have hb : pmBit 1 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 1 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 2 = rho 45156 from rfl, show seg52CanonFlag rho 3 = rho 45156 from rfl]
    have hb : pmBit 2 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 2 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 3 = rho 45156 from rfl, show seg52CanonFlag rho 4 = rho 45156 from rfl]
    have hb : pmBit 3 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 3 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 4 = rho 45156 from rfl, show seg52CanonFlag rho 5 = rho 45156 from rfl]
    have hb : pmBit 4 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 4 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 5 = rho 45156 from rfl, show seg52CanonFlag rho 6 = rho 45156 from rfl]
    have hb : pmBit 5 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 5 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 6 = rho 45156 from rfl, show seg52CanonFlag rho 7 = rho 45156 from rfl]
    have hb : pmBit 6 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 6 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 7 = rho 45156 from rfl, show seg52CanonFlag rho 8 = rho 45156 from rfl]
    have hb : pmBit 7 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 7 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 8 = rho 45156 from rfl, show seg52CanonFlag rho 9 = rho 45156 from rfl]
    have hb : pmBit 8 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 8 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 9 = rho 45156 from rfl, show seg52CanonFlag rho 10 = rho 45156 from rfl]
    have hb : pmBit 9 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 9 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 10 = rho 45156 from rfl, show seg52CanonFlag rho 11 = rho 45156 from rfl]
    have hb : pmBit 10 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 10 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 11 = rho 45156 from rfl, show seg52CanonFlag rho 12 = rho 45156 from rfl]
    have hb : pmBit 11 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 11 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 12 = rho 45156 from rfl, show seg52CanonFlag rho 13 = rho 45156 from rfl]
    have hb : pmBit 12 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 12 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 13 = rho 45156 from rfl, show seg52CanonFlag rho 14 = rho 45156 from rfl]
    have hb : pmBit 13 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 13 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 14 = rho 45156 from rfl, show seg52CanonFlag rho 15 = rho 45156 from rfl]
    have hb : pmBit 14 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 14 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg52CanonFlag rho 15 = rho 45156 from rfl, show seg52CanonFlag rho 16 = rho 45156 from rfl]
    have hb : pmBit 15 = false := by decide +kernel
    rw [show trueFactor (seg52CanonBits rho) 15 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
