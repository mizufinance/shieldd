import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas66
import ShielddGnarkFormal.RvkFixedGenInst0ChoiceFree
import ShielddGnarkFormal.RvkFixedSplitRungChoiceFree
import ShielddGnarkFormal.RvkFixedBaseLiteralChoiceFree
import ShielddGnarkFormal.RvkFixedBaseLadderChoiceFree
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteralChoiceFree

theorem rvk_step216 (rho : Nat -> F)
    (r216 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow216 rho)
    (r1525 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1525 rho)
    (r1526 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1526 rho)
    (r1527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1527 rho)
    (r1528 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1528 rho)
    (r1529 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1529 rho)
    (r1530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1530 rho)
    (r1531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1531 rho)
    (r1532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1532 rho)
    (hacc : onCurve (rvkRvkAcc rho 216)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 216 (rho 217)
      (rvkRvkAcc rho 216) (rvkRvkAcc rho (216 + 1)) := by
  have hbrow216 : (1*(rho 217))*(1 + (-1)*(rho 217)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow216] using r216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1525 at r1525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1526 at r1526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1527 at r1527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1528 at r1528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1529 at r1529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1530 at r1530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1531 at r1531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1532 at r1532
  have h13_216 : rho 1526 = rvkAccX215 rho + rvkAccY215 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1309 rho
    rw [hLc] at r1525
    linear_combination -r1525
  have h14_216 : (1996585204601266675429321607520269104038502571187033994999948541698577110664*rvkAccX215 rho + 3380063927933372626926139325465722916591826025086909636351152278641708478755*rho 1) * (1764755048406653667338976471573889533281357893935591296537806754119176181450*rvkAccY215 rho + 1764755048406653667338976471573889533281357893935591296537806754119176181450 + 2183381813434380148828247542363511242964190520296834620661283850118539454462*rho 1) = rho 1527 := by
    have hL := rvk_lc1310 rho
    have hR := rvk_lc1311 rho
    rw [hL, hR] at r1526
    linear_combination r1526
  have h15_216 : 1898638236698598075054743944071562517016972575683812106310169965279582737643*rvkAccX215 rho + 1764755048406653667338976471573889533281357893935591296537806754119176181450*rvkAccY215 rho + 1764755048406653667338976471573889533281357893935591296537806754119176181450 + 4784086709460966665603597867551298067557430575814334213384262422207858322647*rho 1 = rho 1528 := by
    have hLc := rvk_lc1312 rho
    rw [hLc] at r1527
    linear_combination r1527
  have h16_216 : rho 1529 * (1 + rho 1527) = rho 1528 := by
    linear_combination r1528
  have h17_216 : 6545823512729772349194080994709984014358926759470251721625063490637826501398*rvkAccX215 rho + 6679706701021716756909848467207656998094541441218472531397426701798233057591*rvkAccY215 rho + 6679706701021716756909848467207656998094541441218472531397426701798233057591 + 3660375039967403758645227071230248463818468759339729614550971033709550916394*rho 1 = rho 1530 := by
    have hLc := rvk_lc1313 rho
    rw [hLc] at r1529
    linear_combination r1529
  have h18_216 : rho 1531 * (1 + (-1)*rho 1527) = rho 1530 + 3663393285105251742393720415645452050298330469619403402847976719398758919093*rho 1526 := by
    linear_combination r1530
  have hSelX_216 : (1*rho 217) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX215 rho + rho 1529) = rho 1532 := by
    have hLc := rvk_lc1314 rho
    rw [hLc] at r1531
    linear_combination r1531
  have hSelY_216 : (1*rho 217) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY215 rho + rho 1531) = rho 1533 := by
    have hLc := rvk_lc1315 rho
    rw [hLc] at r1532
    linear_combination r1532
  have hr216 : RvkFixedBaseLadderChoiceFree.FixedStepRel 216 (rho 217) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX215 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY215 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX216 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY216 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX216_succ, rvkAccY216_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 216
      (1764755048406653667338976471573889533281357893935591296537806754119176181450 : EdwardsBridge.F) (1898638236698598075054743944071562517016972575683812106310169965279582737643 : EdwardsBridge.F) (3663393285105251742393720415645452050298330469619403402847976719398758919093 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1996585204601266675429321607520269104038502571187033994999948541698577110664 : EdwardsBridge.F) (3380063927933372626926139325465722916591826025086909636351152278641708478755 : EdwardsBridge.F)
      (2183381813434380148828247542363511242964190520296834620661283850118539454462 : EdwardsBridge.F) (4784086709460966665603597867551298067557430575814334213384262422207858322647 : EdwardsBridge.F) (6545823512729772349194080994709984014358926759470251721625063490637826501398 : EdwardsBridge.F)
      (6679706701021716756909848467207656998094541441218472531397426701798233057591 : EdwardsBridge.F) (3660375039967403758645227071230248463818468759339729614550971033709550916394 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX215 rho : F)
      (rvkAccY215 rho : F) (rho 217 : F)
      (rho 1526 : F) (rho 1527 : F) (rho 1528 : F)
      (rho 1530 : F) (rho 1529 : F) (rho 1531 : F)
      (rho 1532 : F) (rho 1533 : F) hacc
      (by rw [C_eq_L216]; simp only [L216])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_216 h14_216 h15_216 h16_216 h17_216 h18_216 hSelX_216 hSelY_216 hbrow216
  exact hr216

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

