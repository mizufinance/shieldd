import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas93
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

theorem rvk_step243 (rho : Nat -> F)
    (r243 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow243 rho)
    (r1741 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1741 rho)
    (r1742 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1742 rho)
    (r1743 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1743 rho)
    (r1744 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1744 rho)
    (r1745 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1745 rho)
    (r1746 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1746 rho)
    (r1747 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1747 rho)
    (r1748 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1748 rho)
    (hacc : onCurve (rvkRvkAcc rho 243)) :
    RvkFixedBaseLadder.FixedStepRel 243 (rho 244)
      (rvkRvkAcc rho 243) (rvkRvkAcc rho (243 + 1)) := by
  have hbrow243 : (1*(rho 244))*(1 + (-1)*(rho 244)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow243] using r243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1741 at r1741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1742 at r1742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1743 at r1743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1744 at r1744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1745 at r1745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1746 at r1746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1747 at r1747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1748 at r1748
  have h13_243 : rho 1742 = rvkAccX242 rho + rvkAccY242 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1498 rho
    rw [hLc] at r1741
    linear_combination -r1741
  have h14_243 : (5101607293481150265259843140857517366059282301462055240221117720675950563116*rvkAccX242 rho + 6746698226507997162075746128145595460723895925172237235437716251178243576708*rho 1) * (7928334389735677851481765995037547084539024608531321830070540868699457609029*rvkAccY242 rho + 7928334389735677851481765995037547084539024608531321830070540868699457609029 + 3390762984871091373183635872182357731676485092669673645809438422516163918512*rho 1) = rho 1743 := by
    have hL := rvk_lc1499 rho
    have hR := rvk_lc1500 rho
    rw [hL, hR] at r1742
    linear_combination r1742
  have h15_243 : 8420993179931060201291863806273047226041134750011751838788859413089676457648*rvkAccX242 rho + 7928334389735677851481765995037547084539024608531321830070540868699457609029*rvkAccY242 rho + 7928334389735677851481765995037547084539024608531321830070540868699457609029 + 7149817367346509396140437084976314743801586914044130455468621302689674762884*rho 1 = rho 1744 := by
    have hLc := rvk_lc1501 rho
    rw [hLc] at r1743
    linear_combination r1743
  have h16_243 : rho 1745 * (1 + rho 1743) = rho 1744 := by
    linear_combination r1744
  have h17_243 : 23468569497310222956961132508499305334764585142311989146374042827732781393*rvkAccX242 rho + 516127359692692572767058943743999446836874726622741997864692587217951630012*rvkAccY242 rho + 516127359692692572767058943743999446836874726622741997864692587217951630012 + 1294644382081861028108387853805231787574312421109933372466612153227734476157*rho 1 = rho 1746 := by
    have hLc := rvk_lc1502 rho
    rw [hLc] at r1745
    linear_combination r1745
  have h18_243 : rho 1747 * (1 + (-1)*rho 1743) = rho 1746 + 7904865820238367628524804862529047779204260023389009840924166825871724827636*rho 1742 := by
    linear_combination r1746
  have hSelX_243 : (1*rho 244) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX242 rho + rho 1745) = rho 1748 := by
    have hLc := rvk_lc1503 rho
    rw [hLc] at r1747
    linear_combination r1747
  have hSelY_243 : (1*rho 244) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY242 rho + rho 1747) = rho 1749 := by
    have hLc := rvk_lc1504 rho
    rw [hLc] at r1748
    linear_combination r1748
  have hr243 : RvkFixedBaseLadder.FixedStepRel 243 (rho 244) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX242 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY242 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX243 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY243 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX243_succ, rvkAccY243_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 243
      (7928334389735677851481765995037547084539024608531321830070540868699457609029 : EdwardsBridge.F) (8420993179931060201291863806273047226041134750011751838788859413089676457648 : EdwardsBridge.F) (7904865820238367628524804862529047779204260023389009840924166825871724827636 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5101607293481150265259843140857517366059282301462055240221117720675950563116 : EdwardsBridge.F) (6746698226507997162075746128145595460723895925172237235437716251178243576708 : EdwardsBridge.F)
      (3390762984871091373183635872182357731676485092669673645809438422516163918512 : EdwardsBridge.F) (7149817367346509396140437084976314743801586914044130455468621302689674762884 : EdwardsBridge.F) (23468569497310222956961132508499305334764585142311989146374042827732781393 : EdwardsBridge.F)
      (516127359692692572767058943743999446836874726622741997864692587217951630012 : EdwardsBridge.F) (1294644382081861028108387853805231787574312421109933372466612153227734476157 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX242 rho : F)
      (rvkAccY242 rho : F) (rho 244 : F)
      (rho 1742 : F) (rho 1743 : F) (rho 1744 : F)
      (rho 1746 : F) (rho 1745 : F) (rho 1747 : F)
      (rho 1748 : F) (rho 1749 : F) hacc
      (by rw [C_eq_L243]; simp only [L243])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_243 h14_243 h15_243 h16_243 h17_243 h18_243 hSelX_243 hSelY_243 hbrow243
  exact hr243

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

