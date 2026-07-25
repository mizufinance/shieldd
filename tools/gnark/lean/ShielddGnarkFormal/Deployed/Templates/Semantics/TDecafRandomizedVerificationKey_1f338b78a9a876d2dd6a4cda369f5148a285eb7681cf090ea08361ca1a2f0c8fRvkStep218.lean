import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas68
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

theorem rvk_step218 (rho : Nat -> F)
    (r218 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow218 rho)
    (r1541 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1541 rho)
    (r1542 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1542 rho)
    (r1543 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1543 rho)
    (r1544 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1544 rho)
    (r1545 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1545 rho)
    (r1546 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1546 rho)
    (r1547 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1547 rho)
    (r1548 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1548 rho)
    (hacc : onCurve (rvkRvkAcc rho 218)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 218 (rho 219)
      (rvkRvkAcc rho 218) (rvkRvkAcc rho (218 + 1)) := by
  have hbrow218 : (1*(rho 219))*(1 + (-1)*(rho 219)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow218] using r218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1541 at r1541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1542 at r1542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1543 at r1543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1544 at r1544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1545 at r1545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1546 at r1546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1547 at r1547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1548 at r1548
  have h13_218 : rho 1542 = rvkAccX217 rho + rvkAccY217 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1323 rho
    rw [hLc] at r1541
    linear_combination -r1541
  have h14_218 : (3647845013221540195000180144391708208516708723557347468147664801839542250871*rvkAccX217 rho + 4971282488306407230903895476128900254670987796347003951409327543348148103236*rho 1) * (7321797565248499399597033149132749385913345298552819616764011964057332335793*rvkAccY217 rho + 7321797565248499399597033149132749385913345298552819616764011964057332335793 + 2169773500175028257771770782874482504945777498476923627076290976547949899032*rho 1) = rho 1543 := by
    have hL := rvk_lc1324 rho
    have hR := rvk_lc1325 rho
    rw [hL, hR] at r1542
    linear_combination r1542
  have h15_218 : 5697934753508189495138730686984834008325918422299748238596542021834332860449*rvkAccX217 rho + 7321797565248499399597033149132749385913345298552819616764011964057332335793*rvkAccY217 rho + 7321797565248499399597033149132749385913345298552819616764011964057332335793 + 5548085673560588628418405811515408393776216884330103404665556564860289690116*rho 1 = rho 1544 := by
    have hLc := rvk_lc1326 rho
    rw [hLc] at r1543
    linear_combination r1543
  have h16_218 : rho 1545 * (1 + rho 1543) = rho 1544 := by
    linear_combination r1544
  have h17_218 : 2746526995920180929110094251796712523049980912854315589338691434083076378592*rvkAccX217 rho + 1122664184179871024651791789648797145462554036601244211171221491860076903248*rvkAccY217 rho + 1122664184179871024651791789648797145462554036601244211171221491860076903248 + 2896376075867781795830419127266138137599682450823960423269676891057119548925*rho 1 = rho 1546 := by
    have hLc := rvk_lc1327 rho
    rw [hLc] at r1545
    linear_combination r1545
  have h18_218 : rho 1547 * (1 + (-1)*rho 1543) = rho 1546 + 4575270569328318470486938897336036862863364385698504027425320529974255957201*rho 1542 := by
    linear_combination r1546
  have hSelX_218 : (1*rho 219) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX217 rho + rho 1545) = rho 1548 := by
    have hLc := rvk_lc1328 rho
    rw [hLc] at r1547
    linear_combination r1547
  have hSelY_218 : (1*rho 219) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY217 rho + rho 1547) = rho 1549 := by
    have hLc := rvk_lc1329 rho
    rw [hLc] at r1548
    linear_combination r1548
  have hr218 : RvkFixedBaseLadderChoiceFree.FixedStepRel 218 (rho 219) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX217 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY217 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX218 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY218 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX218_succ, rvkAccY218_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 218
      (7321797565248499399597033149132749385913345298552819616764011964057332335793 : EdwardsBridge.F) (5697934753508189495138730686984834008325918422299748238596542021834332860449 : EdwardsBridge.F) (4575270569328318470486938897336036862863364385698504027425320529974255957201 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3647845013221540195000180144391708208516708723557347468147664801839542250871 : EdwardsBridge.F) (4971282488306407230903895476128900254670987796347003951409327543348148103236 : EdwardsBridge.F)
      (2169773500175028257771770782874482504945777498476923627076290976547949899032 : EdwardsBridge.F) (5548085673560588628418405811515408393776216884330103404665556564860289690116 : EdwardsBridge.F) (2746526995920180929110094251796712523049980912854315589338691434083076378592 : EdwardsBridge.F)
      (1122664184179871024651791789648797145462554036601244211171221491860076903248 : EdwardsBridge.F) (2896376075867781795830419127266138137599682450823960423269676891057119548925 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX217 rho : F)
      (rvkAccY217 rho : F) (rho 219 : F)
      (rho 1542 : F) (rho 1543 : F) (rho 1544 : F)
      (rho 1546 : F) (rho 1545 : F) (rho 1547 : F)
      (rho 1548 : F) (rho 1549 : F) hacc
      (by rw [C_eq_L218]; simp only [L218])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_218 h14_218 h15_218 h16_218 h17_218 h18_218 hSelX_218 hSelY_218 hbrow218
  exact hr218

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

