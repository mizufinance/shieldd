import ShielddGnarkFormal.Protocol.Transfer.Concrete

/-!
Selected atomic security consequences of the concrete Transfer relation.
Specification completeness is carried by `ConsensusAccepted` and the reviewed
predicate matrix, not by this convenience bundle.
-/

namespace Shieldd.GnarkFormal.Protocol.Transfer

structure AtomicSecurityConsequences
    (action : Action Common.F Common.Path24 Common.Path16) : Prop where
  authorizationKeyNonIdentity :
    Common.Decaf.authorizationKeyNonIdentity
      action.authorization.authorizationKey
  authorizationKeyEncodingValid :
    Common.Decaf.authorizationKeyEncodingValid
      action.authorization.authorizationKey
  incomingViewingKeyDerived :
    Common.Decaf.incomingViewingKeyDerived
      action.authorization.nullifierKey
      action.authorization.authorizationKey
      action.authorization.ivkReduced
      action.authorization.ivkQuotientA
  incomingViewingKeyNonzero :
    Common.Decaf.incomingViewingKeyNonzero
      action.authorization.ivkReduced
  senderDiversifiedGeneratorNonIdentity :
    Common.Decaf.diversifiedGeneratorNonIdentity
      action.sender.diversifiedGenerator
  senderTransmissionKeyNonIdentity :
    Common.Decaf.transmissionKeyNonIdentity
      action.sender.transmission
  receiverDiversifiedGeneratorNonIdentity :
    Common.Decaf.diversifiedGeneratorNonIdentity
      action.receiver.note.owner.diversifiedGenerator
  receiverTransmissionKeyNonIdentity :
    Common.Decaf.transmissionKeyNonIdentity
      action.receiver.note.owner.transmission
  randomizedVerificationKeysNonIdentity :
    Common.Decaf.randomizedVerificationKeyNonIdentity
        action.required.randomizedVerificationKey ∧
      Common.Decaf.randomizedVerificationKeyNonIdentity action.optional.rk

theorem consensusAccepted_authorizationKey_nonIdentity
    (checks : ExternalChecks Common.F Common.Path24 Common.Path16)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24 Common.Path16)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives checks before delta after action) :
    Common.Decaf.authorizationKeyNonIdentity
      action.authorization.authorizationKey := by
  have canonical := accepted.canonicalSender
  change Concrete.canonicalSender action at canonical
  exact canonical.1.1

theorem consensusAccepted_senderDiversifiedGenerator_nonIdentity
    (checks : ExternalChecks Common.F Common.Path24 Common.Path16)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24 Common.Path16)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives checks before delta after action) :
    Common.Decaf.diversifiedGeneratorNonIdentity
      action.sender.diversifiedGenerator := by
  have canonical := accepted.canonicalSender
  change Concrete.canonicalSender action at canonical
  exact canonical.1.2.1.1.1

theorem consensusAccepted_incomingViewingKey_derivation
    (checks : ExternalChecks Common.F Common.Path24 Common.Path16)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24 Common.Path16)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives checks before delta after action) :
    Common.Decaf.incomingViewingKeyDerived
      action.authorization.nullifierKey
      action.authorization.authorizationKey
      action.authorization.ivkReduced
      action.authorization.ivkQuotientA := by
  have canonical := accepted.canonicalSender
  change Concrete.canonicalSender action at canonical
  rcases canonical.1.2.2.2 with ⟨computed, dtk, _⟩
  exact dtk.1

theorem consensusAccepted_incomingViewingKey_nonzero
    (checks : ExternalChecks Common.F Common.Path24 Common.Path16)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24 Common.Path16)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives checks before delta after action) :
    Common.Decaf.incomingViewingKeyNonzero
      action.authorization.ivkReduced := by
  have canonical := accepted.canonicalSender
  change Concrete.canonicalSender action at canonical
  exact canonical.2

theorem consensusAccepted_senderTransmissionKey_nonIdentity
    (checks : ExternalChecks Common.F Common.Path24 Common.Path16)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24 Common.Path16)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives checks before delta after action) :
    Common.Decaf.transmissionKeyNonIdentity
      action.sender.transmission := by
  have canonical := accepted.canonicalSender
  change Concrete.canonicalSender action at canonical
  exact canonical.1.2.1.2

theorem consensusAccepted_authorizationKey_encoding
    (checks : ExternalChecks Common.F Common.Path24 Common.Path16)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24 Common.Path16)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives checks before delta after action) :
    Common.Decaf.authorizationKeyEncodingValid
      action.authorization.authorizationKey := by
  rcases consensusAccepted_incomingViewingKey_derivation
      checks action accepted with
    ⟨encoding, compressed, _, _⟩
  exact ⟨encoding, compressed⟩

theorem consensusAccepted_receiverDiversifiedGenerator_nonIdentity
    (checks : ExternalChecks Common.F Common.Path24 Common.Path16)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24 Common.Path16)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives checks before delta after action) :
    Common.Decaf.diversifiedGeneratorNonIdentity
      action.receiver.note.owner.diversifiedGenerator := by
  have receiver := accepted.receiverOutput
  change Concrete.receiverOutput action at receiver
  exact receiver.2.1.1.1

theorem consensusAccepted_receiverTransmissionKey_nonIdentity
    (checks : ExternalChecks Common.F Common.Path24 Common.Path16)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24 Common.Path16)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives checks before delta after action) :
    Common.Decaf.transmissionKeyNonIdentity
      action.receiver.note.owner.transmission := by
  have receiver := accepted.receiverOutput
  change Concrete.receiverOutput action at receiver
  exact receiver.2.1.2

theorem consensusAccepted_randomizedVerificationKeys_nonIdentity
    (checks : ExternalChecks Common.F Common.Path24 Common.Path16)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24 Common.Path16)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives checks before delta after action) :
    Common.Decaf.randomizedVerificationKeyNonIdentity
        action.required.randomizedVerificationKey ∧
      Common.Decaf.randomizedVerificationKeyNonIdentity action.optional.rk :=
  ⟨accepted.external.requiredRandomizedVerificationKeyNonIdentity,
    accepted.external.optionalRandomizedVerificationKeyNonIdentity⟩

theorem consensusAccepted_atomicSecurityConsequences
    (checks : ExternalChecks Common.F Common.Path24 Common.Path16)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24 Common.Path16)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives checks before delta after action) :
    AtomicSecurityConsequences action :=
  ⟨consensusAccepted_authorizationKey_nonIdentity checks action accepted,
    consensusAccepted_authorizationKey_encoding checks action accepted,
    consensusAccepted_incomingViewingKey_derivation checks action accepted,
    consensusAccepted_incomingViewingKey_nonzero checks action accepted,
    consensusAccepted_senderDiversifiedGenerator_nonIdentity
      checks action accepted,
    consensusAccepted_senderTransmissionKey_nonIdentity
      checks action accepted,
    consensusAccepted_receiverDiversifiedGenerator_nonIdentity
      checks action accepted,
    consensusAccepted_receiverTransmissionKey_nonIdentity
      checks action accepted,
    consensusAccepted_randomizedVerificationKeys_nonIdentity
      checks action accepted⟩

end Shieldd.GnarkFormal.Protocol.Transfer
