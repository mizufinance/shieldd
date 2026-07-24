import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas79
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

theorem rvk_step229 (rho : Nat -> F)
    (r229 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow229 rho)
    (r1629 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1629 rho)
    (r1630 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1630 rho)
    (r1631 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1631 rho)
    (r1632 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1632 rho)
    (r1633 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1633 rho)
    (r1634 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1634 rho)
    (r1635 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1635 rho)
    (r1636 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1636 rho)
    (hacc : onCurve (rvkRvkAcc rho 229)) :
    RvkFixedBaseLadder.FixedStepRel 229 (rho 230)
      (rvkRvkAcc rho 229) (rvkRvkAcc rho (229 + 1)) := by
  have hbrow229 : (1*(rho 230))*(1 + (-1)*(rho 230)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow229] using r229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1629 at r1629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1630 at r1630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1631 at r1631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1632 at r1632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1633 at r1633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1634 at r1634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1635 at r1635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1636 at r1636
  have h13_229 : rho 1630 = rvkAccX228 rho + rvkAccY228 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1400 rho
    rw [hLc] at r1629
    linear_combination -r1629
  have h14_229 : (8005795343449612145036117745829407939494616795117852748437620276172049747902*rvkAccX228 rho + 4802774979772271385970034729279180096321539640809073194439602886238651987693*rho 1) * (615972545279460132803560543708205878635144221637755246156538630440780593542*rvkAccY228 rho + 615972545279460132803560543708205878635144221637755246156538630440780593542 + 6474623323290704998664558489372220939430902356818200455473100300981788630784*rho 1) = rho 1631 := by
    have hL := rvk_lc1401 rho
    have hR := rvk_lc1402 rho
    rw [hL, hR] at r1630
    linear_combination r1630
  have h15_229 : 5746896620463009213497640306832806199906311734702654425407263281094487929817*rvkAccX228 rho + 615972545279460132803560543708205878635144221637755246156538630440780593542*rvkAccY228 rho + 615972545279460132803560543708205878635144221637755246156538630440780593542 + 3004507892039376367240834378403203524047736042809415880464454041675868861535*rho 1 = rho 1632 := by
    have hLc := rvk_lc1403 rho
    rw [hLc] at r1631
    linear_combination r1631
  have h16_229 : rho 1633 * (1 + rho 1631) = rho 1632 := by
    linear_combination r1632
  have h17_229 : 2697565128965361210751184631948740331469587600451409402527970174822921309224*rvkAccX228 rho + 7828489204148910291445264395073340652740755113516308581778694825476628645499*rvkAccY228 rho + 7828489204148910291445264395073340652740755113516308581778694825476628645499 + 5439953857388994057007990560378343007328163292344647947470779414241540377506*rho 1 = rho 1634 := by
    have hLc := rvk_lc1404 rho
    rw [hLc] at r1633
    linear_combination r1633
  have h18_229 : rho 1635 * (1 + (-1)*rho 1631) = rho 1634 + 6362869165742469346301200850541012078541455956340409671563801911535268523359*rho 1630 := by
    linear_combination r1634
  have hSelX_229 : (1*rho 230) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX228 rho + rho 1633) = rho 1636 := by
    have hLc := rvk_lc1405 rho
    rw [hLc] at r1635
    linear_combination r1635
  have hSelY_229 : (1*rho 230) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY228 rho + rho 1635) = rho 1637 := by
    have hLc := rvk_lc1406 rho
    rw [hLc] at r1636
    linear_combination r1636
  have hr229 : RvkFixedBaseLadder.FixedStepRel 229 (rho 230) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX228 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY228 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX229 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY229 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX229_succ, rvkAccY229_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 229
      (615972545279460132803560543708205878635144221637755246156538630440780593542 : EdwardsBridge.F) (5746896620463009213497640306832806199906311734702654425407263281094487929817 : EdwardsBridge.F) (6362869165742469346301200850541012078541455956340409671563801911535268523359 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (8005795343449612145036117745829407939494616795117852748437620276172049747902 : EdwardsBridge.F) (4802774979772271385970034729279180096321539640809073194439602886238651987693 : EdwardsBridge.F)
      (6474623323290704998664558489372220939430902356818200455473100300981788630784 : EdwardsBridge.F) (3004507892039376367240834378403203524047736042809415880464454041675868861535 : EdwardsBridge.F) (2697565128965361210751184631948740331469587600451409402527970174822921309224 : EdwardsBridge.F)
      (7828489204148910291445264395073340652740755113516308581778694825476628645499 : EdwardsBridge.F) (5439953857388994057007990560378343007328163292344647947470779414241540377506 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX228 rho : F)
      (rvkAccY228 rho : F) (rho 230 : F)
      (rho 1630 : F) (rho 1631 : F) (rho 1632 : F)
      (rho 1634 : F) (rho 1633 : F) (rho 1635 : F)
      (rho 1636 : F) (rho 1637 : F) hacc
      (by rw [C_eq_L229]; simp only [L229])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_229 h14_229 h15_229 h16_229 h17_229 h18_229 hSelX_229 hSelY_229 hbrow229
  exact hr229

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

