import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon2CompareChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon2_compare_chunk8 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ j, 128 ≤ j → j < 144 → pmBit j = false → (dtkCanon2Bits rho)[j]! * (1 - (dtkCanon2Bits rho)[j]! - dtkCanon2Flag rho (j + 1)) = 0 := by
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
  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r933, r934, r935, r936, r937, r938, r939, r940, r941, r942, r943, r944, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow933 at r933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow934 at r934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow935 at r935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow936 at r936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow937 at r937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow938 at r938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow939 at r939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow940 at r940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow941 at r941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow942 at r942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow943 at r943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow944 at r944
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 128 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 129 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 130 = rho 674 from rfl]
    linear_combination r944
  · erw [dtkCanon2Bits_get rho 130 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 131 = rho 674 from rfl]
    linear_combination r943
  · erw [dtkCanon2Bits_get rho 131 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 132 = rho 674 from rfl]
    linear_combination r942
  · erw [dtkCanon2Bits_get rho 132 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 133 = rho 674 from rfl]
    linear_combination r941
  · erw [dtkCanon2Bits_get rho 133 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 134 = rho 674 from rfl]
    linear_combination r940
  · erw [dtkCanon2Bits_get rho 134 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 135 = rho 674 from rfl]
    linear_combination r939
  · erw [dtkCanon2Bits_get rho 135 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 136 = rho 674 from rfl]
    linear_combination r938
  · erw [dtkCanon2Bits_get rho 136 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 137 = rho 674 from rfl]
    linear_combination r937
  · erw [dtkCanon2Bits_get rho 137 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 138 = rho 674 from rfl]
    linear_combination r936
  · erw [dtkCanon2Bits_get rho 138 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 139 = rho 674 from rfl]
    linear_combination r935
  · erw [dtkCanon2Bits_get rho 139 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 140 = rho 674 from rfl]
    linear_combination r934
  · have hb : pmBit 140 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 141 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon2Bits_get rho 142 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon2Flag rho 143 = rho 672 from rfl]
    linear_combination r933
  · have hb : pmBit 143 = true := by decide +kernel
    simp [hb] at hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
