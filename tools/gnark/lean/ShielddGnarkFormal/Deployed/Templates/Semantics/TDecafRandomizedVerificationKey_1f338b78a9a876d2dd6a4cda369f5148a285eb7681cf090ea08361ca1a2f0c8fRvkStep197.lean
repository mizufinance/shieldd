import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas47
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

theorem rvk_step197 (rho : Nat -> F)
    (r197 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow197 rho)
    (r1373 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1373 rho)
    (r1374 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1374 rho)
    (r1375 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1375 rho)
    (r1376 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1376 rho)
    (r1377 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1377 rho)
    (r1378 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1378 rho)
    (r1379 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1379 rho)
    (r1380 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1380 rho)
    (hacc : onCurve (rvkRvkAcc rho 197)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 197 (rho 198)
      (rvkRvkAcc rho 197) (rvkRvkAcc rho (197 + 1)) := by
  have hbrow197 : (1*(rho 198))*(1 + (-1)*(rho 198)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow197] using r197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1373 at r1373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1374 at r1374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1375 at r1375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1376 at r1376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1377 at r1377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1378 at r1378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1379 at r1379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1380 at r1380
  have h13_197 : rho 1374 = rvkAccX196 rho + rvkAccY196 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1176 rho
    rw [hLc] at r1373
    linear_combination -r1373
  have h14_197 : (3802704878817434423711436974410538526526545929301785435357045731052713142490*rvkAccX196 rho + 3859640395529244198310709622310588233414407003122503664126280519304497179772*rho 1) * (2082226801942639214149189228798694336008558896827557728542685557227694094802*rvkAccY196 rho + 2082226801942639214149189228798694336008558896827557728542685557227694094802 + 4365931281007279173684731796343961725067336835824279134039608802990384612140*rho 1) = rho 1375 := by
    have hL := rvk_lc1177 rho
    have hR := rvk_lc1178 rho
    rw [hL, hR] at r1374
    linear_combination r1374
  have h15_197 : 8370248653646924357704300994268904618823558144780062524420207220373312139964*rvkAccX196 rho + 2082226801942639214149189228798694336008558896827557728542685557227694094802*rvkAccY196 rho + 2082226801942639214149189228798694336008558896827557728542685557227694094802 + 2374192920548193153065366860319820020784780788501629347328686865370454691499*rho 1 = rho 1376 := by
    have hLc := rvk_lc1179 rho
    rw [hLc] at r1375
    linear_combination r1375
  have h16_197 : rho 1377 * (1 + rho 1375) = rho 1376 := by
    linear_combination r1376
  have h17_197 : 74213095781446066544523944512641912552341190374001303515026235544097099077*rvkAccX196 rho + 6362234947485731210099635709982852195367340438326506099392547898689715144239*rvkAccY196 rho + 6362234947485731210099635709982852195367340438326506099392547898689715144239 + 6070268828880177271183458078461726510591118546652434480606546590546954547542*rho 1 = rho 1378 := by
    have hLc := rvk_lc1180 rho
    rw [hLc] at r1377
    linear_combination r1377
  have h18_197 : rho 1379 * (1 + (-1)*rho 1375) = rho 1378 + 2008013706161193147604665284286052423456217706453556425027659321683596995725*rho 1374 := by
    linear_combination r1378
  have hSelX_197 : (1*rho 198) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX196 rho + rho 1377) = rho 1380 := by
    have hLc := rvk_lc1181 rho
    rw [hLc] at r1379
    linear_combination r1379
  have hSelY_197 : (1*rho 198) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY196 rho + rho 1379) = rho 1381 := by
    have hLc := rvk_lc1182 rho
    rw [hLc] at r1380
    linear_combination r1380
  have hr197 : RvkFixedBaseLadderChoiceFree.FixedStepRel 197 (rho 198) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX196 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY196 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX197 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY197 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX197_succ, rvkAccY197_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 197
      (2082226801942639214149189228798694336008558896827557728542685557227694094802 : EdwardsBridge.F) (8370248653646924357704300994268904618823558144780062524420207220373312139964 : EdwardsBridge.F) (2008013706161193147604665284286052423456217706453556425027659321683596995725 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3802704878817434423711436974410538526526545929301785435357045731052713142490 : EdwardsBridge.F) (3859640395529244198310709622310588233414407003122503664126280519304497179772 : EdwardsBridge.F)
      (4365931281007279173684731796343961725067336835824279134039608802990384612140 : EdwardsBridge.F) (2374192920548193153065366860319820020784780788501629347328686865370454691499 : EdwardsBridge.F) (74213095781446066544523944512641912552341190374001303515026235544097099077 : EdwardsBridge.F)
      (6362234947485731210099635709982852195367340438326506099392547898689715144239 : EdwardsBridge.F) (6070268828880177271183458078461726510591118546652434480606546590546954547542 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX196 rho : F)
      (rvkAccY196 rho : F) (rho 198 : F)
      (rho 1374 : F) (rho 1375 : F) (rho 1376 : F)
      (rho 1378 : F) (rho 1377 : F) (rho 1379 : F)
      (rho 1380 : F) (rho 1381 : F) hacc
      (by rw [C_eq_L197]; simp only [L197])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_197 h14_197 h15_197 h16_197 h17_197 h18_197 hSelX_197 hSelY_197 hbrow197
  exact hr197

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

