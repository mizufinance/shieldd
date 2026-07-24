import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1TrueChunk8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step_chunk9 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 144 ≤ m → m < 160 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
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
  rcases p4 with ⟨_, _, _, _, _, _, r326, r327, r328, r329, r330, r331, r332, r333, r334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow326 at r326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow327 at r327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow328 at r328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow329 at r329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow330 at r330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow331 at r331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow332 at r332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow333 at r333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow334 at r334
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon1Flag rho 144 = rho 329 from rfl, show dtkCanon1Flag rho 145 = rho 328 from rfl]
    have hb : pmBit 144 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 144 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r334
  · rw [show dtkCanon1Flag rho 145 = rho 328 from rfl, show dtkCanon1Flag rho 146 = rho 327 from rfl]
    have hb : pmBit 145 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 145 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r333
  · rw [show dtkCanon1Flag rho 146 = rho 327 from rfl, show dtkCanon1Flag rho 147 = rho 326 from rfl]
    have hb : pmBit 146 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 146 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r332
  · rw [show dtkCanon1Flag rho 147 = rho 326 from rfl, show dtkCanon1Flag rho 148 = rho 326 from rfl]
    have hb : pmBit 147 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 147 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 148 = rho 326 from rfl, show dtkCanon1Flag rho 149 = rho 325 from rfl]
    have hb : pmBit 148 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 148 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r331
  · rw [show dtkCanon1Flag rho 149 = rho 325 from rfl, show dtkCanon1Flag rho 150 = rho 324 from rfl]
    have hb : pmBit 149 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 149 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r330
  · rw [show dtkCanon1Flag rho 150 = rho 324 from rfl, show dtkCanon1Flag rho 151 = rho 324 from rfl]
    have hb : pmBit 150 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 150 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 151 = rho 324 from rfl, show dtkCanon1Flag rho 152 = rho 324 from rfl]
    have hb : pmBit 151 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 151 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 152 = rho 324 from rfl, show dtkCanon1Flag rho 153 = rho 324 from rfl]
    have hb : pmBit 152 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 152 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 153 = rho 324 from rfl, show dtkCanon1Flag rho 154 = rho 324 from rfl]
    have hb : pmBit 153 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 153 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 154 = rho 324 from rfl, show dtkCanon1Flag rho 155 = rho 323 from rfl]
    have hb : pmBit 154 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 154 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r329
  · rw [show dtkCanon1Flag rho 155 = rho 323 from rfl, show dtkCanon1Flag rho 156 = rho 322 from rfl]
    have hb : pmBit 155 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 155 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r328
  · rw [show dtkCanon1Flag rho 156 = rho 322 from rfl, show dtkCanon1Flag rho 157 = rho 321 from rfl]
    have hb : pmBit 156 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 156 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r327
  · rw [show dtkCanon1Flag rho 157 = rho 321 from rfl, show dtkCanon1Flag rho 158 = rho 321 from rfl]
    have hb : pmBit 157 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 157 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 158 = rho 321 from rfl, show dtkCanon1Flag rho 159 = rho 320 from rfl]
    have hb : pmBit 158 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 158 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r326
  · rw [show dtkCanon1Flag rho 159 = rho 320 from rfl, show dtkCanon1Flag rho 160 = rho 320 from rfl]
    have hb : pmBit 159 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 159 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
