import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas37
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

theorem rvk_step187 (rho : Nat -> F)
    (r187 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow187 rho)
    (r1293 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1293 rho)
    (r1294 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1294 rho)
    (r1295 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1295 rho)
    (r1296 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1296 rho)
    (r1297 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1297 rho)
    (r1298 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1298 rho)
    (r1299 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1299 rho)
    (r1300 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1300 rho)
    (hacc : onCurve (rvkRvkAcc rho 187)) :
    RvkFixedBaseLadder.FixedStepRel 187 (rho 188)
      (rvkRvkAcc rho 187) (rvkRvkAcc rho (187 + 1)) := by
  have hbrow187 : (1*(rho 188))*(1 + (-1)*(rho 188)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow187] using r187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1293 at r1293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1294 at r1294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1295 at r1295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1296 at r1296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1297 at r1297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1298 at r1298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1299 at r1299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1300 at r1300
  have h13_187 : rho 1294 = rvkAccX186 rho + rvkAccY186 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1106 rho
    rw [hLc] at r1293
    linear_combination -r1293
  have h14_187 : (5232456591901524675171898312727688831066952335643208979409582199111200888071*rvkAccX186 rho + 5909232206328692192169621804612071292019481376635366714888083991012077534906*rho 1) * (519459684926506647045678163036511550506178357734185422711253957475149940396*rvkAccY186 rho + 519459684926506647045678163036511550506178357734185422711253957475149940396 + 5035188772786492644344439440090719894418338524917818077608061157396210162411*rho 1) = rho 1295 := by
    have hL := rvk_lc1107 rho
    have hR := rvk_lc1108 rho
    rw [hL, hR] at r1294
    linear_combination r1294
  have h15_187 : 8328793117556774915098451304516039326646763016140218256338454169936138141010*rvkAccX186 rho + 519459684926506647045678163036511550506178357734185422711253957475149940396*rvkAccY186 rho + 519459684926506647045678163036511550506178357734185422711253957475149940396 + 1713588048568020700537857768324203259359111504685594798991674366567084870228*rho 1 = rho 1296 := by
    have hLc := rvk_lc1109 rho
    rw [hLc] at r1295
    linear_combination r1295
  have h16_187 : rho 1297 * (1 + rho 1295) = rho 1296 := by
    linear_combination r1296
  have h17_187 : 115668631871595509150373634265507204729136319013845571596779285981271098031*rvkAccX186 rho + 7925002064501863777203146775745034980869720977419878405223979498442259298645*rvkAccY186 rho + 7925002064501863777203146775745034980869720977419878405223979498442259298645 + 6730873700860349723710967170457343272016787830468469028943559089350324368813*rho 1 = rho 1298 := by
    have hLc := rvk_lc1110 rho
    rw [hLc] at r1297
    linear_combination r1297
  have h18_187 : rho 1299 * (1 + (-1)*rho 1295) = rho 1298 + 403791053054911137895304528771004345777042038720339851114474671493878842365*rho 1294 := by
    linear_combination r1298
  have hSelX_187 : (1*rho 188) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX186 rho + rho 1297) = rho 1300 := by
    have hLc := rvk_lc1111 rho
    rw [hLc] at r1299
    linear_combination r1299
  have hSelY_187 : (1*rho 188) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY186 rho + rho 1299) = rho 1301 := by
    have hLc := rvk_lc1112 rho
    rw [hLc] at r1300
    linear_combination r1300
  have hr187 : RvkFixedBaseLadder.FixedStepRel 187 (rho 188) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX186 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY186 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX187 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY187 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX187_succ, rvkAccY187_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 187
      (519459684926506647045678163036511550506178357734185422711253957475149940396 : EdwardsBridge.F) (8328793117556774915098451304516039326646763016140218256338454169936138141010 : EdwardsBridge.F) (403791053054911137895304528771004345777042038720339851114474671493878842365 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5232456591901524675171898312727688831066952335643208979409582199111200888071 : EdwardsBridge.F) (5909232206328692192169621804612071292019481376635366714888083991012077534906 : EdwardsBridge.F)
      (5035188772786492644344439440090719894418338524917818077608061157396210162411 : EdwardsBridge.F) (1713588048568020700537857768324203259359111504685594798991674366567084870228 : EdwardsBridge.F) (115668631871595509150373634265507204729136319013845571596779285981271098031 : EdwardsBridge.F)
      (7925002064501863777203146775745034980869720977419878405223979498442259298645 : EdwardsBridge.F) (6730873700860349723710967170457343272016787830468469028943559089350324368813 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX186 rho : F)
      (rvkAccY186 rho : F) (rho 188 : F)
      (rho 1294 : F) (rho 1295 : F) (rho 1296 : F)
      (rho 1298 : F) (rho 1297 : F) (rho 1299 : F)
      (rho 1300 : F) (rho 1301 : F) hacc
      (by rw [C_eq_L187]; simp only [L187])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_187 h14_187 h15_187 h16_187 h17_187 h18_187 hSelX_187 hSelY_187 hbrow187
  exact hr187

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

