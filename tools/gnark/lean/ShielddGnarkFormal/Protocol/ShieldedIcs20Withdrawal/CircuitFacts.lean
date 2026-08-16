import ShielddGnarkFormal.Protocol.ShieldedIcs20Withdrawal.Semantics

/-! Typed semantic facts required from the exact withdrawal circuit. -/

namespace Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal

structure CircuitFacts
    (primitives : CircuitPrimitives F Path24 Path16)
    (action : Action F Path24 Path16) : Prop where
  canonicalSender : primitives.canonicalSender action
  requiredSpend : primitives.requiredSpend action
  optionalSpend : primitives.optionalSpend action
  changeOutput : primitives.changeOutput action
  assetRegistry : primitives.assetRegistry action
  senderCompliance : primitives.senderCompliance action
  conservation : primitives.conservation action
  statementBinding : primitives.statementBinding action

end Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal
