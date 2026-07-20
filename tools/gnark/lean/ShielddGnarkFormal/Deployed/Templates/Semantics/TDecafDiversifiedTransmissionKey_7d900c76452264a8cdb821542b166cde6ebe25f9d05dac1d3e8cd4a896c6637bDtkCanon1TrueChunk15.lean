import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1TrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step_chunk15 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
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
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r282, r283, r284, r285, r286, r287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow282 at r282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow283 at r283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow284 at r284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow285 at r285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow286 at r286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow287 at r287
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon1Flag rho 240 = rho 1186 from rfl, show dtkCanon1Flag rho 241 = rho 1185 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r287
  · rw [show dtkCanon1Flag rho 241 = rho 1185 from rfl, show dtkCanon1Flag rho 242 = rho 1184 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r286
  · rw [show dtkCanon1Flag rho 242 = rho 1184 from rfl, show dtkCanon1Flag rho 243 = rho 1184 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 243 = rho 1184 from rfl, show dtkCanon1Flag rho 244 = rho 1183 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r285
  · rw [show dtkCanon1Flag rho 244 = rho 1183 from rfl, show dtkCanon1Flag rho 245 = rho 1183 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 245 = rho 1183 from rfl, show dtkCanon1Flag rho 246 = rho 1182 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r284
  · rw [show dtkCanon1Flag rho 246 = rho 1182 from rfl, show dtkCanon1Flag rho 247 = rho 1182 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 247 = rho 1182 from rfl, show dtkCanon1Flag rho 248 = rho 1181 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r283
  · rw [show dtkCanon1Flag rho 248 = rho 1181 from rfl, show dtkCanon1Flag rho 249 = rho 1181 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 249 = rho 1181 from rfl, show dtkCanon1Flag rho 250 = rho 276 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r282
  · rw [show dtkCanon1Flag rho 250 = rho 276 from rfl, show dtkCanon1Flag rho 251 = rho 276 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 251 = rho 276 from rfl, show dtkCanon1Flag rho 252 = rho 276 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 252 = rho 276 from rfl, show dtkCanon1Flag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
