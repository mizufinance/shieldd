import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas56
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

theorem rvk_step206 (rho : Nat -> F)
    (r206 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow206 rho)
    (r1445 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1445 rho)
    (r1446 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1446 rho)
    (r1447 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1447 rho)
    (r1448 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1448 rho)
    (r1449 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1449 rho)
    (r1450 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1450 rho)
    (r1451 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1451 rho)
    (r1452 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1452 rho)
    (hacc : onCurve (rvkRvkAcc rho 206)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 206 (rho 207)
      (rvkRvkAcc rho 206) (rvkRvkAcc rho (206 + 1)) := by
  have hbrow206 : (1*(rho 207))*(1 + (-1)*(rho 207)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow206] using r206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1445 at r1445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1446 at r1446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1447 at r1447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1448 at r1448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1449 at r1449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1450 at r1450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1451 at r1451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1452 at r1452
  have h13_206 : rho 1446 = rvkAccX205 rho + rvkAccY205 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1239 rho
    rw [hLc] at r1445
    linear_combination -r1445
  have h14_206 : (5784921358780517147321313440632775274927563998220086564825994498022190454221*rvkAccX205 rho + 6305079995656463654750648117447703086047002182022449475921073467854836326934*rho 1) * (1957125926108579253371118424697298480298997708708714571039011901926067811585*rvkAccY205 rho + 1957125926108579253371118424697298480298997708708714571039011901926067811585 + 1610538767991596816650409780213098391033170561624469385315731459758725783327*rho 1) = rho 1447 := by
    have hL := rvk_lc1240 rho
    have hR := rvk_lc1241 rho
    rw [hL, hR] at r1446
    linear_combination r1446
  have h15_206 : 888010359459640497065276007624754394479009484687871009606188348236954955058*rvkAccX205 rho + 1957125926108579253371118424697298480298997708708714571039011901926067811585*rvkAccY205 rho + 1957125926108579253371118424697298480298997708708714571039011901926067811585 + 2993481232146933279157417449155677566665656915066419064387537616889164379955*rho 1 = rho 1448 := by
    have hLc := rvk_lc1242 rho
    rw [hLc] at r1447
    linear_combination r1447
  have h16_206 : rho 1449 * (1 + rho 1447) = rho 1448 := by
    linear_combination r1448
  have h17_206 : 7556451389968729927183548931156792136896889850466192818329045107680454283983*rvkAccX205 rho + 6487335823319791170877706514084248051076901626445349256896221553991341427456*rvkAccY205 rho + 6487335823319791170877706514084248051076901626445349256896221553991341427456 + 5450980517281437145091407489625868964710242420087644763547695839028244859086*rho 1 = rho 1450 := by
    have hLc := rvk_lc1243 rho
    rw [hLc] at r1449
    linear_combination r1449
  have h18_206 : rho 1451 * (1 + (-1)*rho 1447) = rho 1450 + 2845136285568219750436394432322052874778007193396585580645200250163022766643*rho 1446 := by
    linear_combination r1450
  have hSelX_206 : (1*rho 207) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX205 rho + rho 1449) = rho 1452 := by
    have hLc := rvk_lc1244 rho
    rw [hLc] at r1451
    linear_combination r1451
  have hSelY_206 : (1*rho 207) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY205 rho + rho 1451) = rho 1453 := by
    have hLc := rvk_lc1245 rho
    rw [hLc] at r1452
    linear_combination r1452
  have hr206 : RvkFixedBaseLadderChoiceFree.FixedStepRel 206 (rho 207) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX205 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY205 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX206 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY206 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX206_succ, rvkAccY206_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 206
      (1957125926108579253371118424697298480298997708708714571039011901926067811585 : EdwardsBridge.F) (888010359459640497065276007624754394479009484687871009606188348236954955058 : EdwardsBridge.F) (2845136285568219750436394432322052874778007193396585580645200250163022766643 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5784921358780517147321313440632775274927563998220086564825994498022190454221 : EdwardsBridge.F) (6305079995656463654750648117447703086047002182022449475921073467854836326934 : EdwardsBridge.F)
      (1610538767991596816650409780213098391033170561624469385315731459758725783327 : EdwardsBridge.F) (2993481232146933279157417449155677566665656915066419064387537616889164379955 : EdwardsBridge.F) (7556451389968729927183548931156792136896889850466192818329045107680454283983 : EdwardsBridge.F)
      (6487335823319791170877706514084248051076901626445349256896221553991341427456 : EdwardsBridge.F) (5450980517281437145091407489625868964710242420087644763547695839028244859086 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX205 rho : F)
      (rvkAccY205 rho : F) (rho 207 : F)
      (rho 1446 : F) (rho 1447 : F) (rho 1448 : F)
      (rho 1450 : F) (rho 1449 : F) (rho 1451 : F)
      (rho 1452 : F) (rho 1453 : F) hacc
      (by rw [C_eq_L206]; simp only [L206])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_206 h14_206 h15_206 h16_206 h17_206 h18_206 hSelX_206 hSelY_206 hbrow206
  exact hr206

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

