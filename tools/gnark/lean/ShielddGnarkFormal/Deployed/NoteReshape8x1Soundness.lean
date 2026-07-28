import ShielddGnarkFormal.Deployed.NoteReshape8x1StatementRefinement
import ShielddGnarkFormal.Deployed.NoteReshapeRefinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Circuit-to-protocol refinement, conditional on external checks. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.NoteReshape8x1

theorem semanticCircuitFacts
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    Protocol.NoteReshape.CircuitFacts
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  exact {
    shape := actionShape rho facts
    padding := actionPadding rho facts
    canonicalAddress := actionCanonicalAddress rho facts
    inputsBound := actionInputCommitments rho facts
    membership := actionMembershipAndNullifiers rho facts
    authorizationKeys := actionRandomizedKeys rho facts
    outputsBound := actionOutputCommitments rho facts
    valueConserved := actionConservation rho facts
    statementBound := actionStatementBinding rho facts
  }

theorem deployedRelation_to_circuitFacts
    (rho : Nat → DeployedF)
    (h : relationAll rho) :
    Protocol.NoteReshape.CircuitFacts
      NoteReshapeCanonical.circuitPrimitives
      (action rho) :=
  semanticCircuitFacts rho
    (note_reshape8x1_circuitFacts rho h)

theorem valid_of_deployedRelation
    (authorizationChecks :
      ExternalAuthorization DeployedF Concrete.Path24)
    (stateChecks : StateChecks DeployedF Concrete.Path24)
    (rho : Nat → DeployedF)
    (h : relationAll rho)
    (signatures :
      ExternalSignatureFacts authorizationChecks (action rho))
    (state :
      StatePreconditions stateChecks (action rho)) :
    Valid
      Concrete.circuitPrimitives
      authorizationChecks
      stateChecks
      (action rho) :=
  Protocol.NoteReshape.valid_of_circuitFacts
    Concrete.circuitPrimitives
    authorizationChecks
    stateChecks
    (action rho)
    (NoteReshapeRefinement.circuitFacts_refine
      (action rho) (deployedRelation_to_circuitFacts rho h))
    signatures state

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C
