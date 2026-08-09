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
    randomizersCanonical := actionRandomizersCanonical rho facts
    dummySlotIndicesCanonical := actionDummySlotIndicesCanonical rho
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

theorem consensusAccepted_of_deployedRelation
    (authorizationChecks :
      ExternalAuthorization DeployedF Concrete.Path24)
    (stateChecks : StateChecks DeployedF Concrete.Path24)
    (before : ConsensusState DeployedF)
    (delta : ActionDelta DeployedF)
    (after : ConsensusState DeployedF)
    (rho : Nat → DeployedF)
    (h : relationAll rho)
    (signatures :
      ConsensusSignatureFacts authorizationChecks (action rho))
    (state :
      ConsensusStateFacts stateChecks (action rho) before delta after) :
    ConsensusAccepted
      Concrete.circuitPrimitives
      authorizationChecks
      stateChecks
      before
      delta
      after
      (action rho) :=
  Protocol.NoteReshape.consensusAccepted_of_circuitFacts
    Concrete.circuitPrimitives
    authorizationChecks
    stateChecks
    before
    delta
    after
    (action rho)
    (NoteReshapeRefinement.circuitFacts_refine
      (action rho) (deployedRelation_to_circuitFacts rho h))
    signatures state

theorem transactionAccepted_of_deployedRelation
    (authorizationChecks :
      ExternalAuthorization DeployedF Concrete.Path24)
    (stateChecks : StateChecks DeployedF Concrete.Path24)
    (otherStep : ConsensusState DeployedF → ConsensusState DeployedF → Prop)
    (transactionBefore actionBefore : ConsensusState DeployedF)
    (delta : ActionDelta DeployedF)
    (actionAfter transactionAfter : ConsensusState DeployedF)
    (rho : Nat → DeployedF)
    (h : relationAll rho)
    (signatures :
      ConsensusSignatureFacts authorizationChecks (action rho))
    (state :
      ConsensusStateFacts stateChecks (action rho)
        actionBefore delta actionAfter)
    (committed :
      Protocol.Common.CommittedTargetTransaction
        (fun state => state.spentNullifiers)
        (fun state => state.proofBoundOutputCommitments)
        (actionNullifiers (action rho))
        (Protocol.NoteReshape.actionOutputCommitments (action rho))
        otherStep
        (TargetStep (action rho) delta)
        transactionBefore
        actionBefore
        actionAfter
        transactionAfter) :
    TransactionAccepted
      Concrete.circuitPrimitives
      authorizationChecks
      stateChecks
      otherStep
      transactionBefore
      actionBefore
      delta
      actionAfter
      transactionAfter
      (action rho) :=
  Protocol.NoteReshape.transactionAccepted_of_circuitFacts
    Concrete.circuitPrimitives
    authorizationChecks
    stateChecks
    otherStep
    transactionBefore
    actionBefore
    delta
    actionAfter
    transactionAfter
    (action rho)
    (NoteReshapeRefinement.circuitFacts_refine
      (action rho) (deployedRelation_to_circuitFacts rho h))
    signatures
    state
    committed

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement.C
