import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2TrueChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk5 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 80 ≤ m → m < 96 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r869, r870, r871, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow869 at r869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow870 at r870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow871 at r871
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 80 = rho 1602 from rfl, show dtkCanon2Flag rho 81 = rho 1602 from rfl]
    have hb : pmBit 80 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 80 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 81 = rho 1602 from rfl, show dtkCanon2Flag rho 82 = rho 1602 from rfl]
    have hb : pmBit 81 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 81 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 82 = rho 1602 from rfl, show dtkCanon2Flag rho 83 = rho 1602 from rfl]
    have hb : pmBit 82 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 82 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 83 = rho 1602 from rfl, show dtkCanon2Flag rho 84 = rho 1602 from rfl]
    have hb : pmBit 83 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 83 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 84 = rho 1602 from rfl, show dtkCanon2Flag rho 85 = rho 1602 from rfl]
    have hb : pmBit 84 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 84 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 85 = rho 1602 from rfl, show dtkCanon2Flag rho 86 = rho 1602 from rfl]
    have hb : pmBit 85 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 85 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 86 = rho 1602 from rfl, show dtkCanon2Flag rho 87 = rho 1602 from rfl]
    have hb : pmBit 86 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 86 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 87 = rho 1602 from rfl, show dtkCanon2Flag rho 88 = rho 1602 from rfl]
    have hb : pmBit 87 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 87 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 88 = rho 1602 from rfl, show dtkCanon2Flag rho 89 = rho 1602 from rfl]
    have hb : pmBit 88 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 88 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 89 = rho 1602 from rfl, show dtkCanon2Flag rho 90 = rho 1602 from rfl]
    have hb : pmBit 89 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 89 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 90 = rho 1602 from rfl, show dtkCanon2Flag rho 91 = rho 1602 from rfl]
    have hb : pmBit 90 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 90 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 91 = rho 1602 from rfl, show dtkCanon2Flag rho 92 = rho 1602 from rfl]
    have hb : pmBit 91 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 91 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 92 = rho 1602 from rfl, show dtkCanon2Flag rho 93 = rho 1601 from rfl]
    have hb : pmBit 92 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 92 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r871
  · rw [show dtkCanon2Flag rho 93 = rho 1601 from rfl, show dtkCanon2Flag rho 94 = rho 1601 from rfl]
    have hb : pmBit 93 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 93 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 94 = rho 1601 from rfl, show dtkCanon2Flag rho 95 = rho 1600 from rfl]
    have hb : pmBit 94 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 94 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r870
  · rw [show dtkCanon2Flag rho 95 = rho 1600 from rfl, show dtkCanon2Flag rho 96 = rho 1599 from rfl]
    have hb : pmBit 95 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 95 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r869

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
