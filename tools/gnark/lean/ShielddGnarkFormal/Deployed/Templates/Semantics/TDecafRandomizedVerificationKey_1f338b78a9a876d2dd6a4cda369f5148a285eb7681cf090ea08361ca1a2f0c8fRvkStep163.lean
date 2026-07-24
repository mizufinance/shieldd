import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas13
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

theorem rvk_step163 (rho : Nat -> F)
    (r163 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow163 rho)
    (r1101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1101 rho)
    (r1102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1102 rho)
    (r1103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1103 rho)
    (r1104 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1104 rho)
    (r1105 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1105 rho)
    (r1106 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1106 rho)
    (r1107 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1107 rho)
    (r1108 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1108 rho)
    (hacc : onCurve (rvkRvkAcc rho 163)) :
    RvkFixedBaseLadder.FixedStepRel 163 (rho 164)
      (rvkRvkAcc rho 163) (rvkRvkAcc rho (163 + 1)) := by
  have hbrow163 : (1*(rho 164))*(1 + (-1)*(rho 164)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow163] using r163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1101 at r1101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1102 at r1102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1103 at r1103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1104 at r1104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1105 at r1105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1106 at r1106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1107 at r1107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1108 at r1108
  have h13_163 : rho 1102 = rvkAccX162 rho + rvkAccY162 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc938 rho
    rw [hLc] at r1101
    linear_combination -r1101
  have h14_163 : (1606832623506622009576745362192014515195328634060703426984055627957414160834*rvkAccX162 rho + 3345009635045847932154590039536683660879363860941944957943518201878870351108*rho 1) * (5909067291311107764629632745358697599552725296090780820285122386244614492264*rvkAccY162 rho + 5909067291311107764629632745358697599552725296090780820285122386244614492264 + 3813203364270007292567495972199750733474972045530812292425483950911188586248*rho 1) = rho 1103 := by
    have hL := rvk_lc939 rho
    have hR := rvk_lc940 rho
    rw [hL, hR] at r1102
    linear_combination r1102
  have h15_163 : 5934855718854663036309113568485738265682300436003355911993871129606295011137*rvkAccX162 rho + 5909067291311107764629632745358697599552725296090780820285122386244614492264*rvkAccY162 rho + 5909067291311107764629632745358697599552725296090780820285122386244614492264 + 563430439758206910088439761089720302382853024371184921710246284234568899173*rho 1 = rho 1104 := by
    have hLc := rvk_lc941 rho
    rw [hLc] at r1103
    linear_combination r1103
  have h16_163 : rho 1105 * (1 + rho 1103) = rho 1104 := by
    linear_combination r1104
  have h17_163 : 2509606030573707387939711370295808265693598899150707915941362326311114227904*rvkAccX162 rho + 2535394458117262659619192193422848931823174039063283007650111069672794746777*rvkAccY162 rho + 2535394458117262659619192193422848931823174039063283007650111069672794746777 + 7881031309670163514160385177691826228993046310782878906224987171682840339868*rho 1 = rho 1106 := by
    have hLc := rvk_lc942 rho
    rw [hLc] at r1105
    linear_combination r1105
  have h18_163 : rho 1107 * (1 + (-1)*rho 1103) = rho 1106 + 3399461260737400376689921375062889333859126396940072904343760059933500264360*rho 1102 := by
    linear_combination r1106
  have hSelX_163 : (1*rho 164) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX162 rho + rho 1105) = rho 1108 := by
    have hLc := rvk_lc943 rho
    rw [hLc] at r1107
    linear_combination r1107
  have hSelY_163 : (1*rho 164) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY162 rho + rho 1107) = rho 1109 := by
    have hLc := rvk_lc944 rho
    rw [hLc] at r1108
    linear_combination r1108
  have hr163 : RvkFixedBaseLadder.FixedStepRel 163 (rho 164) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX162 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY162 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX163 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY163 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX163_succ, rvkAccY163_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 163
      (5909067291311107764629632745358697599552725296090780820285122386244614492264 : EdwardsBridge.F) (5934855718854663036309113568485738265682300436003355911993871129606295011137 : EdwardsBridge.F) (3399461260737400376689921375062889333859126396940072904343760059933500264360 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (1606832623506622009576745362192014515195328634060703426984055627957414160834 : EdwardsBridge.F) (3345009635045847932154590039536683660879363860941944957943518201878870351108 : EdwardsBridge.F)
      (3813203364270007292567495972199750733474972045530812292425483950911188586248 : EdwardsBridge.F) (563430439758206910088439761089720302382853024371184921710246284234568899173 : EdwardsBridge.F) (2509606030573707387939711370295808265693598899150707915941362326311114227904 : EdwardsBridge.F)
      (2535394458117262659619192193422848931823174039063283007650111069672794746777 : EdwardsBridge.F) (7881031309670163514160385177691826228993046310782878906224987171682840339868 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX162 rho : F)
      (rvkAccY162 rho : F) (rho 164 : F)
      (rho 1102 : F) (rho 1103 : F) (rho 1104 : F)
      (rho 1106 : F) (rho 1105 : F) (rho 1107 : F)
      (rho 1108 : F) (rho 1109 : F) hacc
      (by rw [C_eq_L163]; simp only [L163])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_163 h14_163 h15_163 h16_163 h17_163 h18_163 hSelX_163 hSelY_163 hbrow163
  exact hr163

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

