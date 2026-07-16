import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas99
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

theorem rvk_step249 (rho : Nat -> F)
    (r249 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow249 rho)
    (r1789 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1789 rho)
    (r1790 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1790 rho)
    (r1791 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1791 rho)
    (r1792 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1792 rho)
    (r1793 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1793 rho)
    (r1794 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1794 rho)
    (r1795 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1795 rho)
    (r1796 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1796 rho)
    (hacc : onCurve (rvkRvkAcc rho 249)) :
    RvkFixedBaseLadder.FixedStepRel 249 (rho 250)
      (rvkRvkAcc rho 249) (rvkRvkAcc rho (249 + 1)) := by
  have hbrow249 : (1*(rho 250))*(1 + (-1)*(rho 250)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow249] using r249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1789 at r1789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1790 at r1790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1791 at r1791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1792 at r1792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1793 at r1793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1794 at r1794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1795 at r1795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1796 at r1796
  have h13_249 : rho 1790 = rvkAccX248 rho + rvkAccY248 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1540 rho
    rw [hLc] at r1789
    linear_combination -r1789
  have h14_249 : (7534130220994948469448485159954569829989303291994285594626697092191329623737*rvkAccX248 rho + 3716211268890037814401188648723045032348554276262890654908772248785236731110*rho 1) * (3495198042200539245348034761970589749121878896975913938990248009704026313594*rvkAccY248 rho + 3495198042200539245348034761970589749121878896975913938990248009704026313594 + 2810509145840311449603695208686646865203949018815104943021971327492244934389*rho 1) = rho 1791 := by
    have hL := rvk_lc1541 rho
    have hR := rvk_lc1542 rho
    rw [hL, hR] at r1790
    linear_combination r1790
  have h15_249 : 5453238841974947790716536615618659485605095334936252482644267439963965357747*rvkAccX248 rho + 3495198042200539245348034761970589749121878896975913938990248009704026313594*rvkAccY248 rho + 3495198042200539245348034761970589749121878896975913938990248009704026313594 + 4508458332590364705258590252211678904124015040236746662390258477439498375246*rho 1 = rho 1792 := by
    have hLc := rvk_lc1543 rho
    rw [hLc] at r1791
    linear_combination r1791
  have h16_249 : rho 1793 * (1 + rho 1791) = rho 1792 := by
    linear_combination r1792
  have h17_249 : 2991222907453422633532288323162887045770804000217811345290966015953443881294*rvkAccX248 rho + 4949263707227831178900790176810956782254020438178149888944985446213382925447*rvkAccY248 rho + 4949263707227831178900790176810956782254020438178149888944985446213382925447 + 3936003416838005718990234686569867627251884294917317165544974978477910863795*rho 1 = rho 1794 := by
    have hLc := rvk_lc1544 rho
    rw [hLc] at r1793
    linear_combination r1793
  have h18_249 : rho 1795 * (1 + (-1)*rho 1791) = rho 1794 + 503975134747116611815746438807702703351074896758102593699281993750582432300*rho 1790 := by
    linear_combination r1794
  have hSelX_249 : (1*rho 250) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX248 rho + rho 1793) = rho 1796 := by
    have hLc := rvk_lc1545 rho
    rw [hLc] at r1795
    linear_combination r1795
  have hSelY_249 : (1*rho 250) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY248 rho + rho 1795) = rho 1797 := by
    have hLc := rvk_lc1546 rho
    rw [hLc] at r1796
    linear_combination r1796
  have hr249 : RvkFixedBaseLadder.FixedStepRel 249 (rho 250) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX248 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY248 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX249 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY249 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX249_succ, rvkAccY249_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 249
      (3495198042200539245348034761970589749121878896975913938990248009704026313594 : EdwardsBridge.F) (5453238841974947790716536615618659485605095334936252482644267439963965357747 : EdwardsBridge.F) (503975134747116611815746438807702703351074896758102593699281993750582432300 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (7534130220994948469448485159954569829989303291994285594626697092191329623737 : EdwardsBridge.F) (3716211268890037814401188648723045032348554276262890654908772248785236731110 : EdwardsBridge.F)
      (2810509145840311449603695208686646865203949018815104943021971327492244934389 : EdwardsBridge.F) (4508458332590364705258590252211678904124015040236746662390258477439498375246 : EdwardsBridge.F) (2991222907453422633532288323162887045770804000217811345290966015953443881294 : EdwardsBridge.F)
      (4949263707227831178900790176810956782254020438178149888944985446213382925447 : EdwardsBridge.F) (3936003416838005718990234686569867627251884294917317165544974978477910863795 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX248 rho : F)
      (rvkAccY248 rho : F) (rho 250 : F)
      (rho 1790 : F) (rho 1791 : F) (rho 1792 : F)
      (rho 1794 : F) (rho 1793 : F) (rho 1795 : F)
      (rho 1796 : F) (rho 1797 : F) hacc
      (by rw [C_eq_L249]; simp only [L249])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_249 h14_249 h15_249 h16_249 h17_249 h18_249 hSelX_249 hSelY_249 hbrow249
  exact hr249

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

