import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas31
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

theorem rvk_step181 (rho : Nat -> F)
    (r181 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow181 rho)
    (r1245 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1245 rho)
    (r1246 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1246 rho)
    (r1247 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1247 rho)
    (r1248 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1248 rho)
    (r1249 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1249 rho)
    (r1250 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1250 rho)
    (r1251 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1251 rho)
    (r1252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1252 rho)
    (hacc : onCurve (rvkRvkAcc rho 181)) :
    RvkFixedBaseLadder.FixedStepRel 181 (rho 182)
      (rvkRvkAcc rho 181) (rvkRvkAcc rho (181 + 1)) := by
  have hbrow181 : (1*(rho 182))*(1 + (-1)*(rho 182)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow181] using r181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1245 at r1245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1246 at r1246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1247 at r1247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1248 at r1248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1249 at r1249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1250 at r1250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1251 at r1251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1252 at r1252
  have h13_181 : rho 1246 = rvkAccX180 rho + rvkAccY180 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1064 rho
    rw [hLc] at r1245
    linear_combination -r1245
  have h14_181 : (3188036033033298877346478391701435462366254945646177246812371437562399669545*rvkAccX180 rho + 6428450126041257474157030038523500718991087062983819218404835930453042923738*rho 1) * (2601670001618979986581327060573004356823069937817005929232382071294362673458*rvkAccY180 rho + 2601670001618979986581327060573004356823069937817005929232382071294362673458 + 4751679099407146620309977891574056995749303970160864977880780610492133761897*rho 1) = rho 1247 := by
    have hL := rvk_lc1065 rho
    have hR := rvk_lc1066 rho
    rw [hL, hR] at r1246
    linear_combination r1246
  have h15_181 : 7858513741700159735663950142769489816338966993069751604625208082099106180276*rvkAccX180 rho + 2601670001618979986581327060573004356823069937817005929232382071294362673458*rvkAccY180 rho + 2601670001618979986581327060573004356823069937817005929232382071294362673458 + 3426061462580786244923008406012087084566066268361726778923206609952472608100*rho 1 = rho 1248 := by
    have hLc := rvk_lc1067 rho
    rw [hLc] at r1247
    linear_combination r1247
  have h16_181 : rho 1249 * (1 + rho 1247) = rho 1248 := by
    linear_combination r1248
  have h17_181 : 585948007728210688584874796012056715036932342084312223310025373818303058765*rvkAccX180 rho + 5842791747809390437667497878208542174552829397337057898702851384623046565583*rvkAccY180 rho + 5842791747809390437667497878208542174552829397337057898702851384623046565583 + 5018400286847584179325816532769459446809833066792337049012026845964936630941*rho 1 = rho 1250 := by
    have hLc := rvk_lc1068 rho
    rw [hLc] at r1249
    linear_combination r1249
  have h18_181 : rho 1251 * (1 + (-1)*rho 1247) = rho 1250 + 2015721993890769297996452264560947641786137595732693705922356697476059614693*rho 1246 := by
    linear_combination r1250
  have hSelX_181 : (1*rho 182) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX180 rho + rho 1249) = rho 1252 := by
    have hLc := rvk_lc1069 rho
    rw [hLc] at r1251
    linear_combination r1251
  have hSelY_181 : (1*rho 182) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY180 rho + rho 1251) = rho 1253 := by
    have hLc := rvk_lc1070 rho
    rw [hLc] at r1252
    linear_combination r1252
  have hr181 : RvkFixedBaseLadder.FixedStepRel 181 (rho 182) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX180 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY180 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX181 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY181 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX181_succ, rvkAccY181_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 181
      (2601670001618979986581327060573004356823069937817005929232382071294362673458 : EdwardsBridge.F) (7858513741700159735663950142769489816338966993069751604625208082099106180276 : EdwardsBridge.F) (2015721993890769297996452264560947641786137595732693705922356697476059614693 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3188036033033298877346478391701435462366254945646177246812371437562399669545 : EdwardsBridge.F) (6428450126041257474157030038523500718991087062983819218404835930453042923738 : EdwardsBridge.F)
      (4751679099407146620309977891574056995749303970160864977880780610492133761897 : EdwardsBridge.F) (3426061462580786244923008406012087084566066268361726778923206609952472608100 : EdwardsBridge.F) (585948007728210688584874796012056715036932342084312223310025373818303058765 : EdwardsBridge.F)
      (5842791747809390437667497878208542174552829397337057898702851384623046565583 : EdwardsBridge.F) (5018400286847584179325816532769459446809833066792337049012026845964936630941 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX180 rho : F)
      (rvkAccY180 rho : F) (rho 182 : F)
      (rho 1246 : F) (rho 1247 : F) (rho 1248 : F)
      (rho 1250 : F) (rho 1249 : F) (rho 1251 : F)
      (rho 1252 : F) (rho 1253 : F) hacc
      (by rw [C_eq_L181]; simp only [L181])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_181 h14_181 h15_181 h16_181 h17_181 h18_181 hSelX_181 hSelY_181 hbrow181
  exact hr181

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

