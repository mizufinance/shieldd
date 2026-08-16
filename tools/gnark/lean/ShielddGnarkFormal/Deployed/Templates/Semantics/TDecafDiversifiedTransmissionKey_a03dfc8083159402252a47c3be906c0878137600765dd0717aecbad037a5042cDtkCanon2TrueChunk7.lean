import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon2TrueChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_flag_step_chunk7 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ m, 112 ≤ m → m < 128 → dtkCanon2Flag rho m = trueFactor (dtkCanon2Bits rho) m * dtkCanon2Flag rho (m + 1) := by
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
  rcases p10 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r849, r850, r851, r852, r853, r854, r855, r856, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow849 at r849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow850 at r850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow851 at r851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow852 at r852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow853 at r853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow854 at r854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow855 at r855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow856 at r856
  intro m hmlo hmhi
  interval_cases m
  · rw [show dtkCanon2Flag rho 112 = rho 683 from rfl, show dtkCanon2Flag rho 113 = rho 683 from rfl]
    have hb : pmBit 112 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 112 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 113 = rho 683 from rfl, show dtkCanon2Flag rho 114 = rho 682 from rfl]
    have hb : pmBit 113 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 113 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r856
  · rw [show dtkCanon2Flag rho 114 = rho 682 from rfl, show dtkCanon2Flag rho 115 = rho 682 from rfl]
    have hb : pmBit 114 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 114 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 115 = rho 682 from rfl, show dtkCanon2Flag rho 116 = rho 681 from rfl]
    have hb : pmBit 115 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 115 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r855
  · rw [show dtkCanon2Flag rho 116 = rho 681 from rfl, show dtkCanon2Flag rho 117 = rho 681 from rfl]
    have hb : pmBit 116 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 116 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 117 = rho 681 from rfl, show dtkCanon2Flag rho 118 = rho 680 from rfl]
    have hb : pmBit 117 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 117 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r854
  · rw [show dtkCanon2Flag rho 118 = rho 680 from rfl, show dtkCanon2Flag rho 119 = rho 680 from rfl]
    have hb : pmBit 118 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 118 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 119 = rho 680 from rfl, show dtkCanon2Flag rho 120 = rho 679 from rfl]
    have hb : pmBit 119 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 119 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r853
  · rw [show dtkCanon2Flag rho 120 = rho 679 from rfl, show dtkCanon2Flag rho 121 = rho 678 from rfl]
    have hb : pmBit 120 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 120 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r852
  · rw [show dtkCanon2Flag rho 121 = rho 678 from rfl, show dtkCanon2Flag rho 122 = rho 678 from rfl]
    have hb : pmBit 121 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 121 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 122 = rho 678 from rfl, show dtkCanon2Flag rho 123 = rho 678 from rfl]
    have hb : pmBit 122 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 122 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 123 = rho 678 from rfl, show dtkCanon2Flag rho 124 = rho 677 from rfl]
    have hb : pmBit 123 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 123 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r851
  · rw [show dtkCanon2Flag rho 124 = rho 677 from rfl, show dtkCanon2Flag rho 125 = rho 676 from rfl]
    have hb : pmBit 124 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 124 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r850
  · rw [show dtkCanon2Flag rho 125 = rho 676 from rfl, show dtkCanon2Flag rho 126 = rho 676 from rfl]
    have hb : pmBit 125 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 125 = 1 from by simp [trueFactor, hb]]
    ring
  · rw [show dtkCanon2Flag rho 126 = rho 676 from rfl, show dtkCanon2Flag rho 127 = rho 675 from rfl]
    have hb : pmBit 126 = true := by decide +kernel
    simp only [trueFactor, hb, ↓reduceIte]
    erw [dtkCanon2Bits_get rho 126 (by omega)]
    simp only [Nat.reduceAdd]
    linear_combination -r849
  · rw [show dtkCanon2Flag rho 127 = rho 675 from rfl, show dtkCanon2Flag rho 128 = rho 675 from rfl]
    have hb : pmBit 127 = false := by decide +kernel
    rw [show trueFactor (dtkCanon2Bits rho) 127 = 1 from by simp [trueFactor, hb]]
    ring

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
