import ShielddGnarkFormal.Protocol.NoteReshape.CircuitFacts

/-! Family-independent NoteReshape refinement to consensus acceptance. -/

namespace Shieldd.GnarkFormal.Protocol.NoteReshape

theorem consensusAccepted_of_circuitFacts [Zero F]
    (primitives : CircuitPrimitives F Path)
    (authorizationChecks : ExternalAuthorization F Path)
    (stateChecks : StateChecks F Path)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F)
    (action : Action F Path)
    (facts : CircuitFacts primitives action)
    (signatures : ConsensusSignatureFacts authorizationChecks action)
    (state :
      ConsensusStateFacts stateChecks action before delta after) :
    ConsensusAccepted primitives authorizationChecks stateChecks
      before delta after action := by
  exact {
    shape := facts.shape
    padding := facts.padding
    randomizersCanonical := facts.randomizersCanonical
    dummySlotIndicesCanonical := facts.dummySlotIndicesCanonical
    canonicalAddress := facts.canonicalAddress
    inputsBound := facts.inputsBound
    membership := facts.membership
    authorizationKeys := facts.authorizationKeys
    outputsBound := facts.outputsBound
    valueConserved := facts.valueConserved
    statementBound := facts.statementBound
    signatures
    state
  }

theorem transactionAccepted_of_circuitFacts [Zero F]
    (primitives : CircuitPrimitives F Path)
    (authorizationChecks : ExternalAuthorization F Path)
    (stateChecks : StateChecks F Path)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path)
    (facts : CircuitFacts primitives action)
    (signatures : ConsensusSignatureFacts authorizationChecks action)
    (state :
      ConsensusStateFacts stateChecks action actionBefore delta actionAfter)
    (committed :
      Protocol.Common.CommittedTargetTransaction
        (fun state => state.spentNullifiers)
        (fun state => state.proofBoundOutputCommitments)
        (actionNullifiers action)
        (actionOutputCommitments action)
        otherStep
        (TargetStep action delta)
        transactionBefore
        actionBefore
        actionAfter
        transactionAfter) :
    TransactionAccepted primitives authorizationChecks stateChecks otherStep
      transactionBefore actionBefore delta actionAfter transactionAfter action := by
  exact {
    actionAccepted :=
      consensusAccepted_of_circuitFacts
        primitives authorizationChecks stateChecks
        actionBefore delta actionAfter action facts signatures state
    committed := ⟨committed⟩
  }

end Shieldd.GnarkFormal.Protocol.NoteReshape
