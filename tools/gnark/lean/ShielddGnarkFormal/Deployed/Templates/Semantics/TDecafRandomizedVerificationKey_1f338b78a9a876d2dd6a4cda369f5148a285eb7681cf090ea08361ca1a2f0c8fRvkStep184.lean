import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas34
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

theorem rvk_step184 (rho : Nat -> F)
    (r184 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow184 rho)
    (r1269 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1269 rho)
    (r1270 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1270 rho)
    (r1271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1271 rho)
    (r1272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1272 rho)
    (r1273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1273 rho)
    (r1274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1274 rho)
    (r1275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1275 rho)
    (r1276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1276 rho)
    (hacc : onCurve (rvkRvkAcc rho 184)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 184 (rho 185)
      (rvkRvkAcc rho 184) (rvkRvkAcc rho (184 + 1)) := by
  have hbrow184 : (1*(rho 185))*(1 + (-1)*(rho 185)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow184] using r184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1269 at r1269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1270 at r1270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1271 at r1271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1272 at r1272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1273 at r1273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1274 at r1274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1275 at r1275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1276 at r1276
  have h13_184 : rho 1270 = rvkAccX183 rho + rvkAccY183 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1085 rho
    rw [hLc] at r1269
    linear_combination -r1269
  have h14_184 : (5558663237932515679092437247609335659523465777026143470603988709834183187212*rvkAccX183 rho + 2341370113921811444658541306732284640097614745268182407182900276322865519012*rho 1) * (401307078671424362360248205069763579650906351959967677236019312795256990532*rvkAccY183 rho + 401307078671424362360248205069763579650906351959967677236019312795256990532 + 1645662026143048911676805444065887126400713304721187996347281522360788761077*rho 1) = rho 1271 := by
    have hL := rvk_lc1086 rho
    have hR := rvk_lc1087 rho
    rw [hL, hR] at r1270
    linear_combination r1270
  have h15_184 : 5843920463271508342389651294042052825632291650529301404784919533789215323662*rvkAccX183 rho + 401307078671424362360248205069763579650906351959967677236019312795256990532*rvkAccY183 rho + 401307078671424362360248205069763579650906351959967677236019312795256990532 + 5120937539103454819914457857244369292286294399835974332173391448207085533552*rho 1 = rho 1272 := by
    have hLc := rvk_lc1088 rho
    rw [hLc] at r1271
    linear_combination r1271
  have h16_184 : rho 1273 * (1 + rho 1271) = rho 1272 := by
    linear_combination r1272
  have h17_184 : 2600541286156862081859173644739493705743607684624762423150313922128193915379*rvkAccX183 rho + 8043154670756946061888576733711782951724992983194096150699214143122152248509*rvkAccY183 rho + 8043154670756946061888576733711782951724992983194096150699214143122152248509 + 3323524210324915604334367081537177239089604935318089495761842007710323705489*rho 1 = rho 1274 := by
    have hLc := rvk_lc1089 rho
    rw [hLc] at r1273
    linear_combination r1273
  have h18_184 : rho 1275 * (1 + (-1)*rho 1271) = rho 1274 + 6245227541942932704749899499111816405283198002489269082020938846584472314194*rho 1270 := by
    linear_combination r1274
  have hSelX_184 : (1*rho 185) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX183 rho + rho 1273) = rho 1276 := by
    have hLc := rvk_lc1090 rho
    rw [hLc] at r1275
    linear_combination r1275
  have hSelY_184 : (1*rho 185) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY183 rho + rho 1275) = rho 1277 := by
    have hLc := rvk_lc1091 rho
    rw [hLc] at r1276
    linear_combination r1276
  have hr184 : RvkFixedBaseLadderChoiceFree.FixedStepRel 184 (rho 185) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX183 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY183 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX184 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY184 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX184_succ, rvkAccY184_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 184
      (401307078671424362360248205069763579650906351959967677236019312795256990532 : EdwardsBridge.F) (5843920463271508342389651294042052825632291650529301404784919533789215323662 : EdwardsBridge.F) (6245227541942932704749899499111816405283198002489269082020938846584472314194 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5558663237932515679092437247609335659523465777026143470603988709834183187212 : EdwardsBridge.F) (2341370113921811444658541306732284640097614745268182407182900276322865519012 : EdwardsBridge.F)
      (1645662026143048911676805444065887126400713304721187996347281522360788761077 : EdwardsBridge.F) (5120937539103454819914457857244369292286294399835974332173391448207085533552 : EdwardsBridge.F) (2600541286156862081859173644739493705743607684624762423150313922128193915379 : EdwardsBridge.F)
      (8043154670756946061888576733711782951724992983194096150699214143122152248509 : EdwardsBridge.F) (3323524210324915604334367081537177239089604935318089495761842007710323705489 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX183 rho : F)
      (rvkAccY183 rho : F) (rho 185 : F)
      (rho 1270 : F) (rho 1271 : F) (rho 1272 : F)
      (rho 1274 : F) (rho 1273 : F) (rho 1275 : F)
      (rho 1276 : F) (rho 1277 : F) hacc
      (by rw [C_eq_L184]; simp only [L184])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_184 h14_184 h15_184 h16_184 h17_184 h18_184 hSelX_184 hSelY_184 hbrow184
  exact hr184

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

