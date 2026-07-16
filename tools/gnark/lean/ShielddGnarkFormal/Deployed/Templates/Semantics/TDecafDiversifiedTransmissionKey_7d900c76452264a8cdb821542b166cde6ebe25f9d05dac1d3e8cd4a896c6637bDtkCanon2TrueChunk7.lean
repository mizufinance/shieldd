import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon2TrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r849, r850, r851, r852, r853, r854, r855, r856, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow849 at r849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow850 at r850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow851 at r851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow852 at r852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow853 at r853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow854 at r854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow855 at r855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow856 at r856
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 112 = rho 1593 from rfl, show dtkCanon2Flag rho 113 = rho 1593 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 113 = rho 1593 from rfl, show dtkCanon2Flag rho 114 = rho 1592 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r856
  · rw [show dtkCanon2Flag rho 114 = rho 1592 from rfl, show dtkCanon2Flag rho 115 = rho 1592 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 115 = rho 1592 from rfl, show dtkCanon2Flag rho 116 = rho 1591 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r855
  · rw [show dtkCanon2Flag rho 116 = rho 1591 from rfl, show dtkCanon2Flag rho 117 = rho 1591 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 117 = rho 1591 from rfl, show dtkCanon2Flag rho 118 = rho 1590 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r854
  · rw [show dtkCanon2Flag rho 118 = rho 1590 from rfl, show dtkCanon2Flag rho 119 = rho 1590 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 119 = rho 1590 from rfl, show dtkCanon2Flag rho 120 = rho 1589 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r853
  · rw [show dtkCanon2Flag rho 120 = rho 1589 from rfl, show dtkCanon2Flag rho 121 = rho 1588 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r852
  · rw [show dtkCanon2Flag rho 121 = rho 1588 from rfl, show dtkCanon2Flag rho 122 = rho 1588 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 122 = rho 1588 from rfl, show dtkCanon2Flag rho 123 = rho 1588 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 123 = rho 1588 from rfl, show dtkCanon2Flag rho 124 = rho 1587 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r851
  · rw [show dtkCanon2Flag rho 124 = rho 1587 from rfl, show dtkCanon2Flag rho 125 = rho 1586 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r850
  · rw [show dtkCanon2Flag rho 125 = rho 1586 from rfl, show dtkCanon2Flag rho 126 = rho 1586 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 126 = rho 1586 from rfl, show dtkCanon2Flag rho 127 = rho 1585 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r849
  · rw [show dtkCanon2Flag rho 127 = rho 1585 from rfl, show dtkCanon2Flag rho 128 = rho 1585 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
