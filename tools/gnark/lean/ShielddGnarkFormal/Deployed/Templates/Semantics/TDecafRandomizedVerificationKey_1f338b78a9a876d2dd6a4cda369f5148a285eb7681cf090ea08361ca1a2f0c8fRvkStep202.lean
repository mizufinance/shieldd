import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas52
import ShielddGnarkFormal.RvkFixedGenInst0
import ShielddGnarkFormal.RvkFixedSplitRung
import ShielddGnarkFormal.RvkFixedBaseLiteral
import ShielddGnarkFormal.RvkFixedBaseLadder
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem rvk_step202 (rho : Nat -> F)
    (r202 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow202 rho)
    (r1413 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1413 rho)
    (r1414 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1414 rho)
    (r1415 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1415 rho)
    (r1416 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1416 rho)
    (r1417 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1417 rho)
    (r1418 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1418 rho)
    (r1419 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1419 rho)
    (r1420 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1420 rho)
    (hacc : onCurve (rvkRvkAcc rho 202)) :
    RvkFixedBaseLadder.FixedStepRel 202 (rho 203)
      (rvkRvkAcc rho 202) (rvkRvkAcc rho (202 + 1)) := by
  have hbrow202 : (1*(rho 203))*(1 + (-1)*(rho 203)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow202] using r202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1413 at r1413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1414 at r1414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1415 at r1415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1416 at r1416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1417 at r1417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1418 at r1418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1419 at r1419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1420 at r1420
  have h13_202 : rho 1414 = rvkAccX201 rho + rvkAccY201 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1211 rho
    rw [hLc] at r1413
    linear_combination -r1413
  have h14_202 : (7771082363777087753146312373441150692288717775491566932576390877702374023469*rvkAccX201 rho + 5532580002342148249326876168201717375879855212075595292748425706160903698584*rho 1) * (4558446562394208624286663758240912216818567793319435869030726060012341948788*rvkAccY201 rho + 4558446562394208624286663758240912216818567793319435869030726060012341948788 + 3949003806747971313342296458465229099037428683069361027605799107243267555772*rho 1) = rho 1415 := by
    have hL := rvk_lc1212 rho
    have hR := rvk_lc1213 rho
    rw [hL, hR] at r1414
    linear_combination r1414
  have h15_202 : 1187759968262630303751952362269717603441135397511027682878886254944284637993*rvkAccX201 rho + 4558446562394208624286663758240912216818567793319435869030726060012341948788*rvkAccY201 rho + 4558446562394208624286663758240912216818567793319435869030726060012341948788 + 4853702159964689550774172437079807466137824360152061528008258171118634681859*rho 1 = rho 1416 := by
    have hLc := rvk_lc1214 rho
    rw [hLc] at r1415
    linear_combination r1415
  have h16_202 : rho 1417 * (1 + rho 1415) = rho 1416 := by
    linear_combination r1416
  have h17_202 : 7256701781165740120496872576511828927934763937643036145056347200973124601048*rvkAccX201 rho + 3886015187034161799962161180540634314557331541834627958904507395905067290253*rvkAccY201 rho + 3886015187034161799962161180540634314557331541834627958904507395905067290253 + 3590759589463680873474652501701739065238074975002002299926975284798774557182*rho 1 = rho 1418 := by
    have hLc := rvk_lc1215 rho
    rw [hLc] at r1417
    linear_combination r1417
  have h18_202 : rho 1419 * (1 + (-1)*rho 1415) = rho 1418 + 5746206530656838928038616120510629820259703190830463551909612314956626586781*rho 1414 := by
    linear_combination r1418
  have hSelX_202 : (1*rho 203) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX201 rho + rho 1417) = rho 1420 := by
    have hLc := rvk_lc1216 rho
    rw [hLc] at r1419
    linear_combination r1419
  have hSelY_202 : (1*rho 203) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY201 rho + rho 1419) = rho 1421 := by
    have hLc := rvk_lc1217 rho
    rw [hLc] at r1420
    linear_combination r1420
  have hr202 : RvkFixedBaseLadder.FixedStepRel 202 (rho 203) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX201 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY201 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX202 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY202 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX202_succ, rvkAccY202_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 202
      (4558446562394208624286663758240912216818567793319435869030726060012341948788 : EdwardsBridge.F) (1187759968262630303751952362269717603441135397511027682878886254944284637993 : EdwardsBridge.F) (5746206530656838928038616120510629820259703190830463551909612314956626586781 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (7771082363777087753146312373441150692288717775491566932576390877702374023469 : EdwardsBridge.F) (5532580002342148249326876168201717375879855212075595292748425706160903698584 : EdwardsBridge.F)
      (3949003806747971313342296458465229099037428683069361027605799107243267555772 : EdwardsBridge.F) (4853702159964689550774172437079807466137824360152061528008258171118634681859 : EdwardsBridge.F) (7256701781165740120496872576511828927934763937643036145056347200973124601048 : EdwardsBridge.F)
      (3886015187034161799962161180540634314557331541834627958904507395905067290253 : EdwardsBridge.F) (3590759589463680873474652501701739065238074975002002299926975284798774557182 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX201 rho : F)
      (rvkAccY201 rho : F) (rho 203 : F)
      (rho 1414 : F) (rho 1415 : F) (rho 1416 : F)
      (rho 1418 : F) (rho 1417 : F) (rho 1419 : F)
      (rho 1420 : F) (rho 1421 : F) hacc
      (by rw [C_eq_L202]; simp only [L202])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_202 h14_202 h15_202 h16_202 h17_202 h18_202 hSelX_202 hSelY_202 hbrow202
  exact hr202

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

