import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon2TrueChunk12

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk13 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ m, 208 ≤ m → m < 224 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart10 at p10
  rcases p10 with ⟨_, _, _, _, _, _, _, r807, r808, r809, r810, r811, r812, r813, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow807 at r807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow808 at r808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow809 at r809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow810 at r810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow811 at r811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow812 at r812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow813 at r813
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 208 = rho 640 from rfl, show dtkCanon2Flag rho 209 = rho 640 from rfl]
    have hb : pmBit 208 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 208 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 209 = rho 640 from rfl, show dtkCanon2Flag rho 210 = rho 640 from rfl]
    have hb : pmBit 209 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 209 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 210 = rho 640 from rfl, show dtkCanon2Flag rho 211 = rho 639 from rfl]
    have hb : pmBit 210 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 210 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r813
  · rw [show dtkCanon2Flag rho 211 = rho 639 from rfl, show dtkCanon2Flag rho 212 = rho 638 from rfl]
    have hb : pmBit 211 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 211 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r812
  · rw [show dtkCanon2Flag rho 212 = rho 638 from rfl, show dtkCanon2Flag rho 213 = rho 638 from rfl]
    have hb : pmBit 212 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 212 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 213 = rho 638 from rfl, show dtkCanon2Flag rho 214 = rho 637 from rfl]
    have hb : pmBit 213 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 213 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r811
  · rw [show dtkCanon2Flag rho 214 = rho 637 from rfl, show dtkCanon2Flag rho 215 = rho 637 from rfl]
    have hb : pmBit 214 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 214 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 215 = rho 637 from rfl, show dtkCanon2Flag rho 216 = rho 637 from rfl]
    have hb : pmBit 215 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 215 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 216 = rho 637 from rfl, show dtkCanon2Flag rho 217 = rho 637 from rfl]
    have hb : pmBit 216 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 216 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 217 = rho 637 from rfl, show dtkCanon2Flag rho 218 = rho 636 from rfl]
    have hb : pmBit 217 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 217 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r810
  · rw [show dtkCanon2Flag rho 218 = rho 636 from rfl, show dtkCanon2Flag rho 219 = rho 636 from rfl]
    have hb : pmBit 218 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 218 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 219 = rho 636 from rfl, show dtkCanon2Flag rho 220 = rho 635 from rfl]
    have hb : pmBit 219 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 219 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r809
  · rw [show dtkCanon2Flag rho 220 = rho 635 from rfl, show dtkCanon2Flag rho 221 = rho 634 from rfl]
    have hb : pmBit 220 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 220 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r808
  · rw [show dtkCanon2Flag rho 221 = rho 634 from rfl, show dtkCanon2Flag rho 222 = rho 634 from rfl]
    have hb : pmBit 221 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 221 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 222 = rho 634 from rfl, show dtkCanon2Flag rho 223 = rho 634 from rfl]
    have hb : pmBit 222 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 222 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 223 = rho 634 from rfl, show dtkCanon2Flag rho 224 = rho 633 from rfl]
    have hb : pmBit 223 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 223 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r807

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
