import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas35
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

theorem rvk_step185 (rho : Nat -> F)
    (r185 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow185 rho)
    (r1277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1277 rho)
    (r1278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1278 rho)
    (r1279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1279 rho)
    (r1280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1280 rho)
    (r1281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1281 rho)
    (r1282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1282 rho)
    (r1283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1283 rho)
    (r1284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1284 rho)
    (hacc : onCurve (rvkRvkAcc rho 185)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 185 (rho 186)
      (rvkRvkAcc rho 185) (rvkRvkAcc rho (185 + 1)) := by
  have hbrow185 : (1*(rho 186))*(1 + (-1)*(rho 186)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow185] using r185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1277 at r1277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1278 at r1278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1279 at r1279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1280 at r1280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1281 at r1281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1282 at r1282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1283 at r1283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1284 at r1284
  have h13_185 : rho 1278 = rvkAccX184 rho + rvkAccY184 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1092 rho
    rw [hLc] at r1277
    linear_combination -r1277
  have h14_185 : (4879528627294238275690539772499781527567752672854439573014061782846610701472*rvkAccX184 rho + 101145388215490346530787508378078744010713501363009604938529302121084462966*rho 1) * (1380460206807711564638663296620444513019473775459607738440626508283673674725*rvkAccY184 rho + 1380460206807711564638663296620444513019473775459607738440626508283673674725 + 8046156656394868331008900513631503273645476196898276693087825440198814241392*rho 1) = rho 1279 := by
    have hL := rvk_lc1093 rho
    have hR := rvk_lc1094 rho
    rw [hL, hR] at r1278
    linear_combination r1278
  have h15_185 : 6984159211750865130105678661651374715956492648754619623222518118061746074090*rvkAccX184 rho + 1380460206807711564638663296620444513019473775459607738440626508283673674725*rvkAccY184 rho + 1380460206807711564638663296620444513019473775459607738440626508283673674725 + 4663933031297181233029904357253716704886513111153472250123014466230610304028*rho 1 = rho 1280 := by
    have hLc := rvk_lc1095 rho
    rw [hLc] at r1279
    linear_combination r1279
  have h16_185 : rho 1281 * (1 + rho 1279) = rho 1280 := by
    linear_combination r1280
  have h17_185 : 1460302537677505294143146277130171815419406686399444204712715337855663164951*rvkAccX184 rho + 7064001542620658859610161642161102018356425559694456089494606947633735564316*rvkAccY184 rho + 7064001542620658859610161642161102018356425559694456089494606947633735564316 + 3780528718131189191218920581527829826489386224000591577812218989686798935013*rho 1 = rho 1282 := by
    have hLc := rvk_lc1096 rho
    rw [hLc] at r1281
    linear_combination r1281
  have h18_185 : rho 1283 * (1 + (-1)*rho 1279) = rho 1282 + 8364619418558576694744341958271819228975966424214227361663144626345419748815*rho 1278 := by
    linear_combination r1282
  have hSelX_185 : (1*rho 186) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX184 rho + rho 1281) = rho 1284 := by
    have hLc := rvk_lc1097 rho
    rw [hLc] at r1283
    linear_combination r1283
  have hSelY_185 : (1*rho 186) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY184 rho + rho 1283) = rho 1285 := by
    have hLc := rvk_lc1098 rho
    rw [hLc] at r1284
    linear_combination r1284
  have hr185 : RvkFixedBaseLadderChoiceFree.FixedStepRel 185 (rho 186) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX184 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY184 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX185 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY185 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX185_succ, rvkAccY185_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 185
      (1380460206807711564638663296620444513019473775459607738440626508283673674725 : EdwardsBridge.F) (6984159211750865130105678661651374715956492648754619623222518118061746074090 : EdwardsBridge.F) (8364619418558576694744341958271819228975966424214227361663144626345419748815 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4879528627294238275690539772499781527567752672854439573014061782846610701472 : EdwardsBridge.F) (101145388215490346530787508378078744010713501363009604938529302121084462966 : EdwardsBridge.F)
      (8046156656394868331008900513631503273645476196898276693087825440198814241392 : EdwardsBridge.F) (4663933031297181233029904357253716704886513111153472250123014466230610304028 : EdwardsBridge.F) (1460302537677505294143146277130171815419406686399444204712715337855663164951 : EdwardsBridge.F)
      (7064001542620658859610161642161102018356425559694456089494606947633735564316 : EdwardsBridge.F) (3780528718131189191218920581527829826489386224000591577812218989686798935013 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX184 rho : F)
      (rvkAccY184 rho : F) (rho 186 : F)
      (rho 1278 : F) (rho 1279 : F) (rho 1280 : F)
      (rho 1282 : F) (rho 1281 : F) (rho 1283 : F)
      (rho 1284 : F) (rho 1285 : F) hacc
      (by rw [C_eq_L185]; simp only [L185])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_185 h14_185 h15_185 h16_185 h17_185 h18_185 hSelX_185 hSelY_185 hbrow185
  exact hr185

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

