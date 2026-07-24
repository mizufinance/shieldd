import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas15
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

theorem rvk_step165 (rho : Nat -> F)
    (r165 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow165 rho)
    (r1117 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1117 rho)
    (r1118 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1118 rho)
    (r1119 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1119 rho)
    (r1120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1120 rho)
    (r1121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1121 rho)
    (r1122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1122 rho)
    (r1123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1123 rho)
    (r1124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1124 rho)
    (hacc : onCurve (rvkRvkAcc rho 165)) :
    RvkFixedBaseLadder.FixedStepRel 165 (rho 166)
      (rvkRvkAcc rho 165) (rvkRvkAcc rho (165 + 1)) := by
  have hbrow165 : (1*(rho 166))*(1 + (-1)*(rho 166)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow165] using r165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1117 at r1117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1118 at r1118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1119 at r1119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1120 at r1120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1121 at r1121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1122 at r1122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1123 at r1123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1124 at r1124
  have h13_165 : rho 1118 = rvkAccX164 rho + rvkAccY164 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc952 rho
    rw [hLc] at r1117
    linear_combination -r1117
  have h14_165 : (2196420425394647766284261780638306867698174832584544513782031995063991701139*rvkAccX164 rho + 3195273050439365200292363647550323698338958477189858332724984521343866531348*rho 1) * (5115523682525406331906309721636962668016666306320314209648996095923307323817*rvkAccY164 rho + 5115523682525406331906309721636962668016666306320314209648996095923307323817 + 6451616643860153436487649111689156422212632719667752052847634276420469943598*rho 1) = rho 1119 := by
    have hL := rvk_lc953 rho
    have hR := rvk_lc954 rho
    rw [hL, hR] at r1118
    linear_combination r1118
  have h15_165 : 6002136973336016533806193778664223339864863968026600325418976584524906199246*rvkAccX164 rho + 5115523682525406331906309721636962668016666306320314209648996095923307323817*rvkAccY164 rho + 5115523682525406331906309721636962668016666306320314209648996095923307323817 + 2916678265847426120541117769778826717316183298783044709582044955925872518621*rho 1 = rho 1120 := by
    have hLc := rvk_lc955 rho
    rw [hLc] at r1119
    linear_combination r1119
  have h16_165 : rho 1121 * (1 + rho 1119) = rho 1120 := by
    linear_combination r1120
  have h17_165 : 2442324776092353890442631160117323191511035367127463502516256871392503039795*rvkAccX164 rho + 3328938066902964092342515217144583863359233028833749618286237359994101915224*rvkAccY164 rho + 3328938066902964092342515217144583863359233028833749618286237359994101915224 + 5527783483580944303707707169002719814059716036371019118353188499991536720420*rho 1 = rho 1122 := by
    have hLc := rvk_lc956 rho
    rw [hLc] at r1121
    linear_combination r1121
  have h18_165 : rho 1123 * (1 + (-1)*rho 1119) = rho 1122 + 2673198906433052441463678561519639476505630939192850707132739224530804284022*rho 1118 := by
    linear_combination r1122
  have hSelX_165 : (1*rho 166) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX164 rho + rho 1121) = rho 1124 := by
    have hLc := rvk_lc957 rho
    rw [hLc] at r1123
    linear_combination r1123
  have hSelY_165 : (1*rho 166) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY164 rho + rho 1123) = rho 1125 := by
    have hLc := rvk_lc958 rho
    rw [hLc] at r1124
    linear_combination r1124
  have hr165 : RvkFixedBaseLadder.FixedStepRel 165 (rho 166) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX164 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY164 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX165 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY165 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX165_succ, rvkAccY165_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 165
      (5115523682525406331906309721636962668016666306320314209648996095923307323817 : EdwardsBridge.F) (6002136973336016533806193778664223339864863968026600325418976584524906199246 : EdwardsBridge.F) (2673198906433052441463678561519639476505630939192850707132739224530804284022 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2196420425394647766284261780638306867698174832584544513782031995063991701139 : EdwardsBridge.F) (3195273050439365200292363647550323698338958477189858332724984521343866531348 : EdwardsBridge.F)
      (6451616643860153436487649111689156422212632719667752052847634276420469943598 : EdwardsBridge.F) (2916678265847426120541117769778826717316183298783044709582044955925872518621 : EdwardsBridge.F) (2442324776092353890442631160117323191511035367127463502516256871392503039795 : EdwardsBridge.F)
      (3328938066902964092342515217144583863359233028833749618286237359994101915224 : EdwardsBridge.F) (5527783483580944303707707169002719814059716036371019118353188499991536720420 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX164 rho : F)
      (rvkAccY164 rho : F) (rho 166 : F)
      (rho 1118 : F) (rho 1119 : F) (rho 1120 : F)
      (rho 1122 : F) (rho 1121 : F) (rho 1123 : F)
      (rho 1124 : F) (rho 1125 : F) hacc
      (by rw [C_eq_L165]; simp only [L165])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_165 h14_165 h15_165 h16_165 h17_165 h18_165 hSelX_165 hSelY_165 hbrow165
  exact hr165

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

