import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fRvkAcc
import Mathlib.Tactic

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem rvk_prefix_148_v2 (rho : Nat -> F)
    (r987 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow987 rho) :
    (4680686181738868780173466445942294778812778475524006084648958938128221885398*rho 1 + 3736510251652676541720141333403773953286420507403643590024712002903325578728*rvkAccX147 rho)*(298954928007943004014451510176946888039752259984727749761682772920877393999 + 218475059214054268059453563571377607346452200528713602273142633824230367437*rho 1 + 298954928007943004014451510176946888039752259984727749761682772920877393999*rvkAccY147 rho) = rho 988 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow987 at r987
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc835, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX147, rvkAccY147, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc836] at r987 ⊢
  ring_nf at r987 ⊢
  exact r987

theorem rvk_prefix_148_addX (rho : Nat -> F)
    (r988 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow988 rho) :
    rho 989*(1 + rho 988) = 298954928007943004014451510176946888039752259984727749761682772920877393999 + 4253575685035595940012855699654699004087344461072519663112331920758010491178*rho 1 + 2584051362702239969727783642756555037717516519758278259054015367517573473172*rvkAccX147 rho + 298954928007943004014451510176946888039752259984727749761682772920877393999*rvkAccY147 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow988 at r988
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc837, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX147, rvkAccY147] at r988 ⊢
  ring_nf at r988 ⊢
  exact r988

theorem rvk_prefix_148_addY (rho : Nat -> F)
    (r989 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow989 rho) :
    rho 990*(1 + (-1)*rho 988) = 2584051362702239969727783642756555037717516519758278259054015367517573473172 + 4441515350697547072769915522734436750825214077706035322746967220045928818529*rho 1 + 298954928007943004014451510176946888039752259984727749761682772920877393999*rvkAccX147 rho + 2584051362702239969727783642756555037717516519758278259054015367517573473172*rvkAccY147 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow989 at r989
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc838, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX147, rvkAccY147] at r989 ⊢
  ring_nf at r989 ⊢
  exact r989

theorem rvk_prefix_148_selX (rho : Nat -> F)
    (r990 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow990 rho) :
    (1*rho 149)*(3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 1 + (-1)*rvkAccX147 rho + rho 989) = rho 991 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow990 at r990
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc839, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX147, rvkAccY147] at r990 ⊢
  ring_nf at r990 ⊢
  exact r990

theorem rvk_prefix_148_selY (rho : Nat -> F)
    (r991 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow991 rho) :
    (1*rho 149)*((-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 1 + (-1)*rvkAccY147 rho + rho 990) = rho 992 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationRow991 at r991
  simp only [one_mul, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.relationLc840, Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StrideRun.eval, Shieldd.GnarkFormal.StructuredLC.sumResidual, rvkAccX147, rvkAccY147] at r991 ⊢
  ring_nf at r991 ⊢
  exact r991


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

