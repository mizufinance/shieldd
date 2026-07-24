import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas69
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

theorem rvk_step219 (rho : Nat -> F)
    (r219 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow219 rho)
    (r1549 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1549 rho)
    (r1550 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1550 rho)
    (r1551 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1551 rho)
    (r1552 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1552 rho)
    (r1553 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1553 rho)
    (r1554 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1554 rho)
    (r1555 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1555 rho)
    (r1556 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1556 rho)
    (hacc : onCurve (rvkRvkAcc rho 219)) :
    RvkFixedBaseLadder.FixedStepRel 219 (rho 220)
      (rvkRvkAcc rho 219) (rvkRvkAcc rho (219 + 1)) := by
  have hbrow219 : (1*(rho 220))*(1 + (-1)*(rho 220)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow219] using r219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1549 at r1549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1550 at r1550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1551 at r1551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1552 at r1552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1553 at r1553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1554 at r1554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1555 at r1555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1556 at r1556
  have h13_219 : rho 1550 = rvkAccX218 rho + rvkAccY218 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1330 rho
    rw [hLc] at r1549
    linear_combination -r1549
  have h14_219 : (5042726138337050410117481750209014021783211713334716980850264846270323605457*rvkAccX218 rho + 1802206381324757352314972469660815013858957099923618989665176697551987854137*rho 1) * (4803077331712487638838166294337594342563040291491461883571497988242232293798*rvkAccY218 rho + 4803077331712487638838166294337594342563040291491461883571497988242232293798 + 3459442394221216639749335745306415410227967554436235842074316218566856732320*rho 1) = rho 1551 := by
    have hL := rvk_lc1331 rho
    have hR := rvk_lc1332 rho
    rw [hL, hR] at r1550
    linear_combination r1550
  have h15_219 : 5128164705259837275234181535741663473209262691951634484413792923865871853031*rvkAccX218 rho + 4803077331712487638838166294337594342563040291491461883571497988242232293798*rvkAccY218 rho + 4803077331712487638838166294337594342563040291491461883571497988242232293798 + 7384575298087074578510562222141553492010695665543891993484687932835507695401*rho 1 = rho 1552 := by
    have hLc := rvk_lc1333 rho
    rw [hLc] at r1551
    linear_combination r1551
  have h16_219 : rho 1553 * (1 + rho 1551) = rho 1552 := by
    linear_combination r1552
  have h17_219 : 3316297044168533149014643403039883058166636643202429343521440532051537386010*rvkAccX218 rho + 3641384417715882785410658644443952188812859043662601944363735467675176945243*rvkAccY218 rho + 3641384417715882785410658644443952188812859043662601944363735467675176945243 + 1059886451341295845738262716639993039365203669610171834450545523081901543640*rho 1 = rho 1554 := by
    have hLc := rvk_lc1334 rho
    rw [hLc] at r1553
    linear_combination r1553
  have h18_219 : rho 1555 * (1 + (-1)*rho 1551) = rho 1554 + 1486780287543954489823522891297711284396403648289032540050057456190694907788*rho 1550 := by
    linear_combination r1554
  have hSelX_219 : (1*rho 220) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX218 rho + rho 1553) = rho 1556 := by
    have hLc := rvk_lc1335 rho
    rw [hLc] at r1555
    linear_combination r1555
  have hSelY_219 : (1*rho 220) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY218 rho + rho 1555) = rho 1557 := by
    have hLc := rvk_lc1336 rho
    rw [hLc] at r1556
    linear_combination r1556
  have hr219 : RvkFixedBaseLadder.FixedStepRel 219 (rho 220) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX218 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY218 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX219 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY219 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX219_succ, rvkAccY219_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 219
      (4803077331712487638838166294337594342563040291491461883571497988242232293798 : EdwardsBridge.F) (5128164705259837275234181535741663473209262691951634484413792923865871853031 : EdwardsBridge.F) (1486780287543954489823522891297711284396403648289032540050057456190694907788 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (5042726138337050410117481750209014021783211713334716980850264846270323605457 : EdwardsBridge.F) (1802206381324757352314972469660815013858957099923618989665176697551987854137 : EdwardsBridge.F)
      (3459442394221216639749335745306415410227967554436235842074316218566856732320 : EdwardsBridge.F) (7384575298087074578510562222141553492010695665543891993484687932835507695401 : EdwardsBridge.F) (3316297044168533149014643403039883058166636643202429343521440532051537386010 : EdwardsBridge.F)
      (3641384417715882785410658644443952188812859043662601944363735467675176945243 : EdwardsBridge.F) (1059886451341295845738262716639993039365203669610171834450545523081901543640 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX218 rho : F)
      (rvkAccY218 rho : F) (rho 220 : F)
      (rho 1550 : F) (rho 1551 : F) (rho 1552 : F)
      (rho 1554 : F) (rho 1553 : F) (rho 1555 : F)
      (rho 1556 : F) (rho 1557 : F) hacc
      (by rw [C_eq_L219]; simp only [L219])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_219 h14_219 h15_219 h16_219 h17_219 h18_219 hSelX_219 hSelY_219 hbrow219
  exact hr219

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

