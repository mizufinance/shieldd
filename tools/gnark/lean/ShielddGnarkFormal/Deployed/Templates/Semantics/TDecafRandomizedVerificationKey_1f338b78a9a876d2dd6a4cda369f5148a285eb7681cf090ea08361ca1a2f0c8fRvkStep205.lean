import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas55
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

theorem rvk_step205 (rho : Nat -> F)
    (r205 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow205 rho)
    (r1437 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1437 rho)
    (r1438 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1438 rho)
    (r1439 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1439 rho)
    (r1440 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1440 rho)
    (r1441 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1441 rho)
    (r1442 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1442 rho)
    (r1443 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1443 rho)
    (r1444 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1444 rho)
    (hacc : onCurve (rvkRvkAcc rho 205)) :
    RvkFixedBaseLadder.FixedStepRel 205 (rho 206)
      (rvkRvkAcc rho 205) (rvkRvkAcc rho (205 + 1)) := by
  have hbrow205 : (1*(rho 206))*(1 + (-1)*(rho 206)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow205] using r205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1437 at r1437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1438 at r1438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1439 at r1439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1440 at r1440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1441 at r1441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1442 at r1442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1443 at r1443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1444 at r1444
  have h13_205 : rho 1438 = rvkAccX204 rho + rvkAccY204 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1232 rho
    rw [hLc] at r1437
    linear_combination -r1437
  have h14_205 : (4583072808772894578282428172385816829329163950970175532288694571516542345186*rvkAccX204 rho + 712592056375093217253407910869342574126920118676731509118637384739350028946*rho 1) * (7407179741270863900722282752204500392426669272486536784706558560924426719167*rvkAccY204 rho + 7407179741270863900722282752204500392426669272486536784706558560924426719167 + 395971560032455769750022647094956774664051301223518352824675903196206007919*rho 1) = rho 1439 := by
    have hL := rvk_lc1233 rho
    have hR := rvk_lc1234 rho
    rw [hL, hR] at r1438
    linear_combination r1438
  have h15_205 : 2561969558187739226478055634589964395752947022493244833472678762062847866702*rvkAccX204 rho + 7407179741270863900722282752204500392426669272486536784706558560924426719167*rvkAccY204 rho + 7407179741270863900722282752204500392426669272486536784706558560924426719167 + 2962250433925742477024989446734920051187454978744242393060909915085289434423*rho 1 = rho 1440 := by
    have hLc := rvk_lc1235 rho
    rw [hLc] at r1439
    linear_combination r1439
  have h16_205 : rho 1441 * (1 + rho 1439) = rho 1440 := by
    linear_combination r1440
  have h17_205 : 5882492191240631197770769304191582135622952312660818994462554693854561372339*rvkAccX204 rho + 1037282008157506523526542186577046138949230062667527043228674894992982519874*rvkAccY204 rho + 1037282008157506523526542186577046138949230062667527043228674894992982519874 + 5482211315502627947223835492046626480188444356409821434874323540832119804618*rho 1 = rho 1442 := by
    have hLc := rvk_lc1236 rho
    rw [hLc] at r1441
    linear_combination r1441
  have h18_205 : rho 1443 * (1 + (-1)*rho 1439) = rho 1442 + 1524687550030232702951513448012918256803716959825717790244003867069865346828*rho 1438 := by
    linear_combination r1442
  have hSelX_205 : (1*rho 206) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX204 rho + rho 1441) = rho 1444 := by
    have hLc := rvk_lc1237 rho
    rw [hLc] at r1443
    linear_combination r1443
  have hSelY_205 : (1*rho 206) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY204 rho + rho 1443) = rho 1445 := by
    have hLc := rvk_lc1238 rho
    rw [hLc] at r1444
    linear_combination r1444
  have hr205 : RvkFixedBaseLadder.FixedStepRel 205 (rho 206) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX204 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY204 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX205 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY205 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX205_succ, rvkAccY205_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 205
      (7407179741270863900722282752204500392426669272486536784706558560924426719167 : EdwardsBridge.F) (2561969558187739226478055634589964395752947022493244833472678762062847866702 : EdwardsBridge.F) (1524687550030232702951513448012918256803716959825717790244003867069865346828 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4583072808772894578282428172385816829329163950970175532288694571516542345186 : EdwardsBridge.F) (712592056375093217253407910869342574126920118676731509118637384739350028946 : EdwardsBridge.F)
      (395971560032455769750022647094956774664051301223518352824675903196206007919 : EdwardsBridge.F) (2962250433925742477024989446734920051187454978744242393060909915085289434423 : EdwardsBridge.F) (5882492191240631197770769304191582135622952312660818994462554693854561372339 : EdwardsBridge.F)
      (1037282008157506523526542186577046138949230062667527043228674894992982519874 : EdwardsBridge.F) (5482211315502627947223835492046626480188444356409821434874323540832119804618 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX204 rho : F)
      (rvkAccY204 rho : F) (rho 206 : F)
      (rho 1438 : F) (rho 1439 : F) (rho 1440 : F)
      (rho 1442 : F) (rho 1441 : F) (rho 1443 : F)
      (rho 1444 : F) (rho 1445 : F) hacc
      (by rw [C_eq_L205]; simp only [L205])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_205 h14_205 h15_205 h16_205 h17_205 h18_205 hSelX_205 hSelY_205 hbrow205
  exact hr205

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

