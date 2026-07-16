import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2TrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r845, r846, r847, r848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow845 at r845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow846 at r846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow847 at r847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow848 at r848
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 128 = rho 1585 from rfl, show dtkCanon2Flag rho 129 = rho 1584 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r848
  · rw [show dtkCanon2Flag rho 129 = rho 1584 from rfl, show dtkCanon2Flag rho 130 = rho 1584 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 130 = rho 1584 from rfl, show dtkCanon2Flag rho 131 = rho 1584 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 131 = rho 1584 from rfl, show dtkCanon2Flag rho 132 = rho 1584 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 132 = rho 1584 from rfl, show dtkCanon2Flag rho 133 = rho 1584 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 133 = rho 1584 from rfl, show dtkCanon2Flag rho 134 = rho 1584 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 134 = rho 1584 from rfl, show dtkCanon2Flag rho 135 = rho 1584 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 135 = rho 1584 from rfl, show dtkCanon2Flag rho 136 = rho 1584 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 136 = rho 1584 from rfl, show dtkCanon2Flag rho 137 = rho 1584 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 137 = rho 1584 from rfl, show dtkCanon2Flag rho 138 = rho 1584 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 138 = rho 1584 from rfl, show dtkCanon2Flag rho 139 = rho 1584 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 139 = rho 1584 from rfl, show dtkCanon2Flag rho 140 = rho 1584 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 140 = rho 1584 from rfl, show dtkCanon2Flag rho 141 = rho 1583 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r847
  · rw [show dtkCanon2Flag rho 141 = rho 1583 from rfl, show dtkCanon2Flag rho 142 = rho 1582 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r846
  · rw [show dtkCanon2Flag rho 142 = rho 1582 from rfl, show dtkCanon2Flag rho 143 = rho 1582 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 143 = rho 1582 from rfl, show dtkCanon2Flag rho 144 = rho 1581 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r845

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
