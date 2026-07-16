import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas72
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

theorem rvk_step222 (rho : Nat -> F)
    (r222 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow222 rho)
    (r1573 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1573 rho)
    (r1574 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1574 rho)
    (r1575 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1575 rho)
    (r1576 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1576 rho)
    (r1577 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1577 rho)
    (r1578 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1578 rho)
    (r1579 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1579 rho)
    (r1580 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1580 rho)
    (hacc : onCurve (rvkRvkAcc rho 222)) :
    RvkFixedBaseLadder.FixedStepRel 222 (rho 223)
      (rvkRvkAcc rho 222) (rvkRvkAcc rho (222 + 1)) := by
  have hbrow222 : (1*(rho 223))*(1 + (-1)*(rho 223)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow222] using r222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1573 at r1573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1574 at r1574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1575 at r1575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1576 at r1576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1577 at r1577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1578 at r1578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1579 at r1579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1580 at r1580
  have h13_222 : rho 1574 = rvkAccX221 rho + rvkAccY221 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1351 rho
    rw [hLc] at r1573
    linear_combination -r1573
  have h14_222 : (3572665339850325498579135525683803696736775859419263016244508576639770858362*rvkAccX221 rho + 5124414814074150176411602441813154520065508830654359745986878861746779079731*rho 1) * (5331045109956993830571264971135024265297950271702392351376889158259487897154*rvkAccY221 rho + 5331045109956993830571264971135024265297950271702392351376889158259487897154 + 5826020781600902362789512844011047342814882089613210203743853380263811888273*rho 1) = rho 1575 := by
    have hL := rvk_lc1352 rho
    have hR := rvk_lc1353 rho
    rw [hL, hR] at r1574
    linear_combination r1574
  have h15_222 : 3984419284434054346260560964346040255182851151424680641451159279463405473847*rvkAccX221 rho + 5331045109956993830571264971135024265297950271702392351376889158259487897154*rvkAccY221 rho + 5331045109956993830571264971135024265297950271702392351376889158259487897154 + 256776209672180712557306124199789784883037711549193371791210745777995988131*rho 1 = rho 1576 := by
    have hLc := rvk_lc1354 rho
    rw [hLc] at r1575
    linear_combination r1575
  have h16_222 : rho 1577 * (1 + rho 1575) = rho 1576 := by
    linear_combination r1576
  have h17_222 : 4460042464994316077988263974435506276193048183729383186484074176454003765194*rvkAccX221 rho + 3113416639471376593677559967646522266077949063451671476558344297657921341887*rvkAccY221 rho + 3113416639471376593677559967646522266077949063451671476558344297657921341887 + 8187685539756189711691518814581756746492861623604870456144022710139413250910*rho 1 = rho 1578 := by
    have hLc := rvk_lc1355 rho
    rw [hLc] at r1577
    linear_combination r1577
  have h18_222 : rho 1579 * (1 + (-1)*rho 1575) = rho 1578 + 871002644962677752583000996699517989104902087973009164892814981805484131960*rho 1574 := by
    linear_combination r1578
  have hSelX_222 : (1*rho 223) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX221 rho + rho 1577) = rho 1580 := by
    have hLc := rvk_lc1356 rho
    rw [hLc] at r1579
    linear_combination r1579
  have hSelY_222 : (1*rho 223) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY221 rho + rho 1579) = rho 1581 := by
    have hLc := rvk_lc1357 rho
    rw [hLc] at r1580
    linear_combination r1580
  have hr222 : RvkFixedBaseLadder.FixedStepRel 222 (rho 223) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX221 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY221 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX222 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY222 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX222_succ, rvkAccY222_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 222
      (5331045109956993830571264971135024265297950271702392351376889158259487897154 : EdwardsBridge.F) (3984419284434054346260560964346040255182851151424680641451159279463405473847 : EdwardsBridge.F) (871002644962677752583000996699517989104902087973009164892814981805484131960 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3572665339850325498579135525683803696736775859419263016244508576639770858362 : EdwardsBridge.F) (5124414814074150176411602441813154520065508830654359745986878861746779079731 : EdwardsBridge.F)
      (5826020781600902362789512844011047342814882089613210203743853380263811888273 : EdwardsBridge.F) (256776209672180712557306124199789784883037711549193371791210745777995988131 : EdwardsBridge.F) (4460042464994316077988263974435506276193048183729383186484074176454003765194 : EdwardsBridge.F)
      (3113416639471376593677559967646522266077949063451671476558344297657921341887 : EdwardsBridge.F) (8187685539756189711691518814581756746492861623604870456144022710139413250910 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX221 rho : F)
      (rvkAccY221 rho : F) (rho 223 : F)
      (rho 1574 : F) (rho 1575 : F) (rho 1576 : F)
      (rho 1578 : F) (rho 1577 : F) (rho 1579 : F)
      (rho 1580 : F) (rho 1581 : F) hacc
      (by rw [C_eq_L222]; simp only [L222])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_222 h14_222 h15_222 h16_222 h17_222 h18_222 hSelX_222 hSelY_222 hbrow222
  exact hr222

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

