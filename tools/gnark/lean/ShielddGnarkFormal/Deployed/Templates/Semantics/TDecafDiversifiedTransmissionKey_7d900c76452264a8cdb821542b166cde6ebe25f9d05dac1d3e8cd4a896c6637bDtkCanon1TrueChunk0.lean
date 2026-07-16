import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1TrueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step_chunk0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 0 ≤ m → m < 16 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon1Flag rho 0 = rho 1272 from rfl, show dtkCanon1Flag rho 1 = rho 1272 from rfl]
    have hb : pmBit 0 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 0 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 1 = rho 1272 from rfl, show dtkCanon1Flag rho 2 = rho 1272 from rfl]
    have hb : pmBit 1 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 1 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 2 = rho 1272 from rfl, show dtkCanon1Flag rho 3 = rho 1272 from rfl]
    have hb : pmBit 2 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 2 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 3 = rho 1272 from rfl, show dtkCanon1Flag rho 4 = rho 1272 from rfl]
    have hb : pmBit 3 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 3 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 4 = rho 1272 from rfl, show dtkCanon1Flag rho 5 = rho 1272 from rfl]
    have hb : pmBit 4 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 4 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 5 = rho 1272 from rfl, show dtkCanon1Flag rho 6 = rho 1272 from rfl]
    have hb : pmBit 5 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 5 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 6 = rho 1272 from rfl, show dtkCanon1Flag rho 7 = rho 1272 from rfl]
    have hb : pmBit 6 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 6 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 7 = rho 1272 from rfl, show dtkCanon1Flag rho 8 = rho 1272 from rfl]
    have hb : pmBit 7 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 7 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 8 = rho 1272 from rfl, show dtkCanon1Flag rho 9 = rho 1272 from rfl]
    have hb : pmBit 8 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 8 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 9 = rho 1272 from rfl, show dtkCanon1Flag rho 10 = rho 1272 from rfl]
    have hb : pmBit 9 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 9 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 10 = rho 1272 from rfl, show dtkCanon1Flag rho 11 = rho 1272 from rfl]
    have hb : pmBit 10 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 10 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 11 = rho 1272 from rfl, show dtkCanon1Flag rho 12 = rho 1272 from rfl]
    have hb : pmBit 11 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 11 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 12 = rho 1272 from rfl, show dtkCanon1Flag rho 13 = rho 1272 from rfl]
    have hb : pmBit 12 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 12 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 13 = rho 1272 from rfl, show dtkCanon1Flag rho 14 = rho 1272 from rfl]
    have hb : pmBit 13 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 13 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 14 = rho 1272 from rfl, show dtkCanon1Flag rho 15 = rho 1272 from rfl]
    have hb : pmBit 14 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 14 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 15 = rho 1272 from rfl, show dtkCanon1Flag rho 16 = rho 1272 from rfl]
    have hb : pmBit 15 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 15 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
