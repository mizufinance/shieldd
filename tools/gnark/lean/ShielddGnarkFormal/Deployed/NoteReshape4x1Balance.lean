import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceAccFinal
import ShielddGnarkFormal.Deployed.NoteReshape4x1BalanceRuns
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape4x1.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape4x1.SemanticBindings

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact 4x1 conservation-gadget projection. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1Balance

open Shieldd.GnarkFormal
open Contracts.NoteReshape4x1

namespace Nb

open Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79.NbSupport

def computed (rho : Nat → SemanticF) : Decaf377Assumptions.Point :=
  ⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩

theorem computedX_eq_gadget (rho : Nat → SemanticF) :
    balanceCommitmentComputed0 rho =
      (nbBlindAccState (Seg73.localRho rho) 251).x := by
  have hw646 : Seg73.wireSeating 646 = 58339 := by decide
  rw [NoteReshape4x1BalanceAccFinal.Nb.x]
  simp only [
    balanceCommitmentComputed0, balanceCommitmentComputed0LC,
    nbBlindDeltaX250,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [NoteReshape4x1BalanceRuns.x0, NoteReshape4x1BalanceRuns.x1]
  simp only [Seg73.localRho, Deployed.Templates.seated, hw646]
  ring

theorem computedY_eq_gadget (rho : Nat → SemanticF) :
    balanceCommitmentComputed1 rho =
      (nbBlindAccState (Seg73.localRho rho) 251).y := by
  have hw646 : Seg73.wireSeating 646 = 58339 := by decide
  rw [NoteReshape4x1BalanceAccFinal.Nb.y]
  simp only [
    balanceCommitmentComputed1, balanceCommitmentComputed1LC,
    nbBlindDeltaY250,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [NoteReshape4x1BalanceRuns.y0, NoteReshape4x1BalanceRuns.y1]
  simp only [Seg73.localRho, Deployed.Templates.seated, hw646]
  ring

theorem computed_eq_gadget (rho : Nat → SemanticF) :
    computed rho =
      ⟨(nbBlindAccState (Seg73.localRho rho) 251).x,
       (nbBlindAccState (Seg73.localRho rho) 251).y⟩ := by
  unfold computed
  rw [computedX_eq_gadget, computedY_eq_gadget]

end Nb

theorem gadgetSpec
    (rho : Nat → SemanticF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    (spend0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend1NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend2NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend3NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    spend0NoteCommitmentInputs1 rho +
      spend1NoteCommitmentInputs1 rho +
      spend2NoteCommitmentInputs1 rho +
      spend3NoteCommitmentInputs1 rho =
        output0NoteCommitmentInputs1 rho ∧
    Nb.computed rho =
      Decaf377Assumptions.scalarMulLE 251
        Decaf377Assumptions.valueBlindingGenerator
        (actionBalanceBlinding rho) := by
  have h := facts.balance.DecafConservationNetBalanceCommitmentSeg73
  change
    Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79.spec
      (Seg73.localRho rho) at h
  have hw129 : Seg73.wireSeating 129 = 19 := by decide
  have hw258 : Seg73.wireSeating 258 = 101 := by decide
  have hw387 : Seg73.wireSeating 387 = 183 := by decide
  have hw516 : Seg73.wireSeating 516 = 265 := by decide
  have hw645 : Seg73.wireSeating 645 = 345 := by decide
  have hw897 : Seg73.wireSeating 897 = 5 := by decide
  rcases h with ⟨hin0, hin1, hin2, hin3, hout0, hsum, hpoint⟩
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  all_goals first
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg73.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645
      ] using hin0
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg73.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645
      ] using hin1
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg73.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645
      ] using hin2
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg73.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645
      ] using hin3
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg73.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645
      ] using hout0
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg73.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645
      ] using hsum
    | rw [Nb.computed_eq_gadget rho]
      simpa [
        actionBalanceBlinding, actionBalanceBlindingLC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg73.localRho, Deployed.Templates.seated, hw897
      ] using hpoint

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1Balance
