import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon2CompareChunk9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_compare_chunk10 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ j, 160 ≤ j → j < 176 → pmBit j = false → (dtkCanon2Bits rho)[j]! * (1 - (dtkCanon2Bits rho)[j]! - dtkCanon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, p11, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart11 at p11
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r918, r919, r920, r921, r922, r923, r924, r925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow918 at r918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow919 at r919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow920 at r920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow921 at r921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow922 at r922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow923 at r923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow924 at r924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow925 at r925
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon2Bits_get rho 160 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 161 = rho 662 from rfl]
    linear_combination r925
  · have hb : pmBit 161 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 162 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 163 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 164 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 165 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 166 = rho 658 from rfl]
    linear_combination r924
  · erw [dtkCanon2Bits_get rho 166 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 167 = rho 658 from rfl]
    linear_combination r923
  · erw [dtkCanon2Bits_get rho 167 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 168 = rho 658 from rfl]
    linear_combination r922
  · have hb : pmBit 168 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 169 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 170 = rho 657 from rfl]
    linear_combination r921
  · have hb : pmBit 170 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 171 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 172 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 173 = rho 655 from rfl]
    linear_combination r920
  · erw [dtkCanon2Bits_get rho 173 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 174 = rho 655 from rfl]
    linear_combination r919
  · have hb : pmBit 174 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 175 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 176 = rho 654 from rfl]
    linear_combination r918

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
