import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

theorem rvk_prefix_6_v2 (rho : Nat -> F)
    (r277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow277 rho) :
    (201043605247302400568675958248027321107194357606698870423568244022018247329*rho 1 + 7125073694427844070494111794506092296305327843630558036396481404085874312743*rvkAccX5 rho)*(4602731389228056481876658628161634812321742452151129397845777728070765470206 + 5599663625781238014932145740178074139478730320408256423279552692005764982371*rho 1 + 4602731389228056481876658628161634812321742452151129397845777728070765470206*rvkAccY5 rho) = rho 278 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow277 at r277
  simp only [one_mul, rvkAccX5, rvkAccY5, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r277 ⊢
  ring_nf at r277 ⊢
  exact r277

theorem rvk_prefix_6_addX (rho : Nat -> F)
    (r278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow278 rho) :
    rho 279*(1 + rho 278) = 4602731389228056481876658628161634812321742452151129397845777728070765470206 + 4747177763493781650484835932044964684083648525352187979502716334570879911315*rho 1 + 3356663082756859435011282369524118480618134568033269497371293157399859967283*rvkAccX5 rho + 4602731389228056481876658628161634812321742452151129397845777728070765470206*rvkAccY5 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow278 at r278
  simp only [one_mul, rvkAccX5, rvkAccY5, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r278 ⊢
  ring_nf at r278 ⊢
  exact r278

theorem rvk_prefix_6_addY (rho : Nat -> F)
    (r279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow279 rho) :
    rho 280*(1 + (-1)*rho 278) = 3356663082756859435011282369524118480618134568033269497371293157399859967283 + 3160882127605711333675716848893301498668288124693258619239548879659553127551*rho 1 + 4602731389228056481876658628161634812321742452151129397845777728070765470206*rvkAccX5 rho + 3356663082756859435011282369524118480618134568033269497371293157399859967283*rvkAccY5 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow279 at r279
  simp only [one_mul, rvkAccX5, rvkAccY5, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r279 ⊢
  ring_nf at r279 ⊢
  exact r279

theorem rvk_prefix_6_selX (rho : Nat -> F)
    (r280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow280 rho) :
    (1*rho 7)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX5 rho + rho 279) = rho 281 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow280 at r280
  simp only [one_mul, rvkAccX5, rvkAccY5, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r280 ⊢
  ring_nf at r280 ⊢
  exact r280

theorem rvk_prefix_6_selY (rho : Nat -> F)
    (r281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow281 rho) :
    (1*rho 7)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY5 rho + rho 280) = rho 282 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow281 at r281
  simp only [one_mul, rvkAccX5, rvkAccY5, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r281 ⊢
  ring_nf at r281 ⊢
  exact r281


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

