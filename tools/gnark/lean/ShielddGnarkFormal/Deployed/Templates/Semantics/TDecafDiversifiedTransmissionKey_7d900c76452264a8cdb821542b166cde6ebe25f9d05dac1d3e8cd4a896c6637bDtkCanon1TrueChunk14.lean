import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1TrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step_chunk14 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r288, r289, r290, r291, r292, r293, r294, r295, r296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow288 at r288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow289 at r289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow290 at r290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow291 at r291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow292 at r292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow293 at r293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow294 at r294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow295 at r295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow296 at r296
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon1Flag rho 224 = rho 291 from rfl, show dtkCanon1Flag rho 225 = rho 291 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 225 = rho 291 from rfl, show dtkCanon1Flag rho 226 = rho 290 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r296
  · rw [show dtkCanon1Flag rho 226 = rho 290 from rfl, show dtkCanon1Flag rho 227 = rho 289 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r295
  · rw [show dtkCanon1Flag rho 227 = rho 289 from rfl, show dtkCanon1Flag rho 228 = rho 288 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r294
  · rw [show dtkCanon1Flag rho 228 = rho 288 from rfl, show dtkCanon1Flag rho 229 = rho 287 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r293
  · rw [show dtkCanon1Flag rho 229 = rho 287 from rfl, show dtkCanon1Flag rho 230 = rho 287 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 230 = rho 287 from rfl, show dtkCanon1Flag rho 231 = rho 286 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r292
  · rw [show dtkCanon1Flag rho 231 = rho 286 from rfl, show dtkCanon1Flag rho 232 = rho 286 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 232 = rho 286 from rfl, show dtkCanon1Flag rho 233 = rho 285 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r291
  · rw [show dtkCanon1Flag rho 233 = rho 285 from rfl, show dtkCanon1Flag rho 234 = rho 285 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 234 = rho 285 from rfl, show dtkCanon1Flag rho 235 = rho 284 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r290
  · rw [show dtkCanon1Flag rho 235 = rho 284 from rfl, show dtkCanon1Flag rho 236 = rho 284 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 236 = rho 284 from rfl, show dtkCanon1Flag rho 237 = rho 284 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 237 = rho 284 from rfl, show dtkCanon1Flag rho 238 = rho 283 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r289
  · rw [show dtkCanon1Flag rho 238 = rho 283 from rfl, show dtkCanon1Flag rho 239 = rho 282 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r288
  · rw [show dtkCanon1Flag rho 239 = rho 282 from rfl, show dtkCanon1Flag rho 240 = rho 282 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
