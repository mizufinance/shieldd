import ShielddGnarkFormal.Deployed.NoteReshape2x1Balance
import ShielddGnarkFormal.Deployed.NoteReshape2x1BalanceCrossRuns

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact joins for the claimed/computed balance Decaf-equivalence check. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceCross

open Shieldd.GnarkFormal
open Contracts.NoteReshape2x1

namespace CrossRelation

open Deployed.Templates.Relations.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7

theorem x
    (rho : Nat → DeployedF) :
    relationLc0 (Seg34.localRho rho) =
      balanceCommitmentComputed0 rho := by
  unfold relationLc0
  simp only [
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [StrideRun.sumAux_add (Seg34.localRho rho) 3 1 149 101]
  rw [
    NoteReshape2x1BalanceCrossRuns.x0,
    NoteReshape2x1BalanceCrossRuns.x1
  ]
  have hw2 : Seg34.wireSeating 2 = 32315 := by decide
  simp only [Seg34.localRho, Deployed.Templates.seated, hw2]
  simp only [
    balanceCommitmentComputed0, balanceCommitmentComputed0LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]

theorem y
    (rho : Nat → DeployedF) :
    relationLc1 (Seg34.localRho rho) =
      balanceCommitmentComputed1 rho := by
  unfold relationLc1
  simp only [
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [StrideRun.sumAux_add (Seg34.localRho rho) 255 1 149 101]
  rw [
    NoteReshape2x1BalanceCrossRuns.y0,
    NoteReshape2x1BalanceCrossRuns.y1
  ]
  have hw2 : Seg34.wireSeating 2 = 32315 := by decide
  simp only [Seg34.localRho, Deployed.Templates.seated, hw2]
  simp only [
    balanceCommitmentComputed1, balanceCommitmentComputed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]

end CrossRelation

theorem claimedOnCurve
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    EdwardsBridge.onCurve
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩ := by
  have h := facts.shared.DecafAssertOnCurveSeg2
  change
    Deployed.Templates.Semantics.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.spec
      (Seg2.localRho rho) at h
  have hw1 : Seg2.wireSeating 1 = 3 := by decide
  have hw3 : Seg2.wireSeating 3 = 4 := by decide
  simpa [
    Deployed.Templates.Semantics.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.spec,
    Deployed.Templates.Simple.onCurveSpec, EdwardsBridge.onCurve,
    EdwardsBridge.d,
    claimedBalanceCommitment0, claimedBalanceCommitment0LC,
    claimedBalanceCommitment1, claimedBalanceCommitment1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg2.localRho, Deployed.Templates.seated, hw1, hw3,
    sub_eq_add_neg, add_comm
  ] using h

theorem crossRatio
    (rho : Nat → DeployedF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      (NoteReshape2x1Balance.computed rho)
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩ := by
  have h := facts.balance.DecafAssertEquivalentSeg34
  change
    Deployed.Templates.Semantics.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7.spec
      (Seg34.localRho rho) at h
  have hw1 : Seg34.wireSeating 1 = 4 := by decide
  have hw254 : Seg34.wireSeating 254 = 3 := by decide
  unfold
    Deployed.Templates.Semantics.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7.spec at h
  rw [CrossRelation.x, CrossRelation.y] at h
  simpa [
    Deployed.Templates.Semantics.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7.spec,
    Decaf377Assumptions.AssertEquivalentSpec,
    NoteReshape2x1Balance.computed,
    claimedBalanceCommitment0, claimedBalanceCommitment0LC,
    claimedBalanceCommitment1, claimedBalanceCommitment1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg34.localRho, Deployed.Templates.seated, hw1, hw254,
    mul_comm
  ] using h

end Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceCross
