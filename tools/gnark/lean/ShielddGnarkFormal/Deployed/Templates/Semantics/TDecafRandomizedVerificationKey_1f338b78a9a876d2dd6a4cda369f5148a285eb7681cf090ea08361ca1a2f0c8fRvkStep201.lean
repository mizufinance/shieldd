import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas51
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

theorem rvk_step201 (rho : Nat -> F)
    (r201 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow201 rho)
    (r1405 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1405 rho)
    (r1406 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1406 rho)
    (r1407 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1407 rho)
    (r1408 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1408 rho)
    (r1409 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1409 rho)
    (r1410 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1410 rho)
    (r1411 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1411 rho)
    (r1412 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1412 rho)
    (hacc : onCurve (rvkRvkAcc rho 201)) :
    RvkFixedBaseLadder.FixedStepRel 201 (rho 202)
      (rvkRvkAcc rho 201) (rvkRvkAcc rho (201 + 1)) := by
  have hbrow201 : (1*(rho 202))*(1 + (-1)*(rho 202)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow201] using r201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1405 at r1405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1406 at r1406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1407 at r1407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1408 at r1408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1409 at r1409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1410 at r1410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1411 at r1411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1412 at r1412
  have h13_201 : rho 1406 = rvkAccX200 rho + rvkAccY200 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1204 rho
    rw [hLc] at r1405
    linear_combination -r1405
  have h14_201 : (1746227751459114646722528869200681138402567811675572997694830651943215246450*rvkAccX200 rho + 5052115677828846873756212072743373167809060123087419825114718750182894204087*rho 1) * (2836335629156425519980953814768748374574497271815974709514080933954942677220*rvkAccY200 rho + 2836335629156425519980953814768748374574497271815974709514080933954942677220 + 4158914102388540119305092671029422258422421911007114277230171451075976427611*rho 1) = rho 1407 := by
    have hL := rvk_lc1205 rho
    have hR := rvk_lc1206 rho
    rw [hL, hR] at r1406
    linear_combination r1406
  have h15_201 : 3047404678791255503832486498557128897827915538937307231197318536114504894340*rvkAccX200 rho + 2836335629156425519980953814768748374574497271815974709514080933954942677220*rvkAccY200 rho + 2836335629156425519980953814768748374574497271815974709514080933954942677220 + 4859399886246508160660922676579945266039695626303904537676686870715014893008*rho 1 = rho 1408 := by
    have hLc := rvk_lc1207 rho
    rw [hLc] at r1407
    linear_combination r1407
  have h16_201 : rho 1409 * (1 + rho 1407) = rho 1408 := by
    linear_combination r1408
  have h17_201 : 5397057070637114920416338440224417633547983796216756596737914919802904344701*rvkAccX200 rho + 5608126120271944904267871124012798156801402063338089118421152521962466561821*rvkAccY200 rho + 5608126120271944904267871124012798156801402063338089118421152521962466561821 + 3585061863181862263587902262201601265336203708850159290258546585202394346033*rho 1 = rho 1410 := by
    have hLc := rvk_lc1208 rho
    rw [hLc] at r1409
    linear_combination r1409
  have h18_201 : rho 1411 * (1 + (-1)*rho 1407) = rho 1410 + 5883740307947681023813440313325877272402412810753281940711399470069447571560*rho 1406 := by
    linear_combination r1410
  have hSelX_201 : (1*rho 202) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX200 rho + rho 1409) = rho 1412 := by
    have hLc := rvk_lc1209 rho
    rw [hLc] at r1411
    linear_combination r1411
  have hSelY_201 : (1*rho 202) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY200 rho + rho 1411) = rho 1413 := by
    have hLc := rvk_lc1210 rho
    rw [hLc] at r1412
    linear_combination r1412
  have hr201 : RvkFixedBaseLadder.FixedStepRel 201 (rho 202) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX200 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY200 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX201 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY201 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX201_succ, rvkAccY201_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 201
      (2836335629156425519980953814768748374574497271815974709514080933954942677220 : EdwardsBridge.F) (3047404678791255503832486498557128897827915538937307231197318536114504894340 : EdwardsBridge.F) (5883740307947681023813440313325877272402412810753281940711399470069447571560 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1746227751459114646722528869200681138402567811675572997694830651943215246450 : EdwardsBridge.F) (5052115677828846873756212072743373167809060123087419825114718750182894204087 : EdwardsBridge.F)
      (4158914102388540119305092671029422258422421911007114277230171451075976427611 : EdwardsBridge.F) (4859399886246508160660922676579945266039695626303904537676686870715014893008 : EdwardsBridge.F) (5397057070637114920416338440224417633547983796216756596737914919802904344701 : EdwardsBridge.F)
      (5608126120271944904267871124012798156801402063338089118421152521962466561821 : EdwardsBridge.F) (3585061863181862263587902262201601265336203708850159290258546585202394346033 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX200 rho : F)
      (rvkAccY200 rho : F) (rho 202 : F)
      (rho 1406 : F) (rho 1407 : F) (rho 1408 : F)
      (rho 1410 : F) (rho 1409 : F) (rho 1411 : F)
      (rho 1412 : F) (rho 1413 : F) hacc
      (by rw [C_eq_L201]; simp only [L201])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_201 h14_201 h15_201 h16_201 h17_201 h18_201 hSelX_201 hSelY_201 hbrow201
  exact hr201

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

