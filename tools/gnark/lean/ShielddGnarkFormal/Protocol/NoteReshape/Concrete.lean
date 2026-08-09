import ShielddGnarkFormal.Protocol.NoteReshape.Semantics

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
      shared.transmissionEncoding shared.clueKey

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
      2598058543572663691928291801991083332834406653466399970650219017347474033401
  | .reshape8x1 =>
      8151566796627494957780365425260097767647931594965532798107827918965818197203

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
  Poseidon377.hash7 (statementDomain policy)
    (statementField fields 0 (statementPad0 policy))
    (statementField fields 1 (statementPad1 policy))
    (statementField fields 2 (statementPad0 policy))
    (statementField fields 3 (statementPad1 policy))
    (statementField fields 4 (statementPad0 policy))
    (statementField fields 5 (statementPad1 policy))
    (statementField fields 6 (statementPad0 policy))

def statementHash (policy : FamilyPolicy) (fields : List F) : F :=
  let first := statementFirstBlock policy fields
  match policy with
  | .reshape1x8 =>
      Poseidon377.hash7 (statementDomain policy) first
        (statementField fields 7 (statementPad0 policy))
        (statementField fields 8 (statementPad1 policy))
        (statementField fields 9 (statementPad0 policy))
        (statementField fields 10 (statementPad1 policy))
        (statementField fields 11 (statementPad0 policy))
        (statementPad1 policy)
  | .reshape8x1 =>
      let second :=
        Poseidon377.hash7 (statementDomain policy) first
          (statementField fields 7 (statementPad0 policy))
          (statementField fields 8 (statementPad1 policy))
          (statementField fields 9 (statementPad0 policy))
          (statementField fields 10 (statementPad1 policy))
          (statementField fields 11 (statementPad0 policy))
          (statementField fields 12 (statementPad1 policy))
      Poseidon377.hash7 (statementDomain policy) second
        (statementField fields 13 (statementPad0 policy))
        (statementField fields 14 (statementPad1 policy))
        (statementField fields 15 (statementPad0 policy))
        (statementField fields 16 (statementPad1 policy))
        (statementField fields 17 (statementPad0 policy))
        (statementField fields 18 (statementPad1 policy))

def inputStatementFields :
    List (Input F Path24) → List F → List F
  | input :: inputs, rk :: rks =>
      input.nullifier :: rk :: inputStatementFields inputs rks
  | _, _ => []

def statementFields
    (action : Action F Path24) (balanceFq : F) (rkFqs : List F) : List F :=
  [action.anchor] ++
    action.outputs.map Output.commitment ++
    [balanceFq] ++
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
    randomizedKeyReal
    conservation
    statementBinding
  }

end Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete
