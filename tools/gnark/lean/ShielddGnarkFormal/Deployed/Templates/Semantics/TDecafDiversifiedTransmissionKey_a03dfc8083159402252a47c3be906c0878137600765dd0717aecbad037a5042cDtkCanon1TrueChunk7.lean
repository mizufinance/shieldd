import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon1TrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r339, r340, r341, r342, r343, r344, r345, r346, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow339 at r339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow340 at r340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow341 at r341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow342 at r342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow343 at r343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow344 at r344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow345 at r345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow346 at r346
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon1Flag rho 112 = rho 341 from rfl, show dtkCanon1Flag rho 113 = rho 341 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 113 = rho 341 from rfl, show dtkCanon1Flag rho 114 = rho 340 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r346
  · rw [show dtkCanon1Flag rho 114 = rho 340 from rfl, show dtkCanon1Flag rho 115 = rho 340 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 115 = rho 340 from rfl, show dtkCanon1Flag rho 116 = rho 339 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r345
  · rw [show dtkCanon1Flag rho 116 = rho 339 from rfl, show dtkCanon1Flag rho 117 = rho 339 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 117 = rho 339 from rfl, show dtkCanon1Flag rho 118 = rho 338 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r344
  · rw [show dtkCanon1Flag rho 118 = rho 338 from rfl, show dtkCanon1Flag rho 119 = rho 338 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 119 = rho 338 from rfl, show dtkCanon1Flag rho 120 = rho 337 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r343
  · rw [show dtkCanon1Flag rho 120 = rho 337 from rfl, show dtkCanon1Flag rho 121 = rho 336 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r342
  · rw [show dtkCanon1Flag rho 121 = rho 336 from rfl, show dtkCanon1Flag rho 122 = rho 336 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 122 = rho 336 from rfl, show dtkCanon1Flag rho 123 = rho 336 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 123 = rho 336 from rfl, show dtkCanon1Flag rho 124 = rho 335 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r341
  · rw [show dtkCanon1Flag rho 124 = rho 335 from rfl, show dtkCanon1Flag rho 125 = rho 334 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r340
  · rw [show dtkCanon1Flag rho 125 = rho 334 from rfl, show dtkCanon1Flag rho 126 = rho 334 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 126 = rho 334 from rfl, show dtkCanon1Flag rho 127 = rho 333 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r339
  · rw [show dtkCanon1Flag rho 127 = rho 333 from rfl, show dtkCanon1Flag rho 128 = rho 333 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
