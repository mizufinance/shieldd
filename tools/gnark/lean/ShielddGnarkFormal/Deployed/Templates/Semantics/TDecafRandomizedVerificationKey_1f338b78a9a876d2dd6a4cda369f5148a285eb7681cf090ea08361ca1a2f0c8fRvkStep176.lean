import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas26
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

theorem rvk_step176 (rho : Nat -> F)
    (r176 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow176 rho)
    (r1205 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1205 rho)
    (r1206 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1206 rho)
    (r1207 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1207 rho)
    (r1208 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1208 rho)
    (r1209 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1209 rho)
    (r1210 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1210 rho)
    (r1211 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1211 rho)
    (r1212 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1212 rho)
    (hacc : onCurve (rvkRvkAcc rho 176)) :
    RvkFixedBaseLadder.FixedStepRel 176 (rho 177)
      (rvkRvkAcc rho 176) (rvkRvkAcc rho (176 + 1)) := by
  have hbrow176 : (1*(rho 177))*(1 + (-1)*(rho 177)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow176] using r176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1205 at r1205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1206 at r1206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1207 at r1207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1208 at r1208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1209 at r1209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1210 at r1210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1211 at r1211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1212 at r1212
  have h13_176 : rho 1206 = rvkAccX175 rho + rvkAccY175 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1029 rho
    rw [hLc] at r1205
    linear_combination -r1205
  have h14_176 : (6702204841445727638528880424146252742509699068478151320104714009823083275415*rvkAccX175 rho + 4999806508068045698348875557979956868073647327969091591668035692677795707070*rho 1) * (1700106354495850796018023562959797428426666584760171565664703482726150880416*rvkAccY175 rho + 1700106354495850796018023562959797428426666584760171565664703482726150880416 + 4804741959618461566501157126025254191411098413854841475821479664228711646636*rho 1) = rho 1207 := by
    have hL := rvk_lc1030 rho
    have hR := rvk_lc1031 rho
    rw [hL, hR] at r1206
    linear_combination r1206
  have h15_176 : 5480915999245631168211263078595159700178507909953804453516439022710342665275*rvkAccX175 rho + 1700106354495850796018023562959797428426666584760171565664703482726150880416*rvkAccY175 rho + 1700106354495850796018023562959797428426666584760171565664703482726150880416 + 4619114971633147838356065303668291708546447103650487558284242787084127527699*rho 1 = rho 1208 := by
    have hLc := rvk_lc1032 rho
    rw [hLc] at r1207
    linear_combination r1207
  have h16_176 : rho 1209 * (1 + rho 1207) = rho 1208 := by
    linear_combination r1208
  have h17_176 : 2963545750182739256037561860186386831197391425200259374418794433207066573766*rvkAccX175 rho + 6744355394932519628230801375821749102949232750393892262270529973191258358625*rvkAccY175 rho + 6744355394932519628230801375821749102949232750393892262270529973191258358625 + 3825346777795222585892759635113254822829452231503576269650990668833281711342*rho 1 = rho 1210 := by
    have hLc := rvk_lc1033 rho
    rw [hLc] at r1209
    linear_combination r1209
  have h18_176 : rho 1211 * (1 + (-1)*rho 1207) = rho 1210 + 7181022353741481964229286641554957128605174494713976019181142505436493545691*rho 1206 := by
    linear_combination r1210
  have hSelX_176 : (1*rho 177) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX175 rho + rho 1209) = rho 1212 := by
    have hLc := rvk_lc1034 rho
    rw [hLc] at r1211
    linear_combination r1211
  have hSelY_176 : (1*rho 177) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY175 rho + rho 1211) = rho 1213 := by
    have hLc := rvk_lc1035 rho
    rw [hLc] at r1212
    linear_combination r1212
  have hr176 : RvkFixedBaseLadder.FixedStepRel 176 (rho 177) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX175 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY175 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX176 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY176 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX176_succ, rvkAccY176_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 176
      (1700106354495850796018023562959797428426666584760171565664703482726150880416 : EdwardsBridge.F) (5480915999245631168211263078595159700178507909953804453516439022710342665275 : EdwardsBridge.F) (7181022353741481964229286641554957128605174494713976019181142505436493545691 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (6702204841445727638528880424146252742509699068478151320104714009823083275415 : EdwardsBridge.F) (4999806508068045698348875557979956868073647327969091591668035692677795707070 : EdwardsBridge.F)
      (4804741959618461566501157126025254191411098413854841475821479664228711646636 : EdwardsBridge.F) (4619114971633147838356065303668291708546447103650487558284242787084127527699 : EdwardsBridge.F) (2963545750182739256037561860186386831197391425200259374418794433207066573766 : EdwardsBridge.F)
      (6744355394932519628230801375821749102949232750393892262270529973191258358625 : EdwardsBridge.F) (3825346777795222585892759635113254822829452231503576269650990668833281711342 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX175 rho : F)
      (rvkAccY175 rho : F) (rho 177 : F)
      (rho 1206 : F) (rho 1207 : F) (rho 1208 : F)
      (rho 1210 : F) (rho 1209 : F) (rho 1211 : F)
      (rho 1212 : F) (rho 1213 : F) hacc
      (by rw [C_eq_L176]; simp only [L176])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_176 h14_176 h15_176 h16_176 h17_176 h18_176 hSelX_176 hSelY_176 hbrow176
  exact hr176

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

