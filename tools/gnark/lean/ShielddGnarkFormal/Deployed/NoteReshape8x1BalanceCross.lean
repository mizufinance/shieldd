import ShielddGnarkFormal.Deployed.NoteReshape8x1Balance
import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceCrossRuns

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact joins for the claimed/computed 8x1 balance Decaf-equivalence check. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCross

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

namespace CrossRelation

open Deployed.Templates.Relations.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7

theorem x (rho : Nat → DeployedF) :
    relationLc0 (Seg134.localRho rho) = balanceCommitmentComputed0 rho := by
  unfold relationLc0
  simp only [
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [StrideRun.sumAux_add (Seg134.localRho rho) 3 1 149 101]
  rw [NoteReshape8x1BalanceCrossRuns.x0, NoteReshape8x1BalanceCrossRuns.x1]
  have hw2 : Seg134.wireSeating 2 = 109129 := by decide +kernel
  simp only [Seg134.localRho, Deployed.Templates.seated, hw2]
  simp only [
    balanceCommitmentComputed0, balanceCommitmentComputed0LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]

theorem y (rho : Nat → DeployedF) :
    relationLc1 (Seg134.localRho rho) = balanceCommitmentComputed1 rho := by
  unfold relationLc1
  simp only [
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [StrideRun.sumAux_add (Seg134.localRho rho) 255 1 149 101]
  rw [NoteReshape8x1BalanceCrossRuns.y0, NoteReshape8x1BalanceCrossRuns.y1]
  have hw2 : Seg134.wireSeating 2 = 109129 := by decide +kernel
  simp only [Seg134.localRho, Deployed.Templates.seated, hw2]
  simp only [
    balanceCommitmentComputed1, balanceCommitmentComputed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]

end CrossRelation

theorem claimedOnCurve
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    EdwardsBridge.onCurve
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩ := by
  have h := facts.shared.DecafAssertOnCurveSeg12
  change
    Deployed.Templates.Semantics.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.spec
      (Seg12.localRho rho) at h
  have hw1 : Seg12.wireSeating 1 = 3 := by decide +kernel
  have hw3 : Seg12.wireSeating 3 = 4 := by decide +kernel
  simpa [
    Deployed.Templates.Semantics.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.spec,
    Deployed.Templates.Simple.onCurveSpec, EdwardsBridge.onCurve,
    EdwardsBridge.d,
    claimedBalanceCommitment0, claimedBalanceCommitment0LC,
    claimedBalanceCommitment1, claimedBalanceCommitment1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg12.localRho, Deployed.Templates.seated, hw1, hw3,
    sub_eq_add_neg, add_comm
  ] using h

theorem crossRatio
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      (NoteReshape8x1Balance.Nb.computed rho)
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩ := by
  have h := facts.balance.DecafAssertEquivalentSeg134
  change
    Deployed.Templates.Semantics.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7.spec
      (Seg134.localRho rho) at h
  have hw1 : Seg134.wireSeating 1 = 4 := by decide +kernel
  have hw254 : Seg134.wireSeating 254 = 3 := by decide +kernel
  unfold
    Deployed.Templates.Semantics.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7.spec at h
  rw [CrossRelation.x, CrossRelation.y] at h
  simpa [
    Deployed.Templates.Semantics.TDecafAssertEquivalent_44fe73acf05522f84376de4d4171a14b20527abf88695468311a6b63a8b891d7.spec,
    Decaf377Assumptions.AssertEquivalentSpec,
    NoteReshape8x1Balance.Nb.computed,
    claimedBalanceCommitment0, claimedBalanceCommitment0LC,
    claimedBalanceCommitment1, claimedBalanceCommitment1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg134.localRho, Deployed.Templates.seated, hw1, hw254,
    mul_comm
  ] using h

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1BalanceCross
