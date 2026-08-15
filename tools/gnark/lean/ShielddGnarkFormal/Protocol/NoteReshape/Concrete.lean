import ShielddGnarkFormal.Protocol.NoteReshape.Semantics
import ShielddGnarkFormal.Protocol.NullifierHistory.Semantics

/-!
Concrete NoteReshape protocol relation.

This module fixes every cryptographic operation and domain separator used by
the accepted language. It imports no circuit, extractor, deployment, or proof
bridge module.
-/

namespace Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Protocol.NoteReshape
open Protocol.Common

abbrev F := Common.F
abbrev Path24 := Common.Path24

def syntheticDummyNullifierDomain : F :=
  4505177391167371668782402606211279728823173764000320688501210965528183505890

def member (anchor : F) (input : RealInput F Path24) : Prop :=
  Common.stateMember
    anchor input.commitment input.statePosition input.membershipProof

/-- A note commitment hashes the already-canonical shared context exactly once. -/
def noteCommitment
    (shared : SharedContext F)
    (blinding amount commitment : F) : Prop :=
  commitment =
    Common.noteCommitmentHash
      blinding amount shared.assetId shared.diversifiedGeneratorEncoding
      shared.transmissionEncoding

def canonicalTransmission
    (authorization : AuthorizationContext F)
    (shared : SharedContext F) : Prop :=
  (Common.Decaf.nonIdentity authorization.authorizationKey ∧
      Common.Decaf.nonIdentity shared.diversifiedGenerator ∧
      Common.Decaf.compressesTo
        shared.diversifiedGenerator shared.diversifiedGeneratorEncoding ∧
      Common.Decaf.diversifiedTransmissionKey
        authorization.nullifierKey authorization.authorizationKey
        shared.diversifiedGenerator authorization.ivkReduced
        authorization.ivkQuotientA shared.transmission ∧
      Common.Decaf.compressesTo shared.transmission shared.transmissionEncoding) ∧
    Common.Decaf.incomingViewingKeyNonzero authorization.ivkReduced ∧
    Common.Decaf.transmissionKeyNonIdentity shared.transmission

def randomizerCanonical (randomizer : F) : Prop :=
  randomizer.val < 2 ^ 251

def dummySlotIndexCanonical (index : Nat) (input : DummyInput F) : Prop :=
  input.slotIndex = index

def realCommitment
    (shared : SharedContext F) (input : RealInput F Path24) : Prop :=
  noteCommitment shared input.blinding input.amount input.commitment

def outputCommitment
    (shared : SharedContext F) (output : Output F) : Prop :=
  noteCommitment shared output.blinding output.amount output.commitment

def realNullifier
    (authorization : AuthorizationContext F)
    (input : RealInput F Path24) : Prop :=
  input.nullifier =
    Common.nullifier
      authorization.nullifierKey input.commitment input.statePosition

def dummyNullifier (input : DummyInput F) : Prop :=
  input.nullifier =
    Poseidon377.hash3 syntheticDummyNullifierDomain
      input.nullifierSeed input.randomizer input.slotIndex

def randomizedKeyReal
    (authorization : AuthorizationContext F)
    (input : RealInput F Path24) : Prop :=
  ∃ computed,
    Common.Decaf.randomizedVerificationKey
      authorization.authorizationKey input.randomizer computed ∧
    Common.Decaf.equivalent computed input.randomizedVerificationKey

def historyClassification :=
  NullifierHistory.FieldClassification

def conservation (action : Action F Path24) : Prop :=
  (∀ input ∈ action.inputs, input.amount.val < 2 ^ 128) ∧
  (∀ output ∈ action.outputs, output.amount.val < 2 ^ 128) ∧
  action.balanceBlinding.val < 2 ^ 251 ∧
  (action.inputs.map Input.amount).sum =
    (action.outputs.map Output.amount).sum ∧
  Common.Decaf.equivalent
    (Common.Decaf.scalarMulLE 251
      Common.Decaf.valueBlindingGenerator action.balanceBlinding)
    action.balanceCommitment

def statementDomain : FamilyPolicy → F
  | .reshape1x8 =>
      8083011558212890722062585281830291178644145861330407768425969219879481653955
  | .reshape8x1 =>
      3061752669569786885963994164501899099507756727275361723004405046505540448967

def statementPad0 : FamilyPolicy → F
  | .reshape1x8 =>
      3265217450668797951568683547963990927841845086752579767062168357780493777363
  | .reshape8x1 =>
      2310407198398592542434300833852291040911121939303310913824413219212949527351

def statementPad1 : FamilyPolicy → F
  | .reshape1x8 =>
      7628228517115617761731724754875004303107790596370304736275780016796853259057
  | .reshape8x1 =>
      2915450631090043870362923548486420008631941260295434438381537057702768319276

def statementField (fields : List F) (index : Nat) (padding : F) : F :=
  fields.getD index padding

def statementFirstBlock (policy : FamilyPolicy) (fields : List F) : F :=
  Common.statementFirstBlock
    (statementDomain policy) (statementPad0 policy) (statementPad1 policy) fields

def statementHash (policy : FamilyPolicy) (fields : List F) : F :=
  Common.statementHash
    (statementDomain policy) (statementPad0 policy) (statementPad1 policy) fields

def inputStatementFields :
    List (Input F Path24) → List F → List F
  | input :: inputs, rk :: rks =>
      input.nullifier :: rk :: input.historyRequired ::
        inputStatementFields inputs rks
  | _, _ => []

def statementFields
    (action : Action F Path24) (balanceFq : F) (rkFqs : List F) : List F :=
  [action.anchor] ++
    action.outputs.map Output.commitment ++
    [balanceFq, action.assetAnchor, action.routingTag,
      action.routingParameterSetId, action.recentPositionFloor] ++
    inputStatementFields action.inputs rkFqs

def statementBinding (action : Action F Path24) : Prop :=
  ∃ balanceFq rkFqs,
    Common.Decaf.compressesTo action.balanceCommitment balanceFq ∧
    List.Forall₂
      (fun input rkFq => Common.Decaf.compressesTo input.rk rkFq)
      action.inputs rkFqs ∧
    action.publicStatementHash =
      statementHash action.policy (statementFields action balanceFq rkFqs)

def circuitPrimitives : CircuitPrimitives F Path24 :=
  {
    canonicalTransmission
    randomizerCanonical
    dummySlotIndexCanonical
    realCommitment
    outputCommitment
    member
    realNullifier
    dummyNullifier
    historyClassification
    randomizedKeyReal
    conservation
    statementBinding
  }

end Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete
