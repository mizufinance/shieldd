import ShielddGnarkFormal.Deployed.NoteReshape1x8Balance
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceCrossRuns

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact joins for the claimed/computed 1x8 balance Decaf-equivalence check. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCross

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

namespace CrossRelation

open Deployed.Templates.Relations.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7

theorem x (rho : Nat → DeployedF) :
    relationLc0 (Seg72.localRho rho) = balanceCommitmentComputed0 rho := by
  unfold relationLc0
  simp only [
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [StrideRun.sumAux_add (Seg72.localRho rho) 3 1 149 101]
  rw [NoteReshape1x8BalanceCrossRuns.x0, NoteReshape1x8BalanceCrossRuns.x1]
  have hw2 : Seg72.wireSeating 2 = 36580 := by decide +kernel
  simp only [Seg72.localRho, Deployed.Templates.seated, hw2]
  simp only [
    balanceCommitmentComputed0, balanceCommitmentComputed0LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]

theorem y (rho : Nat → DeployedF) :
    relationLc1 (Seg72.localRho rho) = balanceCommitmentComputed1 rho := by
  unfold relationLc1
  simp only [
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [StrideRun.sumAux_add (Seg72.localRho rho) 255 1 149 101]
  rw [NoteReshape1x8BalanceCrossRuns.y0, NoteReshape1x8BalanceCrossRuns.y1]
  have hw2 : Seg72.wireSeating 2 = 36580 := by decide +kernel
  simp only [Seg72.localRho, Deployed.Templates.seated, hw2]
  simp only [
    balanceCommitmentComputed1, balanceCommitmentComputed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]

end CrossRelation

theorem claimedOnCurve
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    EdwardsBridge.onCurve
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩ := by
  have h := facts.shared.DecafAssertOnCurveSeg4
  change
    Deployed.Templates.Semantics.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.spec
      (Seg4.localRho rho) at h
  have hw1 : Seg4.wireSeating 1 = 6 := by decide +kernel
  have hw3 : Seg4.wireSeating 3 = 7 := by decide +kernel
  simpa [
    Deployed.Templates.Semantics.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.spec,
    Deployed.Templates.Simple.onCurveSpec, EdwardsBridge.onCurve,
    EdwardsBridge.d,
    claimedBalanceCommitment0, claimedBalanceCommitment0LC,
    claimedBalanceCommitment1, claimedBalanceCommitment1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg4.localRho, Deployed.Templates.seated, hw1, hw3,
    sub_eq_add_neg, add_comm
  ] using h

theorem crossRatio
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      (NoteReshape1x8Balance.Nb.computed rho)
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩ := by
  have h := facts.balance.DecafAssertEquivalentSeg72
  change
    Deployed.Templates.Semantics.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7.spec
      (Seg72.localRho rho) at h
  have hw1 : Seg72.wireSeating 1 = 7 := by decide +kernel
  have hw254 : Seg72.wireSeating 254 = 6 := by decide +kernel
  unfold
    Deployed.Templates.Semantics.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7.spec at h
  rw [CrossRelation.x, CrossRelation.y] at h
  simpa [
    Deployed.Templates.Semantics.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7.spec,
    Decaf377Assumptions.AssertEquivalentSpec,
    NoteReshape1x8Balance.Nb.computed,
    claimedBalanceCommitment0, claimedBalanceCommitment0LC,
    claimedBalanceCommitment1, claimedBalanceCommitment1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg72.localRho, Deployed.Templates.seated, hw1, hw254,
    mul_comm
  ] using h

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceCross
