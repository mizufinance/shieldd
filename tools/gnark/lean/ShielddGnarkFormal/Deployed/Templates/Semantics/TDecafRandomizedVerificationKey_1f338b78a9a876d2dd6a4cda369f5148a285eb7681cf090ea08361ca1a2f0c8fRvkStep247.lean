import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas97
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

theorem rvk_step247 (rho : Nat -> F)
    (r247 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow247 rho)
    (r1773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1773 rho)
    (r1774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1774 rho)
    (r1775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1775 rho)
    (r1776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1776 rho)
    (r1777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1777 rho)
    (r1778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1778 rho)
    (r1779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1779 rho)
    (r1780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1780 rho)
    (hacc : onCurve (rvkRvkAcc rho 247)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 247 (rho 248)
      (rvkRvkAcc rho 247) (rvkRvkAcc rho (247 + 1)) := by
  have hbrow247 : (1*(rho 248))*(1 + (-1)*(rho 248)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow247] using r247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1773 at r1773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1774 at r1774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1775 at r1775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1776 at r1776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1777 at r1777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1778 at r1778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1779 at r1779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1780 at r1780
  have h13_247 : rho 1774 = rvkAccX246 rho + rvkAccY246 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1526 rho
    rw [hLc] at r1773
    linear_combination -r1773
  have h14_247 : (5534924756406337177111513556176623967822603506254860987227413148256358049338*rvkAccX246 rho + 872969105361601625054695350166036627749660834881608083797783466325305210703*rho 1) * (1099604033722253165143295412136742437014200263599542477935666598053853222560*rvkAccY246 rho + 1099604033722253165143295412136742437014200263599542477935666598053853222560 + 2327547121241648030449164254120704810200423337676700747191607018970167858005*rho 1) = rho 1775 := by
    have hL := rvk_lc1527 rho
    have hR := rvk_lc1528 rho
    rw [hL, hR] at r1774
    linear_combination r1774
  have h15_247 : 4650339230074738944952965040301187853573632306477147635499344803157533241501*rvkAccX246 rho + 1099604033722253165143295412136742437014200263599542477935666598053853222560*rvkAccY246 rho + 1099604033722253165143295412136742437014200263599542477935666598053853222560 + 5033641772864297541305806834753178520561105303007391046273071358193728747976*rho 1 = rho 1776 := by
    have hLc := rvk_lc1529 rho
    rw [hLc] at r1775
    linear_combination r1775
  have h16_247 : rho 1777 * (1 + rho 1775) = rho 1776 := by
    linear_combination r1776
  have h17_247 : 3794122519353631479295859898480358677802267028676916192435888652759875997540*rvkAccX246 rho + 7344857715706117259105529526644804094361699071554521349999566857863556016481*rvkAccY246 rho + 7344857715706117259105529526644804094361699071554521349999566857863556016481 + 3410819976564072882943018104028368010814794032146672781662162097723680491065*rho 1 = rho 1778 := by
    have hLc := rvk_lc1530 rho
    rw [hLc] at r1777
    linear_combination r1777
  have h18_247 : rho 1779 * (1 + (-1)*rho 1775) = rho 1778 + 5749943263796992110096260452437930290587832570076690113435011401211386464061*rho 1774 := by
    linear_combination r1778
  have hSelX_247 : (1*rho 248) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX246 rho + rho 1777) = rho 1780 := by
    have hLc := rvk_lc1531 rho
    rw [hLc] at r1779
    linear_combination r1779
  have hSelY_247 : (1*rho 248) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY246 rho + rho 1779) = rho 1781 := by
    have hLc := rvk_lc1532 rho
    rw [hLc] at r1780
    linear_combination r1780
  have hr247 : RvkFixedBaseLadderChoiceFree.FixedStepRel 247 (rho 248) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX246 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY246 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX247 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY247 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX247_succ, rvkAccY247_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 247
      (1099604033722253165143295412136742437014200263599542477935666598053853222560 : EdwardsBridge.F) (4650339230074738944952965040301187853573632306477147635499344803157533241501 : EdwardsBridge.F) (5749943263796992110096260452437930290587832570076690113435011401211386464061 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5534924756406337177111513556176623967822603506254860987227413148256358049338 : EdwardsBridge.F) (872969105361601625054695350166036627749660834881608083797783466325305210703 : EdwardsBridge.F)
      (2327547121241648030449164254120704810200423337676700747191607018970167858005 : EdwardsBridge.F) (5033641772864297541305806834753178520561105303007391046273071358193728747976 : EdwardsBridge.F) (3794122519353631479295859898480358677802267028676916192435888652759875997540 : EdwardsBridge.F)
      (7344857715706117259105529526644804094361699071554521349999566857863556016481 : EdwardsBridge.F) (3410819976564072882943018104028368010814794032146672781662162097723680491065 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX246 rho : F)
      (rvkAccY246 rho : F) (rho 248 : F)
      (rho 1774 : F) (rho 1775 : F) (rho 1776 : F)
      (rho 1778 : F) (rho 1777 : F) (rho 1779 : F)
      (rho 1780 : F) (rho 1781 : F) hacc
      (by rw [C_eq_L247]; simp only [L247])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_247 h14_247 h15_247 h16_247 h17_247 h18_247 hSelX_247 hSelY_247 hbrow247
  exact hr247

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

