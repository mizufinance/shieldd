import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon1True

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ j, 0 ≤ j → j < 16 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r518, r519, r520, r521, r522, r523, r524, r525, r526, r527, r528, r529, r530, r531, r532, r533, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow518 at r518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow519 at r519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow520 at r520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow521 at r521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow522 at r522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow523 at r523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow524 at r524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow525 at r525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow526 at r526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow527 at r527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow528 at r528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow529 at r529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow530 at r530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow531 at r531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow532 at r532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow533 at r533
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon1Bits_get rho 0 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 1 = rho 362 from rfl]
    linear_combination r533
  · erw [dtkCanon1Bits_get rho 1 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 2 = rho 362 from rfl]
    linear_combination r532
  · erw [dtkCanon1Bits_get rho 2 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 3 = rho 362 from rfl]
    linear_combination r531
  · erw [dtkCanon1Bits_get rho 3 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 4 = rho 362 from rfl]
    linear_combination r530
  · erw [dtkCanon1Bits_get rho 4 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 5 = rho 362 from rfl]
    linear_combination r529
  · erw [dtkCanon1Bits_get rho 5 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 6 = rho 362 from rfl]
    linear_combination r528
  · erw [dtkCanon1Bits_get rho 6 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 7 = rho 362 from rfl]
    linear_combination r527
  · erw [dtkCanon1Bits_get rho 7 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 8 = rho 362 from rfl]
    linear_combination r526
  · erw [dtkCanon1Bits_get rho 8 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 9 = rho 362 from rfl]
    linear_combination r525
  · erw [dtkCanon1Bits_get rho 9 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 10 = rho 362 from rfl]
    linear_combination r524
  · erw [dtkCanon1Bits_get rho 10 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 11 = rho 362 from rfl]
    linear_combination r523
  · erw [dtkCanon1Bits_get rho 11 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 12 = rho 362 from rfl]
    linear_combination r522
  · erw [dtkCanon1Bits_get rho 12 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 13 = rho 362 from rfl]
    linear_combination r521
  · erw [dtkCanon1Bits_get rho 13 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 14 = rho 362 from rfl]
    linear_combination r520
  · erw [dtkCanon1Bits_get rho 14 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 15 = rho 362 from rfl]
    linear_combination r519
  · erw [dtkCanon1Bits_get rho 15 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 16 = rho 362 from rfl]
    linear_combination r518

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
