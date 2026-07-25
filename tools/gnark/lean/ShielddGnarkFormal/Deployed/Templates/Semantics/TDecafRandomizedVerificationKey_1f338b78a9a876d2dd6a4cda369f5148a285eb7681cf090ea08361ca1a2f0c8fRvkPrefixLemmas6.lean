import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem rvk_prefix_7_v2 (rho : Nat -> F)
    (r282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow282 rho) :
    (3227302918384576863256780998438690966310203610358279494184436333699483332333*rho 1 + 5764754835735288903970729372232287357538353079863789115257105120877617089341*rvkAccX6 rho)*(3138181821979513410261790501863397666618234928341272728068224064253822055845 + 6137963534276468845396689112456072775006326924927504266065200537251503576410*rho 1 + 3138181821979513410261790501863397666618234928341272728068224064253822055845*rvkAccY6 rho) = rho 283 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow282 at r282
  simp only [one_mul, rvkAccX6, rvkAccY6, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r282 ⊢
  ring_nf at r282 ⊢
  exact r282

theorem rvk_prefix_7_addX (rho : Nat -> F)
    (r283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow283 rho) :
    rho 284*(1 + rho 283) = 3138181821979513410261790501863397666618234928341272728068224064253822055845 + 2737207941381420110061514279785201064407796872867875865170465456312149865526*rho 1 + 7057128834952976577195632199555397461949787578619238957571594289260648307325*rvkAccX6 rho + 3138181821979513410261790501863397666618234928341272728068224064253822055845*rvkAccY6 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow283 at r283
  simp only [one_mul, rvkAccX6, rvkAccY6, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r283 ⊢
  ring_nf at r283 ⊢
  exact r283

theorem rvk_prefix_7_addY (rho : Nat -> F)
    (r284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow284 rho) :
    rho 285*(1 + (-1)*rho 283) = 7057128834952976577195632199555397461949787578619238957571594289260648307325 + 4816825656872654239261236763169618638852247350032693108367889541869012690107*rho 1 + 3138181821979513410261790501863397666618234928341272728068224064253822055845*rvkAccX6 rho + 7057128834952976577195632199555397461949787578619238957571594289260648307325*rvkAccY6 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow284 at r284
  simp only [one_mul, rvkAccX6, rvkAccY6, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r284 ⊢
  ring_nf at r284 ⊢
  exact r284

theorem rvk_prefix_7_selX (rho : Nat -> F)
    (r285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow285 rho) :
    (1*rho 8)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX6 rho + rho 284) = rho 286 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow285 at r285
  simp only [one_mul, rvkAccX6, rvkAccY6, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r285 ⊢
  ring_nf at r285 ⊢
  exact r285

theorem rvk_prefix_7_selY (rho : Nat -> F)
    (r286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow286 rho) :
    (1*rho 8)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY6 rho + rho 285) = rho 287 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow286 at r286
  simp only [one_mul, rvkAccX6, rvkAccY6, Shieldd.GnarkFormal.StrideRun.sumAux, zero_add, Nat.reduceAdd, Nat.reduceMul] at r286 ⊢
  ring_nf at r286 ⊢
  exact r286


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

