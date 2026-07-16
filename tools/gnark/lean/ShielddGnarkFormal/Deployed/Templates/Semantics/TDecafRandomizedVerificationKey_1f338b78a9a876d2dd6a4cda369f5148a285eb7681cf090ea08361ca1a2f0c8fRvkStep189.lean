import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas39
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

theorem rvk_step189 (rho : Nat -> F)
    (r189 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow189 rho)
    (r1309 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1309 rho)
    (r1310 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1310 rho)
    (r1311 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1311 rho)
    (r1312 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1312 rho)
    (r1313 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1313 rho)
    (r1314 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1314 rho)
    (r1315 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1315 rho)
    (r1316 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1316 rho)
    (hacc : onCurve (rvkRvkAcc rho 189)) :
    RvkFixedBaseLadder.FixedStepRel 189 (rho 190)
      (rvkRvkAcc rho 189) (rvkRvkAcc rho (189 + 1)) := by
  have hbrow189 : (1*(rho 190))*(1 + (-1)*(rho 190)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow189] using r189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1309 at r1309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1310 at r1310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1311 at r1311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1312 at r1312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1313 at r1313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1314 at r1314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1315 at r1315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1316 at r1316
  have h13_189 : rho 1310 = rvkAccX188 rho + rvkAccY188 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1120 rho
    rw [hLc] at r1309
    linear_combination -r1309
  have h14_189 : (7532014623675013276257395954751802834360897134712429975815273506761361634150*rvkAccX188 rho + 5325217468100504610941558911399597894357527141951120112626321119227909726378*rho 1) * (1038907240730486955348573753066123201091740547922506032432897754065385400452*rvkAccY188 rho + 1038907240730486955348573753066123201091740547922506032432897754065385400452 + 1929159690339562681781223459926772045655182763020865258495874535912453873871*rho 1) = rho 1311 := by
    have hL := rvk_lc1121 rho
    have hR := rvk_lc1122 rho
    rw [hL, hR] at r1310
    linear_combination r1310
  have h15_189 : 7105233141317829944155088237470593028487428370659115728818021676594802462111*rvkAccX188 rho + 1038907240730486955348573753066123201091740547922506032432897754065385400452*rvkAccY188 rho + 1038907240730486955348573753066123201091740547922506032432897754065385400452 + 8032961483279063886927243453396323742407233665299340086862389251366585710532*rho 1 = rho 1312 := by
    have hLc := rvk_lc1123 rho
    rw [hLc] at r1311
    linear_combination r1311
  have h16_189 : rho 1313 * (1 + rho 1311) = rho 1312 := by
    linear_combination r1312
  have h17_189 : 1339228608110540480093736701310953502888470964494948099117211779322606776930*rvkAccX188 rho + 7405554508697883468900251185715423330284158787231557795502335701852023838589*rvkAccY188 rho + 7405554508697883468900251185715423330284158787231557795502335701852023838589 + 411500266149306537321581485385222788968665669854723741072844204550823528509*rho 1 = rho 1314 := by
    have hLc := rvk_lc1124 rho
    rw [hLc] at r1313
    linear_combination r1313
  have h18_189 : rho 1315 * (1 + (-1)*rho 1311) = rho 1314 + 8144140382048316899503661990536716229579168918581621761250919430660187862563*rho 1310 := by
    linear_combination r1314
  have hSelX_189 : (1*rho 190) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX188 rho + rho 1313) = rho 1316 := by
    have hLc := rvk_lc1125 rho
    rw [hLc] at r1315
    linear_combination r1315
  have hSelY_189 : (1*rho 190) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY188 rho + rho 1315) = rho 1317 := by
    have hLc := rvk_lc1126 rho
    rw [hLc] at r1316
    linear_combination r1316
  have hr189 : RvkFixedBaseLadder.FixedStepRel 189 (rho 190) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX188 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY188 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX189 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY189 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX189_succ, rvkAccY189_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 189
      (1038907240730486955348573753066123201091740547922506032432897754065385400452 : EdwardsBridge.F) (7105233141317829944155088237470593028487428370659115728818021676594802462111 : EdwardsBridge.F) (8144140382048316899503661990536716229579168918581621761250919430660187862563 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (7532014623675013276257395954751802834360897134712429975815273506761361634150 : EdwardsBridge.F) (5325217468100504610941558911399597894357527141951120112626321119227909726378 : EdwardsBridge.F)
      (1929159690339562681781223459926772045655182763020865258495874535912453873871 : EdwardsBridge.F) (8032961483279063886927243453396323742407233665299340086862389251366585710532 : EdwardsBridge.F) (1339228608110540480093736701310953502888470964494948099117211779322606776930 : EdwardsBridge.F)
      (7405554508697883468900251185715423330284158787231557795502335701852023838589 : EdwardsBridge.F) (411500266149306537321581485385222788968665669854723741072844204550823528509 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX188 rho : F)
      (rvkAccY188 rho : F) (rho 190 : F)
      (rho 1310 : F) (rho 1311 : F) (rho 1312 : F)
      (rho 1314 : F) (rho 1313 : F) (rho 1315 : F)
      (rho 1316 : F) (rho 1317 : F) hacc
      (by rw [C_eq_L189]; simp only [L189])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_189 h14_189 h15_189 h16_189 h17_189 h18_189 hSelX_189 hSelY_189 hbrow189
  exact hr189

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

