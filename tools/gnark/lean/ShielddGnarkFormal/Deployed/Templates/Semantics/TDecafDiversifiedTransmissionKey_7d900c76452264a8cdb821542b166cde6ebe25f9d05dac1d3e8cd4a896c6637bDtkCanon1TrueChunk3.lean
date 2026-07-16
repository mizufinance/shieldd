import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1TrueChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 48 ≤ m → m < 64 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r363, r364, r365, r366, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow363 at r363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow364 at r364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow365 at r365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow366 at r366
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon1Flag rho 48 = rho 1271 from rfl, show dtkCanon1Flag rho 49 = rho 1270 from rfl]
    have hb : pmBit 48 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 48 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r366
  · rw [show dtkCanon1Flag rho 49 = rho 1270 from rfl, show dtkCanon1Flag rho 50 = rho 1270 from rfl]
    have hb : pmBit 49 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 49 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 50 = rho 1270 from rfl, show dtkCanon1Flag rho 51 = rho 1270 from rfl]
    have hb : pmBit 50 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 50 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 51 = rho 1270 from rfl, show dtkCanon1Flag rho 52 = rho 1270 from rfl]
    have hb : pmBit 51 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 51 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 52 = rho 1270 from rfl, show dtkCanon1Flag rho 53 = rho 1269 from rfl]
    have hb : pmBit 52 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 52 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r365
  · rw [show dtkCanon1Flag rho 53 = rho 1269 from rfl, show dtkCanon1Flag rho 54 = rho 1269 from rfl]
    have hb : pmBit 53 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 53 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 54 = rho 1269 from rfl, show dtkCanon1Flag rho 55 = rho 1269 from rfl]
    have hb : pmBit 54 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 54 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 55 = rho 1269 from rfl, show dtkCanon1Flag rho 56 = rho 1269 from rfl]
    have hb : pmBit 55 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 55 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 56 = rho 1269 from rfl, show dtkCanon1Flag rho 57 = rho 1269 from rfl]
    have hb : pmBit 56 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 56 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 57 = rho 1269 from rfl, show dtkCanon1Flag rho 58 = rho 1268 from rfl]
    have hb : pmBit 57 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 57 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r364
  · rw [show dtkCanon1Flag rho 58 = rho 1268 from rfl, show dtkCanon1Flag rho 59 = rho 1268 from rfl]
    have hb : pmBit 58 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 58 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 59 = rho 1268 from rfl, show dtkCanon1Flag rho 60 = rho 1267 from rfl]
    have hb : pmBit 59 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 59 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r363
  · rw [show dtkCanon1Flag rho 60 = rho 1267 from rfl, show dtkCanon1Flag rho 61 = rho 1267 from rfl]
    have hb : pmBit 60 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 60 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 61 = rho 1267 from rfl, show dtkCanon1Flag rho 62 = rho 1267 from rfl]
    have hb : pmBit 61 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 61 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 62 = rho 1267 from rfl, show dtkCanon1Flag rho 63 = rho 1267 from rfl]
    have hb : pmBit 62 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 62 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 63 = rho 1267 from rfl, show dtkCanon1Flag rho 64 = rho 1267 from rfl]
    have hb : pmBit 63 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 63 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
