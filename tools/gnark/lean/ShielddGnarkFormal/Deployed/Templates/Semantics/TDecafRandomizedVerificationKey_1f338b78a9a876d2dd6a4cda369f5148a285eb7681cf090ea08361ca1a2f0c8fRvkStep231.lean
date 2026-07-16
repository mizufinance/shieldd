import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas81
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

theorem rvk_step231 (rho : Nat -> F)
    (r231 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow231 rho)
    (r1645 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1645 rho)
    (r1646 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1646 rho)
    (r1647 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1647 rho)
    (r1648 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1648 rho)
    (r1649 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1649 rho)
    (r1650 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1650 rho)
    (r1651 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1651 rho)
    (r1652 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1652 rho)
    (hacc : onCurve (rvkRvkAcc rho 231)) :
    RvkFixedBaseLadder.FixedStepRel 231 (rho 232)
      (rvkRvkAcc rho 231) (rvkRvkAcc rho (231 + 1)) := by
  have hbrow231 : (1*(rho 232))*(1 + (-1)*(rho 232)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow231] using r231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1645 at r1645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1646 at r1646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1647 at r1647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1648 at r1648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1649 at r1649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1650 at r1650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1651 at r1651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1652 at r1652
  have h13_231 : rho 1646 = rvkAccX230 rho + rvkAccY230 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1414 rho
    rw [hLc] at r1645
    linear_combination -r1645
  have h14_231 : (3647464738438405496596309108209284917129128474410709546384795465351388509718*rvkAccX230 rho + 4033105538314844726216913920691566079156225711271889030022966832116221042683*rho 1) * (771116110290316800014488227769694794618148977561993646635633714824656215422*rvkAccY230 rho + 771116110290316800014488227769694794618148977561993646635633714824656215422 + 1417426572492129065250163104387698599537623996730724897947633040475933659364*rho 1) = rho 1647 := by
    have hL := rvk_lc1415 rho
    have hR := rvk_lc1416 rho
    rw [hL, hR] at r1646
    linear_combination r1646
  have h15_231 : 7922956657602926245553712739362830901965053904104941277032385438442664406472*rvkAccX230 rho + 771116110290316800014488227769694794618148977561993646635633714824656215422*rvkAccY230 rho + 771116110290316800014488227769694794618148977561993646635633714824656215422 + 1281794159323087255894990807770815377439556190801801614750412427265792371158*rho 1 = rho 1648 := by
    have hLc := rvk_lc1417 rho
    rw [hLc] at r1647
    linear_combination r1647
  have h16_231 : rho 1649 * (1 + rho 1647) = rho 1648 := by
    linear_combination r1648
  have h17_231 : 521505091825444178695112199418715629410845431049122550902848017474744832569*rvkAccX230 rho + 7673345639138053624234336711011851736757750357592070181299599741092753023619*rvkAccY230 rho + 7673345639138053624234336711011851736757750357592070181299599741092753023619 + 7162667590105283168353834131010731153936343144352262213184821028651616867883*rho 1 = rho 1650 := by
    have hLc := rvk_lc1418 rho
    rw [hLc] at r1649
    linear_combination r1649
  have h18_231 : rho 1651 * (1 + (-1)*rho 1647) = rho 1650 + 249611018464872621319376028350979165207303546512871095732785697349911382853*rho 1646 := by
    linear_combination r1650
  have hSelX_231 : (1*rho 232) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX230 rho + rho 1649) = rho 1652 := by
    have hLc := rvk_lc1419 rho
    rw [hLc] at r1651
    linear_combination r1651
  have hSelY_231 : (1*rho 232) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY230 rho + rho 1651) = rho 1653 := by
    have hLc := rvk_lc1420 rho
    rw [hLc] at r1652
    linear_combination r1652
  have hr231 : RvkFixedBaseLadder.FixedStepRel 231 (rho 232) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX230 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY230 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX231 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY231 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX231_succ, rvkAccY231_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 231
      (771116110290316800014488227769694794618148977561993646635633714824656215422 : EdwardsBridge.F) (7922956657602926245553712739362830901965053904104941277032385438442664406472 : EdwardsBridge.F) (249611018464872621319376028350979165207303546512871095732785697349911382853 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3647464738438405496596309108209284917129128474410709546384795465351388509718 : EdwardsBridge.F) (4033105538314844726216913920691566079156225711271889030022966832116221042683 : EdwardsBridge.F)
      (1417426572492129065250163104387698599537623996730724897947633040475933659364 : EdwardsBridge.F) (1281794159323087255894990807770815377439556190801801614750412427265792371158 : EdwardsBridge.F) (521505091825444178695112199418715629410845431049122550902848017474744832569 : EdwardsBridge.F)
      (7673345639138053624234336711011851736757750357592070181299599741092753023619 : EdwardsBridge.F) (7162667590105283168353834131010731153936343144352262213184821028651616867883 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX230 rho : F)
      (rvkAccY230 rho : F) (rho 232 : F)
      (rho 1646 : F) (rho 1647 : F) (rho 1648 : F)
      (rho 1650 : F) (rho 1649 : F) (rho 1651 : F)
      (rho 1652 : F) (rho 1653 : F) hacc
      (by rw [C_eq_L231]; simp only [L231])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_231 h14_231 h15_231 h16_231 h17_231 h18_231 hSelX_231 hSelY_231 hbrow231
  exact hr231

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

