import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas33
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

theorem rvk_step183 (rho : Nat -> F)
    (r183 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow183 rho)
    (r1261 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1261 rho)
    (r1262 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1262 rho)
    (r1263 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1263 rho)
    (r1264 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1264 rho)
    (r1265 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1265 rho)
    (r1266 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1266 rho)
    (r1267 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1267 rho)
    (r1268 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1268 rho)
    (hacc : onCurve (rvkRvkAcc rho 183)) :
    RvkFixedBaseLadder.FixedStepRel 183 (rho 184)
      (rvkRvkAcc rho 183) (rvkRvkAcc rho (183 + 1)) := by
  have hbrow183 : (1*(rho 184))*(1 + (-1)*(rho 184)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow183] using r183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1261 at r1261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1262 at r1262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1263 at r1263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1264 at r1264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1265 at r1265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1266 at r1266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1267 at r1267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1268 at r1268
  have h13_183 : rho 1262 = rvkAccX182 rho + rvkAccY182 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1078 rho
    rw [hLc] at r1261
    linear_combination -r1261
  have h14_183 : (4232871751035212290672276397719026689929378508096219718924767432588013967238*rvkAccX182 rho + 6029055947668892632292560307808214906730993787835331228218588797495467717355*rho 1) * (3997700547697378319545011890765266486027405910922669682977566226271873404539*rvkAccY182 rho + 3997700547697378319545011890765266486027405910922669682977566226271873404539 + 6759400635131567824879531417187974923682484167436657653839789258123339500419*rho 1) = rho 1263 := by
    have hL := rvk_lc1079 rho
    have hR := rvk_lc1080 rho
    rw [hL, hR] at r1262
    linear_combination r1262
  have h15_183 : 4700222797927880137521664018036907893390538285634583751896078188291874526579*rvkAccX182 rho + 3997700547697378319545011890765266486027405910922669682977566226271873404539*rvkAccY182 rho + 3997700547697378319545011890765266486027405910922669682977566226271873404539 + 606247468533221985235830670783090035505390707581836992507394196510416734232*rho 1 = rho 1264 := by
    have hLc := rvk_lc1081 rho
    rw [hLc] at r1263
    linear_combination r1263
  have h16_183 : rho 1265 * (1 + rho 1263) = rho 1264 := by
    linear_combination r1264
  have h17_183 : 3744238951500490286727160920744638637985361049519480076039155267625534712462*rvkAccX182 rho + 4446761201730992104703813048016280045348493424231394144957667229645535834502*rvkAccY182 rho + 4446761201730992104703813048016280045348493424231394144957667229645535834502 + 7838214280895148439012994267998456495870508627572226835427839259406992504809*rho 1 = rho 1266 := by
    have hLc := rvk_lc1082 rho
    rw [hLc] at r1265
    linear_combination r1265
  have h18_183 : rho 1267 * (1 + (-1)*rho 1263) = rho 1266 + 253461596196888032817850970020627848042044861403189606938410958646338692077*rho 1262 := by
    linear_combination r1266
  have hSelX_183 : (1*rho 184) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX182 rho + rho 1265) = rho 1268 := by
    have hLc := rvk_lc1083 rho
    rw [hLc] at r1267
    linear_combination r1267
  have hSelY_183 : (1*rho 184) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY182 rho + rho 1267) = rho 1269 := by
    have hLc := rvk_lc1084 rho
    rw [hLc] at r1268
    linear_combination r1268
  have hr183 : RvkFixedBaseLadder.FixedStepRel 183 (rho 184) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX182 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY182 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX183 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY183 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX183_succ, rvkAccY183_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 183
      (3997700547697378319545011890765266486027405910922669682977566226271873404539 : EdwardsBridge.F) (4700222797927880137521664018036907893390538285634583751896078188291874526579 : EdwardsBridge.F) (253461596196888032817850970020627848042044861403189606938410958646338692077 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4232871751035212290672276397719026689929378508096219718924767432588013967238 : EdwardsBridge.F) (6029055947668892632292560307808214906730993787835331228218588797495467717355 : EdwardsBridge.F)
      (6759400635131567824879531417187974923682484167436657653839789258123339500419 : EdwardsBridge.F) (606247468533221985235830670783090035505390707581836992507394196510416734232 : EdwardsBridge.F) (3744238951500490286727160920744638637985361049519480076039155267625534712462 : EdwardsBridge.F)
      (4446761201730992104703813048016280045348493424231394144957667229645535834502 : EdwardsBridge.F) (7838214280895148439012994267998456495870508627572226835427839259406992504809 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX182 rho : F)
      (rvkAccY182 rho : F) (rho 184 : F)
      (rho 1262 : F) (rho 1263 : F) (rho 1264 : F)
      (rho 1266 : F) (rho 1265 : F) (rho 1267 : F)
      (rho 1268 : F) (rho 1269 : F) hacc
      (by rw [C_eq_L183]; simp only [L183])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_183 h14_183 h15_183 h16_183 h17_183 h18_183 hSelX_183 hSelY_183 hbrow183
  exact hr183

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

