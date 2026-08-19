import ShielddGnarkFormal.Protocol.Common

/-!
Handwritten fixed-shape Transfer protocol semantics.

This consensus-acceptance model contains no circuit, witness-layout, extractor,
generated, or deployed definitions. Honest wallet construction is modeled
separately so acceptance never assumes facts a validator cannot check.
-/

namespace Shieldd.GnarkFormal.Protocol.Transfer

abbrev Point := Protocol.Common.Point

structure Address (F : Type u) where
  diversifiedGenerator : Point F
  diversifiedGeneratorEncoding : F
  transmission : Point F
  transmissionEncoding : F
  deriving DecidableEq, Repr

structure Authorization (F : Type u) where
  authorizationKey : Point F
  nullifierKey : F
  ivkReduced : F
  ivkQuotientA : F
  deriving DecidableEq, Repr

structure Note (F : Type u) where
  blinding : F
  amount : F
  assetId : F
  owner : Address F
  commitment : F
  deriving DecidableEq, Repr

structure RealSpend (F : Type u) (Path24 : Type v) where
  note : Note F
  position : F
  path : Path24
  nullifier : F
  randomizedVerificationKey : Point F
  randomizedVerificationKeyEncoding : F
  authRandomizer : F
  historyRequired : F
  deriving DecidableEq, Repr

structure DummySpend (F : Type u) where
  amount : F
  nullifier : F
  nullifierSeed : F
  randomizedVerificationKey : Point F
  randomizedVerificationKeyEncoding : F
  authRandomizer : F
  historyRequired : F
  deriving DecidableEq, Repr

inductive OptionalSpend (F : Type u) (Path24 : Type v)
  | real (spend : RealSpend F Path24)
  | dummy (spend : DummySpend F)
  deriving DecidableEq, Repr

def OptionalSpend.amount : OptionalSpend F Path24 → F
  | .real spend => spend.note.amount
  | .dummy spend => spend.amount

def OptionalSpend.nullifier : OptionalSpend F Path24 → F
  | .real spend => spend.nullifier
  | .dummy spend => spend.nullifier

def OptionalSpend.rk : OptionalSpend F Path24 → Point F
  | .real spend => spend.randomizedVerificationKey
  | .dummy spend => spend.randomizedVerificationKey

def OptionalSpend.rkEncoding : OptionalSpend F Path24 → F
  | .real spend => spend.randomizedVerificationKeyEncoding
  | .dummy spend => spend.randomizedVerificationKeyEncoding

def OptionalSpend.historyRequired : OptionalSpend F Path24 → F
  | .real spend => spend.historyRequired
  | .dummy spend => spend.historyRequired

structure Output (F : Type u) where
  note : Note F
  deriving DecidableEq, Repr

structure IndexedAssetLeaf (F : Type u) where
  value : F
  nextIndex : F
  nextValue : F
  dkPub : Point F
  threshold : F
  slotCount : F
  channelsHash : F
  ringPk : Point F
  ringIdHash : F
  policyIdHash : F
  permissionHash : F
  resourceHash : F
  deriving DecidableEq, Repr

structure AssetProof (F : Type u) (Path16 : Type v) where
  leaf : IndexedAssetLeaf F
  path : Path16
  position : F
  isRegulated : F
  deriving DecidableEq, Repr

structure ComplianceProof (F : Type u) (Path16 : Type v) where
  address : Address F
  assetId : F
  slotId : F
  slotDerivation : F
  d : F
  status : F
  path : Path16
  position : F
  deriving DecidableEq, Repr

structure ComplianceMetadata (F : Type u) where
  senderSubjectDerivation : F
  outputSubjectDerivation : F
  ringIdHash : F
  policyIdHash : F
  resourceHash : F
  permissionHash : F
  targetTimestamp : F
  senderCoreSalt : F
  senderExtSalt : F
  outputCoreSalt : F
  outputExtSalt : F
  deriving DecidableEq, Repr

structure CoreTier (F : Type u) where
  epk : Point F
  epkEncoding : F
  c2 : F
  ciphertext : F
  deriving DecidableEq, Repr

structure ExtTier (F : Type u) where
  epk : Point F
  epkEncoding : F
  c2 : F
  ciphertext : Fin 3 → F
  deriving DecidableEq, Repr

structure ComplianceTranscript (F : Type u) where
  transferNonceRoot : F
  senderRCore : F
  senderRExt : F
  outputRCore : F
  outputRExt : F
  isFlagged : F
  routingRolesSwapped : F
  salts : Fin 5 → F
  detectionCiphertext : Fin 4 → F
  metadata : ComplianceMetadata F
  senderCore : CoreTier F
  senderExt : ExtTier F
  outputCore : CoreTier F
  outputExt : ExtTier F
  deriving DecidableEq, Repr

structure Action
    (F : Type u) (Path24 : Type v) (Path16 : Type w) where
  authorization : Authorization F
  sender : Address F
  assetId : F
  required : RealSpend F Path24
  optional : OptionalSpend F Path24
  receiver : Output F
  change : Output F
  assetProof : AssetProof F Path16
  senderCompliance : ComplianceProof F Path16
  receiverCompliance : ComplianceProof F Path16
  transcript : ComplianceTranscript F
  anchor : F
  assetAnchor : F
  complianceAnchor : F
  targetTimestamp : F
  balanceCommitmentEncoding : F
  balanceBlinding : F
  routingTags : Fin 2 → F
  routingParameterSetId : F
  recentPositionFloor : F
  regulatedPrecision : F
  unregulatedPrecision : F
  routingAsOfHeight : F
  publicStatementHash : F
  deriving DecidableEq, Repr

/-- Consensus state observed immediately before or after this action executes. -/
structure ConsensusState (F : Type u) where
  liveSctAnchors : List F
  currentAssetAnchor : F
  liveComplianceAnchors : List F
  spentNullifiers : List F
  proofBoundOutputCommitments : List F
  deriving DecidableEq, Repr

/-- The exact shielded-pool writes owned by this Transfer action. -/
structure ActionDelta (F : Type u) where
  nullifiers : List F
  proofBoundOutputCommitments : List F
  deriving DecidableEq, Repr

def actionNullifiers (action : Action F Path24 Path16) : List F :=
  [action.required.nullifier, action.optional.nullifier]

def actionOutputCommitments (action : Action F Path24 Path16) : List F :=
  [action.receiver.note.commitment, action.change.note.commitment]

/--
Concrete action-local state transition. Transaction-envelope composition keeps
the exact local snapshots, so later registry actions may change roots without
falsifying this action's frame.
-/
structure ConsensusTransition
    (before : ConsensusState F)
    (action : Action F Path24 Path16)
    (delta : ActionDelta F)
    (after : ConsensusState F) : Prop where
  anchorLive : action.anchor ∈ before.liveSctAnchors
  assetAnchorCurrent : action.assetAnchor = before.currentAssetAnchor
  complianceAnchorLive :
    action.complianceAnchor ∈ before.liveComplianceAnchors
  actionNullifiersDistinct :
    action.required.nullifier ≠ action.optional.nullifier
  actionNullifiersUnique : (actionNullifiers action).Nodup
  actionNullifiersFresh :
    ∀ nullifier ∈ actionNullifiers action,
      nullifier ∉ before.spentNullifiers
  deltaNullifiersExact :
    delta.nullifiers = actionNullifiers action
  deltaOutputsExact :
    delta.proofBoundOutputCommitments =
      actionOutputCommitments action
  spentNullifiersExact :
    Protocol.Common.exactExtension
      before.spentNullifiers delta.nullifiers after.spentNullifiers
  outputCommitmentsExact :
    Protocol.Common.exactExtension
      before.proofBoundOutputCommitments
      delta.proofBoundOutputCommitments
      after.proofBoundOutputCommitments
  liveSctAnchorsFrame :
    after.liveSctAnchors = before.liveSctAnchors
  currentAssetAnchorFrame :
    after.currentAssetAnchor = before.currentAssetAnchor
  liveComplianceAnchorsFrame :
    after.liveComplianceAnchors = before.liveComplianceAnchors

def TargetStep
    (action : Action F Path24 Path16)
    (delta : ActionDelta F) :
    ConsensusState F → ConsensusState F → Prop :=
  fun before after => ConsensusTransition before action delta after

theorem successfulActionPersistsExactOutputs
    (before after : ConsensusState F)
    (action : Action F Path24 Path16)
    (delta : ActionDelta F)
    (transition : ConsensusTransition before action delta after) :
    Protocol.Common.exactExtension
      before.proofBoundOutputCommitments
      (actionOutputCommitments action)
      after.proofBoundOutputCommitments := by
  simpa [transition.deltaOutputsExact] using
    transition.outputCommitmentsExact

/-- Independent relations whose concrete definitions are fixed in `Concrete`. -/
structure CircuitPrimitives
    (F : Type u) (Path24 : Type v) (Path16 : Type w) where
  canonicalSender : Action F Path24 Path16 → Prop
  requiredSpend : Action F Path24 Path16 → Prop
  optionalSpend : Action F Path24 Path16 → Prop
  receiverOutput : Action F Path24 Path16 → Prop
  changeOutput : Action F Path24 Path16 → Prop
  assetRegistry : Action F Path24 Path16 → Prop
  senderCompliance : Action F Path24 Path16 → Prop
  receiverCompliance : Action F Path24 Path16 → Prop
  complianceTranscript : Action F Path24 Path16 → Prop
  balanceComputedAndCompressed : Action F Path24 Path16 → Prop
  statementBinding : Action F Path24 Path16 → Prop

inductive SpendSlot
  | required
  | optional
  deriving DecidableEq, Repr

/--
External effects and cryptographic checks outside the R1CS relation. The local
nonidentity RK signatures authorize this action. Because the enclosing
transaction carries a shielded proof, its aggregate binding key must also be
nonidentity and authenticate the final authorization hash.
-/
structure ExternalChecks
    (F : Type u) (Path24 : Type v) (Path16 : Type w) where
  /--
  Every serialized spend authorization verifies over the transaction effect
  hash, whose Transfer projection includes the exact receiver compliance
  ciphertext and metadata.
  -/
  signatureVerifiesAgainstTransactionEffectHash :
    Action F Path24 Path16 → SpendSlot → Point F → Prop
  /-- The aggregate action, fee-funding, and fee balance key is nonidentity. -/
  enclosingTransactionBindingVerificationKeyNonIdentity :
    Action F Path24 Path16 → Prop
  /-- The aggregate binding key verifies the signature over the auth hash. -/
  enclosingTransactionBindingSignatureVerifiesAgainstAuthHash :
    Action F Path24 Path16 → Prop
  /-- Decoding and stateless validation accept exactly two inputs, two outputs, and two signatures. -/
  fixedShapeAccepted : Action F Path24 Path16 → Prop
  /-- The body witness anchor equals the enclosing transaction's proof context anchor. -/
  anchorMatchesTransactionContext : Action F Path24 Path16 → Prop
  /--
  Runtime reconstruction of the 44-field public statement matches the decoded
  body and validated receiver compliance payload. Interpreting equality of the
  sole Poseidon public input as equality of every reconstructed field
  additionally assumes statement-hash collision resistance.
  -/
  publicInputMatchesBody : Action F Path24 Path16 → Prop
  /-- Serialized proof bytes decode to exactly one canonical Groth16 proof. -/
  proofCanonicalEncodingAccepted : Action F Path24 Path16 → Prop
  /-- Both serialized input compliance ciphertexts are empty. -/
  inputComplianceCiphertextEmpty :
    Action F Path24 Path16 → Prop
  /--
  The receiver ciphertext and flattened metadata decode canonically; the
  change output carries neither payload.
  -/
  outputComplianceEncodingAccepted :
    Action F Path24 Path16 → Prop
  /--
  The canonical transaction effect hash commits the exact ordered output
  compliance ciphertext and metadata records. Only the witness anchor is
  normalized out and is independently checked against transaction context.
  -/
  effectHashBindsComplianceRecords :
    Action F Path24 Path16 → Prop
  /-- Groth16 verification succeeds for the action's proof and public input. -/
  proofVerificationAccepted : Action F Path24 Path16 → Prop
  /-- Verification uses the deployed fixed-shape Transfer key and no other key. -/
  proofFamilyKeySelected : Action F Path24 Path16 → Prop
  /--
  Inductive asset-registry invariant: leaves are unique and ordered, and each
  `nextIndex`/`nextValue` link names the next leaf.
  -/
  registryWellFormed : F → Prop
  /--
  Every policy committed by the current asset root was admitted by an
  authorized registration whose grant was unexpired at admission and whose
  body matches the committed fields; the native policy map and committed leaf
  remain a one-to-one cross-index for cached policy and route checks.
  -/
  assetRegistryAuthorized : F → Prop
  /--
  Every committed regulated policy has non-identity detection and ring keys.
  This is enforced at registry admission because point identity is not a
  Transfer-circuit statement field.
  -/
  assetRegistryCryptoKeysValid : F → Prop
  /--
  Every v3 leaf committed by the append-only user root binds the complete
  address, has a valid nonzero leaf derivation, and was admitted by an
  authorized grant that was unexpired at admission for the matching policy ID
  with `slotId < slotCount`. This is an admission invariant, not a revocation
  or continuing-expiry check.
  -/
  userRegistryAuthorized : F → Prop
  /--
  Native execution rejects negative signed consensus time before conversion,
  target zero, and drift outside the inclusive fixed consensus-time window.
  -/
  timestampFresh : F → Prop
  /-- Decoding admits one canonical action-body projection. -/
  bodyProjectionCanonical : Action F Path24 Path16 → Prop

/-- Wallet-side facts that are deliberately outside consensus acceptance. -/
structure ConstructionChecks (F : Type u) (Path24 : Type v)
    (Path16 : Type w) where
  /--
  Construction samples one unpredictable nonce root per Transfer action,
  distinct from every other Transfer action and fee-funding Transfer in the
  enclosing transaction.
  -/
  complianceNonceFreshAndUnique :
    Action F Path24 Path16 → Prop
  /--
  Construction rejection-samples every compliance-encryption tier scalar until
  nonzero. This is an honest-wallet confidentiality fact, not consensus policy.
  -/
  complianceTierScalarsNonzero :
    Action F Path24 Path16 → Prop
  /-- Every output key is correctly wrapped under the serialized balance commitment. -/
  outgoingViewBindingCorrect : Action F Path24 Path16 → Prop
  /-- The plan has one canonical projection into the action body. -/
  planProjectionCanonical : Action F Path24 Path16 → Prop

/-- Facts a consensus validator checks outside Groth16. -/
structure ConsensusExternalFacts [Zero F]
    (checks : ExternalChecks F Path24 Path16)
    (action : Action F Path24 Path16)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F) : Prop where
  requiredRandomizedVerificationKeyNonIdentity :
    Common.Decaf.randomizedVerificationKeyNonIdentity
      action.required.randomizedVerificationKey
  optionalRandomizedVerificationKeyNonIdentity :
    Common.Decaf.randomizedVerificationKeyNonIdentity action.optional.rk
  requiredSignature :
    checks.signatureVerifiesAgainstTransactionEffectHash action .required
      action.required.randomizedVerificationKey
  optionalSignature :
    checks.signatureVerifiesAgainstTransactionEffectHash
      action .optional action.optional.rk
  enclosingTransactionBindingSignatureAccepted :
    Common.proofBearingBindingSignatureAccepted
      (checks.enclosingTransactionBindingVerificationKeyNonIdentity action)
      (checks.enclosingTransactionBindingSignatureVerifiesAgainstAuthHash action)
  fixedShapeAccepted : checks.fixedShapeAccepted action
  anchorMatchesTransactionContext :
    checks.anchorMatchesTransactionContext action
  publicInputMatchesBody : checks.publicInputMatchesBody action
  proofCanonicalEncodingAccepted :
    checks.proofCanonicalEncodingAccepted action
  inputComplianceCiphertextEmpty :
    checks.inputComplianceCiphertextEmpty action
  outputComplianceEncodingAccepted :
    checks.outputComplianceEncodingAccepted action
  effectHashBindsComplianceRecords :
    checks.effectHashBindsComplianceRecords action
  proofVerificationAccepted :
    checks.proofVerificationAccepted action
  proofFamilyKeySelected : checks.proofFamilyKeySelected action
  registryWellFormed : checks.registryWellFormed action.assetAnchor
  assetRegistryAuthorized :
    checks.assetRegistryAuthorized action.assetAnchor
  assetRegistryCryptoKeysValid :
    checks.assetRegistryCryptoKeysValid action.assetAnchor
  userRegistryAuthorized :
    checks.userRegistryAuthorized action.complianceAnchor
  timestampFresh : checks.timestampFresh action.targetTimestamp
  bodyProjectionCanonical :
    checks.bodyProjectionCanonical action
  transition : ConsensusTransition before action delta after

/--
Consensus-accepted relation for the fixed 2-input/2-output Transfer projection.
Generic transaction-envelope rules remain owned by that envelope.
-/
structure ConsensusAccepted [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F)
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
  external : ConsensusExternalFacts checks action before delta after

/--
Consensus acceptance of the target action joined to its exact local state
transition and the enclosing transaction's committed durable effects.
-/
structure TransactionAccepted [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path24 Path16) : Prop where
  actionAccepted :
    ConsensusAccepted primitives checks actionBefore delta actionAfter action
  committed :
    Nonempty (Protocol.Common.CommittedTargetTransaction
      (fun state => state.spentNullifiers)
      (fun state => state.proofBoundOutputCommitments)
      (actionNullifiers action)
      (actionOutputCommitments action)
      otherStep
      (TargetStep action delta)
      transactionBefore
      actionBefore
      actionAfter
      transactionAfter)

theorem transactionAcceptedNullifiersUnique [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path24 Path16)
    (accepted :
      TransactionAccepted primitives checks otherStep
        transactionBefore actionBefore delta actionAfter transactionAfter
        action) :
    ∃ nullifiers,
      Protocol.Common.includedWithMultiplicity
          (actionNullifiers action) nullifiers ∧
      nullifiers.Nodup ∧
      Protocol.Common.exactExtension
        transactionBefore.spentNullifiers
        nullifiers
        transactionAfter.spentNullifiers := by
  rcases accepted.committed with ⟨committed⟩
  exact ⟨committed.effects.nullifiers,
    committed.targetNullifiersIncluded,
    committed.effects.nullifiersUnique,
    committed.effects.spentExact⟩

theorem transactionAcceptedIncludesTargetOutputs [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path24 Path16)
    (accepted :
      TransactionAccepted primitives checks otherStep
        transactionBefore actionBefore delta actionAfter transactionAfter
        action) :
    ∃ outputCommitments,
      Protocol.Common.includedWithMultiplicity
          (actionOutputCommitments action) outputCommitments ∧
      Protocol.Common.exactExtension
        transactionBefore.proofBoundOutputCommitments
        outputCommitments
        transactionAfter.proofBoundOutputCommitments := by
  rcases accepted.committed with ⟨committed⟩
  exact ⟨committed.effects.outputCommitments,
    committed.targetOutputsIncluded,
    committed.effects.outputsExact⟩

/-- Honest wallet facts, none of which are prerequisites for consensus acceptance. -/
structure HonestConstructionFacts
    (checks : ConstructionChecks F Path24 Path16)
    (action : Action F Path24 Path16) : Prop where
  complianceNonceFreshAndUnique :
    checks.complianceNonceFreshAndUnique action
  complianceTierScalarsNonzero :
    checks.complianceTierScalarsNonzero action
  outgoingViewBindingCorrect :
    checks.outgoingViewBindingCorrect action
  planProjectionCanonical :
    checks.planProjectionCanonical action

/-- The explicit composition used when a claim needs both acceptance and wallet guarantees. -/
structure ConstructedAndAccepted [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (consensusChecks : ExternalChecks F Path24 Path16)
    (constructionChecks : ConstructionChecks F Path24 Path16)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F)
    (action : Action F Path24 Path16) : Prop where
  accepted :
    ConsensusAccepted primitives consensusChecks before delta after action
  constructed : HonestConstructionFacts constructionChecks action

end Shieldd.GnarkFormal.Protocol.Transfer
