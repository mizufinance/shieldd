import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2TrueChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_flag_step_chunk1 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) :
    ∀ m, 16 ≤ m → m < 32 → seg45Canon2Flag rho m = trueFactor (seg45Canon2Bits rho) m * seg45Canon2Flag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show seg45Canon2Flag rho 16 = rho 39444 from rfl, show seg45Canon2Flag rho 17 = rho 39444 from rfl]
    have hb : pmBit 16 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 16 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 17 = rho 39444 from rfl, show seg45Canon2Flag rho 18 = rho 39444 from rfl]
    have hb : pmBit 17 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 17 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 18 = rho 39444 from rfl, show seg45Canon2Flag rho 19 = rho 39444 from rfl]
    have hb : pmBit 18 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 18 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 19 = rho 39444 from rfl, show seg45Canon2Flag rho 20 = rho 39444 from rfl]
    have hb : pmBit 19 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 19 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 20 = rho 39444 from rfl, show seg45Canon2Flag rho 21 = rho 39444 from rfl]
    have hb : pmBit 20 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 20 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 21 = rho 39444 from rfl, show seg45Canon2Flag rho 22 = rho 39444 from rfl]
    have hb : pmBit 21 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 21 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 22 = rho 39444 from rfl, show seg45Canon2Flag rho 23 = rho 39444 from rfl]
    have hb : pmBit 22 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 22 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 23 = rho 39444 from rfl, show seg45Canon2Flag rho 24 = rho 39444 from rfl]
    have hb : pmBit 23 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 23 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 24 = rho 39444 from rfl, show seg45Canon2Flag rho 25 = rho 39444 from rfl]
    have hb : pmBit 24 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 24 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 25 = rho 39444 from rfl, show seg45Canon2Flag rho 26 = rho 39444 from rfl]
    have hb : pmBit 25 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 25 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 26 = rho 39444 from rfl, show seg45Canon2Flag rho 27 = rho 39444 from rfl]
    have hb : pmBit 26 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 26 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 27 = rho 39444 from rfl, show seg45Canon2Flag rho 28 = rho 39444 from rfl]
    have hb : pmBit 27 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 27 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 28 = rho 39444 from rfl, show seg45Canon2Flag rho 29 = rho 39444 from rfl]
    have hb : pmBit 28 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 28 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 29 = rho 39444 from rfl, show seg45Canon2Flag rho 30 = rho 39444 from rfl]
    have hb : pmBit 29 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 29 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 30 = rho 39444 from rfl, show seg45Canon2Flag rho 31 = rho 39444 from rfl]
    have hb : pmBit 30 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 30 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show seg45Canon2Flag rho 31 = rho 39444 from rfl, show seg45Canon2Flag rho 32 = rho 39444 from rfl]
    have hb : pmBit 31 = false := by decide +kernel
    rw [show trueFactor (seg45Canon2Bits rho) 31 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
