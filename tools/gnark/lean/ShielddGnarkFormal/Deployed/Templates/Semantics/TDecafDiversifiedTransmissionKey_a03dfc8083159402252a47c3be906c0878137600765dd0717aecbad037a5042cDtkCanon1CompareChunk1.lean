import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon1CompareChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk1 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ j, 16 ≤ j → j < 32 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
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
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r502, r503, r504, r505, r506, r507, r508, r509, r510, r511, r512, r513, r514, r515, r516, r517, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow502 at r502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow503 at r503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow504 at r504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow505 at r505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow506 at r506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow507 at r507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow508 at r508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow509 at r509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow510 at r510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow511 at r511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow512 at r512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow513 at r513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow514 at r514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow515 at r515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow516 at r516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow517 at r517
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon1Bits_get rho 16 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 17 = rho 362 from rfl]
    linear_combination r517
  · erw [dtkCanon1Bits_get rho 17 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 18 = rho 362 from rfl]
    linear_combination r516
  · erw [dtkCanon1Bits_get rho 18 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 19 = rho 362 from rfl]
    linear_combination r515
  · erw [dtkCanon1Bits_get rho 19 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 20 = rho 362 from rfl]
    linear_combination r514
  · erw [dtkCanon1Bits_get rho 20 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 21 = rho 362 from rfl]
    linear_combination r513
  · erw [dtkCanon1Bits_get rho 21 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 22 = rho 362 from rfl]
    linear_combination r512
  · erw [dtkCanon1Bits_get rho 22 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 23 = rho 362 from rfl]
    linear_combination r511
  · erw [dtkCanon1Bits_get rho 23 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 24 = rho 362 from rfl]
    linear_combination r510
  · erw [dtkCanon1Bits_get rho 24 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 25 = rho 362 from rfl]
    linear_combination r509
  · erw [dtkCanon1Bits_get rho 25 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 26 = rho 362 from rfl]
    linear_combination r508
  · erw [dtkCanon1Bits_get rho 26 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 27 = rho 362 from rfl]
    linear_combination r507
  · erw [dtkCanon1Bits_get rho 27 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 28 = rho 362 from rfl]
    linear_combination r506
  · erw [dtkCanon1Bits_get rho 28 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 29 = rho 362 from rfl]
    linear_combination r505
  · erw [dtkCanon1Bits_get rho 29 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 30 = rho 362 from rfl]
    linear_combination r504
  · erw [dtkCanon1Bits_get rho 30 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 31 = rho 362 from rfl]
    linear_combination r503
  · erw [dtkCanon1Bits_get rho 31 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 32 = rho 362 from rfl]
    linear_combination r502

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
