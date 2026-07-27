import ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress1x8
import ShielddGnarkFormal.Deployed.NoteReshape2x1Refinement
import ShielddGnarkFormal.Deployed.Generated.NoteReshape1x8Commitments
import ShielddGnarkFormal.NoteReshapeStateBridge
import ShielddGnarkFormal.Protocol.NoteReshape.Refinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-!
Handwritten refinement of the exact NoteReshape 1x8 deployment into the
independent protocol relation.
-/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical

namespace C

open Contracts.NoteReshape1x8

def path0 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshape2x1Refinement.C.segmentPath (Seg12.localRho rho)

def input0 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend0NoteCommitmentInputs1 rho
    blinding := spend0NoteCommitmentInputs0 rho
    commitment := spend0StateProofCommitment rho
    nullifier := spend0NullifierClaimed rho
    statePosition := rho 21
    membershipProof := path0 rho
    randomizedVerificationKey :=
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
    randomizer := rho 94
  }

def output0 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output0NoteCommitmentInputs1 rho
    blinding := output0NoteCommitmentInputs0 rho
    commitment := output0NoteCommitmentClaimed rho
  }

def output1 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output1NoteCommitmentInputs1 rho
    blinding := output1NoteCommitmentInputs0 rho
    commitment := output1NoteCommitmentClaimed rho
  }

def output2 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output2NoteCommitmentInputs1 rho
    blinding := output2NoteCommitmentInputs0 rho
    commitment := output2NoteCommitmentClaimed rho
  }

def output3 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output3NoteCommitmentInputs1 rho
    blinding := output3NoteCommitmentInputs0 rho
    commitment := output3NoteCommitmentClaimed rho
  }

def output4 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output4NoteCommitmentInputs1 rho
    blinding := output4NoteCommitmentInputs0 rho
    commitment := output4NoteCommitmentClaimed rho
  }

def output5 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output5NoteCommitmentInputs1 rho
    blinding := output5NoteCommitmentInputs0 rho
    commitment := output5NoteCommitmentClaimed rho
  }

def output6 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output6NoteCommitmentInputs1 rho
    blinding := output6NoteCommitmentInputs0 rho
    commitment := output6NoteCommitmentClaimed rho
  }

def output7 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output7NoteCommitmentInputs1 rho
    blinding := output7NoteCommitmentInputs0 rho
    commitment := output7NoteCommitmentClaimed rho
  }

def action (rho : Nat → DeployedF) :
    Action DeployedF NoteReshapeCanonical.Path24 :=
  {
    policy := .reshape1x8
    shared := NoteReshapeCanonicalAddress1x8.shared rho
    authorization := NoteReshapeCanonicalAddress1x8.authorization rho
    inputs := [.real (input0 rho)]
    outputs := [
      output0 rho, output1 rho, output2 rho, output3 rho,
      output4 rho, output5 rho, output6 rho, output7 rho
    ]
    anchor := anchor rho
    balanceCommitment :=
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
    balanceBlinding := actionBalanceBlinding rho
    publicStatementHash := claimedStatementHash rho
  }

theorem actionShape (rho : Nat → DeployedF) :
    canonicalShape (action rho) := by
  simp [canonicalShape, realCount, action, FamilyPolicy.inputSlots,
    FamilyPolicy.outputSlots, FamilyPolicy.minimumRealInputs, Input.isReal]

theorem actionPadding (rho : Nat → DeployedF) :
    realPrefix (action rho) := by
  refine ⟨[.real (input0 rho)], [], ?_, ?_, ?_⟩
  · simp [action]
  · simp [Input.isReal]
  · simp

theorem actionCanonicalAddress
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    NoteReshapeCanonical.canonicalTransmission
      (action rho).authorization (action rho).shared := by
  simpa [action] using
    NoteReshapeCanonicalAddress1x8.canonicalTransmission_of_exact rho facts

theorem actionInputCommitments
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho)
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop) :
    inputCommitments
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  simp [
    inputCommitments, action, input0,
    NoteReshapeCanonical.primitives, NoteReshapeCanonical.realCommitment,
    Generated.NoteReshape1x8Commitments.spend0Commitment rho facts
  ]

theorem actionOutputCommitments
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho)
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop) :
    outputCommitments
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  simp [
    outputCommitments, action, output0, output1, output2, output3,
    output4, output5, output6, output7,
    NoteReshapeCanonical.primitives, NoteReshapeCanonical.outputCommitment,
    Generated.NoteReshape1x8Commitments.output0Commitment rho facts,
    Generated.NoteReshape1x8Commitments.output1Commitment rho facts,
    Generated.NoteReshape1x8Commitments.output2Commitment rho facts,
    Generated.NoteReshape1x8Commitments.output3Commitment rho facts,
    Generated.NoteReshape1x8Commitments.output4Commitment rho facts,
    Generated.NoteReshape1x8Commitments.output5Commitment rho facts,
    Generated.NoteReshape1x8Commitments.output6Commitment rho facts,
    Generated.NoteReshape1x8Commitments.output7Commitment rho facts
  ]

end C

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8Refinement
