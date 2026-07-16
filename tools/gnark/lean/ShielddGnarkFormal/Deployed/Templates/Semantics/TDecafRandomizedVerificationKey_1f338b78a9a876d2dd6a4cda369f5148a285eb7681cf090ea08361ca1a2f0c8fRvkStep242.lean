import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas92
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

theorem rvk_step242 (rho : Nat -> F)
    (r242 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow242 rho)
    (r1733 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1733 rho)
    (r1734 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1734 rho)
    (r1735 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1735 rho)
    (r1736 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1736 rho)
    (r1737 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1737 rho)
    (r1738 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1738 rho)
    (r1739 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1739 rho)
    (r1740 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1740 rho)
    (hacc : onCurve (rvkRvkAcc rho 242)) :
    RvkFixedBaseLadder.FixedStepRel 242 (rho 243)
      (rvkRvkAcc rho 242) (rvkRvkAcc rho (242 + 1)) := by
  have hbrow242 : (1*(rho 243))*(1 + (-1)*(rho 243)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow242] using r242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1733 at r1733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1734 at r1734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1735 at r1735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1736 at r1736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1737 at r1737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1738 at r1738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1739 at r1739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1740 at r1740
  have h13_242 : rho 1734 = rvkAccX241 rho + rvkAccY241 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1491 rho
    rw [hLc] at r1733
    linear_combination -r1733
  have h14_242 : (4577919756531272352425690818081278835207495153207440076621707172903191132847*rvkAccX241 rho + 8220088989769612254898518930562028505285603666816911535389190907107422041386*rho 1) * (1832778559720170430478539365272560586379194156184726994910167946211622715322*rvkAccY241 rho + 1832778559720170430478539365272560586379194156184726994910167946211622715322 + 8252697770305461570771050865159685789044519724630267641297089757715806104875*rho 1) = rho 1735 := by
    have hL := rvk_lc1492 rho
    have hR := rvk_lc1493 rho
    rw [hL, hR] at r1734
    linear_combination r1734
  have h15_242 : 5910681912627641956045826418868676149011538791681197739931051053618770712501*rvkAccX241 rho + 1832778559720170430478539365272560586379194156184726994910167946211622715322*rvkAccY241 rho + 1832778559720170430478539365272560586379194156184726994910167946211622715322 + 3936751622050889345279645366488077923281368824548767574225078338157616812496*rho 1 = rho 1736 := by
    have hLc := rvk_lc1494 rho
    rw [hLc] at r1735
    linear_combination r1735
  have h16_242 : rho 1737 * (1 + rho 1735) = rho 1736 := by
    linear_combination r1736
  have h17_242 : 2533779836800728468202998519912870382364360543472866088004182402298638526540*rvkAccX241 rho + 6611683189708199993770285573508985944996705178969336833025065509705786523719*rvkAccY241 rho + 6611683189708199993770285573508985944996705178969336833025065509705786523719 + 4507710127377481078969179572293468608094530510605296253710155117759792426545*rho 1 = rho 1738 := by
    have hLc := rvk_lc1495 rho
    rw [hLc] at r1737
    linear_combination r1737
  have h18_242 : rho 1739 * (1 + (-1)*rho 1735) = rho 1738 + 7743460472347812386524365784141236735390732947865924734841218999830393427823*rho 1734 := by
    linear_combination r1738
  have hSelX_242 : (1*rho 243) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX241 rho + rho 1737) = rho 1740 := by
    have hLc := rvk_lc1496 rho
    rw [hLc] at r1739
    linear_combination r1739
  have hSelY_242 : (1*rho 243) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY241 rho + rho 1739) = rho 1741 := by
    have hLc := rvk_lc1497 rho
    rw [hLc] at r1740
    linear_combination r1740
  have hr242 : RvkFixedBaseLadder.FixedStepRel 242 (rho 243) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX241 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY241 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX242 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY242 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX242_succ, rvkAccY242_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 242
      (1832778559720170430478539365272560586379194156184726994910167946211622715322 : EdwardsBridge.F) (5910681912627641956045826418868676149011538791681197739931051053618770712501 : EdwardsBridge.F) (7743460472347812386524365784141236735390732947865924734841218999830393427823 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (4577919756531272352425690818081278835207495153207440076621707172903191132847 : EdwardsBridge.F) (8220088989769612254898518930562028505285603666816911535389190907107422041386 : EdwardsBridge.F)
      (8252697770305461570771050865159685789044519724630267641297089757715806104875 : EdwardsBridge.F) (3936751622050889345279645366488077923281368824548767574225078338157616812496 : EdwardsBridge.F) (2533779836800728468202998519912870382364360543472866088004182402298638526540 : EdwardsBridge.F)
      (6611683189708199993770285573508985944996705178969336833025065509705786523719 : EdwardsBridge.F) (4507710127377481078969179572293468608094530510605296253710155117759792426545 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX241 rho : F)
      (rvkAccY241 rho : F) (rho 243 : F)
      (rho 1734 : F) (rho 1735 : F) (rho 1736 : F)
      (rho 1738 : F) (rho 1737 : F) (rho 1739 : F)
      (rho 1740 : F) (rho 1741 : F) hacc
      (by rw [C_eq_L242]; simp only [L242])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_242 h14_242 h15_242 h16_242 h17_242 h18_242 hSelX_242 hSelY_242 hbrow242
  exact hr242

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.RvkSupport

