import ShielddGnarkFormal.Protocol.Common

/-!
Handwritten NoteReshape protocol semantics.

This module imports only general mathematics. It separates consensus
acceptance from honest wallet construction and refers to no circuit, generated
module, or witness layout.
-/

namespace Shieldd.GnarkFormal.Protocol.NoteReshape

universe u v

inductive FamilyPolicy
  | reshape1x8
  | reshape8x1
  deriving DecidableEq, Repr

def FamilyPolicy.inputSlots : FamilyPolicy → Nat
  | .reshape1x8 => 1
  | .reshape8x1 => 8

def FamilyPolicy.outputSlots : FamilyPolicy → Nat
  | .reshape1x8 => 8
  | .reshape8x1 => 1

def FamilyPolicy.minimumRealInputs : FamilyPolicy → Nat
  | .reshape1x8 => 1
  | .reshape8x1 => 2

abbrev Point := Protocol.Common.Point

/-- The one address and asset context shared by every committed note. -/
structure SharedContext (F : Type u) where
  assetId : F
  diversifiedGenerator : Point F
  diversifiedGeneratorEncoding : F
  transmission : Point F
  transmissionEncoding : F
  deriving DecidableEq, Repr

/-- Authorization material from which the canonical transmission key is derived. -/
structure AuthorizationContext (F : Type u) where
  authorizationKey : Point F
  nullifierKey : F
  ivkReduced : F
  ivkQuotientA : F
  deriving DecidableEq, Repr

structure RealInput (F : Type u) (Path : Type v) where
  amount : F
  blinding : F
  commitment : F
  nullifier : F
  statePosition : F
  membershipProof : Path
  randomizedVerificationKey : Point F
  randomizer : F
  deriving DecidableEq, Repr

/--
A dummy slot contains only facts visible to the accepted language. Its unused
state-path and note-blinding witness cells are circuit auxiliaries, not protocol
data.
-/
structure DummyInput (F : Type u) where
  slotIndex : Nat
  amount : F
  nullifier : F
  nullifierSeed : F
  randomizedVerificationKey : Point F
  randomizer : F
  deriving DecidableEq, Repr

inductive Input (F : Type u) (Path : Type v)
  | real (input : RealInput F Path)
  | dummy (input : DummyInput F)
  deriving DecidableEq, Repr

structure Output (F : Type u) where
  amount : F
  blinding : F
  commitment : F
  deriving DecidableEq, Repr

structure Action (F : Type u) (Path : Type v) where
  policy : FamilyPolicy
  shared : SharedContext F
  authorization : AuthorizationContext F
  inputs : List (Input F Path)
  outputs : List (Output F)
  anchor : F
  assetAnchor : F
  routingTag : F
  routingParameterSetId : F
  balanceCommitment : Point F
  balanceBlinding : F
  publicStatementHash : F
  deriving DecidableEq, Repr

def Input.isReal : Input F Path → Bool
  | .real _ => true
  | .dummy _ => false

def Input.rk : Input F Path → Point F
  | .real input => input.randomizedVerificationKey
  | .dummy input => input.randomizedVerificationKey

def Input.nullifier : Input F Path → F
  | .real input => input.nullifier
  | .dummy input => input.nullifier

def Input.amount : Input F Path → F
  | .real input => input.amount
  | .dummy input => input.amount

/-- Consensus state observed immediately before or after this action executes. -/
structure ConsensusState (F : Type u) where
  liveSctAnchors : List F
  spentNullifiers : List F
  proofBoundOutputCommitments : List F
  deriving DecidableEq, Repr

/-- The exact shielded-pool writes owned by this NoteReshape action. -/
structure ActionDelta (F : Type u) where
  nullifiers : List F
  proofBoundOutputCommitments : List F
  deriving DecidableEq, Repr

def actionNullifiers (action : Action F Path) : List F :=
  action.inputs.map Input.nullifier

def actionOutputCommitments (action : Action F Path) : List F :=
  action.outputs.map (fun output => output.commitment)

/--
Concrete action-local transition. Ordered transaction composition and rollback
are modeled separately in `Protocol.Common`.
-/
structure ConsensusTransition
    (before : ConsensusState F)
    (action : Action F Path)
    (delta : ActionDelta F)
    (after : ConsensusState F) : Prop where
  anchorLive : action.anchor ∈ before.liveSctAnchors
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

def TargetStep
    (action : Action F Path)
    (delta : ActionDelta F) :
    ConsensusState F → ConsensusState F → Prop :=
  fun before after => ConsensusTransition before action delta after

theorem successfulActionPersistsExactOutputs
    (before after : ConsensusState F)
    (action : Action F Path)
    (delta : ActionDelta F)
    (transition : ConsensusTransition before action delta after) :
    Protocol.Common.exactExtension
      before.proofBoundOutputCommitments
      (actionOutputCommitments action)
      after.proofBoundOutputCommitments := by
  simpa [transition.deltaOutputsExact] using
    transition.outputCommitmentsExact

/--
Facts computed by the proof circuit. External authorization and state checks
are separate because they are not R1CS obligations.
-/
structure CircuitPrimitives (F : Type u) (Path : Type v) where
  canonicalTransmission : AuthorizationContext F → SharedContext F → Prop
  randomizerCanonical : F → Prop
  dummySlotIndexCanonical : Nat → DummyInput F → Prop
  realCommitment : SharedContext F → RealInput F Path → Prop
  outputCommitment : SharedContext F → Output F → Prop
  member : F → RealInput F Path → Prop
  realNullifier : AuthorizationContext F → RealInput F Path → Prop
  dummyNullifier : DummyInput F → Prop
  randomizedKeyReal :
    AuthorizationContext F → RealInput F Path → Prop
  conservation : Action F Path → Prop
  statementBinding : Action F Path → Prop

/--
Spend and transaction binding checks performed outside the circuit. The local
nonidentity RK signatures authorize this action. Because the enclosing
transaction carries a shielded proof, its aggregate binding key must also be
nonidentity and authenticate the final authorization hash.
-/
structure ExternalAuthorization (F : Type u) (Path : Type v) where
  /-- Every fixed-slot spend signature verifies over the transaction effect hash. -/
  signatureVerifiesAgainstTransactionEffectHash :
    Action F Path → Nat → Point F → Prop
  /-- The aggregate action, fee-funding, and fee balance key is nonidentity. -/
  enclosingTransactionBindingVerificationKeyNonIdentity :
    Action F Path → Prop
  /-- The aggregate binding key verifies the signature over the auth hash. -/
  enclosingTransactionBindingSignatureVerifiesAgainstAuthHash :
    Action F Path → Prop

/-- Stateless, historical, and execution checks outside the proof circuit. -/
structure StateChecks (F : Type u) (Path : Type v) where
  /--
  Decoding and stateless validation accept exactly the input, output, and
  signature counts selected by the action's deployed family.
  -/
  fixedShapeAccepted : Action F Path → Prop
  /-- The body witness anchor equals the enclosing transaction's proof context anchor. -/
  anchorMatchesTransactionContext : Action F Path → Prop
  /--
  The verifier's sole public input is the native family-domain statement hash
  projected from the body balance commitment, every ordered nullifier/RK pair,
  every ordered output commitment, and the transaction-context anchor.
  -/
  publicInputMatchesBody : Action F Path → Prop
  /-- Serialized proof bytes decode to exactly one canonical Groth16 proof. -/
  proofCanonicalEncodingAccepted : Action F Path → Prop
  /-- Groth16 verification succeeds for the action's proof and public input. -/
  proofVerificationAccepted : Action F Path → Prop
  /--
  Verification uses the exact deployed key selected by the decoded
  NoteReshape family ID.
  -/
  proofFamilyKeySelected : Action F Path → Prop
  /-- Decoding admits one canonical action-body projection. -/
  bodyProjectionCanonical : Action F Path → Prop

/-- Wallet-side facts that are deliberately outside consensus acceptance. -/
structure ConstructionChecks (F : Type u) (Path : Type v) where
  /-- Every output key is correctly wrapped under the serialized balance commitment. -/
  outgoingViewBindingCorrect : Action F Path → Prop
  /-- The plan has one canonical projection into the action body. -/
  planProjectionCanonical : Action F Path → Prop

def realCount (action : Action F Path) : Nat :=
  action.inputs.countP Input.isReal

def canonicalShape (action : Action F Path) : Prop :=
  action.inputs.length = action.policy.inputSlots ∧
  action.outputs.length = action.policy.outputSlots ∧
  action.policy.minimumRealInputs ≤ realCount action ∧
  realCount action ≤ action.policy.inputSlots

def realPrefix (action : Action F Path) : Prop :=
  ∃ real dummy,
    action.inputs = real ++ dummy ∧
    (∀ input ∈ real, input.isReal = true) ∧
    (∀ input ∈ dummy, input.isReal = false)

def randomizersCanonical
    (primitives : CircuitPrimitives F Path) (action : Action F Path) : Prop :=
  ∀ input ∈ action.inputs,
    match input with
    | .real real => primitives.randomizerCanonical real.randomizer
    | .dummy dummy => primitives.randomizerCanonical dummy.randomizer

def dummySlotIndicesCanonical
    (primitives : CircuitPrimitives F Path) (action : Action F Path) : Prop :=
  ∀ index input,
    action.inputs.get? index = some input →
      match input with
      | .real _ => True
      | .dummy dummy => primitives.dummySlotIndexCanonical index dummy

/-- Dummy slots deliberately have no input-commitment obligation. -/
def inputCommitments
    (primitives : CircuitPrimitives F Path) (action : Action F Path) : Prop :=
  ∀ input ∈ action.inputs,
    match input with
    | .real real =>
        primitives.realCommitment action.shared real
    | .dummy _ => True

def membershipAndNullifiers [Zero F]
    (primitives : CircuitPrimitives F Path) (action : Action F Path) : Prop :=
  ∀ input ∈ action.inputs,
    match input with
    | .real real =>
        primitives.member action.anchor real ∧
          primitives.realNullifier action.authorization real
    | .dummy dummy =>
        dummy.amount = 0 ∧ primitives.dummyNullifier dummy

def randomizedKeys
    (primitives : CircuitPrimitives F Path) (action : Action F Path) : Prop :=
  ∀ input ∈ action.inputs,
    match input with
    | .real real => primitives.randomizedKeyReal action.authorization real
    | .dummy _ => True

def outputCommitments
    (primitives : CircuitPrimitives F Path) (action : Action F Path) : Prop :=
  ∀ output ∈ action.outputs,
    primitives.outputCommitment action.shared output

/-- Signature facts checked by consensus outside Groth16. -/
structure ConsensusSignatureFacts [Zero F]
    (checks : ExternalAuthorization F Path) (action : Action F Path) : Prop where
  randomizedVerificationKeysNonIdentity :
    ∀ index input,
      action.inputs.get? index = some input →
        Common.Decaf.randomizedVerificationKeyNonIdentity input.rk
  verifiesEveryRk :
    ∀ index input,
      action.inputs.get? index = some input →
        checks.signatureVerifiesAgainstTransactionEffectHash
          action index input.rk
  bindingSignatureAccepted :
    Common.proofBearingBindingSignatureAccepted
      (checks.enclosingTransactionBindingVerificationKeyNonIdentity action)
      (checks.enclosingTransactionBindingSignatureVerifiesAgainstAuthHash action)

/-- Runtime acceptance facts intentionally owned outside the proof circuit. -/
structure ConsensusStateFacts
    (checks : StateChecks F Path)
    (action : Action F Path)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F) : Prop where
  fixedShapeAccepted : checks.fixedShapeAccepted action
  anchorMatchesTransactionContext :
    checks.anchorMatchesTransactionContext action
  publicInputMatchesBody : checks.publicInputMatchesBody action
  proofCanonicalEncodingAccepted :
    checks.proofCanonicalEncodingAccepted action
  proofVerificationAccepted :
    checks.proofVerificationAccepted action
  proofFamilyKeySelected : checks.proofFamilyKeySelected action
  bodyProjectionCanonical :
    checks.bodyProjectionCanonical action
  transition : ConsensusTransition before action delta after

/--
Consensus-accepted NoteReshape action projection. Generic transaction-envelope
rules remain owned by that envelope.
-/
structure ConsensusAccepted [Zero F]
    (primitives : CircuitPrimitives F Path)
    (authorizationChecks : ExternalAuthorization F Path)
    (stateChecks : StateChecks F Path)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F)
    (action : Action F Path) : Prop where
  shape : canonicalShape action
  padding : realPrefix action
  randomizersCanonical : randomizersCanonical primitives action
  dummySlotIndicesCanonical : dummySlotIndicesCanonical primitives action
  canonicalAddress :
    primitives.canonicalTransmission action.authorization action.shared
  inputsBound : inputCommitments primitives action
  membership : membershipAndNullifiers primitives action
  authorizationKeys : randomizedKeys primitives action
  outputsBound : outputCommitments primitives action
  valueConserved : primitives.conservation action
  statementBound : primitives.statementBinding action
  signatures : ConsensusSignatureFacts authorizationChecks action
  state : ConsensusStateFacts stateChecks action before delta after

/--
Consensus acceptance of the target action joined to its exact local state
transition and the enclosing transaction's committed durable effects.
-/
structure TransactionAccepted [Zero F]
    (primitives : CircuitPrimitives F Path)
    (authorizationChecks : ExternalAuthorization F Path)
    (stateChecks : StateChecks F Path)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path) : Prop where
  actionAccepted :
    ConsensusAccepted primitives authorizationChecks stateChecks
      actionBefore delta actionAfter action
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
    (primitives : CircuitPrimitives F Path)
    (authorizationChecks : ExternalAuthorization F Path)
    (stateChecks : StateChecks F Path)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path)
    (accepted :
      TransactionAccepted primitives authorizationChecks stateChecks otherStep
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
    (primitives : CircuitPrimitives F Path)
    (authorizationChecks : ExternalAuthorization F Path)
    (stateChecks : StateChecks F Path)
    (otherStep : ConsensusState F → ConsensusState F → Prop)
    (transactionBefore actionBefore : ConsensusState F)
    (delta : ActionDelta F)
    (actionAfter transactionAfter : ConsensusState F)
    (action : Action F Path)
    (accepted :
      TransactionAccepted primitives authorizationChecks stateChecks otherStep
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
    (checks : ConstructionChecks F Path)
    (action : Action F Path) : Prop where
  outgoingViewBindingCorrect :
    checks.outgoingViewBindingCorrect action
  planProjectionCanonical :
    checks.planProjectionCanonical action

/-- The explicit composition used when a claim needs both acceptance and wallet guarantees. -/
structure ConstructedAndAccepted [Zero F]
    (primitives : CircuitPrimitives F Path)
    (authorizationChecks : ExternalAuthorization F Path)
    (stateChecks : StateChecks F Path)
    (constructionChecks : ConstructionChecks F Path)
    (before : ConsensusState F)
    (delta : ActionDelta F)
    (after : ConsensusState F)
    (action : Action F Path) : Prop where
  accepted :
    ConsensusAccepted primitives authorizationChecks stateChecks
      before delta after action
  constructed : HonestConstructionFacts constructionChecks action

end Shieldd.GnarkFormal.Protocol.NoteReshape
