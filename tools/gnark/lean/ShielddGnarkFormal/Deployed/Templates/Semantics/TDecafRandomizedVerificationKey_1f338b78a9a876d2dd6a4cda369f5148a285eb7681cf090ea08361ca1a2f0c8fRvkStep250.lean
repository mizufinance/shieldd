import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas100
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

theorem rvk_step250 (rho : Nat -> F)
    (r250 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow250 rho)
    (r1797 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1797 rho)
    (r1798 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1798 rho)
    (r1799 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1799 rho)
    (r1800 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1800 rho)
    (r1801 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1801 rho)
    (r1802 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1802 rho)
    (r1803 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1803 rho)
    (r1804 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1804 rho)
    (hacc : onCurve (rvkRvkAcc rho 250)) :
    RvkFixedBaseLadder.FixedStepRel 250 (rho 251)
      (rvkRvkAcc rho 250) (rvkRvkAcc rho (250 + 1)) := by
  have hbrow250 : (1*(rho 251))*(1 + (-1)*(rho 251)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow250] using r250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1797 at r1797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1798 at r1798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1799 at r1799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1800 at r1800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1801 at r1801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1802 at r1802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1803 at r1803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1804 at r1804
  have h13_250 : rho 1798 = rvkAccX249 rho + rvkAccY249 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1547 rho
    rw [hLc] at r1797
    linear_combination -r1797
  have h14_250 : (4064883095062247340147603835378916187508183055445169435732389489036001704408*rvkAccX249 rho + 2586703773231270539878676380651414243603465923206936704484651928336413050533*rho 1) * (1984710607226089818020725577334409086216133409436227188525394559293030245463*rvkAccY249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463 + 8190687850680179368374512318543963712238846217710026704016266914143778228996*rho 1) = rho 1799 := by
    have hL := rvk_lc1548 rho
    have hR := rvk_lc1549 rho
    rw [hL, hR] at r1798
    linear_combination r1798
  have h15_250 : 823150161346244009291394285282076662168825748954233675885035096169729996022*rvkAccX249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463*rvkAccY249 rho + 1984710607226089818020725577334409086216133409436227188525394559293030245463 + 7713555690673883416038639962320530066882449223208822474333234716515992539878*rho 1 = rho 1800 := by
    have hLc := rvk_lc1550 rho
    rw [hLc] at r1799
    linear_combination r1799
  have h16_250 : rho 1801 * (1 + rho 1799) = rho 1800 := by
    linear_combination r1800
  have h17_250 : 7621311588082126414957430653499469869207073586199830152050198359747679243019*rvkAccX249 rho + 6459751142202280606228099361447137445159765925717836639409838896624378993578*rvkAccY249 rho + 6459751142202280606228099361447137445159765925717836639409838896624378993578 + 730906058754487008210184976461016464493450111945241353601998739401416699163*rho 1 = rho 1802 := by
    have hLc := rvk_lc1551 rho
    rw [hLc] at r1801
    linear_combination r1801
  have h18_250 : rho 1803 * (1 + (-1)*rho 1799) = rho 1802 + 2807860768572333827312119862616485748384959158390460864410429655462760241485*rho 1798 := by
    linear_combination r1802
  have hSelX_250 : (1*rho 251) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX249 rho + rho 1801) = rho 1804 := by
    have hLc := rvk_lc1552 rho
    rw [hLc] at r1803
    linear_combination r1803
  have hSelY_250 : (1*rho 251) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY249 rho + rho 1803) = rho 1805 := by
    have hLc := rvk_lc1553 rho
    rw [hLc] at r1804
    linear_combination r1804
  have hr250 : RvkFixedBaseLadder.FixedStepRel 250 (rho 251) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX249 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY249 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX250 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY250 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX250_succ, rvkAccY250_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 250
      (1984710607226089818020725577334409086216133409436227188525394559293030245463 : EdwardsBridge.F) (823150161346244009291394285282076662168825748954233675885035096169729996022 : EdwardsBridge.F) (2807860768572333827312119862616485748384959158390460864410429655462760241485 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4064883095062247340147603835378916187508183055445169435732389489036001704408 : EdwardsBridge.F) (2586703773231270539878676380651414243603465923206936704484651928336413050533 : EdwardsBridge.F)
      (8190687850680179368374512318543963712238846217710026704016266914143778228996 : EdwardsBridge.F) (7713555690673883416038639962320530066882449223208822474333234716515992539878 : EdwardsBridge.F) (7621311588082126414957430653499469869207073586199830152050198359747679243019 : EdwardsBridge.F)
      (6459751142202280606228099361447137445159765925717836639409838896624378993578 : EdwardsBridge.F) (730906058754487008210184976461016464493450111945241353601998739401416699163 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX249 rho : F)
      (rvkAccY249 rho : F) (rho 251 : F)
      (rho 1798 : F) (rho 1799 : F) (rho 1800 : F)
      (rho 1802 : F) (rho 1801 : F) (rho 1803 : F)
      (rho 1804 : F) (rho 1805 : F) hacc
      (by rw [C_eq_L250]; simp only [L250])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_250 h14_250 h15_250 h16_250 h17_250 h18_250 hSelX_250 hSelY_250 hbrow250
  exact hr250

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

