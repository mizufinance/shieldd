import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon1TrueChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ m, 176 ≤ m → m < 192 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
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
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r312, r313, r314, r315, r316, r317, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow312 at r312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow313 at r313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow314 at r314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow315 at r315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow316 at r316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow317 at r317
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon1Flag rho 176 = rho 312 from rfl, show dtkCanon1Flag rho 177 = rho 312 from rfl]
    have hb : pmBit 176 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 176 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 177 = rho 312 from rfl, show dtkCanon1Flag rho 178 = rho 312 from rfl]
    have hb : pmBit 177 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 177 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 178 = rho 312 from rfl, show dtkCanon1Flag rho 179 = rho 311 from rfl]
    have hb : pmBit 178 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 178 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r317
  · rw [show dtkCanon1Flag rho 179 = rho 311 from rfl, show dtkCanon1Flag rho 180 = rho 311 from rfl]
    have hb : pmBit 179 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 179 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 180 = rho 311 from rfl, show dtkCanon1Flag rho 181 = rho 310 from rfl]
    have hb : pmBit 180 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 180 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r316
  · rw [show dtkCanon1Flag rho 181 = rho 310 from rfl, show dtkCanon1Flag rho 182 = rho 309 from rfl]
    have hb : pmBit 181 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 181 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r315
  · rw [show dtkCanon1Flag rho 182 = rho 309 from rfl, show dtkCanon1Flag rho 183 = rho 309 from rfl]
    have hb : pmBit 182 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 182 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 183 = rho 309 from rfl, show dtkCanon1Flag rho 184 = rho 308 from rfl]
    have hb : pmBit 183 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 183 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r314
  · rw [show dtkCanon1Flag rho 184 = rho 308 from rfl, show dtkCanon1Flag rho 185 = rho 308 from rfl]
    have hb : pmBit 184 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 184 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 185 = rho 308 from rfl, show dtkCanon1Flag rho 186 = rho 308 from rfl]
    have hb : pmBit 185 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 185 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 186 = rho 308 from rfl, show dtkCanon1Flag rho 187 = rho 308 from rfl]
    have hb : pmBit 186 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 186 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 187 = rho 308 from rfl, show dtkCanon1Flag rho 188 = rho 308 from rfl]
    have hb : pmBit 187 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 187 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 188 = rho 308 from rfl, show dtkCanon1Flag rho 189 = rho 308 from rfl]
    have hb : pmBit 188 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 188 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 189 = rho 308 from rfl, show dtkCanon1Flag rho 190 = rho 307 from rfl]
    have hb : pmBit 189 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 189 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r313
  · rw [show dtkCanon1Flag rho 190 = rho 307 from rfl, show dtkCanon1Flag rho 191 = rho 306 from rfl]
    have hb : pmBit 190 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 190 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r312
  · rw [show dtkCanon1Flag rho 191 = rho 306 from rfl, show dtkCanon1Flag rho 192 = rho 306 from rfl]
    have hb : pmBit 191 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 191 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
