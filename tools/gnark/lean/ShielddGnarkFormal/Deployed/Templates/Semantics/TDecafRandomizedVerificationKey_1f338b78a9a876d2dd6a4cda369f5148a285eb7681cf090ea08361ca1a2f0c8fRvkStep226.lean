import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas76
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

theorem rvk_step226 (rho : Nat -> F)
    (r226 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow226 rho)
    (r1605 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1605 rho)
    (r1606 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1606 rho)
    (r1607 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1607 rho)
    (r1608 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1608 rho)
    (r1609 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1609 rho)
    (r1610 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1610 rho)
    (r1611 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1611 rho)
    (r1612 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1612 rho)
    (hacc : onCurve (rvkRvkAcc rho 226)) :
    RvkFixedBaseLadder.FixedStepRel 226 (rho 227)
      (rvkRvkAcc rho 226) (rvkRvkAcc rho (226 + 1)) := by
  have hbrow226 : (1*(rho 227))*(1 + (-1)*(rho 227)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow226] using r226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1605 at r1605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1606 at r1606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1607 at r1607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1608 at r1608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1609 at r1609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1610 at r1610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1611 at r1611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1612 at r1612
  have h13_226 : rho 1606 = rvkAccX225 rho + rvkAccY225 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1379 rho
    rw [hLc] at r1605
    linear_combination -r1605
  have h14_226 : (230866951924261299928005816650156310418793511476899823886516576488765052397*rvkAccX225 rho + 7313516269647177659283131405818770766015456623013382751654818648438686782681*rho 1) * (1256597705043208047069837330755860793551934832130546170224321504783783074734*rvkAccY225 rho + 1256597705043208047069837330755860793551934832130546170224321504783783074734 + 3265115896146439185665706020631741552756968807676274568772232573261777764377*rho 1) = rho 1607 := by
    have hL := rvk_lc1380 rho
    have hR := rvk_lc1381 rho
    rw [hL, hR] at r1606
    linear_combination r1606
  have h15_226 : 4785550937429094481169783615031664289316768770372470762412779276102976955409*rvkAccX225 rho + 1256597705043208047069837330755860793551934832130546170224321504783783074734*rvkAccY225 rho + 1256597705043208047069837330755860793551934832130546170224321504783783074734 + 173190824862904302519672893910340281831081648658553524491316116111121246391*rho 1 = rho 1608 := by
    have hLc := rvk_lc1382 rho
    rw [hLc] at r1607
    linear_combination r1607
  have h16_226 : rho 1609 * (1 + rho 1607) = rho 1608 := by
    linear_combination r1608
  have h17_226 : 3658910811999275943079041323749882242059130564781593065522454179814432283632*rvkAccX225 rho + 7187864044385162377178987608025685737823964503023517657710911951133626164307*rvkAccY225 rho + 7187864044385162377178987608025685737823964503023517657710911951133626164307 + 8271270924565466121729152044871206249544817686495510303443917339806287992650*rho 1 = rho 1610 := by
    have hLc := rvk_lc1383 rho
    rw [hLc] at r1609
    linear_combination r1609
  have h18_226 : rho 1611 * (1 + (-1)*rho 1607) = rho 1610 + 6042148642472302528239620945787525082868703602503016932637100780886760030143*rho 1606 := by
    linear_combination r1610
  have hSelX_226 : (1*rho 227) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX225 rho + rho 1609) = rho 1612 := by
    have hLc := rvk_lc1384 rho
    rw [hLc] at r1611
    linear_combination r1611
  have hSelY_226 : (1*rho 227) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY225 rho + rho 1611) = rho 1613 := by
    have hLc := rvk_lc1385 rho
    rw [hLc] at r1612
    linear_combination r1612
  have hr226 : RvkFixedBaseLadder.FixedStepRel 226 (rho 227) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX225 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY225 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX226 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY226 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX226_succ, rvkAccY226_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 226
      (1256597705043208047069837330755860793551934832130546170224321504783783074734 : EdwardsBridge.F) (4785550937429094481169783615031664289316768770372470762412779276102976955409 : EdwardsBridge.F) (6042148642472302528239620945787525082868703602503016932637100780886760030143 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (230866951924261299928005816650156310418793511476899823886516576488765052397 : EdwardsBridge.F) (7313516269647177659283131405818770766015456623013382751654818648438686782681 : EdwardsBridge.F)
      (3265115896146439185665706020631741552756968807676274568772232573261777764377 : EdwardsBridge.F) (173190824862904302519672893910340281831081648658553524491316116111121246391 : EdwardsBridge.F) (3658910811999275943079041323749882242059130564781593065522454179814432283632 : EdwardsBridge.F)
      (7187864044385162377178987608025685737823964503023517657710911951133626164307 : EdwardsBridge.F) (8271270924565466121729152044871206249544817686495510303443917339806287992650 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX225 rho : F)
      (rvkAccY225 rho : F) (rho 227 : F)
      (rho 1606 : F) (rho 1607 : F) (rho 1608 : F)
      (rho 1610 : F) (rho 1609 : F) (rho 1611 : F)
      (rho 1612 : F) (rho 1613 : F) hacc
      (by rw [C_eq_L226]; simp only [L226])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_226 h14_226 h15_226 h16_226 h17_226 h18_226 hSelX_226 hSelY_226 hbrow226
  exact hr226

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

