import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1TrueChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step_chunk6 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 96 ≤ m → m < 112 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
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
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r347, r348, r349, r350, r351, r352, r353, r354, r355, r356, r357, r358, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow347 at r347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow348 at r348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow349 at r349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow350 at r350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow351 at r351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow352 at r352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow353 at r353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow354 at r354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow355 at r355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow356 at r356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow357 at r357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow358 at r358
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon1Flag rho 96 = rho 353 from rfl, show dtkCanon1Flag rho 97 = rho 353 from rfl]
    have hb : pmBit 96 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 96 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 97 = rho 353 from rfl, show dtkCanon1Flag rho 98 = rho 352 from rfl]
    have hb : pmBit 97 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 97 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r358
  · rw [show dtkCanon1Flag rho 98 = rho 352 from rfl, show dtkCanon1Flag rho 99 = rho 351 from rfl]
    have hb : pmBit 98 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 98 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r357
  · rw [show dtkCanon1Flag rho 99 = rho 351 from rfl, show dtkCanon1Flag rho 100 = rho 350 from rfl]
    have hb : pmBit 99 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 99 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r356
  · rw [show dtkCanon1Flag rho 100 = rho 350 from rfl, show dtkCanon1Flag rho 101 = rho 349 from rfl]
    have hb : pmBit 100 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 100 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r355
  · rw [show dtkCanon1Flag rho 101 = rho 349 from rfl, show dtkCanon1Flag rho 102 = rho 348 from rfl]
    have hb : pmBit 101 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 101 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r354
  · rw [show dtkCanon1Flag rho 102 = rho 348 from rfl, show dtkCanon1Flag rho 103 = rho 347 from rfl]
    have hb : pmBit 102 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 102 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r353
  · rw [show dtkCanon1Flag rho 103 = rho 347 from rfl, show dtkCanon1Flag rho 104 = rho 346 from rfl]
    have hb : pmBit 103 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 103 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r352
  · rw [show dtkCanon1Flag rho 104 = rho 346 from rfl, show dtkCanon1Flag rho 105 = rho 346 from rfl]
    have hb : pmBit 104 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 104 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 105 = rho 346 from rfl, show dtkCanon1Flag rho 106 = rho 345 from rfl]
    have hb : pmBit 105 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 105 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r351
  · rw [show dtkCanon1Flag rho 106 = rho 345 from rfl, show dtkCanon1Flag rho 107 = rho 344 from rfl]
    have hb : pmBit 106 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 106 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r350
  · rw [show dtkCanon1Flag rho 107 = rho 344 from rfl, show dtkCanon1Flag rho 108 = rho 344 from rfl]
    have hb : pmBit 107 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 107 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 108 = rho 344 from rfl, show dtkCanon1Flag rho 109 = rho 343 from rfl]
    have hb : pmBit 108 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 108 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r349
  · rw [show dtkCanon1Flag rho 109 = rho 343 from rfl, show dtkCanon1Flag rho 110 = rho 342 from rfl]
    have hb : pmBit 109 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 109 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r348
  · rw [show dtkCanon1Flag rho 110 = rho 342 from rfl, show dtkCanon1Flag rho 111 = rho 341 from rfl]
    have hb : pmBit 110 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 110 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r347
  · rw [show dtkCanon1Flag rho 111 = rho 341 from rfl, show dtkCanon1Flag rho 112 = rho 341 from rfl]
    have hb : pmBit 111 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 111 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
