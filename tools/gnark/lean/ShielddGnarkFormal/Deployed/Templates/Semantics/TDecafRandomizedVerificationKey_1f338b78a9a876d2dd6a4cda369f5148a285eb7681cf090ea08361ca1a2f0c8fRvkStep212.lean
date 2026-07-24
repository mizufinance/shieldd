import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas62
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

theorem rvk_step212 (rho : Nat -> F)
    (r212 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow212 rho)
    (r1493 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1493 rho)
    (r1494 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1494 rho)
    (r1495 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1495 rho)
    (r1496 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1496 rho)
    (r1497 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1497 rho)
    (r1498 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1498 rho)
    (r1499 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1499 rho)
    (r1500 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1500 rho)
    (hacc : onCurve (rvkRvkAcc rho 212)) :
    RvkFixedBaseLadder.FixedStepRel 212 (rho 213)
      (rvkRvkAcc rho 212) (rvkRvkAcc rho (212 + 1)) := by
  have hbrow212 : (1*(rho 213))*(1 + (-1)*(rho 213)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow212] using r212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1493 at r1493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1494 at r1494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1495 at r1495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1496 at r1496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1497 at r1497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1498 at r1498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1499 at r1499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1500 at r1500
  have h13_212 : rho 1494 = rvkAccX211 rho + rvkAccY211 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1281 rho
    rw [hLc] at r1493
    linear_combination -r1493
  have h14_212 : (4190163747198856086804321187099998496766814740869838856914866521134137791387*rvkAccX211 rho + 2957003690915387545057073161426133650682665780963563382974906973640890039826*rho 1) * (3423941501773624219361405225598090367295964686878626572370377742407211002101*rvkAccY211 rho + 3423941501773624219361405225598090367295964686878626572370377742407211002101 + 7189357305306567768438575906420187797573860854945526195358531359241171218779*rho 1) = rho 1495 := by
    have hL := rvk_lc1282 rho
    have hR := rvk_lc1283 rho
    rw [hL, hR] at r1494
    linear_combination r1494
  have h15_212 : 4403911757397180494630487785424705655549092442108083537853329215356191224522*rvkAccX211 rho + 3423941501773624219361405225598090367295964686878626572370377742407211002101*rvkAccY211 rho + 3423941501773624219361405225598090367295964686878626572370377742407211002101 + 7545333354915412002607611934353548454023851547214817711257488511136289346352*rho 1 = rho 1496 := by
    have hLc := rvk_lc1284 rho
    rw [hLc] at r1495
    linear_combination r1495
  have h16_212 : rho 1497 * (1 + rho 1495) = rho 1496 := by
    linear_combination r1496
  have h17_212 : 4040549992031189929618337153356840875826806893045980290081904240561218014519*rvkAccX211 rho + 5020520247654746204887419713183456164079934648275437255564855713510198236940*rvkAccY211 rho + 5020520247654746204887419713183456164079934648275437255564855713510198236940 + 899128394512958421641213004427998077352047787939246116677744944781119892689*rho 1 = rho 1498 := by
    have hLc := rvk_lc1285 rho
    rw [hLc] at r1497
    linear_combination r1497
  have h18_212 : rho 1499 * (1 + (-1)*rho 1495) = rho 1498 + 7827853259170804713991893011022796022845057128986710110223706957763402226623*rho 1494 := by
    linear_combination r1498
  have hSelX_212 : (1*rho 213) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX211 rho + rho 1497) = rho 1500 := by
    have hLc := rvk_lc1286 rho
    rw [hLc] at r1499
    linear_combination r1499
  have hSelY_212 : (1*rho 213) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY211 rho + rho 1499) = rho 1501 := by
    have hLc := rvk_lc1287 rho
    rw [hLc] at r1500
    linear_combination r1500
  have hr212 : RvkFixedBaseLadder.FixedStepRel 212 (rho 213) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX211 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY211 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX212 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY212 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX212_succ, rvkAccY212_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 212
      (3423941501773624219361405225598090367295964686878626572370377742407211002101 : EdwardsBridge.F) (4403911757397180494630487785424705655549092442108083537853329215356191224522 : EdwardsBridge.F) (7827853259170804713991893011022796022845057128986710110223706957763402226623 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4190163747198856086804321187099998496766814740869838856914866521134137791387 : EdwardsBridge.F) (2957003690915387545057073161426133650682665780963563382974906973640890039826 : EdwardsBridge.F)
      (7189357305306567768438575906420187797573860854945526195358531359241171218779 : EdwardsBridge.F) (7545333354915412002607611934353548454023851547214817711257488511136289346352 : EdwardsBridge.F) (4040549992031189929618337153356840875826806893045980290081904240561218014519 : EdwardsBridge.F)
      (5020520247654746204887419713183456164079934648275437255564855713510198236940 : EdwardsBridge.F) (899128394512958421641213004427998077352047787939246116677744944781119892689 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX211 rho : F)
      (rvkAccY211 rho : F) (rho 213 : F)
      (rho 1494 : F) (rho 1495 : F) (rho 1496 : F)
      (rho 1498 : F) (rho 1497 : F) (rho 1499 : F)
      (rho 1500 : F) (rho 1501 : F) hacc
      (by rw [C_eq_L212]; simp only [L212])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_212 h14_212 h15_212 h16_212 h17_212 h18_212 hSelX_212 hSelY_212 hbrow212
  exact hr212

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

