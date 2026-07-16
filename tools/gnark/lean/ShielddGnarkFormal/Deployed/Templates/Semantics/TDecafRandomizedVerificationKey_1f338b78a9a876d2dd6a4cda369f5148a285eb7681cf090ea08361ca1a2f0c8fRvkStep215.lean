import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas65
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedSplitRung
import ShielddGnarkFormal.RvkFixedBaseLiteral
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem rvk_step215 (rho : Nat -> F)
    (r215 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow215 rho)
    (r1517 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1517 rho)
    (r1518 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1518 rho)
    (r1519 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1519 rho)
    (r1520 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1520 rho)
    (r1521 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1521 rho)
    (r1522 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1522 rho)
    (r1523 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1523 rho)
    (r1524 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1524 rho)
    (hacc : onCurve (rvkRvkAcc rho 215)) :
    RvkFixedBaseLadder.FixedStepRel 215 (rho 216)
      (rvkRvkAcc rho 215) (rvkRvkAcc rho (215 + 1)) := by
  have hbrow215 : (1*(rho 216))*(1 + (-1)*(rho 216)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow215] using r215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1517 at r1517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1518 at r1518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1519 at r1519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1520 at r1520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1521 at r1521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1522 at r1522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1523 at r1523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1524 at r1524
  have h13_215 : rho 1518 = rvkAccX214 rho + rvkAccY214 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1302 rho
    rw [hLc] at r1517
    linear_combination -r1517
  have h14_215 : (1264557959479100922970201115112134211560373340550096814683079276850902107265*rvkAccX214 rho + 4906366363111759234574300869375970910138001597177887940548330735732770263593*rho 1) * (7126565839021566360196697239735121082667099440565600511776815312011045649576*rvkAccY214 rho + 7126565839021566360196697239735121082667099440565600511776815312011045649576 + 1098268939017391281895962662512300282223824169740677712283708098338841141698*rho 1) = rho 1519 := by
    have hL := rvk_lc1303 rho
    have hR := rvk_lc1304 rho
    rw [hL, hR] at r1518
    linear_combination r1518
  have h15_215 : 5644036024513524987580717561242983972545349596496724583057239134979841163764*rvkAccX214 rho + 7126565839021566360196697239735121082667099440565600511776815312011045649576*rvkAccY214 rho + 7126565839021566360196697239735121082667099440565600511776815312011045649576 + 7037012110864121020505389498275749737223012580685533540974533716049635578635*rho 1 = rho 1520 := by
    have hLc := rvk_lc1305 rho
    rw [hLc] at r1519
    linear_combination r1519
  have h16_215 : rho 1521 * (1 + rho 1519) = rho 1520 := by
    linear_combination r1520
  have h17_215 : 2800425724914845436668107377538562558830549738657339244877994320937568075277*rvkAccX214 rho + 1317895910406804064052127699046425448708799894588463316158418143906363589465*rvkAccY214 rho + 1317895910406804064052127699046425448708799894588463316158418143906363589465 + 1407449638564249403743435440505796794152886754468530286960699739867773660406*rho 1 = rho 1522 := by
    have hLc := rvk_lc1306 rho
    rw [hLc] at r1521
    linear_combination r1521
  have h18_215 : rho 1523 * (1 + (-1)*rho 1519) = rho 1522 + 4326140114106720923528589862196558523836549701908261266898820991073477574299*rho 1518 := by
    linear_combination r1522
  have hSelX_215 : (1*rho 216) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX214 rho + rho 1521) = rho 1524 := by
    have hLc := rvk_lc1307 rho
    rw [hLc] at r1523
    linear_combination r1523
  have hSelY_215 : (1*rho 216) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY214 rho + rho 1523) = rho 1525 := by
    have hLc := rvk_lc1308 rho
    rw [hLc] at r1524
    linear_combination r1524
  have hr215 : RvkFixedBaseLadder.FixedStepRel 215 (rho 216) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX214 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY214 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX215 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY215 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX215_succ, rvkAccY215_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 215
      (7126565839021566360196697239735121082667099440565600511776815312011045649576 : EdwardsBridge.F) (5644036024513524987580717561242983972545349596496724583057239134979841163764 : EdwardsBridge.F) (4326140114106720923528589862196558523836549701908261266898820991073477574299 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1264557959479100922970201115112134211560373340550096814683079276850902107265 : EdwardsBridge.F) (4906366363111759234574300869375970910138001597177887940548330735732770263593 : EdwardsBridge.F)
      (1098268939017391281895962662512300282223824169740677712283708098338841141698 : EdwardsBridge.F) (7037012110864121020505389498275749737223012580685533540974533716049635578635 : EdwardsBridge.F) (2800425724914845436668107377538562558830549738657339244877994320937568075277 : EdwardsBridge.F)
      (1317895910406804064052127699046425448708799894588463316158418143906363589465 : EdwardsBridge.F) (1407449638564249403743435440505796794152886754468530286960699739867773660406 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX214 rho : F)
      (rvkAccY214 rho : F) (rho 216 : F)
      (rho 1518 : F) (rho 1519 : F) (rho 1520 : F)
      (rho 1522 : F) (rho 1521 : F) (rho 1523 : F)
      (rho 1524 : F) (rho 1525 : F) hacc
      (by rw [C_eq_L215]; simp only [L215])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_215 h14_215 h15_215 h16_215 h17_215 h18_215 hSelX_215 hSelY_215 hbrow215
  exact hr215

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

