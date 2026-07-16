import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas71
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

theorem rvk_step221 (rho : Nat -> F)
    (r221 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow221 rho)
    (r1565 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1565 rho)
    (r1566 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1566 rho)
    (r1567 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1567 rho)
    (r1568 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1568 rho)
    (r1569 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1569 rho)
    (r1570 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1570 rho)
    (r1571 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1571 rho)
    (r1572 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1572 rho)
    (hacc : onCurve (rvkRvkAcc rho 221)) :
    RvkFixedBaseLadder.FixedStepRel 221 (rho 222)
      (rvkRvkAcc rho 221) (rvkRvkAcc rho (221 + 1)) := by
  have hbrow221 : (1*(rho 222))*(1 + (-1)*(rho 222)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow221] using r221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1565 at r1565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1566 at r1566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1567 at r1567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1568 at r1568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1569 at r1569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1570 at r1570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1571 at r1571
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1572 at r1572
  have h13_221 : rho 1566 = rvkAccX220 rho + rvkAccY220 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1344 rho
    rw [hLc] at r1565
    linear_combination -r1565
  have h14_221 : (5791789347728941516993523159659494889333240044800236722540434826636000096086*rvkAccX220 rho + 4828905915229688026472990501082234424529133778340273211941412939713368772977*rho 1) * (6570330944860596111059142108479099720512137819754909616625358705125934600095*rvkAccY220 rho + 6570330944860596111059142108479099720512137819754909616625358705125934600095 + 4846688529128689085673653848924591249673793542413264056059586517802268792870*rho 1) = rho 1567 := by
    have hL := rvk_lc1345 rho
    have hR := rvk_lc1346 rho
    rw [hL, hR] at r1566
    linear_combination r1566
  have h15_221 : 3870548444408008476887576047147739124234881800694480163715625136648901154230*rvkAccX220 rho + 6570330944860596111059142108479099720512137819754909616625358705125934600095*rvkAccY220 rho + 6570330944860596111059142108479099720512137819754909616625358705125934600095 + 3193496721864086105491981762444090318806529963256406885279806050088467766475*rho 1 = rho 1568 := by
    have hLc := rvk_lc1347 rho
    rw [hLc] at r1567
    linear_combination r1567
  have h16_221 : rho 1569 * (1 + rho 1567) = rho 1568 := by
    linear_combination r1568
  have h17_221 : 4573913305020361947361248891633807407141017534459583664219608319268508084811*rvkAccX220 rho + 1874130804567774313189682830302446810863761515399154211309874750791474638946*rvkAccY220 rho + 1874130804567774313189682830302446810863761515399154211309874750791474638946 + 5250965027564284318756843176337456212569369371897656942655427405828941472566*rho 1 = rho 1570 := by
    have hLc := rvk_lc1348 rho
    rw [hLc] at r1569
    linear_combination r1569
  have h18_221 : rho 1571 * (1 + (-1)*rho 1567) = rho 1570 + 1996417639840234163697893216845292313371120285295325952405750385857426515284*rho 1566 := by
    linear_combination r1570
  have hSelX_221 : (1*rho 222) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX220 rho + rho 1569) = rho 1572 := by
    have hLc := rvk_lc1349 rho
    rw [hLc] at r1571
    linear_combination r1571
  have hSelY_221 : (1*rho 222) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY220 rho + rho 1571) = rho 1573 := by
    have hLc := rvk_lc1350 rho
    rw [hLc] at r1572
    linear_combination r1572
  have hr221 : RvkFixedBaseLadder.FixedStepRel 221 (rho 222) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX220 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY220 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX221 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY221 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX221_succ, rvkAccY221_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 221
      (6570330944860596111059142108479099720512137819754909616625358705125934600095 : EdwardsBridge.F) (3870548444408008476887576047147739124234881800694480163715625136648901154230 : EdwardsBridge.F) (1996417639840234163697893216845292313371120285295325952405750385857426515284 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5791789347728941516993523159659494889333240044800236722540434826636000096086 : EdwardsBridge.F) (4828905915229688026472990501082234424529133778340273211941412939713368772977 : EdwardsBridge.F)
      (4846688529128689085673653848924591249673793542413264056059586517802268792870 : EdwardsBridge.F) (3193496721864086105491981762444090318806529963256406885279806050088467766475 : EdwardsBridge.F) (4573913305020361947361248891633807407141017534459583664219608319268508084811 : EdwardsBridge.F)
      (1874130804567774313189682830302446810863761515399154211309874750791474638946 : EdwardsBridge.F) (5250965027564284318756843176337456212569369371897656942655427405828941472566 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX220 rho : F)
      (rvkAccY220 rho : F) (rho 222 : F)
      (rho 1566 : F) (rho 1567 : F) (rho 1568 : F)
      (rho 1570 : F) (rho 1569 : F) (rho 1571 : F)
      (rho 1572 : F) (rho 1573 : F) hacc
      (by rw [C_eq_L221]; simp only [L221])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_221 h14_221 h15_221 h16_221 h17_221 h18_221 hSelX_221 hSelY_221 hbrow221
  exact hr221

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

