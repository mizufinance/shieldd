import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon2TrueChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ m, 128 ≤ m → m < 144 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r845, r846, r847, r848, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow845 at r845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow846 at r846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow847 at r847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow848 at r848
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 128 = rho 675 from rfl, show dtkCanon2Flag rho 129 = rho 674 from rfl]
    have hb : pmBit 128 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 128 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r848
  · rw [show dtkCanon2Flag rho 129 = rho 674 from rfl, show dtkCanon2Flag rho 130 = rho 674 from rfl]
    have hb : pmBit 129 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 129 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 130 = rho 674 from rfl, show dtkCanon2Flag rho 131 = rho 674 from rfl]
    have hb : pmBit 130 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 130 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 131 = rho 674 from rfl, show dtkCanon2Flag rho 132 = rho 674 from rfl]
    have hb : pmBit 131 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 131 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 132 = rho 674 from rfl, show dtkCanon2Flag rho 133 = rho 674 from rfl]
    have hb : pmBit 132 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 132 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 133 = rho 674 from rfl, show dtkCanon2Flag rho 134 = rho 674 from rfl]
    have hb : pmBit 133 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 133 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 134 = rho 674 from rfl, show dtkCanon2Flag rho 135 = rho 674 from rfl]
    have hb : pmBit 134 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 134 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 135 = rho 674 from rfl, show dtkCanon2Flag rho 136 = rho 674 from rfl]
    have hb : pmBit 135 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 135 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 136 = rho 674 from rfl, show dtkCanon2Flag rho 137 = rho 674 from rfl]
    have hb : pmBit 136 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 136 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 137 = rho 674 from rfl, show dtkCanon2Flag rho 138 = rho 674 from rfl]
    have hb : pmBit 137 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 137 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 138 = rho 674 from rfl, show dtkCanon2Flag rho 139 = rho 674 from rfl]
    have hb : pmBit 138 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 138 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 139 = rho 674 from rfl, show dtkCanon2Flag rho 140 = rho 674 from rfl]
    have hb : pmBit 139 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 139 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 140 = rho 674 from rfl, show dtkCanon2Flag rho 141 = rho 673 from rfl]
    have hb : pmBit 140 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 140 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r847
  · rw [show dtkCanon2Flag rho 141 = rho 673 from rfl, show dtkCanon2Flag rho 142 = rho 672 from rfl]
    have hb : pmBit 141 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 141 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r846
  · rw [show dtkCanon2Flag rho 142 = rho 672 from rfl, show dtkCanon2Flag rho 143 = rho 672 from rfl]
    have hb : pmBit 142 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 142 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 143 = rho 672 from rfl, show dtkCanon2Flag rho 144 = rho 671 from rfl]
    have hb : pmBit 143 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 143 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r845

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
