import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas45
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

theorem rvk_step195 (rho : Nat -> F)
    (r195 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow195 rho)
    (r1357 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1357 rho)
    (r1358 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1358 rho)
    (r1359 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1359 rho)
    (r1360 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1360 rho)
    (r1361 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1361 rho)
    (r1362 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1362 rho)
    (r1363 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1363 rho)
    (r1364 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1364 rho)
    (hacc : onCurve (rvkRvkAcc rho 195)) :
    RvkFixedBaseLadder.FixedStepRel 195 (rho 196)
      (rvkRvkAcc rho 195) (rvkRvkAcc rho (195 + 1)) := by
  have hbrow195 : (1*(rho 196))*(1 + (-1)*(rho 196)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow195] using r195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1357 at r1357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1358 at r1358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1359 at r1359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1360 at r1360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1361 at r1361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1362 at r1362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1363 at r1363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1364 at r1364
  have h13_195 : rho 1358 = rvkAccX194 rho + rvkAccY194 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1162 rho
    rw [hLc] at r1357
    linear_combination -r1357
  have h14_195 : (3422273983250065178018746734407871139951835380745458089779691739446421701909*rvkAccX194 rho + 3152023313505556664748647625601912027016628793058644212723522791212373491122*rho 1) * (5698784102776659322582380855939233579043794755791327791782445405107186047550*rvkAccY194 rho + 5698784102776659322582380855939233579043794755791327791782445405107186047550 + 5594341709522394869510504494466953475851588014535265748970260993003493824062*rho 1) = rho 1359 := by
    have hL := rvk_lc1163 rho
    have hR := rvk_lc1164 rho
    rw [hL, hR] at r1358
    linear_combination r1358
  have h15_195 : 3170950644764985808102014639957855557007686753209352478969988226001254054543*rvkAccX194 rho + 5698784102776659322582380855939233579043794755791327791782445405107186047550*rvkAccY194 rho + 5698784102776659322582380855939233579043794755791327791782445405107186047550 + 3448630156974403168365734913083760551631239103378277210194512641016284978616*rho 1 = rho 1360 := by
    have hLc := rvk_lc1165 rho
    rw [hLc] at r1359
    linear_combination r1359
  have h16_195 : rho 1361 * (1 + rho 1359) = rho 1360 := by
    linear_combination r1360
  have h17_195 : 5273511104663384616146810298823690974368212581944711348965245229916155184498*rvkAccX194 rho + 2745677646651711101666444082842312952332104579362736036152788050810223191491*rvkAccY194 rho + 2745677646651711101666444082842312952332104579362736036152788050810223191491 + 4995831592453967255883090025697785979744660231775786617740720814901124260425*rho 1 = rho 1362 := by
    have hLc := rvk_lc1166 rho
    rw [hLc] at r1361
    linear_combination r1361
  have h18_195 : rho 1363 * (1 + (-1)*rho 1359) = rho 1362 + 425272998113274706435570557115542604675582173846616442817200175191030863052*rho 1358 := by
    linear_combination r1362
  have hSelX_195 : (1*rho 196) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX194 rho + rho 1361) = rho 1364 := by
    have hLc := rvk_lc1167 rho
    rw [hLc] at r1363
    linear_combination r1363
  have hSelY_195 : (1*rho 196) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY194 rho + rho 1363) = rho 1365 := by
    have hLc := rvk_lc1168 rho
    rw [hLc] at r1364
    linear_combination r1364
  have hr195 : RvkFixedBaseLadder.FixedStepRel 195 (rho 196) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX194 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY194 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX195 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY195 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX195_succ, rvkAccY195_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 195
      (5698784102776659322582380855939233579043794755791327791782445405107186047550 : EdwardsBridge.F) (3170950644764985808102014639957855557007686753209352478969988226001254054543 : EdwardsBridge.F) (425272998113274706435570557115542604675582173846616442817200175191030863052 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3422273983250065178018746734407871139951835380745458089779691739446421701909 : EdwardsBridge.F) (3152023313505556664748647625601912027016628793058644212723522791212373491122 : EdwardsBridge.F)
      (5594341709522394869510504494466953475851588014535265748970260993003493824062 : EdwardsBridge.F) (3448630156974403168365734913083760551631239103378277210194512641016284978616 : EdwardsBridge.F) (5273511104663384616146810298823690974368212581944711348965245229916155184498 : EdwardsBridge.F)
      (2745677646651711101666444082842312952332104579362736036152788050810223191491 : EdwardsBridge.F) (4995831592453967255883090025697785979744660231775786617740720814901124260425 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX194 rho : F)
      (rvkAccY194 rho : F) (rho 196 : F)
      (rho 1358 : F) (rho 1359 : F) (rho 1360 : F)
      (rho 1362 : F) (rho 1361 : F) (rho 1363 : F)
      (rho 1364 : F) (rho 1365 : F) hacc
      (by rw [C_eq_L195]; simp only [L195])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_195 h14_195 h15_195 h16_195 h17_195 h18_195 hSelX_195 hSelY_195 hbrow195
  exact hr195

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

