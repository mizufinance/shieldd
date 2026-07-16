import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas24
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

theorem rvk_step174 (rho : Nat -> F)
    (r174 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow174 rho)
    (r1189 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1189 rho)
    (r1190 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1190 rho)
    (r1191 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1191 rho)
    (r1192 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1192 rho)
    (r1193 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1193 rho)
    (r1194 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1194 rho)
    (r1195 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1195 rho)
    (r1196 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1196 rho)
    (hacc : onCurve (rvkRvkAcc rho 174)) :
    RvkFixedBaseLadder.FixedStepRel 174 (rho 175)
      (rvkRvkAcc rho 174) (rvkRvkAcc rho (174 + 1)) := by
  have hbrow174 : (1*(rho 175))*(1 + (-1)*(rho 175)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow174] using r174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1189 at r1189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1190 at r1190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1191 at r1191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1192 at r1192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1193 at r1193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1194 at r1194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1195 at r1195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1196 at r1196
  have h13_174 : rho 1190 = rvkAccX173 rho + rvkAccY173 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1015 rho
    rw [hLc] at r1189
    linear_combination -r1189
  have h14_174 : (128578420191189475828004736954302402807092265377785820974002246751249439768*rvkAccX173 rho + 6133142630962635046066632879248925428545680843984799411895820682923505300946*rho 1) * (4088186093458389865801225101755579684555960680192522280960219533993562873604*rvkAccY173 rho + 4088186093458389865801225101755579684555960680192522280960219533993562873604 + 1535852898821212495215578524505569457662535397325008307380353931748700029929*rho 1) = rho 1191 := by
    have hL := rvk_lc1016 rho
    have hR := rvk_lc1017 rho
    rw [hL, hR] at r1190
    linear_combination r1190
  have h15_174 : 4223671063160032737674876692232992754489172786389661777501195549201574514939*rvkAccX173 rho + 4088186093458389865801225101755579684555960680192522280960219533993562873604*rvkAccY173 rho + 4088186093458389865801225101755579684555960680192522280960219533993562873604 + 4752424945982281221773743143002102869284789590066205990775724436544444528505*rho 1 = rho 1192 := by
    have hLc := rvk_lc1018 rho
    rw [hLc] at r1191
    linear_combination r1191
  have h16_174 : rho 1193 * (1 + rho 1191) = rho 1192 := by
    linear_combination r1192
  have h17_174 : 4220790686268337686573948246548553776886726548764402050434037906715834724102*rvkAccX173 rho + 4356275655969980558447599837025966846819938654961541546975013921923846365437*rvkAccY173 rho + 4356275655969980558447599837025966846819938654961541546975013921923846365437 + 3692036803446089202475081795779443662091109745087857837159509019372964710536*rho 1 = rho 1194 := by
    have hLc := rvk_lc1019 rho
    rw [hLc] at r1193
    linear_combination r1193
  have h18_174 : rho 1195 * (1 + (-1)*rho 1191) = rho 1194 + 8311857156618422603476101793988572439045133466582184058461415083195137388543*rho 1190 := by
    linear_combination r1194
  have hSelX_174 : (1*rho 175) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX173 rho + rho 1193) = rho 1196 := by
    have hLc := rvk_lc1020 rho
    rw [hLc] at r1195
    linear_combination r1195
  have hSelY_174 : (1*rho 175) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY173 rho + rho 1195) = rho 1197 := by
    have hLc := rvk_lc1021 rho
    rw [hLc] at r1196
    linear_combination r1196
  have hr174 : RvkFixedBaseLadder.FixedStepRel 174 (rho 175) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX173 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY173 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX174 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY174 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX174_succ, rvkAccY174_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 174
      (4088186093458389865801225101755579684555960680192522280960219533993562873604 : EdwardsBridge.F) (4223671063160032737674876692232992754489172786389661777501195549201574514939 : EdwardsBridge.F) (8311857156618422603476101793988572439045133466582184058461415083195137388543 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (128578420191189475828004736954302402807092265377785820974002246751249439768 : EdwardsBridge.F) (6133142630962635046066632879248925428545680843984799411895820682923505300946 : EdwardsBridge.F)
      (1535852898821212495215578524505569457662535397325008307380353931748700029929 : EdwardsBridge.F) (4752424945982281221773743143002102869284789590066205990775724436544444528505 : EdwardsBridge.F) (4220790686268337686573948246548553776886726548764402050434037906715834724102 : EdwardsBridge.F)
      (4356275655969980558447599837025966846819938654961541546975013921923846365437 : EdwardsBridge.F) (3692036803446089202475081795779443662091109745087857837159509019372964710536 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX173 rho : F)
      (rvkAccY173 rho : F) (rho 175 : F)
      (rho 1190 : F) (rho 1191 : F) (rho 1192 : F)
      (rho 1194 : F) (rho 1193 : F) (rho 1195 : F)
      (rho 1196 : F) (rho 1197 : F) hacc
      (by rw [C_eq_L174]; simp only [L174])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_174 h14_174 h15_174 h16_174 h17_174 h18_174 hSelX_174 hSelY_174 hbrow174
  exact hr174

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

