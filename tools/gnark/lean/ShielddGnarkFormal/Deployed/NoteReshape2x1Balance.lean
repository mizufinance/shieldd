import ShielddGnarkFormal.Deployed.NoteReshape2x1BalanceX
import ShielddGnarkFormal.Deployed.NoteReshape2x1BalanceY
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.CircuitFacts

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-!
Bounded compiler-LC joins from the exact 2x1 conservation gadget to its
handwritten semantic projection.
-/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape2x1Balance

open Shieldd.GnarkFormal
open Contracts.NoteReshape2x1

def computed (rho : Nat → SemanticF) : Decaf377Assumptions.Point :=
  ⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩

theorem computedX_eq_gadget
    (rho : Nat → SemanticF) :
    balanceCommitmentComputed0 rho =
      (Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6.NbSupport.nbBlindAccState
        (Seg33.localRho rho) 251).x :=
  NoteReshape2x1BalanceX.computedX_eq_gadget rho

theorem computedY_eq_gadget
    (rho : Nat → SemanticF) :
    balanceCommitmentComputed1 rho =
      (Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6.NbSupport.nbBlindAccState
        (Seg33.localRho rho) 251).y :=
  NoteReshape2x1BalanceY.computedY_eq_gadget rho

theorem computed_eq_gadget
    (rho : Nat → SemanticF) :
    computed rho =
      ⟨(Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6.NbSupport.nbBlindAccState
          (Seg33.localRho rho) 251).x,
       (Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6.NbSupport.nbBlindAccState
          (Seg33.localRho rho) 251).y⟩ := by
  unfold computed
  rw [computedX_eq_gadget, computedY_eq_gadget]

theorem gadgetSpec
    (rho : Nat → SemanticF)
    (facts : NoteReshape2x1CircuitFacts rho) :
    (spend0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (spend1NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    (output0NoteCommitmentInputs1 rho).val < 2 ^ 128 ∧
    spend0NoteCommitmentInputs1 rho + spend1NoteCommitmentInputs1 rho =
      output0NoteCommitmentInputs1 rho ∧
    computed rho =
      Decaf377Assumptions.scalarMulLE 251
        Decaf377Assumptions.valueBlindingGenerator
        (actionBalanceBlinding rho) := by
  have h := facts.balance.DecafConservationNetBalanceCommitmentSeg33
  change
    Deployed.Templates.Semantics.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6.spec
      (Seg33.localRho rho) at h
  have hw129 : Seg33.wireSeating 129 = 19 := by decide
  have hw258 : Seg33.wireSeating 258 = 99 := by decide
  have hw387 : Seg33.wireSeating 387 = 177 := by decide
  have hw639 : Seg33.wireSeating 639 = 5 := by decide
  rcases h with ⟨h0, h1, hout, hsum, hpoint⟩
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · simpa [
      spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg33.localRho, Deployed.Templates.seated, hw129
    ] using h0
  · simpa [
      spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg33.localRho, Deployed.Templates.seated, hw258
    ] using h1
  · simpa [
      output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg33.localRho, Deployed.Templates.seated, hw387
    ] using hout
  · simpa [
      spend0NoteCommitmentInputs1, spend0NoteCommitmentInputs1LC,
      spend1NoteCommitmentInputs1, spend1NoteCommitmentInputs1LC,
      output0NoteCommitmentInputs1, output0NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg33.localRho, Deployed.Templates.seated, hw129, hw258, hw387
    ] using hsum
  · rw [computed_eq_gadget rho]
    simpa [
      actionBalanceBlinding, actionBalanceBlindingLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg33.localRho, Deployed.Templates.seated, hw639
    ] using hpoint

end Shieldd.GnarkFormal.Deployed.NoteReshape2x1Balance
