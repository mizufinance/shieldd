import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas11
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

theorem rvk_step161 (rho : Nat -> F)
    (r161 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow161 rho)
    (r1085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1085 rho)
    (r1086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1086 rho)
    (r1087 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1087 rho)
    (r1088 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1088 rho)
    (r1089 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1089 rho)
    (r1090 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1090 rho)
    (r1091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1091 rho)
    (r1092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1092 rho)
    (hacc : onCurve (rvkRvkAcc rho 161)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 161 (rho 162)
      (rvkRvkAcc rho 161) (rvkRvkAcc rho (161 + 1)) := by
  have hbrow161 : (1*(rho 162))*(1 + (-1)*(rho 162)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow161] using r161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1085 at r1085
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1086 at r1086
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1087 at r1087
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1088 at r1088
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1089 at r1089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1090 at r1090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1091 at r1091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1092 at r1092
  have h13_161 : rho 1086 = rvkAccX160 rho + rvkAccY160 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc924 rho
    rw [hLc] at r1085
    linear_combination -r1085
  have h14_161 : (2495102731699009371261614145300526944829738947054201298769580918885850837620*rvkAccX160 rho + 1779026472738516153909413056718403276944291506030252827341601706418091315886*rho 1) * (8407678132673097275589139919008374887080292768567695427353264675232537945589*rvkAccY160 rho + 8407678132673097275589139919008374887080292768567695427353264675232537945589 + 6848053635575179204719656941055680727813810846666181219497964909827707002811*rho 1) = rho 1087 := by
    have hL := rvk_lc925 rho
    have hR := rvk_lc926 rho
    rw [hL, hR] at r1086
    linear_combination r1086
  have h15_161 : 8084699927864464176199557542900209564940063097058128696354672206366114985152*rvkAccX160 rho + 8407678132673097275589139919008374887080292768567695427353264675232537945589*rvkAccY160 rho + 8407678132673097275589139919008374887080292768567695427353264675232537945589 + 8279812471119722128708173254101980041730197722238809797031954029700640343329*rho 1 = rho 1088 := by
    have hLc := rvk_lc927 rho
    rw [hLc] at r1087
    linear_combination r1087
  have h16_161 : rho 1089 * (1 + rho 1087) = rho 1088 := by
    linear_combination r1088
  have h17_161 : 359761821563906248049267395881336966435836238095935131580561249551294253889*rvkAccX160 rho + 36783616755273148659685019773171644295606566586368400581968780684871293452*rvkAccY160 rho + 36783616755273148659685019773171644295606566586368400581968780684871293452 + 164649278308648295540651684679566489645701612915254030903279426216768895712*rho 1 = rho 1090 := by
    have hLc := rvk_lc928 rho
    rw [hLc] at r1089
    linear_combination r1089
  have h18_161 : rho 1091 * (1 + (-1)*rho 1087) = rho 1090 + 8047916311109191027539872523127037920644456530471760295772703425681243691700*rho 1086 := by
    linear_combination r1090
  have hSelX_161 : (1*rho 162) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX160 rho + rho 1089) = rho 1092 := by
    have hLc := rvk_lc929 rho
    rw [hLc] at r1091
    linear_combination r1091
  have hSelY_161 : (1*rho 162) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY160 rho + rho 1091) = rho 1093 := by
    have hLc := rvk_lc930 rho
    rw [hLc] at r1092
    linear_combination r1092
  have hr161 : RvkFixedBaseLadderChoiceFree.FixedStepRel 161 (rho 162) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX160 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY160 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX161 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY161 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX161_succ, rvkAccY161_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 161
      (8407678132673097275589139919008374887080292768567695427353264675232537945589 : EdwardsBridge.F) (8084699927864464176199557542900209564940063097058128696354672206366114985152 : EdwardsBridge.F) (8047916311109191027539872523127037920644456530471760295772703425681243691700 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2495102731699009371261614145300526944829738947054201298769580918885850837620 : EdwardsBridge.F) (1779026472738516153909413056718403276944291506030252827341601706418091315886 : EdwardsBridge.F)
      (6848053635575179204719656941055680727813810846666181219497964909827707002811 : EdwardsBridge.F) (8279812471119722128708173254101980041730197722238809797031954029700640343329 : EdwardsBridge.F) (359761821563906248049267395881336966435836238095935131580561249551294253889 : EdwardsBridge.F)
      (36783616755273148659685019773171644295606566586368400581968780684871293452 : EdwardsBridge.F) (164649278308648295540651684679566489645701612915254030903279426216768895712 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX160 rho : F)
      (rvkAccY160 rho : F) (rho 162 : F)
      (rho 1086 : F) (rho 1087 : F) (rho 1088 : F)
      (rho 1090 : F) (rho 1089 : F) (rho 1091 : F)
      (rho 1092 : F) (rho 1093 : F) hacc
      (by rw [C_eq_L161]; simp only [L161])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_161 h14_161 h15_161 h16_161 h17_161 h18_161 hSelX_161 hSelY_161 hbrow161
  exact hr161

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

