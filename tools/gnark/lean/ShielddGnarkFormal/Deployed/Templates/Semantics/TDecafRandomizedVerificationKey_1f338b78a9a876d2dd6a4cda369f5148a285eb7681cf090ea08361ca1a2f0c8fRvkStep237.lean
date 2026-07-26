import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas87
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

theorem rvk_step237 (rho : Nat -> F)
    (r237 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow237 rho)
    (r1693 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1693 rho)
    (r1694 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1694 rho)
    (r1695 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1695 rho)
    (r1696 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1696 rho)
    (r1697 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1697 rho)
    (r1698 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1698 rho)
    (r1699 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1699 rho)
    (r1700 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1700 rho)
    (hacc : onCurve (rvkRvkAcc rho 237)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 237 (rho 238)
      (rvkRvkAcc rho 237) (rvkRvkAcc rho (237 + 1)) := by
  have hbrow237 : (1*(rho 238))*(1 + (-1)*(rho 238)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow237] using r237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1693 at r1693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1694 at r1694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1695 at r1695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1696 at r1696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1697 at r1697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1698 at r1698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1699 at r1699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1700 at r1700
  have h13_237 : rho 1694 = rvkAccX236 rho + rvkAccY236 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1456 rho
    rw [hLc] at r1693
    linear_combination -r1693
  have h14_237 : (5108019869792056471845548391669367315944996432535285954875015076492812536188*rvkAccX236 rho + 4064288127943839895562289258484952130157397309295205997450938047822402682264*rho 1) * (4907858296313307191312286640678462406911893830587231624615571332339052272968*rvkAccY236 rho + 4907858296313307191312286640678462406911893830587231624615571332339052272968 + 5157899098305688618519720185772888808299554434283422179554938535806754060899*rho 1) = rho 1695 := by
    have hL := rvk_lc1457 rho
    have hR := rvk_lc1458 rho
    rw [hL, hR] at r1694
    linear_combination r1694
  have h15_237 : 1936006471524072952681904139698278572336334768738545996321104457653538565360*rvkAccX236 rho + 4907858296313307191312286640678462406911893830587231624615571332339052272968*rvkAccY236 rho + 4907858296313307191312286640678462406911893830587231624615571332339052272968 + 779081728816674181279618765775471243739515751437635085090502955742286045376*rho 1 = rho 1696 := by
    have hLc := rvk_lc1459 rho
    rw [hLc] at r1695
    linear_combination r1695
  have h16_237 : rho 1697 * (1 + rho 1695) = rho 1696 := by
    linear_combination r1696
  have h17_237 : 6508455277904297471566920799083267959039564566415517831614128998263870673681*rvkAccX236 rho + 3536603453115063232936538298103084124464005504566832203319662123578356966073*rvkAccY236 rho + 3536603453115063232936538298103084124464005504566832203319662123578356966073 + 7665380020611696242969206173006075287636383583716428742844730500175123193665*rho 1 = rho 1698 := by
    have hLc := rvk_lc1460 rho
    rw [hLc] at r1697
    linear_combination r1697
  have h18_237 : rho 1699 * (1 + (-1)*rho 1695) = rho 1698 + 6843864767837380143994190780376740979248228599325777620936675789992590838328*rho 1694 := by
    linear_combination r1698
  have hSelX_237 : (1*rho 238) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX236 rho + rho 1697) = rho 1700 := by
    have hLc := rvk_lc1461 rho
    rw [hLc] at r1699
    linear_combination r1699
  have hSelY_237 : (1*rho 238) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY236 rho + rho 1699) = rho 1701 := by
    have hLc := rvk_lc1462 rho
    rw [hLc] at r1700
    linear_combination r1700
  have hr237 : RvkFixedBaseLadderChoiceFree.FixedStepRel 237 (rho 238) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX236 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY236 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX237 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY237 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX237_succ, rvkAccY237_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 237
      (4907858296313307191312286640678462406911893830587231624615571332339052272968 : EdwardsBridge.F) (1936006471524072952681904139698278572336334768738545996321104457653538565360 : EdwardsBridge.F) (6843864767837380143994190780376740979248228599325777620936675789992590838328 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5108019869792056471845548391669367315944996432535285954875015076492812536188 : EdwardsBridge.F) (4064288127943839895562289258484952130157397309295205997450938047822402682264 : EdwardsBridge.F)
      (5157899098305688618519720185772888808299554434283422179554938535806754060899 : EdwardsBridge.F) (779081728816674181279618765775471243739515751437635085090502955742286045376 : EdwardsBridge.F) (6508455277904297471566920799083267959039564566415517831614128998263870673681 : EdwardsBridge.F)
      (3536603453115063232936538298103084124464005504566832203319662123578356966073 : EdwardsBridge.F) (7665380020611696242969206173006075287636383583716428742844730500175123193665 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX236 rho : F)
      (rvkAccY236 rho : F) (rho 238 : F)
      (rho 1694 : F) (rho 1695 : F) (rho 1696 : F)
      (rho 1698 : F) (rho 1697 : F) (rho 1699 : F)
      (rho 1700 : F) (rho 1701 : F) hacc
      (by rw [C_eq_L237]; simp only [L237])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_237 h14_237 h15_237 h16_237 h17_237 h18_237 hSelX_237 hSelY_237 hbrow237
  exact hr237

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

