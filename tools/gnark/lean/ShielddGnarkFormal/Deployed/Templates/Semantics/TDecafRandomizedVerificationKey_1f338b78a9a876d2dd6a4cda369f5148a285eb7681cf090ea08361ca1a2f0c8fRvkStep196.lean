import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkLemmas46
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

theorem rvk_step196 (rho : Nat -> F)
    (r196 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow196 rho)
    (r1365 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1365 rho)
    (r1366 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1366 rho)
    (r1367 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1367 rho)
    (r1368 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1368 rho)
    (r1369 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1369 rho)
    (r1370 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1370 rho)
    (r1371 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1371 rho)
    (r1372 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1372 rho)
    (hacc : onCurve (rvkRvkAcc rho 196)) :
    RvkFixedBaseLadder.FixedStepRel 196 (rho 197)
      (rvkRvkAcc rho 196) (rvkRvkAcc rho (196 + 1)) := by
  have hbrow196 : (1*(rho 197))*(1 + (-1)*(rho 197)) = 0 := by
    simpa [Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow196] using r196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1365 at r1365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1366 at r1366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1367 at r1367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1368 at r1368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1369 at r1369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1370 at r1370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1371 at r1371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow1372 at r1372
  have h13_196 : rho 1366 = rvkAccX195 rho + rvkAccY195 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 1 + 1 := by
    have hLc := rvk_lc1169 rho
    rw [hLc] at r1365
    linear_combination -r1365
  have h14_196 : (2726882893549286653395297697583952048957125187587692020914177283361371386400*rvkAccX195 rho + 5741333931361479268406648157145571440043320080730031609623243957940534941136*rho 1) * (4633233701793813150664695046301819478821734034320544966385289707542159791425*rvkAccY195 rho + 4633233701793813150664695046301819478821734034320544966385289707542159791425 + 388934734324116195921518607490874179737522285262516869917388281634201801395*rho 1) = rho 1367 := by
    have hL := rvk_lc1170 rho
    have hR := rvk_lc1171 rho
    rw [hL, hR] at r1366
    linear_combination r1366
  have h15_196 : 747235408802027206199216006736927135361245365002887366461311324069284885207*rvkAccX195 rho + 4633233701793813150664695046301819478821734034320544966385289707542159791425*rvkAccY195 rho + 4633233701793813150664695046301819478821734034320544966385289707542159791425 + 7035153507022758360008861714952271623140553082926184447081133123962444865328*rho 1 = rho 1368 := by
    have hLc := rvk_lc1172 rho
    rw [hLc] at r1367
    linear_combination r1367
  have h16_196 : rho 1369 * (1 + rho 1367) = rho 1368 := by
    linear_combination r1368
  have h17_196 : 7697226340626343218049608932044619396014653970151176461473922131848124353834*rvkAccX195 rho + 3811228047634557273584129892479727052554165300833518861549943748375249447616*rvkAccY195 rho + 3811228047634557273584129892479727052554165300833518861549943748375249447616 + 1409308242405612064239963223829274908235346252227879380854100331954964373713*rho 1 = rho 1370 := by
    have hLc := rvk_lc1173 rho
    rw [hLc] at r1369
    linear_combination r1369
  have h18_196 : rho 1371 * (1 + (-1)*rho 1367) = rho 1370 + 5380469110595840356863911053038746614182979399323432332846601031611444676632*rho 1366 := by
    linear_combination r1370
  have hSelX_196 : (1*rho 197) * (3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX195 rho + rho 1369) = rho 1372 := by
    have hLc := rvk_lc1174 rho
    rw [hLc] at r1371
    linear_combination r1371
  have hSelY_196 : (1*rho 197) * ((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY195 rho + rho 1371) = rho 1373 := by
    have hLc := rvk_lc1175 rho
    rw [hLc] at r1372
    linear_combination r1372
  have hr196 : RvkFixedBaseLadder.FixedStepRel 196 (rho 197) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX195 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY195 rho : F)⟩ : EdwardsBridge.Point) (⟨(4959445789346820725352484487855828915252512307947624787834978378872129235627*rho 1 + rvkAccX196 rho : F), (1+6060471950081851567114691557659790004756535011754163002297540472747064943287*rho 1 + rvkAccY196 rho : F)⟩ : EdwardsBridge.Point) := by
    simpa [RvkFixedSplitRung.GX, RvkFixedSplitRung.GYM1, rvkAccX196_succ, rvkAccY196_succ, add_assoc] using RvkFixedSplitRung.splitRung_fixedStepRel 196
      (4633233701793813150664695046301819478821734034320544966385289707542159791425 : EdwardsBridge.F) (747235408802027206199216006736927135361245365002887366461311324069284885207 : EdwardsBridge.F) (5380469110595840356863911053038746614182979399323432332846601031611444676632 : EdwardsBridge.F)
      (2575455990000301868218351106734072388633147984547723962197285395701784939873 : EdwardsBridge.F) (2726882893549286653395297697583952048957125187587692020914177283361371386400 : EdwardsBridge.F) (5741333931361479268406648157145571440043320080730031609623243957940534941136 : EdwardsBridge.F)
      (388934734324116195921518607490874179737522285262516869917388281634201801395 : EdwardsBridge.F) (7035153507022758360008861714952271623140553082926184447081133123962444865328 : EdwardsBridge.F) (7697226340626343218049608932044619396014653970151176461473922131848124353834 : EdwardsBridge.F)
      (3811228047634557273584129892479727052554165300833518861549943748375249447616 : EdwardsBridge.F) (1409308242405612064239963223829274908235346252227879380854100331954964373713 : EdwardsBridge.F)
      (3485015960081549698896340450925717616123387027206439040100255077045280003414 : EdwardsBridge.F) (2383989799346518857134133381121756526619364323399900825637692983170344295754 : EdwardsBridge.F)
      (rho 1 : F) (rvkAccX195 rho : F)
      (rvkAccY195 rho : F) (rho 197 : F)
      (rho 1366 : F) (rho 1367 : F) (rho 1368 : F)
      (rho 1370 : F) (rho 1369 : F) (rho 1371 : F)
      (rho 1372 : F) (rho 1373 : F) hacc
      (by rw [C_eq_L196]; simp only [L196])
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      (by decide)
      h13_196 h14_196 h15_196 h16_196 h17_196 h18_196 hSelX_196 hSelY_196 hbrow196
  exact hr196

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

