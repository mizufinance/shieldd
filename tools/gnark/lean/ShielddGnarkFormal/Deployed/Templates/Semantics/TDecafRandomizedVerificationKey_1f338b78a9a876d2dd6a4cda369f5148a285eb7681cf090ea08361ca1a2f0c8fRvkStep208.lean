import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas58
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

theorem rvk_step208 (rho : Nat -> F)
    (r208 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow208 rho)
    (r1461 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1461 rho)
    (r1462 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1462 rho)
    (r1463 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1463 rho)
    (r1464 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1464 rho)
    (r1465 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1465 rho)
    (r1466 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1466 rho)
    (r1467 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1467 rho)
    (r1468 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1468 rho)
    (hacc : onCurve (rvkRvkAcc rho 208)) :
    RvkFixedBaseLadder.FixedStepRel 208 (rho 209)
      (rvkRvkAcc rho 208) (rvkRvkAcc rho (208 + 1)) := by
  have hbrow208 : (1*(rho 209))*(1 + (-1)*(rho 209)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow208] using r208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1461 at r1461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1462 at r1462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1463 at r1463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1464 at r1464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1465 at r1465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1466 at r1466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1467 at r1467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1468 at r1468
  have h13_208 : rho 1462 = rvkAccX207 rho + rvkAccY207 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1253 rho
    rw [hLc] at r1461
    linear_combination -r1461
  have h14_208 : (2333521382420236697040097662358587024796079362568935009425247624130129932194*rvkAccX207 rho + 1417945779725424908112552563237869929744463813114412655051183172264746978897*rho 1) * (1261263590223925496177047919081127638801730006445271238456705421125076545401*rvkAccY207 rho + 1261263590223925496177047919081127638801730006445271238456705421125076545401 + 1064426900402051743754219644245711463532616799178717825153585914082016330015*rho 1) = rho 1463 := by
    have hL := rvk_lc1254 rho
    have hR := rvk_lc1255 rho
    rw [hL, hR] at r1462
    linear_combination r1462
  have h15_208 : 3438934615418509056114893999458345190538613790666026959076386096789984605744*rvkAccX207 rho + 1261263590223925496177047919081127638801730006445271238456705421125076545401*rvkAccY207 rho + 1261263590223925496177047919081127638801730006445271238456705421125076545401 + 6893000450000819621763790167225771836868761975481047349781196949752345032557*rho 1 = rho 1464 := by
    have hLc := rvk_lc1256 rho
    rw [hLc] at r1463
    linear_combination r1463
  have h16_208 : rho 1465 * (1 + rho 1463) = rho 1464 := by
    linear_combination r1464
  have h17_208 : 5005527134009861368133930939323201340837285544488036868858847359127424633297*rvkAccX207 rho + 7183198159204444928071777019700418892574169328708792589478528034792332693640*rvkAccY207 rho + 7183198159204444928071777019700418892574169328708792589478528034792332693640 + 1551461299427550802485034771555774694507137359673016478154036506165064206484*rho 1 = rho 1466 := by
    have hLc := rvk_lc1257 rho
    rw [hLc] at r1465
    linear_combination r1465
  have h18_208 : rho 1467 * (1 + (-1)*rho 1463) = rho 1466 + 4700198205642434552291941918539472829340343797111298197533091517915061151145*rho 1462 := by
    linear_combination r1466
  have hSelX_208 : (1*rho 209) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX207 rho + rho 1465) = rho 1468 := by
    have hLc := rvk_lc1258 rho
    rw [hLc] at r1467
    linear_combination r1467
  have hSelY_208 : (1*rho 209) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY207 rho + rho 1467) = rho 1469 := by
    have hLc := rvk_lc1259 rho
    rw [hLc] at r1468
    linear_combination r1468
  have hr208 : RvkFixedBaseLadder.FixedStepRel 208 (rho 209) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX207 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY207 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX208 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY208 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX208_succ, rvkAccY208_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 208
      (1261263590223925496177047919081127638801730006445271238456705421125076545401 : EdwardsBridge.F) (3438934615418509056114893999458345190538613790666026959076386096789984605744 : EdwardsBridge.F) (4700198205642434552291941918539472829340343797111298197533091517915061151145 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2333521382420236697040097662358587024796079362568935009425247624130129932194 : EdwardsBridge.F) (1417945779725424908112552563237869929744463813114412655051183172264746978897 : EdwardsBridge.F)
      (1064426900402051743754219644245711463532616799178717825153585914082016330015 : EdwardsBridge.F) (6893000450000819621763790167225771836868761975481047349781196949752345032557 : EdwardsBridge.F) (5005527134009861368133930939323201340837285544488036868858847359127424633297 : EdwardsBridge.F)
      (7183198159204444928071777019700418892574169328708792589478528034792332693640 : EdwardsBridge.F) (1551461299427550802485034771555774694507137359673016478154036506165064206484 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX207 rho : F)
      (rvkAccY207 rho : F) (rho 209 : F)
      (rho 1462 : F) (rho 1463 : F) (rho 1464 : F)
      (rho 1466 : F) (rho 1465 : F) (rho 1467 : F)
      (rho 1468 : F) (rho 1469 : F) hacc
      (by rw [C_eq_L208]; simp only [L208])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_208 h14_208 h15_208 h16_208 h17_208 h18_208 hSelX_208 hSelY_208 hbrow208
  exact hr208

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

