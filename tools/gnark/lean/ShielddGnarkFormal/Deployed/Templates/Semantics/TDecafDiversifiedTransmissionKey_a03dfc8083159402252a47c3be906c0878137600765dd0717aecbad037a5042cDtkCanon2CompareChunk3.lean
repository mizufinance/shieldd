import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon2CompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_compare_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (dtkCanon2Bits rho)[j]! * (1 - (dtkCanon2Bits rho)[j]! - dtkCanon2Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart12 at p12
  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r985, r986, r987, r988, r989, r990, r991, r992, r993, r994, r995, r996, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow985 at r985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow986 at r986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow987 at r987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow988 at r988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow989 at r989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow990 at r990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow991 at r991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow992 at r992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow993 at r993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow994 at r994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow995 at r995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow996 at r996
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 50 = rho 702 from rfl]
    linear_combination r996
  · erw [dtkCanon2Bits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 51 = rho 702 from rfl]
    linear_combination r995
  · erw [dtkCanon2Bits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 52 = rho 702 from rfl]
    linear_combination r994
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 54 = rho 701 from rfl]
    linear_combination r993
  · erw [dtkCanon2Bits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 55 = rho 701 from rfl]
    linear_combination r992
  · erw [dtkCanon2Bits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 56 = rho 701 from rfl]
    linear_combination r991
  · erw [dtkCanon2Bits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 57 = rho 701 from rfl]
    linear_combination r990
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 59 = rho 700 from rfl]
    linear_combination r989
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 61 = rho 699 from rfl]
    linear_combination r988
  · erw [dtkCanon2Bits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 62 = rho 699 from rfl]
    linear_combination r987
  · erw [dtkCanon2Bits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 63 = rho 699 from rfl]
    linear_combination r986
  · erw [dtkCanon2Bits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 64 = rho 699 from rfl]
    linear_combination r985

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
