import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon2TrueChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk14 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ m, 224 ≤ m → m < 240 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, p9,
    p10, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart9 at p9
  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r798, r799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart10 at p10
  rcases p10 with ⟨r800, r801, r802, r803, r804, r805, r806, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow798 at r798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow799 at r799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow800 at r800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow801 at r801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow802 at r802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow803 at r803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow804 at r804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow805 at r805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow806 at r806
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 224 = rho 633 from rfl, show dtkCanon2Flag rho 225 = rho 633 from rfl]
    have hb : pmBit 224 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 224 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 225 = rho 633 from rfl, show dtkCanon2Flag rho 226 = rho 632 from rfl]
    have hb : pmBit 225 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 225 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r806
  · rw [show dtkCanon2Flag rho 226 = rho 632 from rfl, show dtkCanon2Flag rho 227 = rho 631 from rfl]
    have hb : pmBit 226 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 226 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r805
  · rw [show dtkCanon2Flag rho 227 = rho 631 from rfl, show dtkCanon2Flag rho 228 = rho 630 from rfl]
    have hb : pmBit 227 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 227 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r804
  · rw [show dtkCanon2Flag rho 228 = rho 630 from rfl, show dtkCanon2Flag rho 229 = rho 629 from rfl]
    have hb : pmBit 228 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 228 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r803
  · rw [show dtkCanon2Flag rho 229 = rho 629 from rfl, show dtkCanon2Flag rho 230 = rho 629 from rfl]
    have hb : pmBit 229 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 229 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 230 = rho 629 from rfl, show dtkCanon2Flag rho 231 = rho 628 from rfl]
    have hb : pmBit 230 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 230 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r802
  · rw [show dtkCanon2Flag rho 231 = rho 628 from rfl, show dtkCanon2Flag rho 232 = rho 628 from rfl]
    have hb : pmBit 231 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 231 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 232 = rho 628 from rfl, show dtkCanon2Flag rho 233 = rho 627 from rfl]
    have hb : pmBit 232 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 232 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r801
  · rw [show dtkCanon2Flag rho 233 = rho 627 from rfl, show dtkCanon2Flag rho 234 = rho 627 from rfl]
    have hb : pmBit 233 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 233 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 234 = rho 627 from rfl, show dtkCanon2Flag rho 235 = rho 626 from rfl]
    have hb : pmBit 234 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 234 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r800
  · rw [show dtkCanon2Flag rho 235 = rho 626 from rfl, show dtkCanon2Flag rho 236 = rho 626 from rfl]
    have hb : pmBit 235 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 235 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 236 = rho 626 from rfl, show dtkCanon2Flag rho 237 = rho 626 from rfl]
    have hb : pmBit 236 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 236 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 237 = rho 626 from rfl, show dtkCanon2Flag rho 238 = rho 625 from rfl]
    have hb : pmBit 237 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 237 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r799
  · rw [show dtkCanon2Flag rho 238 = rho 625 from rfl, show dtkCanon2Flag rho 239 = rho 624 from rfl]
    have hb : pmBit 238 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 238 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r798
  · rw [show dtkCanon2Flag rho 239 = rho 624 from rfl, show dtkCanon2Flag rho 240 = rho 624 from rfl]
    have hb : pmBit 239 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 239 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
