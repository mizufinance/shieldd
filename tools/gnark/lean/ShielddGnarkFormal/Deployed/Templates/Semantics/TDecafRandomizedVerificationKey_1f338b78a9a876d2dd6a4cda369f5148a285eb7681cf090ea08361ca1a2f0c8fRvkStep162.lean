import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas12
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

theorem rvk_step162 (rho : Nat -> F)
    (r162 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow162 rho)
    (r1093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1093 rho)
    (r1094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1094 rho)
    (r1095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1095 rho)
    (r1096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1096 rho)
    (r1097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1097 rho)
    (r1098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1098 rho)
    (r1099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1099 rho)
    (r1100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1100 rho)
    (hacc : onCurve (rvkRvkAcc rho 162)) :
    RvkFixedBaseLadder.FixedStepRel 162 (rho 163)
      (rvkRvkAcc rho 162) (rvkRvkAcc rho (162 + 1)) := by
  have hbrow162 : (1*(rho 163))*(1 + (-1)*(rho 163)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow162] using r162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1093 at r1093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1094 at r1094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1095 at r1095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1096 at r1096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1097 at r1097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1098 at r1098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1099 at r1099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1100 at r1100
  have h13_162 : rho 1094 = rvkAccX161 rho + rvkAccY161 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc931 rho
    rw [hLc] at r1093
    linear_combination -r1093
  have h14_162 : (4951309458950130803972020910168110269840383491364827931466189061193337832099*rvkAccX161 rho + 5712556502017034431704548607205565957366676659780540827764652614739871033596*rho 1) * (1120508206916141268234564891484746970076129195562184101961367945007133649704*rvkAccY161 rho + 1120508206916141268234564891484746970076129195562184101961367945007133649704 + 7266147486085304909815780502333830210687352979872459545024725335848246466849*rho 1) = rho 1095 := by
    have hL := rvk_lc932 rho
    have hR := rvk_lc933 rho
    rw [hL, hR] at r1094
    linear_combination r1094
  have h15_162 : 3093189673726159490242691957365957819917770621705315929039336110991674265545*rvkAccX161 rho + 1120508206916141268234564891484746970076129195562184101961367945007133649704*rvkAccY161 rho + 1120508206916141268234564891484746970076129195562184101961367945007133649704 + 1655168791497370193675450833857782587699786217764025375654919269357873119957*rho 1 = rho 1096 := by
    have hLc := rvk_lc934 rho
    rw [hLc] at r1095
    linear_combination r1095
  have h16_162 : rho 1097 * (1 + rho 1095) = rho 1096 := by
    linear_combination r1096
  have h17_162 : 5351272075702210934006132981415588711458128713448747898895897344925734973496*rvkAccX161 rho + 7323953542512229156014260047296799561299770139591879725973865510910275589337*rvkAccY161 rho + 7323953542512229156014260047296799561299770139591879725973865510910275589337 + 6789292957931000230573374104923763943676113117390038452280314186559536119084*rho 1 = rho 1098 := by
    have hLc := rvk_lc935 rho
    rw [hLc] at r1097
    linear_combination r1097
  have h18_162 : rho 1099 * (1 + (-1)*rho 1095) = rho 1098 + 4213697880642300758477256848850704789993899817267500031000704055998807915249*rho 1094 := by
    linear_combination r1098
  have hSelX_162 : (1*rho 163) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX161 rho + rho 1097) = rho 1100 := by
    have hLc := rvk_lc936 rho
    rw [hLc] at r1099
    linear_combination r1099
  have hSelY_162 : (1*rho 163) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY161 rho + rho 1099) = rho 1101 := by
    have hLc := rvk_lc937 rho
    rw [hLc] at r1100
    linear_combination r1100
  have hr162 : RvkFixedBaseLadder.FixedStepRel 162 (rho 163) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX161 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY161 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX162 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY162 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX162_succ, rvkAccY162_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 162
      (1120508206916141268234564891484746970076129195562184101961367945007133649704 : EdwardsBridge.F) (3093189673726159490242691957365957819917770621705315929039336110991674265545 : EdwardsBridge.F) (4213697880642300758477256848850704789993899817267500031000704055998807915249 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4951309458950130803972020910168110269840383491364827931466189061193337832099 : EdwardsBridge.F) (5712556502017034431704548607205565957366676659780540827764652614739871033596 : EdwardsBridge.F)
      (7266147486085304909815780502333830210687352979872459545024725335848246466849 : EdwardsBridge.F) (1655168791497370193675450833857782587699786217764025375654919269357873119957 : EdwardsBridge.F) (5351272075702210934006132981415588711458128713448747898895897344925734973496 : EdwardsBridge.F)
      (7323953542512229156014260047296799561299770139591879725973865510910275589337 : EdwardsBridge.F) (6789292957931000230573374104923763943676113117390038452280314186559536119084 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX161 rho : F)
      (rvkAccY161 rho : F) (rho 163 : F)
      (rho 1094 : F) (rho 1095 : F) (rho 1096 : F)
      (rho 1098 : F) (rho 1097 : F) (rho 1099 : F)
      (rho 1100 : F) (rho 1101 : F) hacc
      (by rw [C_eq_L162]; simp only [L162])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_162 h14_162 h15_162 h16_162 h17_162 h18_162 hSelX_162 hSelY_162 hbrow162
  exact hr162

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

