import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceAccFinal
import ShielddGnarkFormal.Deployed.NoteReshape1x8BalanceRuns
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.SemanticBindings

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Exact 1x8 conservation-gadget projection. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8Balance

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8

namespace Nb

open Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a.NbSupport

def computed (rho : Nat → SemanticF) : Decaf377Assumptions.Point :=
  ⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩

theorem computedX_eq_gadget (rho : Nat → SemanticF) :
    balanceCommitmentComputed0 rho =
      (nbBlindAccState (Seg72.localRho rho) 251).x := by
  have hw1162 : Seg72.wireSeating 1162 = 36728 := by decide +kernel
  rw [NoteReshape1x8BalanceAccFinal.Nb.x]
  simp only [
    balanceCommitmentComputed0, balanceCommitmentComputed0LC,
    nbBlindDeltaX250,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [NoteReshape1x8BalanceRuns.x0, NoteReshape1x8BalanceRuns.x1]
  simp only [Seg72.localRho, Deployed.Templates.seated, hw1162]
  ring

theorem computedY_eq_gadget (rho : Nat → SemanticF) :
    balanceCommitmentComputed1 rho =
      (nbBlindAccState (Seg72.localRho rho) 251).y := by
  have hw1162 : Seg72.wireSeating 1162 = 36728 := by decide +kernel
  rw [NoteReshape1x8BalanceAccFinal.Nb.y]
  simp only [
    balanceCommitmentComputed1, balanceCommitmentComputed1LC,
    nbBlindDeltaY250,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, zero_add, one_mul, add_zero
  ]
  rw [NoteReshape1x8BalanceRuns.y0, NoteReshape1x8BalanceRuns.y1]
  simp only [Seg72.localRho, Deployed.Templates.seated, hw1162]
  ring

theorem computed_eq_gadget (rho : Nat → SemanticF) :
    computed rho =
      ⟨(nbBlindAccState (Seg72.localRho rho) 251).x,
       (nbBlindAccState (Seg72.localRho rho) 251).y⟩ := by
  unfold computed
  rw [computedX_eq_gadget, computedY_eq_gadget]

end Nb

theorem gadgetSpec
    (rho : Nat → SemanticF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    (spend0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output1NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output2NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output3NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output4NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output5NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output6NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output7NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (actionBalanceBlinding rho).val < 2 ^ 251 ∧
    spend0NoteCommitmentInputs1 rho =
      output0NoteCommitmentInputs1 rho + output1NoteCommitmentInputs1 rho +
      output2NoteCommitmentInputs1 rho + output3NoteCommitmentInputs1 rho +
      output4NoteCommitmentInputs1 rho + output5NoteCommitmentInputs1 rho +
      output6NoteCommitmentInputs1 rho + output7NoteCommitmentInputs1 rho ∧
    Nb.computed rho =
      Decaf377Assumptions.scalarMulLE 251
        Decaf377Assumptions.valueBlindingGenerator
        (actionBalanceBlinding rho) := by
  have h := facts.balance.DecafConservationNetBalanceCommitmentSeg72
  change
    Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a.spec
      (Seg72.localRho rho) at h
  have hw129 : Seg72.wireSeating 129 = 90 := by decide +kernel
  have hw258 : Seg72.wireSeating 258 = 169 := by decide +kernel
  have hw387 : Seg72.wireSeating 387 = 172 := by decide +kernel
  have hw516 : Seg72.wireSeating 516 = 175 := by decide +kernel
  have hw645 : Seg72.wireSeating 645 = 178 := by decide +kernel
  have hw774 : Seg72.wireSeating 774 = 181 := by decide +kernel
  have hw903 : Seg72.wireSeating 903 = 184 := by decide +kernel
  have hw1032 : Seg72.wireSeating 1032 = 187 := by decide +kernel
  have hw1161 : Seg72.wireSeating 1161 = 190 := by decide +kernel
  have hw1413 : Seg72.wireSeating 1413 = 9 := by decide +kernel
  rcases h with
    ⟨hin, hout0, hout1, hout2, hout3, hout4, hout5, hout6, hout7,
     hblind, hsum, hpoint⟩
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  all_goals first
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        output1NoteCommitmentInputs1, output1NoteCommitmentInputs1LC,
        output2NoteCommitmentInputs1, output2NoteCommitmentInputs1LC,
        output3NoteCommitmentInputs1, output3NoteCommitmentInputs1LC,
        output4NoteCommitmentInputs1, output4NoteCommitmentInputs1LC,
        output5NoteCommitmentInputs1, output5NoteCommitmentInputs1LC,
        output6NoteCommitmentInputs1, output6NoteCommitmentInputs1LC,
        output7NoteCommitmentInputs1, output7NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hin
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        output1NoteCommitmentInputs1, output1NoteCommitmentInputs1LC,
        output2NoteCommitmentInputs1, output2NoteCommitmentInputs1LC,
        output3NoteCommitmentInputs1, output3NoteCommitmentInputs1LC,
        output4NoteCommitmentInputs1, output4NoteCommitmentInputs1LC,
        output5NoteCommitmentInputs1, output5NoteCommitmentInputs1LC,
        output6NoteCommitmentInputs1, output6NoteCommitmentInputs1LC,
        output7NoteCommitmentInputs1, output7NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hout0
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        output1NoteCommitmentInputs1, output1NoteCommitmentInputs1LC,
        output2NoteCommitmentInputs1, output2NoteCommitmentInputs1LC,
        output3NoteCommitmentInputs1, output3NoteCommitmentInputs1LC,
        output4NoteCommitmentInputs1, output4NoteCommitmentInputs1LC,
        output5NoteCommitmentInputs1, output5NoteCommitmentInputs1LC,
        output6NoteCommitmentInputs1, output6NoteCommitmentInputs1LC,
        output7NoteCommitmentInputs1, output7NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hout1
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        output1NoteCommitmentInputs1, output1NoteCommitmentInputs1LC,
        output2NoteCommitmentInputs1, output2NoteCommitmentInputs1LC,
        output3NoteCommitmentInputs1, output3NoteCommitmentInputs1LC,
        output4NoteCommitmentInputs1, output4NoteCommitmentInputs1LC,
        output5NoteCommitmentInputs1, output5NoteCommitmentInputs1LC,
        output6NoteCommitmentInputs1, output6NoteCommitmentInputs1LC,
        output7NoteCommitmentInputs1, output7NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hout2
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        output1NoteCommitmentInputs1, output1NoteCommitmentInputs1LC,
        output2NoteCommitmentInputs1, output2NoteCommitmentInputs1LC,
        output3NoteCommitmentInputs1, output3NoteCommitmentInputs1LC,
        output4NoteCommitmentInputs1, output4NoteCommitmentInputs1LC,
        output5NoteCommitmentInputs1, output5NoteCommitmentInputs1LC,
        output6NoteCommitmentInputs1, output6NoteCommitmentInputs1LC,
        output7NoteCommitmentInputs1, output7NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hout3
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        output1NoteCommitmentInputs1, output1NoteCommitmentInputs1LC,
        output2NoteCommitmentInputs1, output2NoteCommitmentInputs1LC,
        output3NoteCommitmentInputs1, output3NoteCommitmentInputs1LC,
        output4NoteCommitmentInputs1, output4NoteCommitmentInputs1LC,
        output5NoteCommitmentInputs1, output5NoteCommitmentInputs1LC,
        output6NoteCommitmentInputs1, output6NoteCommitmentInputs1LC,
        output7NoteCommitmentInputs1, output7NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hout4
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        output1NoteCommitmentInputs1, output1NoteCommitmentInputs1LC,
        output2NoteCommitmentInputs1, output2NoteCommitmentInputs1LC,
        output3NoteCommitmentInputs1, output3NoteCommitmentInputs1LC,
        output4NoteCommitmentInputs1, output4NoteCommitmentInputs1LC,
        output5NoteCommitmentInputs1, output5NoteCommitmentInputs1LC,
        output6NoteCommitmentInputs1, output6NoteCommitmentInputs1LC,
        output7NoteCommitmentInputs1, output7NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hout5
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        output1NoteCommitmentInputs1, output1NoteCommitmentInputs1LC,
        output2NoteCommitmentInputs1, output2NoteCommitmentInputs1LC,
        output3NoteCommitmentInputs1, output3NoteCommitmentInputs1LC,
        output4NoteCommitmentInputs1, output4NoteCommitmentInputs1LC,
        output5NoteCommitmentInputs1, output5NoteCommitmentInputs1LC,
        output6NoteCommitmentInputs1, output6NoteCommitmentInputs1LC,
        output7NoteCommitmentInputs1, output7NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hout6
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        output1NoteCommitmentInputs1, output1NoteCommitmentInputs1LC,
        output2NoteCommitmentInputs1, output2NoteCommitmentInputs1LC,
        output3NoteCommitmentInputs1, output3NoteCommitmentInputs1LC,
        output4NoteCommitmentInputs1, output4NoteCommitmentInputs1LC,
        output5NoteCommitmentInputs1, output5NoteCommitmentInputs1LC,
        output6NoteCommitmentInputs1, output6NoteCommitmentInputs1LC,
        output7NoteCommitmentInputs1, output7NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hout7
    | simpa [
        actionBalanceBlinding, actionBalanceBlindingLC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated, hw1413
      ] using hblind
    | simpa [
        spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
        output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
        output1NoteCommitmentInputs1, output1NoteCommitmentInputs1LC,
        output2NoteCommitmentInputs1, output2NoteCommitmentInputs1LC,
        output3NoteCommitmentInputs1, output3NoteCommitmentInputs1LC,
        output4NoteCommitmentInputs1, output4NoteCommitmentInputs1LC,
        output5NoteCommitmentInputs1, output5NoteCommitmentInputs1LC,
        output6NoteCommitmentInputs1, output6NoteCommitmentInputs1LC,
        output7NoteCommitmentInputs1, output7NoteCommitmentInputs1LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated,
        hw129, hw258, hw387, hw516, hw645, hw774, hw903, hw1032, hw1161
      ] using hsum
    | rw [Nb.computed_eq_gadget rho]
      simpa [
        actionBalanceBlinding, actionBalanceBlindingLC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg72.localRho, Deployed.Templates.seated, hw1413
      ] using hpoint

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8Balance
