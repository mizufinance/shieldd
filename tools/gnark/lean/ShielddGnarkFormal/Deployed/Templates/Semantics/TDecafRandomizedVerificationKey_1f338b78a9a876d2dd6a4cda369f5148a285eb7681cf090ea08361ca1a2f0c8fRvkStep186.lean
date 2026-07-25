import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas36
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

theorem rvk_step186 (rho : Nat -> F)
    (r186 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow186 rho)
    (r1285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1285 rho)
    (r1286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1286 rho)
    (r1287 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1287 rho)
    (r1288 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1288 rho)
    (r1289 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1289 rho)
    (r1290 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1290 rho)
    (r1291 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1291 rho)
    (r1292 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1292 rho)
    (hacc : onCurve (rvkRvkAcc rho 186)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 186 (rho 187)
      (rvkRvkAcc rho 186) (rvkRvkAcc rho (186 + 1)) := by
  have hbrow186 : (1*(rho 187))*(1 + (-1)*(rho 187)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow186] using r186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1285 at r1285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1286 at r1286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1287 at r1287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1288 at r1288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1289 at r1289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1290 at r1290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1291 at r1291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1292 at r1292
  have h13_186 : rho 1286 = rvkAccX185 rho + rvkAccY185 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1099 rho
    rw [hLc] at r1285
    linear_combination -r1285
  have h14_186 : (4768430774787137461239983348768506902191005184144761558215255335008363303521*rvkAccX185 rho + 4418611128244402514898585934103632442583042684605626918124376504577736114022*rho 1) * (6629227314315963601615851724934144504898925614068174154939451162527919100461*rvkAccY185 rho + 6629227314315963601615851724934144504898925614068174154939451162527919100461 + 4543518876404653285116166354042357871768585069803000069050705909111993022531*rho 1) = rho 1287 := by
    have hL := rvk_lc1100 rho
    have hR := rvk_lc1101 rho
    rw [hL, hR] at r1286
    linear_combination r1286
  have h15_186 : 3632613122569427447388435477929823717695956385815714556122503646001894394180*rvkAccX185 rho + 6629227314315963601615851724934144504898925614068174154939451162527919100461*rvkAccY185 rho + 6629227314315963601615851724934144504898925614068174154939451162527919100461 + 2012481559670505916081231958609727112091662939725219135190660515349465702287*rho 1 = rho 1288 := by
    have hLc := rvk_lc1102 rho
    rw [hLc] at r1287
    linear_combination r1287
  have h16_186 : rho 1289 * (1 + rho 1287) = rho 1288 := by
    linear_combination r1288
  have h17_186 : 4811848626858942976860389460851722813679942949338349271812729809915514844861*rvkAccX185 rho + 1815234435112406822632973213847402026476973721085889672995782293389490138580*rvkAccY185 rho + 1815234435112406822632973213847402026476973721085889672995782293389490138580 + 6431980189757864508167592980171819419284236395428844692744572940567943536754*rho 1 = rho 1290 := by
    have hLc := rvk_lc1103 rho
    rw [hLc] at r1289
    linear_combination r1289
  have h18_186 : rho 1291 * (1 + (-1)*rho 1287) = rho 1290 + 1817378687457020624755462264082421691218982664729824883126721352612404255600*rho 1286 := by
    linear_combination r1290
  have hSelX_186 : (1*rho 187) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX185 rho + rho 1289) = rho 1292 := by
    have hLc := rvk_lc1104 rho
    rw [hLc] at r1291
    linear_combination r1291
  have hSelY_186 : (1*rho 187) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY185 rho + rho 1291) = rho 1293 := by
    have hLc := rvk_lc1105 rho
    rw [hLc] at r1292
    linear_combination r1292
  have hr186 : RvkFixedBaseLadderChoiceFree.FixedStepRel 186 (rho 187) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX185 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY185 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX186 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY186 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX186_succ, rvkAccY186_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 186
      (6629227314315963601615851724934144504898925614068174154939451162527919100461 : EdwardsBridge.F) (3632613122569427447388435477929823717695956385815714556122503646001894394180 : EdwardsBridge.F) (1817378687457020624755462264082421691218982664729824883126721352612404255600 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4768430774787137461239983348768506902191005184144761558215255335008363303521 : EdwardsBridge.F) (4418611128244402514898585934103632442583042684605626918124376504577736114022 : EdwardsBridge.F)
      (4543518876404653285116166354042357871768585069803000069050705909111993022531 : EdwardsBridge.F) (2012481559670505916081231958609727112091662939725219135190660515349465702287 : EdwardsBridge.F) (4811848626858942976860389460851722813679942949338349271812729809915514844861 : EdwardsBridge.F)
      (1815234435112406822632973213847402026476973721085889672995782293389490138580 : EdwardsBridge.F) (6431980189757864508167592980171819419284236395428844692744572940567943536754 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX185 rho : F)
      (rvkAccY185 rho : F) (rho 187 : F)
      (rho 1286 : F) (rho 1287 : F) (rho 1288 : F)
      (rho 1290 : F) (rho 1289 : F) (rho 1291 : F)
      (rho 1292 : F) (rho 1293 : F) hacc
      (by rw [C_eq_L186]; simp only [L186])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_186 h14_186 h15_186 h16_186 h17_186 h18_186 hSelX_186 hSelY_186 hbrow186
  exact hr186

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

