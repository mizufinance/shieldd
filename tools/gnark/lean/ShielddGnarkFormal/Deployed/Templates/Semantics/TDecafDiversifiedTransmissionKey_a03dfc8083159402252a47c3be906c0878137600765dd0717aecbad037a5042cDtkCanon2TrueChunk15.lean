import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon2TrueChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk15 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ m, 240 ≤ m → m < 253 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r792, r793, r794, r795, r796, r797, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow792 at r792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow793 at r793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow794 at r794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow795 at r795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow796 at r796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow797 at r797
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 240 = rho 624 from rfl, show dtkCanon2Flag rho 241 = rho 623 from rfl]
    have hb : pmBit 240 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 240 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r797
  · rw [show dtkCanon2Flag rho 241 = rho 623 from rfl, show dtkCanon2Flag rho 242 = rho 622 from rfl]
    have hb : pmBit 241 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 241 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r796
  · rw [show dtkCanon2Flag rho 242 = rho 622 from rfl, show dtkCanon2Flag rho 243 = rho 622 from rfl]
    have hb : pmBit 242 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 242 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 243 = rho 622 from rfl, show dtkCanon2Flag rho 244 = rho 621 from rfl]
    have hb : pmBit 243 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 243 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r795
  · rw [show dtkCanon2Flag rho 244 = rho 621 from rfl, show dtkCanon2Flag rho 245 = rho 621 from rfl]
    have hb : pmBit 244 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 244 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 245 = rho 621 from rfl, show dtkCanon2Flag rho 246 = rho 620 from rfl]
    have hb : pmBit 245 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 245 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r794
  · rw [show dtkCanon2Flag rho 246 = rho 620 from rfl, show dtkCanon2Flag rho 247 = rho 620 from rfl]
    have hb : pmBit 246 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 246 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 247 = rho 620 from rfl, show dtkCanon2Flag rho 248 = rho 619 from rfl]
    have hb : pmBit 247 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 247 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r793
  · rw [show dtkCanon2Flag rho 248 = rho 619 from rfl, show dtkCanon2Flag rho 249 = rho 619 from rfl]
    have hb : pmBit 248 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 248 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 249 = rho 619 from rfl, show dtkCanon2Flag rho 250 = rho 618 from rfl]
    have hb : pmBit 249 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 249 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r792
  · rw [show dtkCanon2Flag rho 250 = rho 618 from rfl, show dtkCanon2Flag rho 251 = rho 618 from rfl]
    have hb : pmBit 250 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 250 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 251 = rho 618 from rfl, show dtkCanon2Flag rho 252 = rho 618 from rfl]
    have hb : pmBit 251 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 251 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 252 = rho 618 from rfl, show dtkCanon2Flag rho 253 = 1 from rfl]
    have hb : pmBit 252 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 252 (by omega)]
    simp only [Nat.reduceAdd]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
