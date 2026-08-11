import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon2TrueChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ m, 176 ≤ m → m < 192 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r822, r823, r824, r825, r826, r827, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow822 at r822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow823 at r823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow824 at r824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow825 at r825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow826 at r826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow827 at r827
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 176 = rho 654 from rfl, show dtkCanon2Flag rho 177 = rho 654 from rfl]
    have hb : pmBit 176 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 176 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 177 = rho 654 from rfl, show dtkCanon2Flag rho 178 = rho 654 from rfl]
    have hb : pmBit 177 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 177 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 178 = rho 654 from rfl, show dtkCanon2Flag rho 179 = rho 653 from rfl]
    have hb : pmBit 178 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 178 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r827
  · rw [show dtkCanon2Flag rho 179 = rho 653 from rfl, show dtkCanon2Flag rho 180 = rho 653 from rfl]
    have hb : pmBit 179 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 179 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 180 = rho 653 from rfl, show dtkCanon2Flag rho 181 = rho 652 from rfl]
    have hb : pmBit 180 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 180 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r826
  · rw [show dtkCanon2Flag rho 181 = rho 652 from rfl, show dtkCanon2Flag rho 182 = rho 651 from rfl]
    have hb : pmBit 181 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 181 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r825
  · rw [show dtkCanon2Flag rho 182 = rho 651 from rfl, show dtkCanon2Flag rho 183 = rho 651 from rfl]
    have hb : pmBit 182 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 182 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 183 = rho 651 from rfl, show dtkCanon2Flag rho 184 = rho 650 from rfl]
    have hb : pmBit 183 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 183 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r824
  · rw [show dtkCanon2Flag rho 184 = rho 650 from rfl, show dtkCanon2Flag rho 185 = rho 650 from rfl]
    have hb : pmBit 184 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 184 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 185 = rho 650 from rfl, show dtkCanon2Flag rho 186 = rho 650 from rfl]
    have hb : pmBit 185 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 185 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 186 = rho 650 from rfl, show dtkCanon2Flag rho 187 = rho 650 from rfl]
    have hb : pmBit 186 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 186 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 187 = rho 650 from rfl, show dtkCanon2Flag rho 188 = rho 650 from rfl]
    have hb : pmBit 187 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 187 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 188 = rho 650 from rfl, show dtkCanon2Flag rho 189 = rho 650 from rfl]
    have hb : pmBit 188 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 188 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 189 = rho 650 from rfl, show dtkCanon2Flag rho 190 = rho 649 from rfl]
    have hb : pmBit 189 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 189 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r823
  · rw [show dtkCanon2Flag rho 190 = rho 649 from rfl, show dtkCanon2Flag rho 191 = rho 648 from rfl]
    have hb : pmBit 190 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 190 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r822
  · rw [show dtkCanon2Flag rho 191 = rho 648 from rfl, show dtkCanon2Flag rho 192 = rho 648 from rfl]
    have hb : pmBit 191 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 191 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
