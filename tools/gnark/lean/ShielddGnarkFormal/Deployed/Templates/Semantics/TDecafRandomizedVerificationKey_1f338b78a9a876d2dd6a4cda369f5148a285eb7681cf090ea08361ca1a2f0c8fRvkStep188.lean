import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas38
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

theorem rvk_step188 (rho : Nat -> F)
    (r188 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow188 rho)
    (r1301 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1301 rho)
    (r1302 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1302 rho)
    (r1303 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1303 rho)
    (r1304 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1304 rho)
    (r1305 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1305 rho)
    (r1306 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1306 rho)
    (r1307 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1307 rho)
    (r1308 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1308 rho)
    (hacc : onCurve (rvkRvkAcc rho 188)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 188 (rho 189)
      (rvkRvkAcc rho 188) (rvkRvkAcc rho (188 + 1)) := by
  have hbrow188 : (1*(rho 189))*(1 + (-1)*(rho 189)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow188] using r188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1301 at r1301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1302 at r1302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1303 at r1303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1304 at r1304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1305 at r1305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1306 at r1306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1307 at r1307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1308 at r1308
  have h13_188 : rho 1302 = rvkAccX187 rho + rvkAccY187 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1113 rho
    rw [hLc] at r1301
    linear_combination -r1301
  have h14_188 : (2403012574858696745482066140964944036067063523433809935314039110083170318844*rvkAccX187 rho + 6761860238425733736602735132976919915057165826325913517006558957367091794377*rho 1) * (4878403618494980795709618157396838432865605045666462691090029268331387566044*rvkAccY187 rho + 4878403618494980795709618157396838432865605045666462691090029268331387566044 + 3277525489688013143718635685382580406258724390402438479123432780115380251654*rho 1) = rho 1303 := by
    have hL := rvk_lc1114 rho
    have hR := rvk_lc1115 rho
    rw [hL, hR] at r1302
    linear_combination r1302
  have h15_188 : 6253778201273129207477690650180498025396873179828889305867736272756480515741*rvkAccX187 rho + 4878403618494980795709618157396838432865605045666462691090029268331387566044*rvkAccY187 rho + 4878403618494980795709618157396838432865605045666462691090029268331387566044 + 1689264359205948583089380917082771383935708979652244369696706107669289961942*rho 1 = rho 1304 := by
    have hLc := rvk_lc1116 rho
    rw [hLc] at r1303
    linear_combination r1303
  have h16_188 : rho 1305 * (1 + rho 1303) = rho 1304 := by
    linear_combination r1304
  have h17_188 : 2190683548155241216771134288601048505979026155325174522067497183160928723300*rvkAccX187 rho + 3566058130933389628539206781384708098510294289487601136845204187586021672997*rvkAccY187 rho + 3566058130933389628539206781384708098510294289487601136845204187586021672997 + 6755197390222421841159444021698775147440190355501819458238527348248119277099*rho 1 = rho 1306 := by
    have hLc := rvk_lc1117 rho
    rw [hLc] at r1305
    linear_combination r1305
  have h18_188 : rho 1307 * (1 + (-1)*rho 1303) = rho 1306 + 2687720070339739578938483868795789926886578890341288169022532085170458842744*rho 1302 := by
    linear_combination r1306
  have hSelX_188 : (1*rho 189) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX187 rho + rho 1305) = rho 1308 := by
    have hLc := rvk_lc1118 rho
    rw [hLc] at r1307
    linear_combination r1307
  have hSelY_188 : (1*rho 189) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY187 rho + rho 1307) = rho 1309 := by
    have hLc := rvk_lc1119 rho
    rw [hLc] at r1308
    linear_combination r1308
  have hr188 : RvkFixedBaseLadderChoiceFree.FixedStepRel 188 (rho 189) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX187 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY187 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX188 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY188 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX188_succ, rvkAccY188_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 188
      (4878403618494980795709618157396838432865605045666462691090029268331387566044 : EdwardsBridge.F) (6253778201273129207477690650180498025396873179828889305867736272756480515741 : EdwardsBridge.F) (2687720070339739578938483868795789926886578890341288169022532085170458842744 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2403012574858696745482066140964944036067063523433809935314039110083170318844 : EdwardsBridge.F) (6761860238425733736602735132976919915057165826325913517006558957367091794377 : EdwardsBridge.F)
      (3277525489688013143718635685382580406258724390402438479123432780115380251654 : EdwardsBridge.F) (1689264359205948583089380917082771383935708979652244369696706107669289961942 : EdwardsBridge.F) (2190683548155241216771134288601048505979026155325174522067497183160928723300 : EdwardsBridge.F)
      (3566058130933389628539206781384708098510294289487601136845204187586021672997 : EdwardsBridge.F) (6755197390222421841159444021698775147440190355501819458238527348248119277099 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX187 rho : F)
      (rvkAccY187 rho : F) (rho 189 : F)
      (rho 1302 : F) (rho 1303 : F) (rho 1304 : F)
      (rho 1306 : F) (rho 1305 : F) (rho 1307 : F)
      (rho 1308 : F) (rho 1309 : F) hacc
      (by rw [C_eq_L188]; simp only [L188])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_188 h14_188 h15_188 h16_188 h17_188 h18_188 hSelX_188 hSelY_188 hbrow188
  exact hr188

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

