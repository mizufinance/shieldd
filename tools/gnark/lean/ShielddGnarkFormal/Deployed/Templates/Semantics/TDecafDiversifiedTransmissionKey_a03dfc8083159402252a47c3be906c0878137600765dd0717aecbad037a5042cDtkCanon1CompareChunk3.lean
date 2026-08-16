import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon1CompareChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk3 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ j, 48 ≤ j → j < 64 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r475, r476, r477, r478, r479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow475 at r475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow476 at r476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow477 at r477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow478 at r478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow479 at r479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow480 at r480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow481 at r481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow482 at r482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow483 at r483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow484 at r484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow485 at r485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow486 at r486
  intro j hjlo hjhi hpm
  interval_cases j
  · have hb : pmBit 48 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 49 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 50 = rho 360 from rfl]
    linear_combination r486
  · erw [dtkCanon1Bits_get rho 50 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 51 = rho 360 from rfl]
    linear_combination r485
  · erw [dtkCanon1Bits_get rho 51 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 52 = rho 360 from rfl]
    linear_combination r484
  · have hb : pmBit 52 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 53 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 54 = rho 359 from rfl]
    linear_combination r483
  · erw [dtkCanon1Bits_get rho 54 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 55 = rho 359 from rfl]
    linear_combination r482
  · erw [dtkCanon1Bits_get rho 55 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 56 = rho 359 from rfl]
    linear_combination r481
  · erw [dtkCanon1Bits_get rho 56 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 57 = rho 359 from rfl]
    linear_combination r480
  · have hb : pmBit 57 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 58 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 59 = rho 358 from rfl]
    linear_combination r479
  · have hb : pmBit 59 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 60 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 61 = rho 357 from rfl]
    linear_combination r478
  · erw [dtkCanon1Bits_get rho 61 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 62 = rho 357 from rfl]
    linear_combination r477
  · erw [dtkCanon1Bits_get rho 62 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 63 = rho 357 from rfl]
    linear_combination r476
  · erw [dtkCanon1Bits_get rho 63 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 64 = rho 357 from rfl]
    linear_combination r475

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
