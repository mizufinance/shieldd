import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas95
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

theorem rvk_step245 (rho : Nat -> F)
    (r245 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow245 rho)
    (r1757 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1757 rho)
    (r1758 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1758 rho)
    (r1759 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1759 rho)
    (r1760 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1760 rho)
    (r1761 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1761 rho)
    (r1762 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1762 rho)
    (r1763 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1763 rho)
    (r1764 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1764 rho)
    (hacc : onCurve (rvkRvkAcc rho 245)) :
    RvkFixedBaseLadderChoiceFree.FixedStepRel 245 (rho 246)
      (rvkRvkAcc rho 245) (rvkRvkAcc rho (245 + 1)) := by
  have hbrow245 : (1*(rho 246))*(1 + (-1)*(rho 246)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow245] using r245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1757 at r1757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1758 at r1758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1759 at r1759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1760 at r1760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1761 at r1761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1762 at r1762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1763 at r1763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1764 at r1764
  have h13_245 : rho 1758 = rvkAccX244 rho + rvkAccY244 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1512 rho
    rw [hLc] at r1757
    linear_combination -r1757
  have h14_245 : (260328731423585986327153601432275543743222279480665957083922869933549272732*rvkAccX244 rho + 1542353671275604274757959391150192852009829135716795406696508500826541627060*rho 1) * (3368067897301621952756129210911905766281689935142904350930821626789140398127*rvkAccY244 rho + 3368067897301621952756129210911905766281689935142904350930821626789140398127 + 4381488387325154353751551160021440457374123941788953219532740480634688063045*rho 1) = rho 1759 := by
    have hL := rvk_lc1513 rho
    have hR := rvk_lc1514 rho
    rw [hL, hR] at r1758
    linear_combination r1758
  have h15_245 : 4603869192333647691070553402110109040953276870995770867449987893004272282679*rvkAccX244 rho + 3368067897301621952756129210911905766281689935142904350930821626789140398127*rvkAccY244 rho + 3368067897301621952756129210911905766281689935142904350930821626789140398127 + 7501502179458003409606051852199976081957875509868281927703020866369429953941*rho 1 = rho 1760 := by
    have hLc := rvk_lc1515 rho
    rw [hLc] at r1759
    linear_combination r1759
  have h16_245 : rho 1761 * (1 + rho 1759) = rho 1760 := by
    linear_combination r1760
  have h17_245 : 3840592557094722733178271536671437490422622464158292960485245562913136956362*rvkAccX244 rho + 5076393852126748471492695727869640765094209400011159477004411829128268840914*rvkAccY244 rho + 5076393852126748471492695727869640765094209400011159477004411829128268840914 + 942959569970367014642773086581570449418023825285781900232212589547979285100*rho 1 = rho 1762 := by
    have hLc := rvk_lc1516 rho
    rw [hLc] at r1761
    linear_combination r1761
  have h18_245 : rho 1763 * (1 + (-1)*rho 1759) = rho 1762 + 7971937089635269643826682613022014807234966806138675218380809519793412680806*rho 1758 := by
    linear_combination r1762
  have hSelX_245 : (1*rho 246) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX244 rho + rho 1761) = rho 1764 := by
    have hLc := rvk_lc1517 rho
    rw [hLc] at r1763
    linear_combination r1763
  have hSelY_245 : (1*rho 246) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY244 rho + rho 1763) = rho 1765 := by
    have hLc := rvk_lc1518 rho
    rw [hLc] at r1764
    linear_combination r1764
  have hr245 : RvkFixedBaseLadderChoiceFree.FixedStepRel 245 (rho 246) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX244 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY244 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX245 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY245 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRungChoiceFree.GX, RvkFixedSplitRungChoiceFree.GYM1, rvkAccX245_succ, rvkAccY245_succ, add_assoc] using RvkFixedSplitRungChoiceFree.splitRung_fixedStepRel 245
      (3368067897301621952756129210911905766281689935142904350930821626789140398127 : EdwardsBridge.F) (4603869192333647691070553402110109040953276870995770867449987893004272282679 : EdwardsBridge.F) (7971937089635269643826682613022014807234966806138675218380809519793412680806 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (260328731423585986327153601432275543743222279480665957083922869933549272732 : EdwardsBridge.F) (1542353671275604274757959391150192852009829135716795406696508500826541627060 : EdwardsBridge.F)
      (4381488387325154353751551160021440457374123941788953219532740480634688063045 : EdwardsBridge.F) (7501502179458003409606051852199976081957875509868281927703020866369429953941 : EdwardsBridge.F) (3840592557094722733178271536671437490422622464158292960485245562913136956362 : EdwardsBridge.F)
      (5076393852126748471492695727869640765094209400011159477004411829128268840914 : EdwardsBridge.F) (942959569970367014642773086581570449418023825285781900232212589547979285100 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX244 rho : F)
      (rvkAccY244 rho : F) (rho 246 : F)
      (rho 1758 : F) (rho 1759 : F) (rho 1760 : F)
      (rho 1762 : F) (rho 1761 : F) (rho 1763 : F)
      (rho 1764 : F) (rho 1765 : F) hacc
      (by rw [C_eq_L245]; simp only [L245])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_245 h14_245 h15_245 h16_245 h17_245 h18_245 hSelX_245 hSelY_245 hbrow245
  exact hr245

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

