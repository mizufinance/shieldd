import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas30
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

theorem rvk_step180 (rho : Nat -> F)
    (r180 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow180 rho)
    (r1237 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1237 rho)
    (r1238 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1238 rho)
    (r1239 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1239 rho)
    (r1240 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1240 rho)
    (r1241 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1241 rho)
    (r1242 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1242 rho)
    (r1243 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1243 rho)
    (r1244 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1244 rho)
    (hacc : onCurve (rvkRvkAcc rho 180)) :
    RvkFixedBaseLadder.FixedStepRel 180 (rho 181)
      (rvkRvkAcc rho 180) (rvkRvkAcc rho (180 + 1)) := by
  have hbrow180 : (1*(rho 181))*(1 + (-1)*(rho 181)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow180] using r180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1237 at r1237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1238 at r1238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1239 at r1239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1240 at r1240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1241 at r1241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1242 at r1242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1243 at r1243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1244 at r1244
  have h13_180 : rho 1238 = rvkAccX179 rho + rvkAccY179 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1057 rho
    rw [hLc] at r1237
    linear_combination -r1237
  have h14_180 : (438298078731784562962066912655914842098740409231165003929213736243689094366*rvkAccX179 rho + 6992757197777699674250708748459163947449886003420107028852380212440058161259*rho 1) * (2245671786120690006839060813489520491514943197220454776091941164780785366760*rvkAccY179 rho + 2245671786120690006839060813489520491514943197220454776091941164780785366760 + 3883357724003683768614049969558244330787644143085875441049408729026234626242*rho 1) = rho 1239 := by
    have hL := rvk_lc1058 rho
    have hR := rvk_lc1059 rho
    rw [hL, hR] at r1238
    linear_combination r1238
  have h15_180 : 7005051122855421406067698564547901861128799230157337013508647551891847481672*rvkAccX179 rho + 2245671786120690006839060813489520491514943197220454776091941164780785366760*rvkAccY179 rho + 2245671786120690006839060813489520491514943197220454776091941164780785366760 + 1300062669047224006033476530424026728147704719380450438132745847029821687496*rho 1 = rho 1240 := by
    have hLc := rvk_lc1060 rho
    rw [hLc] at r1239
    linear_combination r1239
  have h16_180 : rho 1241 * (1 + rho 1239) = rho 1240 := by
    linear_combination r1240
  have h17_180 : 1439410626572949018181126374233644670247100104996726814426585904025561757369*rvkAccX179 rho + 6198789963307680417409764125292026039860956137933609051843292291136623872281*rvkAccY179 rho + 6198789963307680417409764125292026039860956137933609051843292291136623872281 + 7144399080381146418215348408357519803228194615773613389802487608887587551545*rho 1 = rho 1242 := by
    have hLc := rvk_lc1061 rho
    rw [hLc] at r1241
    linear_combination r1241
  have h18_180 : rho 1243 * (1 + (-1)*rho 1239) = rho 1242 + 806261159547740988657934439255875821267843092223727961665355260755223609391*rho 1238 := by
    linear_combination r1242
  have hSelX_180 : (1*rho 181) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX179 rho + rho 1241) = rho 1244 := by
    have hLc := rvk_lc1062 rho
    rw [hLc] at r1243
    linear_combination r1243
  have hSelY_180 : (1*rho 181) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY179 rho + rho 1243) = rho 1245 := by
    have hLc := rvk_lc1063 rho
    rw [hLc] at r1244
    linear_combination r1244
  have hr180 : RvkFixedBaseLadder.FixedStepRel 180 (rho 181) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX179 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY179 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX180 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY180 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX180_succ, rvkAccY180_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 180
      (2245671786120690006839060813489520491514943197220454776091941164780785366760 : EdwardsBridge.F) (7005051122855421406067698564547901861128799230157337013508647551891847481672 : EdwardsBridge.F) (806261159547740988657934439255875821267843092223727961665355260755223609391 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (438298078731784562962066912655914842098740409231165003929213736243689094366 : EdwardsBridge.F) (6992757197777699674250708748459163947449886003420107028852380212440058161259 : EdwardsBridge.F)
      (3883357724003683768614049969558244330787644143085875441049408729026234626242 : EdwardsBridge.F) (1300062669047224006033476530424026728147704719380450438132745847029821687496 : EdwardsBridge.F) (1439410626572949018181126374233644670247100104996726814426585904025561757369 : EdwardsBridge.F)
      (6198789963307680417409764125292026039860956137933609051843292291136623872281 : EdwardsBridge.F) (7144399080381146418215348408357519803228194615773613389802487608887587551545 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX179 rho : F)
      (rvkAccY179 rho : F) (rho 181 : F)
      (rho 1238 : F) (rho 1239 : F) (rho 1240 : F)
      (rho 1242 : F) (rho 1241 : F) (rho 1243 : F)
      (rho 1244 : F) (rho 1245 : F) hacc
      (by rw [C_eq_L180]; simp only [L180])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_180 h14_180 h15_180 h16_180 h17_180 h18_180 hSelX_180 hSelY_180 hbrow180
  exact hr180

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

