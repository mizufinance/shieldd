import ShielddGnarkFormal.Protocol.Transfer.Semantics

/-! Typed semantic facts required from the exact Transfer circuit. -/

namespace Shieldd.GnarkFormal.Protocol.Transfer

structure CircuitFacts
    (primitives : CircuitPrimitives F Path24 Path16)
    (action : Action F Path24 Path16) : Prop where
  canonicalSender : primitives.canonicalSender action
  requiredSpend : primitives.requiredSpend action
  optionalSpend : primitives.optionalSpend action
  receiverOutput : primitives.receiverOutput action
  changeOutput : primitives.changeOutput action
  assetRegistry : primitives.assetRegistry action
  senderCompliance : primitives.senderCompliance action
  receiverCompliance : primitives.receiverCompliance action
  complianceTranscript : primitives.complianceTranscript action
  balanceComputedAndCompressed :
    primitives.balanceComputedAndCompressed action
  statementBinding : primitives.statementBinding action

end Shieldd.GnarkFormal.Protocol.Transfer
