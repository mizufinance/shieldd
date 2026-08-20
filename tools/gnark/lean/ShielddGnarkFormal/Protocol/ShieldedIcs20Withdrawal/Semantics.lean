import ShielddGnarkFormal.Protocol.Common

/-!
Handwritten fixed-shape shielded ICS-20 withdrawal semantics.

Payload validation and chain-state execution are explicit external facts; the
circuit relation binds their typed result into the public statement. Honest
wallet construction is modeled separately from consensus acceptance.
-/

namespace Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal

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

inductive SpendSlot
  | required
  | optional
  deriving DecidableEq, Repr

structure IndexedAssetLeaf (F : Type u) where
  value : F
  nextIndex : F
  nextValue : F
  paramsHash : F
  ringHash : F
  deriving DecidableEq, Repr

structure AssetProof (F : Type u) (Path16 : Type v) where
  leaf : IndexedAssetLeaf F
  path : Path16
  position : F
  isRegulated : F
  deriving DecidableEq, Repr

structure ComplianceProof (F : Type u) (Path16 : Type v) where
  slotId : F
  slotDerivation : F
  d : F
  status : F
  path : Path16
  position : F
  deriving DecidableEq, Repr

structure WithdrawalIntent (F : Type u) where
  outboundAssetId : F
  outboundAmount : F
  effectHashLimbs : Fin 4 → F
  deriving DecidableEq, Repr

structure Action
    (F : Type u) (Path24 : Type v) (Path16 : Type w) where
  authorization : Authorization F
  sender : Address F
  required : RealSpend F Path24
  optional : OptionalSpend F Path24
  change : Note F
  assetProof : AssetProof F Path16
  senderCompliance : ComplianceProof F Path16
  withdrawal : WithdrawalIntent F
  anchor : F
  assetAnchor : F
  complianceAnchor : F
  targetTimestamp : F
  balanceCommitmentEncoding : F
  balanceBlinding : F
  routingTag : F
  routingParameterSetId : F
  recentPositionFloor : F
  regulatedPrecision : F
  unregulatedPrecision : F
  routingAsOfHeight : F
  routingNonce : F
  publicStatementHash : F
  deriving DecidableEq, Repr

/-- Whether ICS-20 escrows a local asset or burns a returning voucher. -/
inductive DenomOrigin
  | local
  | counterparty
  deriving DecidableEq, Repr

/-- The checked channel/connection route used by packet execution. -/
structure IbcRoute (F : Type u) where
  localPort : F
  localChannel : F
  connectionId : F
  counterpartyPort : F
  counterpartyChannel : F
  deriving DecidableEq, Repr

/-- Canonical ICS-20 packet data after validating the native payload. -/
structure PacketData (F : Type u) where
  denom : F
  amount : Nat
  sender : F
  receiver : F
  memo : F
  deriving DecidableEq, Repr

/-- Exact action payload whose native effect hash is bound by the circuit. -/
structure WithdrawalPayload (F : Type u) where
  route : IbcRoute F
  denomOrigin : DenomOrigin
  packetData : PacketData F
  timeoutRevision : Nat
  timeoutHeight : Nat
  timeoutTime : Nat
  useTransparentAddress : Bool
  deriving DecidableEq, Repr

structure BalanceKey (F : Type u) where
  channel : F
  assetId : F
  deriving DecidableEq, Repr

structure SequenceKey (F : Type u) where
  port : F
  channel : F
  deriving DecidableEq, Repr

structure PacketKey (F : Type u) where
  port : F
  channel : F
  sequence : Nat
  deriving DecidableEq, Repr

/-- Exact packet allocated at the action-local pre-state sequence. -/
structure Packet (F : Type u) where
  route : IbcRoute F
  sequence : Nat
  timeoutRevision : Nat
  timeoutHeight : Nat
  timeoutTime : Nat
  data : PacketData F
  deriving DecidableEq, Repr

structure WithdrawalEvent (F : Type u) where
  assetId : F
  amount : Nat
  sender : F
  receiver : F
  channel : F
  sequence : Nat
  deriving DecidableEq, Repr

structure IbcState (F : Type u) where
  valueBalance : BalanceKey F → Nat
  sendSequence : SequenceKey F → Nat
  committedPackets : PacketKey F → Option (Packet F)

/-- Consensus state observed immediately before or after this action executes. -/
structure ConsensusState (F : Type u) where
  liveSctAnchors : List F
  currentAssetAnchor : F
  liveComplianceAnchors : List F
  spentNullifiers : List F
  proofBoundOutputCommitments : List F
  ibc : IbcState F
  withdrawalEvents : List (WithdrawalEvent F)
  withdrawalsEnabled : Bool

/-- The exact shielded-pool writes owned by this Withdrawal action. -/
structure ActionDelta (F : Type u) where
  nullifiers : List F
  proofBoundOutputCommitments : List F

def actionNullifiers (action : Action F Path24 Path16) : List F :=
  [action.required.nullifier, action.optional.nullifier]

def actionOutputCommitments (action : Action F Path24 Path16) : List F :=
  [action.change.commitment]

def balanceKey
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F) : BalanceKey F :=
  ⟨payload.route.localChannel, action.withdrawal.outboundAssetId⟩

def sequenceKey (payload : WithdrawalPayload F) : SequenceKey F :=
  ⟨payload.route.localPort, payload.route.localChannel⟩

def packetKey
    (payload : WithdrawalPayload F) (sequence : Nat) : PacketKey F :=
  ⟨payload.route.localPort, payload.route.localChannel, sequence⟩

def packetOf
    (payload : WithdrawalPayload F) (sequence : Nat) : Packet F :=
  {
    route := payload.route
    sequence
    timeoutRevision := payload.timeoutRevision
    timeoutHeight := payload.timeoutHeight
    timeoutTime := payload.timeoutTime
    data := payload.packetData
  }

def eventOf
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
    (sequence : Nat) : WithdrawalEvent F :=
  {
    assetId := action.withdrawal.outboundAssetId
    amount := payload.packetData.amount
    sender := payload.packetData.sender
    receiver := payload.packetData.receiver
    channel := payload.route.localChannel
    sequence
  }

def maxAmount : Nat := 2 ^ 128 - 1
def maxSequence : Nat := 2 ^ 64 - 1

/-- One exact ICS-20 supply-accounting update. -/
inductive BalanceEffect (F : Type u)
  | credit (key : BalanceKey F) (amount : Nat)
  | debit (key : BalanceKey F) (amount : Nat)
  deriving DecidableEq, Repr

def balanceEffectOf
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F) : BalanceEffect F :=
  match payload.denomOrigin with
  | .local => .credit (balanceKey action payload) payload.packetData.amount
  | .counterparty =>
      .debit (balanceKey action payload) payload.packetData.amount

def applyBalanceEffect [DecidableEq F]
    (balances : BalanceKey F → Nat) :
    BalanceEffect F → Option (BalanceKey F → Nat)
  | .credit key amount =>
      let updated := balances key + amount
      if updated ≤ maxAmount then
        some (Function.update balances key updated)
      else
        none
  | .debit key amount =>
      if amount ≤ balances key then
        some (Function.update balances key (balances key - amount))
      else
        none

def applyBalanceEffects [DecidableEq F]
    (balances : BalanceKey F → Nat) :
    List (BalanceEffect F) → Option (BalanceKey F → Nat)
  | [] => some balances
  | effect :: rest =>
      match applyBalanceEffect balances effect with
      | none => none
      | some after => applyBalanceEffects after rest

/--
Concrete action-local transition for the exact source/sink accounting branch,
packet allocation, event, nullifiers, and change commitment.
-/
structure ConsensusTransition [DecidableEq F]
    (before : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
    (delta : ActionDelta F)
    (after : ConsensusState F) : Prop where
  anchorLive : action.anchor ∈ before.liveSctAnchors
  assetAnchorCurrent : action.assetAnchor = before.currentAssetAnchor
  complianceAnchorLive :
    action.complianceAnchor ∈ before.liveComplianceAnchors
  withdrawalsEnabled : before.withdrawalsEnabled = true
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
  eventExact :
    Protocol.Common.exactExtension
      before.withdrawalEvents
      [eventOf action payload (before.ibc.sendSequence (sequenceKey payload))]
      after.withdrawalEvents
  balanceUpdate :
    match payload.denomOrigin with
    | .local =>
        before.ibc.valueBalance (balanceKey action payload) +
            payload.packetData.amount ≤ maxAmount ∧
        after.ibc.valueBalance =
          Function.update before.ibc.valueBalance
            (balanceKey action payload)
            (before.ibc.valueBalance (balanceKey action payload) +
              payload.packetData.amount)
    | .counterparty =>
        payload.packetData.amount ≤
            before.ibc.valueBalance (balanceKey action payload) ∧
        after.ibc.valueBalance =
          Function.update before.ibc.valueBalance
            (balanceKey action payload)
            (before.ibc.valueBalance (balanceKey action payload) -
              payload.packetData.amount)
  sequenceAvailable :
    before.ibc.sendSequence (sequenceKey payload) < maxSequence
  sequenceUpdate :
    after.ibc.sendSequence =
      Function.update before.ibc.sendSequence
        (sequenceKey payload)
        (before.ibc.sendSequence (sequenceKey payload) + 1)
  packetSlotEmpty :
    before.ibc.committedPackets
      (packetKey payload (before.ibc.sendSequence (sequenceKey payload))) =
        none
  packetUpdate :
    after.ibc.committedPackets =
      Function.update before.ibc.committedPackets
        (packetKey payload (before.ibc.sendSequence (sequenceKey payload)))
        (some (packetOf payload
          (before.ibc.sendSequence (sequenceKey payload))))
  liveSctAnchorsFrame :
    after.liveSctAnchors = before.liveSctAnchors
  currentAssetAnchorFrame :
    after.currentAssetAnchor = before.currentAssetAnchor
  liveComplianceAnchorsFrame :
    after.liveComplianceAnchors = before.liveComplianceAnchors
  withdrawalsEnabledFrame :
    after.withdrawalsEnabled = before.withdrawalsEnabled

def TargetStep [DecidableEq F]
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
    (delta : ActionDelta F) :
    ConsensusState F → ConsensusState F → Prop :=
  fun before after =>
    ConsensusTransition before action payload delta after

theorem successfulActionCommitsExactPacket [DecidableEq F]
    (before after : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
    (delta : ActionDelta F)
    (transition : ConsensusTransition before action payload delta after) :
    after.ibc.committedPackets =
      Function.update before.ibc.committedPackets
        (packetKey payload (before.ibc.sendSequence (sequenceKey payload)))
        (some (packetOf payload
          (before.ibc.sendSequence (sequenceKey payload)))) :=
  transition.packetUpdate

theorem successfulActionPersistsExactChange [DecidableEq F]
    (before after : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
    (delta : ActionDelta F)
    (transition : ConsensusTransition before action payload delta after) :
    Protocol.Common.exactExtension
      before.proofBoundOutputCommitments
      (actionOutputCommitments action)
      after.proofBoundOutputCommitments := by
  simpa [transition.deltaOutputsExact] using
    transition.outputCommitmentsExact

structure CircuitPrimitives
    (F : Type u) (Path24 : Type v) (Path16 : Type w) where
  canonicalSender : Action F Path24 Path16 → Prop
  requiredSpend : Action F Path24 Path16 → Prop
  optionalSpend : Action F Path24 Path16 → Prop
  changeOutput : Action F Path24 Path16 → Prop
  assetRegistry : Action F Path24 Path16 → Prop
  senderCompliance : Action F Path24 Path16 → Prop
  conservation : Action F Path24 Path16 → Prop
  statementBinding : Action F Path24 Path16 → Prop

/--
External effects and cryptographic checks outside the R1CS relation. The local
nonidentity RK signatures authorize this action. Because the enclosing
transaction carries a shielded proof, its aggregate binding key must also be
nonidentity and authenticate the final authorization hash.
-/
structure ExternalChecks
    (F : Type u) (Path24 : Type v) (Path16 : Type w) where
  /--
  Every serialized slot, including a synthetic optional dummy, carries a
  transaction-effect-hash signature under its serialized randomized key.
  -/
  signatureVerifiesAgainstTransactionEffectHash :
    Action F Path24 Path16 → SpendSlot → Point F → Prop
  /-- The aggregate action, fee-funding, and fee balance key is nonidentity. -/
  transactionBindingVerificationKeyNonIdentity :
    Action F Path24 Path16 → Prop
  /-- The aggregate binding key verifies the signature over the auth hash. -/
  transactionBindingSignatureVerifiesAgainstAuthHash :
    Action F Path24 Path16 → Prop
  fixedShapeAccepted : Action F Path24 Path16 → Prop
  anchorMatchesTransactionContext : Action F Path24 Path16 → Prop
  /--
  The four statement limbs are the consecutive little-endian 128-bit chunks of
  the embedded withdrawal body's 64-byte effect hash. Interpreting equality of
  that digest as equality of effecting bodies additionally assumes BLAKE2b-512
  collision resistance.
  -/
  withdrawalEffectHashMatchesBody : Action F Path24 Path16 → Prop
  /--
  Runtime reconstruction of the 16-field public statement matches the action
  body, including the body balance-commitment encoding, both nullifier/RK
  pairs, all three anchors, timestamp, outbound value, and effect-hash limbs.
  Interpreting equality of the sole Poseidon public input as equality of every
  reconstructed field additionally assumes statement-hash collision resistance.
  -/
  publicInputMatchesBody : Action F Path24 Path16 → Prop
  /-- Serialized proof bytes decode to exactly one canonical Groth16 proof. -/
  proofCanonicalEncodingAccepted : Action F Path24 Path16 → Prop
  /-- Groth16 verification succeeds for the action's proof and public input. -/
  proofVerificationAccepted : Action F Path24 Path16 → Prop
  /-- Verification uses the deployed fixed-shape Withdrawal key and no other key. -/
  proofFamilyKeySelected : Action F Path24 Path16 → Prop
  /--
  Inductive asset-registry state invariant: leaves are unique and ordered, and
  every `nextIndex`/`nextValue` link names the next leaf. Current-root equality
  does not establish this invariant.
  -/
  registryWellFormed : F → Prop
  /--
  Every policy commitment under the current asset root arises from an
  authorized registration or update transition, and canonically cross-indexes
  the current native policy selected by that asset ID.
  -/
  assetRegistryAuthorized : F → Prop
  /--
  If `outboundAssetId` has a current native policy, that policy cross-indexes
  the `paramsHash` and `ringHash` committed under `assetAnchor` and authorizes
  the route and fields in the effect-hashed payload. A regulated memo has the
  one canonical wrapper and embeds the same outbound asset ID. An asset absent
  from the current registry follows the unregulated runtime branch.
  -/
  outboundRouteAuthorized : F → F → WithdrawalPayload F → Prop
  /--
  Every v2 leaf committed by the user root binds the complete address,
  including the injective canonical field encoding of its checked Decaf clue
  key, has a valid leaf derivation, and was admitted by an authorized grant
  that was unexpired at admission for the matching policy ID with
  `slotId < slotCount`. There is no revocation or continuing-expiry transition.
  -/
  userRegistryAuthorized : F → Prop
  /--
  Native execution rejects negative signed consensus time before conversion,
  target zero, and drift outside the inclusive fixed consensus-time window.
  -/
  timestampFresh : F → Prop
  /--
  Stateless validation admits one canonical embedded payload encoding and
  rejects every deprecated compatibility or otherwise noncanonical encoding
  rather than normalizing it. The outbound amount and minute-rounded timeout
  are non-zero, and transparent mode requires a canonically encodable return
  address.
  -/
  payloadValid : WithdrawalPayload F → Prop
  /--
  The exact local channel exists, is open, unordered, negotiates `ics20-1`,
  has one connection hop, and names an open connection and counterparty route.
  -/
  channelAndConnectionValid : WithdrawalPayload F → Prop
  /--
  The route's light client and latest consensus state exist; the client is
  active and unexpired, and its consensus timestamp is not in the future.
  -/
  clientActiveAndUnexpired : WithdrawalPayload F → Prop
  /-- Both counterparty height and timestamp remain strictly before their timeouts. -/
  timeoutsFuture : WithdrawalPayload F → Prop
  /--
  The non-forgeable checked-withdrawal token is revalidated against the exact
  channel and connection snapshots, same client identifier, current active and
  unexpired client state, route, policy, allocated sequence, empty packet slot,
  and packet immediately before mutation.
  -/
  checkedTokenFresh : WithdrawalPayload F → Prop
  payloadProjectsTo : WithdrawalPayload F → WithdrawalIntent F → Prop
  inputComplianceCiphertextEmpty : Action F Path24 Path16 → Prop
  /-- Decoding admits one canonical action-body projection. -/
  bodyProjectionCanonical : Action F Path24 Path16 → Prop

/-- Wallet-side facts that are deliberately outside consensus acceptance. -/
structure ConstructionChecks (F : Type u) (Path24 : Type v)
    (Path16 : Type w) where
  /-- The change-output key is correctly wrapped under the serialized balance commitment. -/
  outgoingViewBindingCorrect : Action F Path24 Path16 → Prop
  /-- The plan has one canonical projection into the action body. -/
  planProjectionCanonical : Action F Path24 Path16 → Prop

/-- Facts a consensus validator checks outside Groth16. -/
structure ConsensusExternalFacts [DecidableEq F] [Zero F]
    (checks : ExternalChecks F Path24 Path16)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
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
  transactionBindingSignatureAccepted :
    Common.proofBearingBindingSignatureAccepted
      (checks.transactionBindingVerificationKeyNonIdentity action)
      (checks.transactionBindingSignatureVerifiesAgainstAuthHash action)
  fixedShapeAccepted : checks.fixedShapeAccepted action
  anchorMatchesTransactionContext :
    checks.anchorMatchesTransactionContext action
  withdrawalEffectHashMatchesBody :
    checks.withdrawalEffectHashMatchesBody action
  publicInputMatchesBody : checks.publicInputMatchesBody action
  proofCanonicalEncodingAccepted :
    checks.proofCanonicalEncodingAccepted action
  proofVerificationAccepted :
    checks.proofVerificationAccepted action
  proofFamilyKeySelected : checks.proofFamilyKeySelected action
  registryWellFormed : checks.registryWellFormed action.assetAnchor
  assetRegistryAuthorized :
    checks.assetRegistryAuthorized action.assetAnchor
  outboundRouteAuthorized :
    checks.outboundRouteAuthorized action.assetAnchor
      action.withdrawal.outboundAssetId payload
  userRegistryAuthorized :
    checks.userRegistryAuthorized action.complianceAnchor
  timestampFresh : checks.timestampFresh action.targetTimestamp
  payloadValid : checks.payloadValid payload
  channelAndConnectionValid :
    checks.channelAndConnectionValid payload
  clientActiveAndUnexpired :
    checks.clientActiveAndUnexpired payload
  timeoutsFuture : checks.timeoutsFuture payload
  checkedTokenFresh : checks.checkedTokenFresh payload
  payloadProjectsTo :
    checks.payloadProjectsTo payload action.withdrawal
  inputComplianceCiphertextEmpty :
    checks.inputComplianceCiphertextEmpty action
  bodyProjectionCanonical :
    checks.bodyProjectionCanonical action
  transition :
    ConsensusTransition before action payload delta after

/--
Consensus-accepted relation for the fixed 2-input/1-output shielded ICS-20
Withdrawal projection. Generic transaction-envelope rules remain owned by that
envelope.
-/
structure ConsensusAccepted [DecidableEq F] [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F) : Prop where
  canonicalSender : primitives.canonicalSender action
  requiredSpend : primitives.requiredSpend action
  optionalSpend : primitives.optionalSpend action
  changeOutput : primitives.changeOutput action
  assetRegistry : primitives.assetRegistry action
  senderCompliance : primitives.senderCompliance action
  conservation : primitives.conservation action
  statementBinding : primitives.statementBinding action
  external :
    ConsensusExternalFacts checks action payload before delta after

/--
Executor-supplied transaction-wide withdrawal envelope. It requires the target
accounting effect and event to occur with multiplicity, the exact target packet
to persist, and the target sequence to advance; it does not derive an ordered
effect trace for every other transaction action.
-/
structure CommittedWithdrawalEffects [DecidableEq F]
    (transactionBefore actionBefore transactionAfter : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F) where
  balanceEffects : List (BalanceEffect F)
  targetBalanceEffectIncluded :
    Protocol.Common.includedWithMultiplicity
      [balanceEffectOf action payload] balanceEffects
  balancesExact :
    applyBalanceEffects transactionBefore.ibc.valueBalance balanceEffects =
      some transactionAfter.ibc.valueBalance
  withdrawalEvents : List (WithdrawalEvent F)
  targetEventIncluded :
    Protocol.Common.includedWithMultiplicity
      [eventOf action payload
        (actionBefore.ibc.sendSequence (sequenceKey payload))]
      withdrawalEvents
  eventsExact :
    Protocol.Common.exactExtension
      transactionBefore.withdrawalEvents
      withdrawalEvents
      transactionAfter.withdrawalEvents
  packetSlotFresh :
    transactionBefore.ibc.committedPackets
      (packetKey payload
        (actionBefore.ibc.sendSequence (sequenceKey payload))) = none
  packetPersisted :
    transactionAfter.ibc.committedPackets
      (packetKey payload
        (actionBefore.ibc.sendSequence (sequenceKey payload))) =
      some (packetOf payload
        (actionBefore.ibc.sendSequence (sequenceKey payload)))
  sequenceAdvanced :
    actionBefore.ibc.sendSequence (sequenceKey payload) <
      transactionAfter.ibc.sendSequence (sequenceKey payload)

/--
Consensus acceptance of the target action joined to its exact local state
transition and the enclosing transaction's committed durable effects.
-/
structure TransactionAccepted [DecidableEq F] [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F) : Prop where
  actionAccepted :
    ConsensusAccepted primitives checks
      actionBefore delta actionAfter action payload
  committed :
    Nonempty (Protocol.Common.CommittedTargetTransaction
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
  withdrawalEffects :
    Nonempty (CommittedWithdrawalEffects
      transactionBefore actionBefore transactionAfter action payload)

theorem transactionAcceptedNullifiersUnique [DecidableEq F] [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
    (accepted :
      TransactionAccepted primitives checks otherStep
        transactionBefore actionBefore delta actionAfter transactionAfter
        action payload) :
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

theorem transactionAcceptedIncludesTargetChange [DecidableEq F] [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
    (accepted :
      TransactionAccepted primitives checks otherStep
        transactionBefore actionBefore delta actionAfter transactionAfter
        action payload) :
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

theorem transactionAcceptedIncludesTargetWithdrawalEffects [DecidableEq F] [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (checks : ExternalChecks F Path24 Path16)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F)
    (accepted :
      TransactionAccepted primitives checks otherStep
        transactionBefore actionBefore delta actionAfter transactionAfter
        action payload) :
    Nonempty (CommittedWithdrawalEffects
      transactionBefore actionBefore transactionAfter action payload) :=
  accepted.withdrawalEffects

/-- Honest wallet facts, none of which are prerequisites for consensus acceptance. -/
structure HonestConstructionFacts
    (checks : ConstructionChecks F Path24 Path16)
    (action : Action F Path24 Path16) : Prop where
  outgoingViewBindingCorrect :
    checks.outgoingViewBindingCorrect action
  planProjectionCanonical :
    checks.planProjectionCanonical action

/-- The explicit composition used when a claim needs both acceptance and wallet guarantees. -/
structure ConstructedAndAccepted [DecidableEq F] [Zero F]
    (primitives : CircuitPrimitives F Path24 Path16)
    (consensusChecks : ExternalChecks F Path24 Path16)
    (constructionChecks : ConstructionChecks F Path24 Path16)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F)
    (action : Action F Path24 Path16)
    (payload : WithdrawalPayload F) : Prop where
  accepted :
    ConsensusAccepted primitives consensusChecks
      before delta after action payload
  constructed : HonestConstructionFacts constructionChecks action

end Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal
