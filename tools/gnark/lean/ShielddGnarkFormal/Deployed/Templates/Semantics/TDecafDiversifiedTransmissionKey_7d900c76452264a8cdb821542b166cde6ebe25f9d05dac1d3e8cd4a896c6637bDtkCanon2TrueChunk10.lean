import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2TrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk10 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r828, r829, r830, r831, r832, r833, r834, r835, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow828 at r828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow829 at r829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow830 at r830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow831 at r831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow832 at r832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow833 at r833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow834 at r834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow835 at r835
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 160 = rho 1572 from rfl, show dtkCanon2Flag rho 161 = rho 1572 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 161 = rho 1572 from rfl, show dtkCanon2Flag rho 162 = rho 1571 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r835
  · rw [show dtkCanon2Flag rho 162 = rho 1571 from rfl, show dtkCanon2Flag rho 163 = rho 1570 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r834
  · rw [show dtkCanon2Flag rho 163 = rho 1570 from rfl, show dtkCanon2Flag rho 164 = rho 1569 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r833
  · rw [show dtkCanon2Flag rho 164 = rho 1569 from rfl, show dtkCanon2Flag rho 165 = rho 1568 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r832
  · rw [show dtkCanon2Flag rho 165 = rho 1568 from rfl, show dtkCanon2Flag rho 166 = rho 1568 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 166 = rho 1568 from rfl, show dtkCanon2Flag rho 167 = rho 1568 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 167 = rho 1568 from rfl, show dtkCanon2Flag rho 168 = rho 1568 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 168 = rho 1568 from rfl, show dtkCanon2Flag rho 169 = rho 1567 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r831
  · rw [show dtkCanon2Flag rho 169 = rho 1567 from rfl, show dtkCanon2Flag rho 170 = rho 1567 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 170 = rho 1567 from rfl, show dtkCanon2Flag rho 171 = rho 1566 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r830
  · rw [show dtkCanon2Flag rho 171 = rho 1566 from rfl, show dtkCanon2Flag rho 172 = rho 1565 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r829
  · rw [show dtkCanon2Flag rho 172 = rho 1565 from rfl, show dtkCanon2Flag rho 173 = rho 1565 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 173 = rho 1565 from rfl, show dtkCanon2Flag rho 174 = rho 1565 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 174 = rho 1565 from rfl, show dtkCanon2Flag rho 175 = rho 1564 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r828
  · rw [show dtkCanon2Flag rho 175 = rho 1564 from rfl, show dtkCanon2Flag rho 176 = rho 1564 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
