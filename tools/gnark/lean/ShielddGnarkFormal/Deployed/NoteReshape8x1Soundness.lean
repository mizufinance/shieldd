import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementRefinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! End-to-end refinement of the deployed NoteReshape 8x1 relation. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape8x1

theorem semanticCircuitFacts
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop)
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    Protocol.NoteReshape.CircuitFacts
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) := by
  exact {
    shape := actionShape rho facts
    padding := actionPadding rho facts
    canonicalAddress := actionCanonicalAddress rho facts
    inputsBound :=
      actionInputCommitments rho facts
        signatureVerifies nullifierFresh transitionAccepted
    membership :=
      actionMembershipAndNullifiers rho facts
        signatureVerifies nullifierFresh transitionAccepted
    authorizationKeys :=
      actionRandomizedKeys rho facts
        signatureVerifies nullifierFresh transitionAccepted
    outputsBound :=
      actionOutputCommitments rho facts
        signatureVerifies nullifierFresh transitionAccepted
    valueConserved := actionConservation rho facts
    statementBound := actionStatementBinding rho facts
  }

theorem deployedRelation_to_circuitFacts
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop)
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.NoteReshape.CircuitFacts
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) :=
  semanticCircuitFacts
    signatureVerifies nullifierFresh transitionAccepted rho
    (note_reshape8x1_circuitFacts rho h)

theorem valid_of_deployedRelation
    (signatureVerifies : Point DeployedF → Prop)
    (nullifierFresh : DeployedF → Prop)
    (transitionAccepted :
      Action DeployedF NoteReshapeCanonical.Path24 → Prop)
    (rho : Nat → DeployedF)
    (h : relationAll rho)
    (signatures :
      ExternalSignatureFacts
        (NoteReshapeCanonical.primitives
          signatureVerifies nullifierFresh transitionAccepted)
        (action rho))
    (state :
      StatePreconditions
        (NoteReshapeCanonical.primitives
          signatureVerifies nullifierFresh transitionAccepted)
        (action rho)) :
    Valid
      (NoteReshapeCanonical.primitives
        signatureVerifies nullifierFresh transitionAccepted)
      (action rho) :=
  Protocol.NoteReshape.valid_of_circuitFacts
    (NoteReshapeCanonical.primitives
      signatureVerifies nullifierFresh transitionAccepted)
    (action rho)
    (deployedRelation_to_circuitFacts
      signatureVerifies nullifierFresh transitionAccepted rho h)
    signatures state

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C
