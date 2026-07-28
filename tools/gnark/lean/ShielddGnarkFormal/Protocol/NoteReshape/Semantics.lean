import Mathlib.Data.List.Basic

/-!
Handwritten NoteReshape protocol semantics.

This module imports only general mathematics. It describes the accepted action
relation without referring to a circuit, generated module, or witness layout.
-/

namespace Shieldd.GnarkFormal.Protocol.NoteReshape

universe u v

inductive FamilyPolicy
  | reshape2x1
  | reshape1x8
  | reshape4x1
  | reshape8x1
  deriving DecidableEq, Repr

def FamilyPolicy.inputSlots : FamilyPolicy → Nat
  | .reshape2x1 => 2
  | .reshape1x8 => 1
  | .reshape4x1 => 4
  | .reshape8x1 => 8

def FamilyPolicy.outputSlots : FamilyPolicy → Nat
  | .reshape2x1 => 1
  | .reshape1x8 => 8
  | .reshape4x1 => 1
  | .reshape8x1 => 1

def FamilyPolicy.minimumRealInputs : FamilyPolicy → Nat
  | .reshape2x1 => 2
  | .reshape1x8 => 1
  | .reshape4x1 => 3
  | .reshape8x1 => 5

/-- An affine point at the protocol boundary. -/
structure Point (F : Type u) where
  x : F
  y : F
  deriving DecidableEq, Repr

/-- The one address and asset context shared by every committed note. -/
structure SharedContext (F : Type u) where
  assetId : F
  diversifiedGenerator : Point F
  diversifiedGeneratorEncoding : F
  transmission : Point F
  transmissionEncoding : F
  clueKey : F
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

/--
Facts computed by the proof circuit. External authorization and state checks
are separate because they are not R1CS obligations.
-/
structure CircuitPrimitives (F : Type u) (Path : Type v) where
  canonicalTransmission : AuthorizationContext F → SharedContext F → Prop
  realCommitment : SharedContext F → RealInput F Path → Prop
  outputCommitment : SharedContext F → Output F → Prop
  member : F → RealInput F Path → Prop
  realNullifier : AuthorizationContext F → RealInput F Path → Prop
  dummyNullifier : DummyInput F → Prop
  randomizedKeyReal :
    AuthorizationContext F → RealInput F Path → Prop
  conservation : Action F Path → Prop
  statementBinding : Action F Path → Prop

/-- Authorization checks performed for a specific action and input slot. -/
structure ExternalAuthorization (F : Type u) (Path : Type v) where
  signatureVerifies : Action F Path → Nat → Point F → Prop

/-- State-machine checks performed outside the proof circuit. -/
structure StateChecks (F : Type u) (Path : Type v) where
  nullifierFresh : F → Prop
  transitionAccepted : Action F Path → Prop

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

/-- Facts checked outside Groth16 but required by the accepted language. -/
structure ExternalSignatureFacts
    (checks : ExternalAuthorization F Path) (action : Action F Path) : Prop where
  verifiesEveryRk :
    ∀ index input,
      action.inputs.get? index = some input →
        checks.signatureVerifies action index input.rk

/-- State-machine facts intentionally owned outside the proof circuit. -/
structure StatePreconditions
    (checks : StateChecks F Path) (action : Action F Path) : Prop where
  nullifiersFresh :
    ∀ input ∈ action.inputs, checks.nullifierFresh input.nullifier
  transitionAccepted : checks.transitionAccepted action

/-- Complete accepted NoteReshape action relation. -/
structure Valid [Zero F]
    (primitives : CircuitPrimitives F Path)
    (authorizationChecks : ExternalAuthorization F Path)
    (stateChecks : StateChecks F Path)
    (action : Action F Path) : Prop where
  shape : canonicalShape action
  padding : realPrefix action
  canonicalAddress :
    primitives.canonicalTransmission action.authorization action.shared
  inputsBound : inputCommitments primitives action
  membership : membershipAndNullifiers primitives action
  authorizationKeys : randomizedKeys primitives action
  outputsBound : outputCommitments primitives action
  valueConserved : primitives.conservation action
  statementBound : primitives.statementBinding action
  signatures : ExternalSignatureFacts authorizationChecks action
  state : StatePreconditions stateChecks action

end Shieldd.GnarkFormal.Protocol.NoteReshape
