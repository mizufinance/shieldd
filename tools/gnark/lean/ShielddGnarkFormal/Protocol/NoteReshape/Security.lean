import ShielddGnarkFormal.Protocol.NoteReshape.Concrete

/-!
Selected atomic security consequences of the concrete NoteReshape relation.
Specification completeness is carried by `ConsensusAccepted` and the reviewed
predicate matrix, not by this convenience bundle.
-/

namespace Shieldd.GnarkFormal.Protocol.NoteReshape

structure AtomicSecurityConsequences
    (action : Action Common.F Common.Path24) : Prop where
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
  sharedDiversifiedGeneratorNonIdentity :
    Common.Decaf.diversifiedGeneratorNonIdentity
      action.shared.diversifiedGenerator
  sharedTransmissionKeyNonIdentity :
    Common.Decaf.transmissionKeyNonIdentity
      action.shared.transmission
  randomizedVerificationKeysNonIdentity :
    ∀ index input,
      action.inputs.get? index = some input →
        Common.Decaf.randomizedVerificationKeyNonIdentity input.rk
  randomizersCanonical :
    randomizersCanonical Concrete.circuitPrimitives action
  dummySlotIndicesCanonical :
    dummySlotIndicesCanonical Concrete.circuitPrimitives action
  balanceBlindingCanonical :
    action.balanceBlinding.val < 2 ^ 251

theorem consensusAccepted_authorizationKey_nonIdentity
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    Common.Decaf.authorizationKeyNonIdentity
      action.authorization.authorizationKey := by
  have canonical := accepted.canonicalAddress
  change Concrete.canonicalTransmission action.authorization action.shared at canonical
  exact canonical.1.1

theorem consensusAccepted_sharedDiversifiedGenerator_nonIdentity
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    Common.Decaf.diversifiedGeneratorNonIdentity
      action.shared.diversifiedGenerator := by
  have canonical := accepted.canonicalAddress
  change Concrete.canonicalTransmission action.authorization action.shared at canonical
  exact canonical.1.2.1

theorem consensusAccepted_incomingViewingKey_derivation
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    Common.Decaf.incomingViewingKeyDerived
      action.authorization.nullifierKey
      action.authorization.authorizationKey
      action.authorization.ivkReduced
      action.authorization.ivkQuotientA := by
  have canonical := accepted.canonicalAddress
  change Concrete.canonicalTransmission action.authorization action.shared at canonical
  exact canonical.1.2.2.2.1.1

theorem consensusAccepted_incomingViewingKey_nonzero
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    Common.Decaf.incomingViewingKeyNonzero
      action.authorization.ivkReduced := by
  have canonical := accepted.canonicalAddress
  change Concrete.canonicalTransmission action.authorization action.shared at canonical
  exact canonical.2.1

theorem consensusAccepted_sharedTransmissionKey_nonIdentity
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    Common.Decaf.transmissionKeyNonIdentity
      action.shared.transmission := by
  have canonical := accepted.canonicalAddress
  change Concrete.canonicalTransmission action.authorization action.shared at canonical
  exact canonical.2.2

theorem consensusAccepted_authorizationKey_encoding
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    Common.Decaf.authorizationKeyEncodingValid
      action.authorization.authorizationKey := by
  rcases consensusAccepted_incomingViewingKey_derivation
      authorizationChecks stateChecks action accepted with
    ⟨encoding, compressed, _, _⟩
  exact ⟨encoding, compressed⟩

theorem consensusAccepted_randomizedVerificationKeys_nonIdentity
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    ∀ index input,
      action.inputs.get? index = some input →
        Common.Decaf.randomizedVerificationKeyNonIdentity input.rk :=
  accepted.signatures.randomizedVerificationKeysNonIdentity

theorem consensusAccepted_randomizersCanonical
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    randomizersCanonical Concrete.circuitPrimitives action :=
  accepted.randomizersCanonical

theorem consensusAccepted_dummySlotIndicesCanonical
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    dummySlotIndicesCanonical Concrete.circuitPrimitives action :=
  accepted.dummySlotIndicesCanonical

theorem consensusAccepted_balanceBlindingCanonical
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    action.balanceBlinding.val < 2 ^ 251 := by
  have conservation := accepted.valueConserved
  change Concrete.conservation action at conservation
  exact conservation.2.2.1

theorem consensusAccepted_atomicSecurityConsequences
    (authorizationChecks : ExternalAuthorization Common.F Common.Path24)
    (stateChecks : StateChecks Common.F Common.Path24)
    {before : ConsensusState Common.F}
    {delta : ActionDelta Common.F}
    {after : ConsensusState Common.F}
    (action : Action Common.F Common.Path24)
    (accepted :
      ConsensusAccepted
        Concrete.circuitPrimitives authorizationChecks stateChecks
          before delta after action) :
    AtomicSecurityConsequences action :=
  ⟨consensusAccepted_authorizationKey_nonIdentity
      authorizationChecks stateChecks action accepted,
    consensusAccepted_authorizationKey_encoding
      authorizationChecks stateChecks action accepted,
    consensusAccepted_incomingViewingKey_derivation
      authorizationChecks stateChecks action accepted,
    consensusAccepted_incomingViewingKey_nonzero
      authorizationChecks stateChecks action accepted,
    consensusAccepted_sharedDiversifiedGenerator_nonIdentity
      authorizationChecks stateChecks action accepted,
    consensusAccepted_sharedTransmissionKey_nonIdentity
      authorizationChecks stateChecks action accepted,
    consensusAccepted_randomizedVerificationKeys_nonIdentity
      authorizationChecks stateChecks action accepted,
    consensusAccepted_randomizersCanonical
      authorizationChecks stateChecks action accepted,
    consensusAccepted_dummySlotIndicesCanonical
      authorizationChecks stateChecks action accepted,
    consensusAccepted_balanceBlindingCanonical
      authorizationChecks stateChecks action accepted⟩

end Shieldd.GnarkFormal.Protocol.NoteReshape
