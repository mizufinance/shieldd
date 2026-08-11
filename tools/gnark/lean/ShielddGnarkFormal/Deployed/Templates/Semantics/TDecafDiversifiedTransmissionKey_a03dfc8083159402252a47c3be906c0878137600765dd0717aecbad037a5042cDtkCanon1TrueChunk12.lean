import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon1TrueChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step_chunk12 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ m, 192 ≤ m → m < 208 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, p3, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r304, r305, r306, r307, r308, r309, r310, r311, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow304 at r304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow305 at r305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow306 at r306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow307 at r307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow308 at r308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow309 at r309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow310 at r310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow311 at r311
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon1Flag rho 192 = rho 306 from rfl, show dtkCanon1Flag rho 193 = rho 306 from rfl]
    have hb : pmBit 192 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 192 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 193 = rho 306 from rfl, show dtkCanon1Flag rho 194 = rho 305 from rfl]
    have hb : pmBit 193 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 193 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r311
  · rw [show dtkCanon1Flag rho 194 = rho 305 from rfl, show dtkCanon1Flag rho 195 = rho 304 from rfl]
    have hb : pmBit 194 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 194 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r310
  · rw [show dtkCanon1Flag rho 195 = rho 304 from rfl, show dtkCanon1Flag rho 196 = rho 304 from rfl]
    have hb : pmBit 195 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 195 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 196 = rho 304 from rfl, show dtkCanon1Flag rho 197 = rho 303 from rfl]
    have hb : pmBit 196 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 196 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r309
  · rw [show dtkCanon1Flag rho 197 = rho 303 from rfl, show dtkCanon1Flag rho 198 = rho 303 from rfl]
    have hb : pmBit 197 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 197 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 198 = rho 303 from rfl, show dtkCanon1Flag rho 199 = rho 302 from rfl]
    have hb : pmBit 198 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 198 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r308
  · rw [show dtkCanon1Flag rho 199 = rho 302 from rfl, show dtkCanon1Flag rho 200 = rho 302 from rfl]
    have hb : pmBit 199 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 199 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 200 = rho 302 from rfl, show dtkCanon1Flag rho 201 = rho 301 from rfl]
    have hb : pmBit 200 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 200 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r307
  · rw [show dtkCanon1Flag rho 201 = rho 301 from rfl, show dtkCanon1Flag rho 202 = rho 301 from rfl]
    have hb : pmBit 201 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 201 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 202 = rho 301 from rfl, show dtkCanon1Flag rho 203 = rho 300 from rfl]
    have hb : pmBit 202 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 202 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r306
  · rw [show dtkCanon1Flag rho 203 = rho 300 from rfl, show dtkCanon1Flag rho 204 = rho 300 from rfl]
    have hb : pmBit 203 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 203 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 204 = rho 300 from rfl, show dtkCanon1Flag rho 205 = rho 300 from rfl]
    have hb : pmBit 204 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 204 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 205 = rho 300 from rfl, show dtkCanon1Flag rho 206 = rho 299 from rfl]
    have hb : pmBit 205 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 205 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r305
  · rw [show dtkCanon1Flag rho 206 = rho 299 from rfl, show dtkCanon1Flag rho 207 = rho 299 from rfl]
    have hb : pmBit 206 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 206 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 207 = rho 299 from rfl, show dtkCanon1Flag rho 208 = rho 298 from rfl]
    have hb : pmBit 207 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 207 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r304

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
