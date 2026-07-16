import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas83
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

theorem rvk_step233 (rho : Nat -> F)
    (r233 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow233 rho)
    (r1661 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1661 rho)
    (r1662 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1662 rho)
    (r1663 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1663 rho)
    (r1664 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1664 rho)
    (r1665 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1665 rho)
    (r1666 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1666 rho)
    (r1667 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1667 rho)
    (r1668 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1668 rho)
    (hacc : onCurve (rvkRvkAcc rho 233)) :
    RvkFixedBaseLadder.FixedStepRel 233 (rho 234)
      (rvkRvkAcc rho 233) (rvkRvkAcc rho (233 + 1)) := by
  have hbrow233 : (1*(rho 234))*(1 + (-1)*(rho 234)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow233] using r233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1661 at r1661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1662 at r1662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1663 at r1663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1664 at r1664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1665 at r1665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1666 at r1666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1667 at r1667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1668 at r1668
  have h13_233 : rho 1662 = rvkAccX232 rho + rvkAccY232 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1428 rho
    rw [hLc] at r1661
    linear_combination -r1661
  have h14_233 : (3222337823151825026837966724671427176770153243677937432187190383381467283493*rvkAccX232 rho + 3202800750990824004731067945534977160523087748504363744810507262593949216434*rho 1) * (311399174984249285727356043299846010815117751051619267223118429205494289868*rvkAccY232 rho + 311399174984249285727356043299846010815117751051619267223118429205494289868 + 7016040529850333745453736546212323347249913967845743269665879261850771674172*rho 1) = rho 1663 := by
    have hL := rvk_lc1429 rho
    have hR := rvk_lc1430 rho
    rw [hL, hR] at r1662
    linear_combination r1662
  have h15_233 : 9452407504613351969408951188684563644785783266845458098640480222156138696*rvkAccX232 rho + 311399174984249285727356043299846010815117751051619267223118429205494289868*rvkAccY232 rho + 311399174984249285727356043299846010815117751051619267223118429205494289868 + 713803375196250831625080747136900490218424423647163472165336085475014016171*rho 1 = rho 1664 := by
    have hLc := rvk_lc1431 rho
    rw [hLc] at r1663
    linear_combination r1663
  have h16_233 : rho 1665 * (1 + rho 1663) = rho 1664 := by
    linear_combination r1664
  have h17_233 : 8435009341923757072279415987592861967731113551887218369836592975695253100345*rvkAccX232 rho + 8133062574444121138521468895481700520560781584102444560712115026711914949173*rvkAccY232 rho + 8133062574444121138521468895481700520560781584102444560712115026711914949173 + 7730658374232119592623744191644646041157474911506900355769897370442395222870*rho 1 = rho 1666 := by
    have hLc := rvk_lc1432 rho
    rw [hLc] at r1665
    linear_combination r1665
  have h18_233 : rho 1667 * (1 + (-1)*rho 1663) = rho 1666 + 320851582488862637696764994488530574459903534318464725321758909427650428564*rho 1662 := by
    linear_combination r1666
  have hSelX_233 : (1*rho 234) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX232 rho + rho 1665) = rho 1668 := by
    have hLc := rvk_lc1433 rho
    rw [hLc] at r1667
    linear_combination r1667
  have hSelY_233 : (1*rho 234) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY232 rho + rho 1667) = rho 1669 := by
    have hLc := rvk_lc1434 rho
    rw [hLc] at r1668
    linear_combination r1668
  have hr233 : RvkFixedBaseLadder.FixedStepRel 233 (rho 234) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX232 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY232 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX233 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY233 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX233_succ, rvkAccY233_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 233
      (311399174984249285727356043299846010815117751051619267223118429205494289868 : EdwardsBridge.F) (9452407504613351969408951188684563644785783266845458098640480222156138696 : EdwardsBridge.F) (320851582488862637696764994488530574459903534318464725321758909427650428564 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (3222337823151825026837966724671427176770153243677937432187190383381467283493 : EdwardsBridge.F) (3202800750990824004731067945534977160523087748504363744810507262593949216434 : EdwardsBridge.F)
      (7016040529850333745453736546212323347249913967845743269665879261850771674172 : EdwardsBridge.F) (713803375196250831625080747136900490218424423647163472165336085475014016171 : EdwardsBridge.F) (8435009341923757072279415987592861967731113551887218369836592975695253100345 : EdwardsBridge.F)
      (8133062574444121138521468895481700520560781584102444560712115026711914949173 : EdwardsBridge.F) (7730658374232119592623744191644646041157474911506900355769897370442395222870 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX232 rho : F)
      (rvkAccY232 rho : F) (rho 234 : F)
      (rho 1662 : F) (rho 1663 : F) (rho 1664 : F)
      (rho 1666 : F) (rho 1665 : F) (rho 1667 : F)
      (rho 1668 : F) (rho 1669 : F) hacc
      (by rw [C_eq_L233]; simp only [L233])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_233 h14_233 h15_233 h16_233 h17_233 h18_233 hSelX_233 hSelY_233 hbrow233
  exact hr233

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

