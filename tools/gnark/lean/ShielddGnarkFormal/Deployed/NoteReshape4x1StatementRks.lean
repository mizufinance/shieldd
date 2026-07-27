import ShielddGnarkFormal.Deployed.NoteReshape4x1Spend

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! RK-compression adapter for the deployed NoteReshape 4x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape4x1

theorem actionRksCompressed
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    List.Forall₂
      (fun input rkFq =>
        Decaf377Assumptions.CompressToFieldSpec
          (NoteReshapeCanonical.toDecafPoint input.rk) rkFq)
      (action rho).inputs
      [spend0RkCompressed rho, spend1RkCompressed rho,
       spend2RkCompressed rho, spend3RkCompressed rho] := by
  change List.Forall₂
    (fun input rkFq =>
      Decaf377Assumptions.CompressToFieldSpec
        (NoteReshapeCanonical.toDecafPoint input.rk) rkFq)
    [input0 rho, input1 rho, input2 rho, input3 rho]
    [spend0RkCompressed rho, spend1RkCompressed rho,
     spend2RkCompressed rho, spend3RkCompressed rho]
  refine List.Forall₂.cons ?_ <|
    List.Forall₂.cons ?_ <|
    List.Forall₂.cons ?_ <|
    List.Forall₂.cons ?_ List.Forall₂.nil
  · rw [input0Rk]
    exact Generated.NoteReshape4x1Spend0.claimedRkCompressed rho facts
  · rw [input1Rk]
    exact Generated.NoteReshape4x1Spend1.claimedRkCompressed rho facts
  · rw [input2Rk]
    exact Generated.NoteReshape4x1Spend2.claimedRkCompressed rho facts
  · rw [input3Rk]
    exact Generated.NoteReshape4x1Spend3.claimedRkCompressed rho facts

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement.C
