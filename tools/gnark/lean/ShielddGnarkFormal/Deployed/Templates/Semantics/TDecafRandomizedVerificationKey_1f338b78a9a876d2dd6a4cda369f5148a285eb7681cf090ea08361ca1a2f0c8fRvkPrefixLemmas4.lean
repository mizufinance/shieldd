import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

theorem rvk_prefix_5_v2 (rho : Nat -> F)
    (r272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow272 rho) :
    (7699570986038582385232807756011131487898362553501575443870335965318952687161*rho 1 + 7155238255561475615749980126549282499380750745333704926223150597190127292548*rvkAccX4 rho)*(4961969869576409136495175787941625024433608057224025954036172390781624818680 + 6913821187164931269417813934571733244787394412944087334351989272530383956759*rho 1 + 4961969869576409136495175787941625024433608057224025954036172390781624818680*rvkAccY4 rho) = rho 273 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow272 at r272
  simp only [one_mul, rvkAccX4, rvkAccY4, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r272 ⊢
  ring_nf at r272 ⊢
  exact r272

theorem rvk_prefix_5_addX (rho : Nat -> F)
    (r273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow273 rho) :
    rho 274*(1 + rho 273) = 4961969869576409136495175787941625024433608057224025954036172390781624818680 + 7444672839474762647295424236188986944197504752863855503475997699916583658469*rho 1 + 7409791087136955676886837493511303406370577288614234640501354455073924068438*rvkAccX4 rho + 4961969869576409136495175787941625024433608057224025954036172390781624818680*rvkAccY4 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow273 at r273
  simp only [one_mul, rvkAccX4, rvkAccY4, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r273 ⊢
  ring_nf at r273 ⊢
  exact r273

theorem rvk_prefix_5_addY (rho : Nat -> F)
    (r274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow274 rho) :
    rho 275*(1 + (-1)*rho 273) = 7409791087136955676886837493511303406370577288614234640501354455073924068438 + 5053514921647297208700836866773830936995669225056783084895674121596237598235*rho 1 + 4961969869576409136495175787941625024433608057224025954036172390781624818680*rvkAccX4 rho + 7409791087136955676886837493511303406370577288614234640501354455073924068438*rvkAccY4 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow274 at r274
  simp only [one_mul, rvkAccX4, rvkAccY4, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r274 ⊢
  ring_nf at r274 ⊢
  exact r274

theorem rvk_prefix_5_selX (rho : Nat -> F)
    (r275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow275 rho) :
    (1*rho 6)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX4 rho + rho 274) = rho 276 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow275 at r275
  simp only [one_mul, rvkAccX4, rvkAccY4, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r275 ⊢
  ring_nf at r275 ⊢
  exact r275

theorem rvk_prefix_5_selY (rho : Nat -> F)
    (r276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow276 rho) :
    (1*rho 6)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY4 rho + rho 275) = rho 277 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow276 at r276
  simp only [one_mul, rvkAccX4, rvkAccY4, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r276 ⊢
  ring_nf at r276 ⊢
  exact r276


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

