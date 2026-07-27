import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2TrueChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 48 ≤ m → m < 64 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r873, r874, r875, r876, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow873 at r873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow874 at r874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow875 at r875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow876 at r876
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 48 = rho 703 from rfl, show dtkCanon2Flag rho 49 = rho 702 from rfl]
    have hb : pmBit 48 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 48 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r876
  · rw [show dtkCanon2Flag rho 49 = rho 702 from rfl, show dtkCanon2Flag rho 50 = rho 702 from rfl]
    have hb : pmBit 49 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 49 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 50 = rho 702 from rfl, show dtkCanon2Flag rho 51 = rho 702 from rfl]
    have hb : pmBit 50 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 50 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 51 = rho 702 from rfl, show dtkCanon2Flag rho 52 = rho 702 from rfl]
    have hb : pmBit 51 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 51 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 52 = rho 702 from rfl, show dtkCanon2Flag rho 53 = rho 701 from rfl]
    have hb : pmBit 52 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 52 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r875
  · rw [show dtkCanon2Flag rho 53 = rho 701 from rfl, show dtkCanon2Flag rho 54 = rho 701 from rfl]
    have hb : pmBit 53 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 53 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 54 = rho 701 from rfl, show dtkCanon2Flag rho 55 = rho 701 from rfl]
    have hb : pmBit 54 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 54 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 55 = rho 701 from rfl, show dtkCanon2Flag rho 56 = rho 701 from rfl]
    have hb : pmBit 55 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 55 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 56 = rho 701 from rfl, show dtkCanon2Flag rho 57 = rho 701 from rfl]
    have hb : pmBit 56 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 56 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 57 = rho 701 from rfl, show dtkCanon2Flag rho 58 = rho 700 from rfl]
    have hb : pmBit 57 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 57 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r874
  · rw [show dtkCanon2Flag rho 58 = rho 700 from rfl, show dtkCanon2Flag rho 59 = rho 700 from rfl]
    have hb : pmBit 58 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 58 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 59 = rho 700 from rfl, show dtkCanon2Flag rho 60 = rho 699 from rfl]
    have hb : pmBit 59 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 59 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r873
  · rw [show dtkCanon2Flag rho 60 = rho 699 from rfl, show dtkCanon2Flag rho 61 = rho 699 from rfl]
    have hb : pmBit 60 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 60 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 61 = rho 699 from rfl, show dtkCanon2Flag rho 62 = rho 699 from rfl]
    have hb : pmBit 61 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 61 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 62 = rho 699 from rfl, show dtkCanon2Flag rho 63 = rho 699 from rfl]
    have hb : pmBit 62 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 62 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 63 = rho 699 from rfl, show dtkCanon2Flag rho 64 = rho 699 from rfl]
    have hb : pmBit 63 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 63 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
