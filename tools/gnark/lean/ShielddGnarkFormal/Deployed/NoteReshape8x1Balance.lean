import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceAccFinal
import ShielddGnarkFormal.Deployed.NoteReshape8x1BalanceRuns
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.SemanticBindings

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact 8x1 conservation-gadget projection. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1Balance

open Shieldd.GnarkFormal
open Contracts.NoteReshape8x1

namespace Nb

open Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3.NbSupport

def computed (rho : Nat → SemanticF) : Decaf377Assumptions.Point :=
  ⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩

theorem computedX_eq_gadget (rho : Nat → SemanticF) :
    balanceCommitmentComputed0 rho =
      (nbBlindAccState (Seg162.localRho rho) 251).x := by
  have hw1162 : Seg162.wireSeating 1162 = 123037 := by decide +kernel
  rw [NoteReshape8x1BalanceAccFinal.Nb.x]
  simp only [
    balanceCommitmentComputed0, balanceCommitmentComputed0LC,
    nbBlindDeltaX250,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [NoteReshape8x1BalanceRuns.x0, NoteReshape8x1BalanceRuns.x1]
  simp only [Seg162.localRho, Deployed.Templates.seated, hw1162]
  ring

theorem computedY_eq_gadget (rho : Nat → SemanticF) :
    balanceCommitmentComputed1 rho =
      (nbBlindAccState (Seg162.localRho rho) 251).y := by
  have hw1162 : Seg162.wireSeating 1162 = 123037 := by decide +kernel
  rw [NoteReshape8x1BalanceAccFinal.Nb.y]
  simp only [
    balanceCommitmentComputed1, balanceCommitmentComputed1LC,
    nbBlindDeltaY250,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [NoteReshape8x1BalanceRuns.y0, NoteReshape8x1BalanceRuns.y1]
  simp only [Seg162.localRho, Deployed.Templates.seated, hw1162]
  ring

theorem computed_eq_gadget (rho : Nat → SemanticF) :
    computed rho =
      ⟨(nbBlindAccState (Seg162.localRho rho) 251).x,
       (nbBlindAccState (Seg162.localRho rho) 251).y⟩ := by
  unfold computed
  rw [computedX_eq_gadget, computedY_eq_gadget]

end Nb

theorem gadgetSpec
    (rho : Nat → SemanticF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    (spend0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend1NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend2NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend3NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend4NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend5NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend6NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend7NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (actionBalanceBlinding rho).val < 2 ^ 251 ∧
    spend0NoteCommitmentInputs1 rho +
      spend1NoteCommitmentInputs1 rho +
      spend2NoteCommitmentInputs1 rho +
      spend3NoteCommitmentInputs1 rho +
      spend4NoteCommitmentInputs1 rho +
      spend5NoteCommitmentInputs1 rho +
      spend6NoteCommitmentInputs1 rho +
      spend7NoteCommitmentInputs1 rho =
        output0NoteCommitmentInputs1 rho ∧
    Nb.computed rho =
      Decaf377Assumptions.scalarMulLE 251
        Decaf377Assumptions.valueBlindingGenerator
        (actionBalanceBlinding rho) := by
  have h := facts.balance.DecafConservationNetBalanceCommitmentSeg162
  change
    Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3.spec
      (Seg162.localRho rho) at h
  have hw129 : Seg162.wireSeating 129 = 90 := by decide +kernel
  have hw258 : Seg162.wireSeating 258 = 173 := by decide +kernel
  have hw387 : Seg162.wireSeating 387 = 256 := by decide +kernel
  have hw516 : Seg162.wireSeating 516 = 339 := by decide +kernel
  have hw645 : Seg162.wireSeating 645 = 422 := by decide +kernel
  have hw774 : Seg162.wireSeating 774 = 505 := by decide +kernel
  have hw903 : Seg162.wireSeating 903 = 588 := by decide +kernel
  have hw1032 : Seg162.wireSeating 1032 = 671 := by decide +kernel
  have hw1161 : Seg162.wireSeating 1161 = 752 := by decide +kernel
  have hw1413 : Seg162.wireSeating 1413 = 9 := by decide +kernel
  rcases h with
    ⟨hin0, hin1, hin2, hin3, hin4, hin5, hin6, hin7, hout0,
     hblind, hsum, hpoint⟩
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  all_goals first
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        spend4NoteCommitmentInputs1, spend4NoteCommitmentInputs1LC,
        spend5NoteCommitmentInputs1, spend5NoteCommitmentInputs1LC,
        spend6NoteCommitmentInputs1, spend6NoteCommitmentInputs1LC,
        spend7NoteCommitmentInputs1, spend7NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hin0
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        spend4NoteCommitmentInputs1, spend4NoteCommitmentInputs1LC,
        spend5NoteCommitmentInputs1, spend5NoteCommitmentInputs1LC,
        spend6NoteCommitmentInputs1, spend6NoteCommitmentInputs1LC,
        spend7NoteCommitmentInputs1, spend7NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hin1
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        spend4NoteCommitmentInputs1, spend4NoteCommitmentInputs1LC,
        spend5NoteCommitmentInputs1, spend5NoteCommitmentInputs1LC,
        spend6NoteCommitmentInputs1, spend6NoteCommitmentInputs1LC,
        spend7NoteCommitmentInputs1, spend7NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hin2
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        spend4NoteCommitmentInputs1, spend4NoteCommitmentInputs1LC,
        spend5NoteCommitmentInputs1, spend5NoteCommitmentInputs1LC,
        spend6NoteCommitmentInputs1, spend6NoteCommitmentInputs1LC,
        spend7NoteCommitmentInputs1, spend7NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hin3
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        spend4NoteCommitmentInputs1, spend4NoteCommitmentInputs1LC,
        spend5NoteCommitmentInputs1, spend5NoteCommitmentInputs1LC,
        spend6NoteCommitmentInputs1, spend6NoteCommitmentInputs1LC,
        spend7NoteCommitmentInputs1, spend7NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hin4
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        spend4NoteCommitmentInputs1, spend4NoteCommitmentInputs1LC,
        spend5NoteCommitmentInputs1, spend5NoteCommitmentInputs1LC,
        spend6NoteCommitmentInputs1, spend6NoteCommitmentInputs1LC,
        spend7NoteCommitmentInputs1, spend7NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hin5
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        spend4NoteCommitmentInputs1, spend4NoteCommitmentInputs1LC,
        spend5NoteCommitmentInputs1, spend5NoteCommitmentInputs1LC,
        spend6NoteCommitmentInputs1, spend6NoteCommitmentInputs1LC,
        spend7NoteCommitmentInputs1, spend7NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hin6
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        spend4NoteCommitmentInputs1, spend4NoteCommitmentInputs1LC,
        spend5NoteCommitmentInputs1, spend5NoteCommitmentInputs1LC,
        spend6NoteCommitmentInputs1, spend6NoteCommitmentInputs1LC,
        spend7NoteCommitmentInputs1, spend7NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hin7
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        spend4NoteCommitmentInputs1, spend4NoteCommitmentInputs1LC,
        spend5NoteCommitmentInputs1, spend5NoteCommitmentInputs1LC,
        spend6NoteCommitmentInputs1, spend6NoteCommitmentInputs1LC,
        spend7NoteCommitmentInputs1, spend7NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hout0
    | simpa [
        actionBalanceBlinding, actionBalanceBlindingLC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated, hw1413
      ] using hblind
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
        spend2NoteCommitmentInputs1, spend2NoteCommitmentInputs1LC,
        spend3NoteCommitmentInputs1, spend3NoteCommitmentInputs1LC,
        spend4NoteCommitmentInputs1, spend4NoteCommitmentInputs1LC,
        spend5NoteCommitmentInputs1, spend5NoteCommitmentInputs1LC,
        spend6NoteCommitmentInputs1, spend6NoteCommitmentInputs1LC,
        spend7NoteCommitmentInputs1, spend7NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hsum
    | rw [Nb.computed_eq_gadget rho]
      simpa [
        actionBalanceBlinding, actionBalanceBlindingLC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg162.localRho, Deployed.Templates.seated, hw1413
      ] using hpoint

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Balance
