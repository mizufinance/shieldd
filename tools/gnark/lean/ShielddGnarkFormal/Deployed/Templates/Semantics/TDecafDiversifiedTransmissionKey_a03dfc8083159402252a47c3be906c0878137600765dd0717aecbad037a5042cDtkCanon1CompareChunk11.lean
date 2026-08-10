import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkCanon1CompareChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_compare_chunk11 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho) :
    ∀ j, 176 ≤ j → j < 192 → pmBit j = false → (dtkCanon1Bits rho)[j]! * (1 - (dtkCanon1Bits rho)[j]! - dtkCanon1Flag rho (j + 1)) = 0 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, p4, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart4 at p4
  rcases p4 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r398, r399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart5 at p5
  rcases p5 with ⟨r400, r401, r402, r403, r404, r405, r406, r407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow398 at r398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow399 at r399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow400 at r400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow401 at r401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow402 at r402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow403 at r403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow404 at r404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow405 at r405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow406 at r406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow407 at r407
  intro j hjlo hjhi hpm
  interval_cases j
  · erw [dtkCanon1Bits_get rho 176 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 177 = rho 312 from rfl]
    linear_combination r407
  · erw [dtkCanon1Bits_get rho 177 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 178 = rho 312 from rfl]
    linear_combination r406
  · have hb : pmBit 178 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 179 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 180 = rho 311 from rfl]
    linear_combination r405
  · have hb : pmBit 180 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 181 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 182 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 183 = rho 309 from rfl]
    linear_combination r404
  · have hb : pmBit 183 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 184 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 185 = rho 308 from rfl]
    linear_combination r403
  · erw [dtkCanon1Bits_get rho 185 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 186 = rho 308 from rfl]
    linear_combination r402
  · erw [dtkCanon1Bits_get rho 186 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 187 = rho 308 from rfl]
    linear_combination r401
  · erw [dtkCanon1Bits_get rho 187 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 188 = rho 308 from rfl]
    linear_combination r400
  · erw [dtkCanon1Bits_get rho 188 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 189 = rho 308 from rfl]
    linear_combination r399
  · have hb : pmBit 189 = true := by decide +kernel
    simp [hb] at hpm
  · have hb : pmBit 190 = true := by decide +kernel
    simp [hb] at hpm
  · erw [dtkCanon1Bits_get rho 191 (by omega)]
    simp only [Nat.reduceAdd]
    rw [show dtkCanon1Flag rho 192 = rho 306 from rfl]
    linear_combination r398

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkSupport
