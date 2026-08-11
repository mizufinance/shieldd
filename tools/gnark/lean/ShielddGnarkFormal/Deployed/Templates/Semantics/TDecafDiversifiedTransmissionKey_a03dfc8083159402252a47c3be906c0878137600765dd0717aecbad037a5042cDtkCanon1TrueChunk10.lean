import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon1TrueChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step_chunk10 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ m, 160 ≤ m → m < 176 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, p3, p4, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart3 at p3
  rcases p3 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r318, r319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart4 at p4
  rcases p4 with ⟨r320, r321, r322, r323, r324, r325, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow318 at r318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow319 at r319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow320 at r320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow321 at r321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow322 at r322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow323 at r323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow324 at r324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow325 at r325
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon1Flag rho 160 = rho 320 from rfl, show dtkCanon1Flag rho 161 = rho 320 from rfl]
    have hb : pmBit 160 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 160 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 161 = rho 320 from rfl, show dtkCanon1Flag rho 162 = rho 319 from rfl]
    have hb : pmBit 161 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 161 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r325
  · rw [show dtkCanon1Flag rho 162 = rho 319 from rfl, show dtkCanon1Flag rho 163 = rho 318 from rfl]
    have hb : pmBit 162 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 162 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r324
  · rw [show dtkCanon1Flag rho 163 = rho 318 from rfl, show dtkCanon1Flag rho 164 = rho 317 from rfl]
    have hb : pmBit 163 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 163 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r323
  · rw [show dtkCanon1Flag rho 164 = rho 317 from rfl, show dtkCanon1Flag rho 165 = rho 316 from rfl]
    have hb : pmBit 164 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 164 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r322
  · rw [show dtkCanon1Flag rho 165 = rho 316 from rfl, show dtkCanon1Flag rho 166 = rho 316 from rfl]
    have hb : pmBit 165 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 165 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 166 = rho 316 from rfl, show dtkCanon1Flag rho 167 = rho 316 from rfl]
    have hb : pmBit 166 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 166 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 167 = rho 316 from rfl, show dtkCanon1Flag rho 168 = rho 316 from rfl]
    have hb : pmBit 167 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 167 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 168 = rho 316 from rfl, show dtkCanon1Flag rho 169 = rho 315 from rfl]
    have hb : pmBit 168 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 168 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r321
  · rw [show dtkCanon1Flag rho 169 = rho 315 from rfl, show dtkCanon1Flag rho 170 = rho 315 from rfl]
    have hb : pmBit 169 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 169 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 170 = rho 315 from rfl, show dtkCanon1Flag rho 171 = rho 314 from rfl]
    have hb : pmBit 170 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 170 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r320
  · rw [show dtkCanon1Flag rho 171 = rho 314 from rfl, show dtkCanon1Flag rho 172 = rho 313 from rfl]
    have hb : pmBit 171 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 171 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r319
  · rw [show dtkCanon1Flag rho 172 = rho 313 from rfl, show dtkCanon1Flag rho 173 = rho 313 from rfl]
    have hb : pmBit 172 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 172 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 173 = rho 313 from rfl, show dtkCanon1Flag rho 174 = rho 313 from rfl]
    have hb : pmBit 173 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 173 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon1Flag rho 174 = rho 313 from rfl, show dtkCanon1Flag rho 175 = rho 312 from rfl]
    have hb : pmBit 174 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon1Bits_get rho 174 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r318
  · rw [show dtkCanon1Flag rho 175 = rho 312 from rfl, show dtkCanon1Flag rho 176 = rho 312 from rfl]
    have hb : pmBit 175 = false := by decide +kernel
    rw [show trueFactor (dtkCanon1Bits rho) 175 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
