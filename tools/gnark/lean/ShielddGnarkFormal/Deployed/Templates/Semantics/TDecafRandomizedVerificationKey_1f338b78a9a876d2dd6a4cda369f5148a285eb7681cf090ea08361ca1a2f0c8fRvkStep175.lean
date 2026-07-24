import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas25
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

theorem rvk_step175 (rho : Nat -> F)
    (r175 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow175 rho)
    (r1197 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1197 rho)
    (r1198 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1198 rho)
    (r1199 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1199 rho)
    (r1200 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1200 rho)
    (r1201 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1201 rho)
    (r1202 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1202 rho)
    (r1203 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1203 rho)
    (r1204 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1204 rho)
    (hacc : onCurve (rvkRvkAcc rho 175)) :
    RvkFixedBaseLadder.FixedStepRel 175 (rho 176)
      (rvkRvkAcc rho 175) (rvkRvkAcc rho (175 + 1)) := by
  have hbrow175 : (1*(rho 176))*(1 + (-1)*(rho 176)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow175] using r175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1197 at r1197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1198 at r1198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1199 at r1199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1200 at r1200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1201 at r1201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1202 at r1202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1203 at r1203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1204 at r1204
  have h13_175 : rho 1198 = rvkAccX174 rho + rvkAccY174 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1022 rho
    rw [hLc] at r1197
    linear_combination -r1197
  have h14_175 : (7956576312051478103586902813934973720197758426747597387557562980228800869579*rvkAccX174 rho + 3474884297360945043441450435985457591480122824021508868959104190618301029959*rho 1) * (2769161570314866453625341696387217252009654392896117896007257696138380589488*rvkAccY174 rho + 2769161570314866453625341696387217252009654392896117896007257696138380589488 + 6482744307870712748064178964204059792030601444190026041901651062941018432061*rho 1) = rho 1199 := by
    have hL := rvk_lc1023 rho
    have hR := rvk_lc1024 rho
    rw [hL, hR] at r1198
    linear_combination r1198
  have h15_175 : 4500197130467494038636195375476148077690837401088922971378797813158338386788*rvkAccX174 rho + 2769161570314866453625341696387217252009654392896117896007257696138380589488*rvkAccY174 rho + 2769161570314866453625341696387217252009654392896117896007257696138380589488 + 1720782064663634873891204371271994306471828738371256345134792835634614247256*rho 1 = rho 1200 := by
    have hLc := rvk_lc1025 rho
    rw [hLc] at r1199
    linear_combination r1199
  have h16_175 : rho 1201 * (1 + rho 1199) = rho 1200 := by
    linear_combination r1200
  have h17_175 : 3944264618960876385612629563305398453685061934065140856556435642759070852253*rvkAccX174 rho + 5675300179113503970623483242394329279366244942257945931927975759779028649553*rvkAccY174 rho + 5675300179113503970623483242394329279366244942257945931927975759779028649553 + 6723679684764735550357620567509552224904070596782807482800440620282794991785*rho 1 = rho 1202 := by
    have hLc := rvk_lc1026 rho
    rw [hLc] at r1201
    linear_combination r1201
  have h18_175 : rho 1203 * (1 + (-1)*rho 1199) = rho 1202 + 7269358700782360492261537071863365329700491793985040867386055509296718976276*rho 1198 := by
    linear_combination r1202
  have hSelX_175 : (1*rho 176) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX174 rho + rho 1201) = rho 1204 := by
    have hLc := rvk_lc1027 rho
    rw [hLc] at r1203
    linear_combination r1203
  have hSelY_175 : (1*rho 176) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY174 rho + rho 1203) = rho 1205 := by
    have hLc := rvk_lc1028 rho
    rw [hLc] at r1204
    linear_combination r1204
  have hr175 : RvkFixedBaseLadder.FixedStepRel 175 (rho 176) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX174 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY174 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX175 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY175 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX175_succ, rvkAccY175_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 175
      (2769161570314866453625341696387217252009654392896117896007257696138380589488 : EdwardsBridge.F) (4500197130467494038636195375476148077690837401088922971378797813158338386788 : EdwardsBridge.F) (7269358700782360492261537071863365329700491793985040867386055509296718976276 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (7956576312051478103586902813934973720197758426747597387557562980228800869579 : EdwardsBridge.F) (3474884297360945043441450435985457591480122824021508868959104190618301029959 : EdwardsBridge.F)
      (6482744307870712748064178964204059792030601444190026041901651062941018432061 : EdwardsBridge.F) (1720782064663634873891204371271994306471828738371256345134792835634614247256 : EdwardsBridge.F) (3944264618960876385612629563305398453685061934065140856556435642759070852253 : EdwardsBridge.F)
      (5675300179113503970623483242394329279366244942257945931927975759779028649553 : EdwardsBridge.F) (6723679684764735550357620567509552224904070596782807482800440620282794991785 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX174 rho : F)
      (rvkAccY174 rho : F) (rho 176 : F)
      (rho 1198 : F) (rho 1199 : F) (rho 1200 : F)
      (rho 1202 : F) (rho 1201 : F) (rho 1203 : F)
      (rho 1204 : F) (rho 1205 : F) hacc
      (by rw [C_eq_L175]; simp only [L175])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_175 h14_175 h15_175 h16_175 h17_175 h18_175 hSelX_175 hSelY_175 hbrow175
  exact hr175

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

