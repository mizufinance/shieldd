import ShielddGnarkFormal.Deployed.NoteReshape8x1Spend

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! RK-compression adapter for the deployed NoteReshape 8x1 statement. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape8x1

theorem actionRksCompressed
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    List.Forall₂
      (fun input rkFq =>
        Decaf377Assumptions.CompressToFieldSpec
          (NoteReshapeCanonical.toDecafPoint input.rk) rkFq)
      (action rho).inputs
      [spend0RkCompressed rho, spend1RkCompressed rho,
       spend2RkCompressed rho, spend3RkCompressed rho,
       spend4RkCompressed rho, spend5RkCompressed rho,
       spend6RkCompressed rho, spend7RkCompressed rho] := by
  change List.Forall₂
    (fun input rkFq =>
      Decaf377Assumptions.CompressToFieldSpec
        (NoteReshapeCanonical.toDecafPoint input.rk) rkFq)
    [input0 rho, input1 rho, input2 rho, input3 rho,
     input4 rho, input5 rho, input6 rho, input7 rho]
    [spend0RkCompressed rho, spend1RkCompressed rho,
     spend2RkCompressed rho, spend3RkCompressed rho,
     spend4RkCompressed rho, spend5RkCompressed rho,
     spend6RkCompressed rho, spend7RkCompressed rho]
  refine List.Forall₂.cons ?_ <|
    List.Forall₂.cons ?_ <|
    List.Forall₂.cons ?_ <|
    List.Forall₂.cons ?_ <|
    List.Forall₂.cons ?_ <|
    List.Forall₂.cons ?_ <|
    List.Forall₂.cons ?_ <|
    List.Forall₂.cons ?_ List.Forall₂.nil
  · rw [input0Rk]
    exact Generated.NoteReshape8x1Spend0.claimedRkCompressed rho facts
  · rw [input1Rk]
    exact Generated.NoteReshape8x1Spend1.claimedRkCompressed rho facts
  · rw [input2Rk]
    exact Generated.NoteReshape8x1Spend2.claimedRkCompressed rho facts
  · rw [input3Rk]
    exact Generated.NoteReshape8x1Spend3.claimedRkCompressed rho facts
  · rw [input4Rk]
    exact Generated.NoteReshape8x1Spend4.claimedRkCompressed rho facts
  · rw [input5Rk]
    exact Generated.NoteReshape8x1Spend5.claimedRkCompressed rho facts
  · rw [input6Rk]
    exact Generated.NoteReshape8x1Spend6.claimedRkCompressed rho facts
  · rw [input7Rk]
    exact Generated.NoteReshape8x1Spend7.claimedRkCompressed rho facts

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C
