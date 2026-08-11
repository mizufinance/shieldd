import ShielddGnarkFormal.Protocol.Transfer.CircuitFacts

/-! Family-independent refinement from Transfer circuit facts to consensus acceptance. -/

namespace Shieldd.GnarkFormal.Protocol.Transfer

theorem consensusAccepted_of_circuitFacts [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F)
    (action : Action F Path24 Path16)
    (facts : CircuitFacts primitives action)
    (external : ConsensusExternalFacts checks action before delta after) :
    ConsensusAccepted primitives checks before delta after action := by
  exact {
    canonicalSender := facts.canonicalSender
    requiredSpend := facts.requiredSpend
    optionalSpend := facts.optionalSpend
    receiverOutput := facts.receiverOutput
    changeOutput := facts.changeOutput
    assetRegistry := facts.assetRegistry
    senderCompliance := facts.senderCompliance
    receiverCompliance := facts.receiverCompliance
    complianceTranscript := facts.complianceTranscript
    balanceComputedAndCompressed := facts.balanceComputedAndCompressed
    statementBinding := facts.statementBinding
    external
  }

theorem transactionAccepted_of_circuitFacts [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path24 Path16)
    (facts : CircuitFacts primitives action)
    (external :
      ConsensusExternalFacts checks action actionBefore delta actionAfter)
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
    TransactionAccepted primitives checks otherStep
      transactionBefore actionBefore delta actionAfter transactionAfter action := by
  exact {
    actionAccepted :=
      consensusAccepted_of_circuitFacts
        primitives checks actionBefore delta actionAfter action facts external
    committed := ⟨committed⟩
  }

end Shieldd.GnarkFormal.Protocol.Transfer
