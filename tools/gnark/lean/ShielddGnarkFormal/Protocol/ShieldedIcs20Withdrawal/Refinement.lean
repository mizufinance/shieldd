import ShielddGnarkFormal.Protocol.ShieldedIcs20Withdrawal.CircuitFacts

/-! Refinement from withdrawal circuit facts to consensus acceptance. -/

namespace Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal

theorem consensusAccepted_of_circuitFacts [DecidableEq F] [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
    (facts : CircuitFacts primitives action)
    (external :
      ConsensusExternalFacts checks action payload before delta after) :
    ConsensusAccepted primitives checks before delta after action payload := by
  exact {
    canonicalSender := facts.canonicalSender
    requiredSpend := facts.requiredSpend
    optionalSpend := facts.optionalSpend
    changeOutput := facts.changeOutput
    assetRegistry := facts.assetRegistry
    senderCompliance := facts.senderCompliance
    conservation := facts.conservation
    statementBinding := facts.statementBinding
    external
  }

theorem transactionAccepted_of_circuitFacts [DecidableEq F] [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
    (facts : CircuitFacts primitives action)
    (external :
      ConsensusExternalFacts checks action payload
        actionBefore delta actionAfter)
    (committed :
      Protocol.Common.CommittedTargetTransaction
        (fun state => state.spentNullifiers)
        (fun state => state.proofBoundOutputCommitments)
        (actionNullifiers action)
        (actionOutputCommitments action)
        otherStep
        (TargetStep action payload delta)
        transactionBefore
        actionBefore
        actionAfter
        transactionAfter)
    (withdrawalEffects :
      CommittedWithdrawalEffects
        transactionBefore actionBefore transactionAfter action payload) :
    TransactionAccepted primitives checks otherStep
      transactionBefore actionBefore delta actionAfter transactionAfter
      action payload := by
  exact {
    actionAccepted :=
      consensusAccepted_of_circuitFacts
        primitives checks actionBefore delta actionAfter
        action payload facts external
    committed := ⟨committed⟩
    withdrawalEffects := ⟨withdrawalEffects⟩
  }

end Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal
