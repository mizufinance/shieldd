import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas73
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

theorem rvk_step223 (rho : Nat -> F)
    (r223 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow223 rho)
    (r1581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1581 rho)
    (r1582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1582 rho)
    (r1583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1583 rho)
    (r1584 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1584 rho)
    (r1585 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1585 rho)
    (r1586 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1586 rho)
    (r1587 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1587 rho)
    (r1588 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1588 rho)
    (hacc : onCurve (rvkRvkAcc rho 223)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 223 (rho 224)
      (rvkRvkAcc rho 223) (rvkRvkAcc rho (223 + 1)) := by
  have hbrow223 : (1*(rho 224))*(1 + (-1)*(rho 224)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow223] using r223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1581 at r1581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1582 at r1582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1583 at r1583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1584 at r1584
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1585 at r1585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1586 at r1586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1587 at r1587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1588 at r1588
  have h13_223 : rho 1582 = rvkAccX222 rho + rvkAccY222 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1358 rho
    rw [hLc] at r1581
    linear_combination -r1581
  have h14_223 : (8000303670094469490476673488425897846331820804390470973550534731133844079073*rvkAccX222 rho + 6144560444343160063992881673823174172581281374192862824241915636711435846291*rho 1) * (1887744025524448028782079554652453304437947498971093309363675424119475519583*rvkAccY222 rho + 1887744025524448028782079554652453304437947498971093309363675424119475519583 + 819468999576066053346443248822634724062702190613440189513332390125497148669*rho 1) = rho 1583 := by
    have hL := rvk_lc1359 rho
    have hR := rvk_lc1360 rho
    rw [hL, hR] at r1582
    linear_combination r1582
  have h15_223 : 4578478711514179693474281065300833356408036753542400846508946607768266391390*rvkAccX222 rho + 1887744025524448028782079554652453304437947498971093309363675424119475519583*rvkAccY222 rho + 1887744025524448028782079554652453304437947498971093309363675424119475519583 + 460915207708500139852863131169871953994873745442741291473145961732039897431*rho 1 = rho 1584 := by
    have hLc := rvk_lc1361 rho
    rw [hLc] at r1583
    linear_combination r1583
  have h16_223 : rho 1585 * (1 + rho 1583) = rho 1584 := by
    linear_combination r1584
  have h17_223 : 3865983037914190730774543873480713174967862581611662981426286848149142847651*rvkAccX222 rho + 6556717723903922395466745384129093226937951836182970518571558031797933719458*rvkAccY222 rho + 6556717723903922395466745384129093226937951836182970518571558031797933719458 + 7983546541719870284395961807611674577381025589711322536462087494185369341610*rho 1 = rho 1586 := by
    have hLc := rvk_lc1362 rho
    rw [hLc] at r1585
    linear_combination r1585
  have h18_223 : rho 1587 * (1 + (-1)*rho 1583) = rho 1586 + 6466222737038627722256360619953286660845984252513494155872622031887741910973*rho 1582 := by
    linear_combination r1586
  have hSelX_223 : (1*rho 224) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX222 rho + rho 1585) = rho 1588 := by
    have hLc := rvk_lc1363 rho
    rw [hLc] at r1587
    linear_combination r1587
  have hSelY_223 : (1*rho 224) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY222 rho + rho 1587) = rho 1589 := by
    have hLc := rvk_lc1364 rho
    rw [hLc] at r1588
    linear_combination r1588
  have hr223 : RvkFixedBaseLadderChoiceFree.FixedStepRel 223 (rho 224) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX222 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY222 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX223 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY223 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX223_succ, rvkAccY223_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 223
      (1887744025524448028782079554652453304437947498971093309363675424119475519583 : EdwardsBridge.F) (4578478711514179693474281065300833356408036753542400846508946607768266391390 : EdwardsBridge.F) (6466222737038627722256360619953286660845984252513494155872622031887741910973 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (8000303670094469490476673488425897846331820804390470973550534731133844079073 : EdwardsBridge.F) (6144560444343160063992881673823174172581281374192862824241915636711435846291 : EdwardsBridge.F)
      (819468999576066053346443248822634724062702190613440189513332390125497148669 : EdwardsBridge.F) (460915207708500139852863131169871953994873745442741291473145961732039897431 : EdwardsBridge.F) (3865983037914190730774543873480713174967862581611662981426286848149142847651 : EdwardsBridge.F)
      (6556717723903922395466745384129093226937951836182970518571558031797933719458 : EdwardsBridge.F) (7983546541719870284395961807611674577381025589711322536462087494185369341610 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX222 rho : F)
      (rvkAccY222 rho : F) (rho 224 : F)
      (rho 1582 : F) (rho 1583 : F) (rho 1584 : F)
      (rho 1586 : F) (rho 1585 : F) (rho 1587 : F)
      (rho 1588 : F) (rho 1589 : F) hacc
      (by rw [C_eq_L223]; simp only [L223])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_223 h14_223 h15_223 h16_223 h17_223 h18_223 hSelX_223 hSelY_223 hbrow223
  exact hr223

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

