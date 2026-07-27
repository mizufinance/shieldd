import ShielddGnarkFormal.Deployed.NoteReshape4x1Balance
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceCompressRuns

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact joins for compression of the computed 4x1 balance point. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceCompress

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

namespace CompressRelation

open Deployed.Templates.Relations.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e

theorem x (rho : Nat → DeployedF) :
    relationLc0 (Seg75.localRho rho) = balanceCommitmentComputed0 rho := by
  unfold relationLc0
  simp only [
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [StrideRun.sumAux_add (Seg75.localRho rho) 2 1 149 101]
  rw [NoteReshape4x1BalanceCompressRuns.x0, NoteReshape4x1BalanceCompressRuns.x1]
  have hw1 : Seg75.wireSeating 1 = 58339 := by decide +kernel
  simp only [Seg75.localRho, Deployed.Templates.seated, hw1]
  simp only [
    balanceCommitmentComputed0, balanceCommitmentComputed0LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]

theorem y (rho : Nat → DeployedF) :
    relationLc1 (Seg75.localRho rho) = balanceCommitmentComputed1 rho := by
  unfold relationLc1
  simp only [
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [StrideRun.sumAux_add (Seg75.localRho rho) 253 1 149 101]
  rw [NoteReshape4x1BalanceCompressRuns.y0, NoteReshape4x1BalanceCompressRuns.y1]
  have hw1 : Seg75.wireSeating 1 = 58339 := by decide +kernel
  simp only [Seg75.localRho, Deployed.Templates.seated, hw1]
  simp only [
    balanceCommitmentComputed1, balanceCommitmentComputed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]

end CompressRelation

theorem computed
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      (NoteReshape4x1Balance.Nb.computed rho)
      (balanceCommitmentFq rho) := by
  have h := facts.balance.DecafCompressToFieldSeg75
  change
    Deployed.Templates.Semantics.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e.spec
      (Seg75.localRho rho) at h
  unfold
    Deployed.Templates.Semantics.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e.spec at h
  unfold
    Deployed.Templates.Semantics.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e.inputX
    Deployed.Templates.Semantics.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e.inputY at h
  rw [CompressRelation.x, CompressRelation.y] at h
  have hw1204 : Seg75.wireSeating 1204 = 60847 := by decide +kernel
  have hw864 : Seg75.wireSeating 864 = 60507 := by decide +kernel
  have hFq : balanceCommitmentFq rho = rho 60847 - rho 60507 := by
    simp only [
      balanceCommitmentFq, balanceCommitmentFqLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual
    ]
    have hneg :
        (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
          DeployedF) = -1 := by decide +kernel
    rw [hneg]
    ring
  change
    Extracted.DecafCompressToField.Relation
      (balanceCommitmentComputed0 rho)
      (balanceCommitmentComputed1 rho)
      (balanceCommitmentFq rho)
  rw [hFq]
  simpa [
    balanceCommitmentFq, balanceCommitmentFqLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Deployed.Templates.Semantics.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e.templateRho,
    Seg75.localRho, Deployed.Templates.seated,
    hw1204, hw864
  ] using h

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceCompress
