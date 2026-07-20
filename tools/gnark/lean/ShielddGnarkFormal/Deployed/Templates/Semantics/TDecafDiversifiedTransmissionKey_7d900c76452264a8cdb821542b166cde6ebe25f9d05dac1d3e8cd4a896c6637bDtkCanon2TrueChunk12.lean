import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2TrueChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 192 ≤ m → m < 208 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r814, r815, r816, r817, r818, r819, r820, r821, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow814 at r814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow815 at r815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow816 at r816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow817 at r817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow818 at r818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow819 at r819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow820 at r820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow821 at r821
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 192 = rho 1552 from rfl, show dtkCanon2Flag rho 193 = rho 1552 from rfl]
    have hb : pmBit 192 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 192 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 193 = rho 1552 from rfl, show dtkCanon2Flag rho 194 = rho 1551 from rfl]
    have hb : pmBit 193 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 193 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r821
  · rw [show dtkCanon2Flag rho 194 = rho 1551 from rfl, show dtkCanon2Flag rho 195 = rho 1550 from rfl]
    have hb : pmBit 194 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 194 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r820
  · rw [show dtkCanon2Flag rho 195 = rho 1550 from rfl, show dtkCanon2Flag rho 196 = rho 1550 from rfl]
    have hb : pmBit 195 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 195 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 196 = rho 1550 from rfl, show dtkCanon2Flag rho 197 = rho 1549 from rfl]
    have hb : pmBit 196 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 196 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r819
  · rw [show dtkCanon2Flag rho 197 = rho 1549 from rfl, show dtkCanon2Flag rho 198 = rho 1549 from rfl]
    have hb : pmBit 197 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 197 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 198 = rho 1549 from rfl, show dtkCanon2Flag rho 199 = rho 1548 from rfl]
    have hb : pmBit 198 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 198 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r818
  · rw [show dtkCanon2Flag rho 199 = rho 1548 from rfl, show dtkCanon2Flag rho 200 = rho 1548 from rfl]
    have hb : pmBit 199 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 199 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 200 = rho 1548 from rfl, show dtkCanon2Flag rho 201 = rho 1547 from rfl]
    have hb : pmBit 200 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 200 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r817
  · rw [show dtkCanon2Flag rho 201 = rho 1547 from rfl, show dtkCanon2Flag rho 202 = rho 1547 from rfl]
    have hb : pmBit 201 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 201 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 202 = rho 1547 from rfl, show dtkCanon2Flag rho 203 = rho 1546 from rfl]
    have hb : pmBit 202 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 202 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r816
  · rw [show dtkCanon2Flag rho 203 = rho 1546 from rfl, show dtkCanon2Flag rho 204 = rho 1546 from rfl]
    have hb : pmBit 203 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 203 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 204 = rho 1546 from rfl, show dtkCanon2Flag rho 205 = rho 1546 from rfl]
    have hb : pmBit 204 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 204 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 205 = rho 1546 from rfl, show dtkCanon2Flag rho 206 = rho 1545 from rfl]
    have hb : pmBit 205 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 205 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r815
  · rw [show dtkCanon2Flag rho 206 = rho 1545 from rfl, show dtkCanon2Flag rho 207 = rho 1545 from rfl]
    have hb : pmBit 206 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 206 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 207 = rho 1545 from rfl, show dtkCanon2Flag rho 208 = rho 1544 from rfl]
    have hb : pmBit 207 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 207 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r814

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
