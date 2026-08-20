import ShielddGnarkFormal.Protocol.ShieldedIcs20Withdrawal.Semantics
import ShielddGnarkFormal.Protocol.NullifierHistory.Semantics

/-!
Concrete fixed-shape shielded ICS-20 withdrawal relation.

This module fixes every in-circuit operation and domain separator while
keeping signatures, live state, payload validation, and execution external.
-/

namespace Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.Concrete

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Protocol.Common
open Protocol.ShieldedIcs20Withdrawal

abbrev F := Common.F
abbrev Path16 := Common.Path16
abbrev Path24 := Common.Path24

def syntheticDummyNullifierDomain : F :=
  181526304053376171247364589723637831403841429402554859533353322636455030442369345356260075735367228709820980589713183912106574955618536057933728922419818

def assetLeafDomain : F :=
  7414146286439358428123110060125696348906971675449116418017868010797147357618

def complianceLeafDomain : F :=
  7622592512688680933372249798274825146043518728282898866874410341055945679433

def statementDomain : F :=
  5099812247198162288685271307539979289604747326432821046846069957140094078946971247069215549355340101659434174086569865535097331579067581494923661232825375

def statementPad0 : F :=
  1538017267323685134095196057316431426899034820600545484000193822744554991625960895975524932646323660082231674779460045819527207456926899726530841515060120

def statementPad1 : F :=
  2988268108181989154450371627017009815180171134861500088602638568069168049213532576688431839358665488874728481493197097464369677756235520181990260531716484

def addressEncoded (address : Address F) : Prop :=
  (Common.Decaf.nonIdentity address.diversifiedGenerator ∧
      Common.Decaf.compressesTo
        address.diversifiedGenerator address.diversifiedGeneratorEncoding ∧
      Common.Decaf.compressesTo
        address.transmission address.transmissionEncoding) ∧
    Common.Decaf.transmissionKeyNonIdentity address.transmission

def canonicalSender (action : Action F Path24 Path16) : Prop :=
  (Common.Decaf.nonIdentity action.authorization.authorizationKey ∧
      addressEncoded action.sender ∧
      Common.Decaf.diversifiedTransmissionKey
        action.authorization.nullifierKey
        action.authorization.authorizationKey
        action.sender.diversifiedGenerator
        action.authorization.ivkReduced
        action.authorization.ivkQuotientA
        action.sender.transmission) ∧
    Common.Decaf.incomingViewingKeyNonzero action.authorization.ivkReduced

def noteCommitment (note : Note F) : Prop :=
  note.commitment =
    Common.noteCommitmentHash
      note.blinding note.amount note.assetId
      note.owner.diversifiedGeneratorEncoding
      note.owner.transmissionEncoding

def realSpend
    (action : Action F Path24 Path16) (spend : RealSpend F Path24) : Prop :=
  spend.note.owner = action.sender ∧
    spend.note.assetId = action.withdrawal.outboundAssetId ∧
    spend.authRandomizer.val < 2 ^ 251 ∧
    noteCommitment spend.note ∧
    Common.stateMember action.anchor spend.note.commitment
      spend.position spend.path ∧
    spend.nullifier =
      Common.nullifier action.authorization.nullifierKey
        spend.note.commitment spend.position ∧
    NullifierHistory.FieldClassification
      spend.position action.recentPositionFloor spend.historyRequired ∧
    Common.Decaf.compressesTo
      spend.randomizedVerificationKey
      spend.randomizedVerificationKeyEncoding ∧
    ∃ computed,
      Common.Decaf.randomizedVerificationKey
        action.authorization.authorizationKey spend.authRandomizer computed ∧
      Common.Decaf.equivalent computed spend.randomizedVerificationKey

def requiredSpend (action : Action F Path24 Path16) : Prop :=
  realSpend action action.required

def optionalSpend (action : Action F Path24 Path16) : Prop :=
  match action.optional with
  | .real spend => realSpend action spend
  | .dummy spend =>
      spend.amount = 0 ∧
        spend.historyRequired = 0 ∧
        spend.authRandomizer.val < 2 ^ 251 ∧
        Common.Decaf.compressesTo
          spend.randomizedVerificationKey
          spend.randomizedVerificationKeyEncoding ∧
        spend.nullifier =
          Poseidon377.hash3 syntheticDummyNullifierDomain
            spend.nullifierSeed spend.authRandomizer 1

def changeOutput (action : Action F Path24 Path16) : Prop :=
  action.change.owner = action.sender ∧
    action.change.assetId = action.withdrawal.outboundAssetId ∧
    noteCommitment action.change

def assetLeafHash (leaf : IndexedAssetLeaf F) : F :=
  Poseidon377.hash5 assetLeafDomain leaf.value leaf.nextIndex leaf.nextValue
    leaf.paramsHash leaf.ringHash

def registryGap
    (assetId isRegulated low high : F) : Prop :=
  (isRegulated = 1 ∧ assetId = low) ∨
    (isRegulated = 0 ∧ low.val < assetId.val ∧ assetId.val < high.val)

def assetRegistry (action : Action F Path24 Path16) : Prop :=
  action.withdrawal.outboundAssetId ≠ 0 ∧
    Common.boolean action.assetProof.isRegulated ∧
    Common.quadMember action.assetAnchor
      (assetLeafHash action.assetProof.leaf)
      action.assetProof.path action.assetProof.position ∧
    registryGap action.withdrawal.outboundAssetId
      action.assetProof.isRegulated
      action.assetProof.leaf.value action.assetProof.leaf.nextValue

def complianceLeafHash
    (action : Action F Path24 Path16) : F :=
  Poseidon377.hash7 complianceLeafDomain
    action.sender.diversifiedGeneratorEncoding
    action.sender.transmissionEncoding action.withdrawal.outboundAssetId
    action.senderCompliance.slotId
    action.senderCompliance.slotDerivation action.senderCompliance.d
    action.senderCompliance.status

def senderCompliance (action : Action F Path24 Path16) : Prop :=
  action.senderCompliance.position.val < 2 ^ 32 ∧
    (action.assetProof.isRegulated = 1 →
      Common.quadRoot (complianceLeafHash action)
        action.senderCompliance.path action.senderCompliance.position =
          action.complianceAnchor ∧
      action.senderCompliance.status = 1)

def conservation (action : Action F Path24 Path16) : Prop :=
  Common.amount128 action.required.note.amount ∧
    Common.amount128 action.optional.amount ∧
    Common.amount128 action.change.amount ∧
    Common.amount128 action.withdrawal.outboundAmount ∧
    action.balanceBlinding.val < 2 ^ 251 ∧
    action.required.note.amount + action.optional.amount =
      action.change.amount + action.withdrawal.outboundAmount ∧
    Common.Decaf.compressesTo
      (Common.Decaf.scalarMulLE 251 Common.Decaf.valueBlindingGenerator
        action.balanceBlinding)
      action.balanceCommitmentEncoding

def statementFields
    (action : Action F Path24 Path16) : List F :=
  [action.anchor, action.change.commitment, action.balanceCommitmentEncoding,
   action.recentPositionFloor,
   action.required.nullifier,
   action.required.randomizedVerificationKeyEncoding,
   action.required.historyRequired,
   action.optional.nullifier, action.optional.rkEncoding,
   action.optional.historyRequired,
   action.assetAnchor, action.complianceAnchor, action.targetTimestamp,
   action.withdrawal.outboundAssetId, action.withdrawal.outboundAmount,
   action.withdrawal.effectHashLimbs 0,
   action.withdrawal.effectHashLimbs 1,
   action.withdrawal.effectHashLimbs 2,
   action.withdrawal.effectHashLimbs 3,
   action.routingTag,
   action.routingParameterSetId]

theorem statementFields_length
    (action : Action F Path24 Path16) :
    (statementFields action).length = 21 := by
  rfl

def statementBinding (action : Action F Path24 Path16) : Prop :=
  action.publicStatementHash =
    Common.statementHash statementDomain statementPad0 statementPad1
      (statementFields action)

def circuitPrimitives : CircuitPrimitives F Path24 Path16 :=
  {
    canonicalSender
    requiredSpend
    optionalSpend
    changeOutput
    assetRegistry
    senderCompliance
    conservation
    statementBinding
  }

end Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.Concrete
