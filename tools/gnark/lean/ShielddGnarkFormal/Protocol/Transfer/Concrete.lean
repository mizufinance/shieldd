import ShielddGnarkFormal.Protocol.Transfer.Semantics

/-!
Concrete fixed-shape Transfer relation.

This module fixes every in-circuit operation and domain separator while
keeping signatures, live state, and state transitions external.
-/

namespace Shieldd.GnarkFormal.Protocol.Transfer.Concrete

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Protocol.Common
open Protocol.Transfer

abbrev F := Common.F
abbrev Point := Common.Point F
abbrev Path16 := Common.Path16
abbrev Path24 := Common.Path24

def syntheticDummyNullifierDomain : F :=
  3041609364999409075847577531230272155280155402418155237652270388041633006988198055797371203119174432623466515108592884458218309542360978972687725174250725

def assetParamsDomain : F :=
  3087648872801978871068165188801234750107370627422529216418050362074203193020

def assetRingDomain : F :=
  2332157431640739955796532904592455296874484311567337797924969966168817210674

def assetLeafDomain : F :=
  7414146286439358428123110060125696348906971675449116418017868010797147357618

def complianceLeafDomain : F :=
  168430640865250000792698691211246566687485655593739355441774434546766203703

def transferSaltDomain : F :=
  9814218119045249492697294661951473569697737758904858008162255371556112438507966978708003569286295669273377765221863563035644922446591724449801876769478652

def detectionSaltLabel : F :=
  12564708155877218457410178833992937939211731781029008507925751682156984495068030606457562405841586832263200304099711782380727153426286100388594154129444018

def senderCoreSaltLabel : F :=
  13365168806501035156639506465472598093245020697545430022235163295243003021611584069293428243926355604437148124340788936411425821036962131869903896532659887

def senderExtSaltLabel : F :=
  8369104500358155514902497413033720619773143157221530316715839449835163808928548465934128531574068433739924071162642526356734770560829908462462090200704459

def outputCoreSaltLabel : F :=
  3430843575802657376344206095792197914332450792816576252533679973747139765656255862995429569407800615567239207403674949053959301724291822161870492024145270

def outputExtSaltLabel : F :=
  2195933623676010597686438556883099899600943345048386529348046545465629036606574935992560977180283868480035785521276233630700106603484027781438861633694109

def streamDomain : F :=
  10936829558863338682826276141015194588688958566247956151898304515144099167748547571566180213204352966690791658548126427554717585389113479862591318051883330

def issuerDetectionDomain : F :=
  1630815545741996755848332658063839972564516410234564928278536917260276888050

def statementDomain : F :=
  9679326415952447587225628354984424622200780504430242864539759404776546343560513834118495220807075955030964663570741481613116645563625841316719353633011956

def statementPad0 : F :=
  12609888291095428632089497400345157051366084348006481486870291111784441113757796759547752690031988990905393063701544100053366198169981967910654948444644964

def statementPad1 : F :=
  1855908130115330217431209219671843384147856722051349334213438007788033567564056845234634145672541804948021963215749330113232011958883081701438075785775833

def unregulatedRingPk : Point :=
  ⟨3826970704928709070049425479926179513359061356766213604174343785803606509560,
   4435054869909997083204234178514060517908537592280323551921416368800279852461⟩

def unregulatedDkPub : Point :=
  ⟨6231913487103609750640950017270618557496021698282624654949751592866266721188,
   2174545944513429084000285632212505083184015391631831920218451010714927555391⟩

def unregulatedPolicyHash : F :=
  146917404083759493085774782844141783124558702674359650395366636584294839859

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
      action.assetId = action.required.note.assetId ∧
      ∃ computedTransmission,
        Common.Decaf.diversifiedTransmissionKey
          action.authorization.nullifierKey
          action.authorization.authorizationKey
          action.sender.diversifiedGenerator
          action.authorization.ivkReduced
          action.authorization.ivkQuotientA
          computedTransmission ∧
        Common.Decaf.equivalent computedTransmission action.sender.transmission) ∧
    Common.Decaf.incomingViewingKeyNonzero action.authorization.ivkReduced

def noteCommitment (note : Note F) : Prop :=
  note.commitment =
    Common.noteCommitmentHash
      note.blinding note.amount note.assetId
      note.owner.diversifiedGeneratorEncoding
      note.owner.transmissionEncoding note.clueKey

def realSpend
    (action : Action F Path24 Path16) (spend : RealSpend F Path24) : Prop :=
  spend.note.owner = action.sender ∧
    spend.note.clueKey = action.sender.clueKey ∧
    spend.note.assetId = action.assetId ∧
    spend.authRandomizer.val < 2 ^ 251 ∧
    noteCommitment spend.note ∧
    Common.stateMember action.anchor spend.note.commitment
      spend.position spend.path ∧
    spend.nullifier =
      Common.nullifier action.authorization.nullifierKey
        spend.note.commitment spend.position ∧
    (∃ computedRk,
      Common.Decaf.randomizedVerificationKey
        action.authorization.authorizationKey spend.authRandomizer computedRk ∧
      Common.Decaf.equivalent
        computedRk spend.randomizedVerificationKey) ∧
    Common.Decaf.compressesTo
      spend.randomizedVerificationKey
      spend.randomizedVerificationKeyEncoding

def requiredSpend (action : Action F Path24 Path16) : Prop :=
  realSpend action action.required

def optionalSpend (action : Action F Path24 Path16) : Prop :=
  match action.optional with
  | .real spend => realSpend action spend
  | .dummy spend =>
      spend.amount = 0 ∧
        spend.authRandomizer.val < 2 ^ 251 ∧
        spend.nullifier =
          Poseidon377.hash3 syntheticDummyNullifierDomain
            spend.nullifierSeed spend.authRandomizer 1 ∧
        Common.Decaf.compressesTo
          spend.randomizedVerificationKey
          spend.randomizedVerificationKeyEncoding

def receiverOutput (action : Action F Path24 Path16) : Prop :=
  action.receiver.note.assetId = action.assetId ∧
    addressEncoded action.receiver.note.owner ∧
    noteCommitment action.receiver.note ∧
    action.receiver.note.amount ≠ 0

def changeOutput (action : Action F Path24 Path16) : Prop :=
  action.change.note.owner = action.sender ∧
    action.change.note.clueKey = action.sender.clueKey ∧
    action.change.note.assetId = action.assetId ∧
    noteCommitment action.change.note

def assetParamsHash (leaf : IndexedAssetLeaf F) (dkPubFq : F) : F :=
  Poseidon377.hash4 assetParamsDomain dkPubFq
    leaf.threshold leaf.slotCount leaf.channelsHash

def assetRingHash (leaf : IndexedAssetLeaf F) (ringPkFq : F) : F :=
  Poseidon377.hash5 assetRingDomain ringPkFq leaf.ringIdHash
    leaf.policyIdHash leaf.permissionHash leaf.resourceHash

def assetLeafHash
    (leaf : IndexedAssetLeaf F) (dkPubFq ringPkFq : F) : F :=
  Poseidon377.hash5 assetLeafDomain leaf.value leaf.nextIndex leaf.nextValue
    (assetParamsHash leaf dkPubFq) (assetRingHash leaf ringPkFq)

def registryGap
    (assetId isRegulated low high : F) : Prop :=
  (isRegulated = 1 ∧ assetId = low) ∨
    (isRegulated = 0 ∧ low.val < assetId.val ∧ assetId.val < high.val)

def assetRegistry (action : Action F Path24 Path16) : Prop :=
  action.assetId ≠ 0 ∧
    Common.boolean action.assetProof.isRegulated ∧
    ∃ dkPubFq ringPkFq,
      Common.Decaf.compressesTo action.assetProof.leaf.dkPub dkPubFq ∧
      Common.Decaf.compressesTo action.assetProof.leaf.ringPk ringPkFq ∧
      Common.quadMember action.assetAnchor
        (assetLeafHash action.assetProof.leaf dkPubFq ringPkFq)
        action.assetProof.path action.assetProof.position ∧
      registryGap action.assetId action.assetProof.isRegulated
        action.assetProof.leaf.value action.assetProof.leaf.nextValue

def complianceLeafHash
    (proof : ComplianceProof F Path16) : F :=
  Poseidon377.hash7 complianceLeafDomain
    proof.address.diversifiedGeneratorEncoding
    proof.address.transmissionEncoding proof.address.clueKey
    proof.assetId proof.slotId proof.slotDerivation proof.d

def complianceMembership
    (action : Action F Path24 Path16)
    (proof : ComplianceProof F Path16) : Prop :=
  proof.assetId = action.assetId ∧
    proof.d.val < 2 ^ 251 ∧
    proof.position.val < 2 ^ 32 ∧
    (action.assetProof.isRegulated = 1 →
      Common.quadMember action.complianceAnchor
        (complianceLeafHash proof) proof.path proof.position)

def senderCompliance (action : Action F Path24 Path16) : Prop :=
  action.senderCompliance.address = action.sender ∧
    complianceMembership action action.senderCompliance

def receiverCompliance (action : Action F Path24 Path16) : Prop :=
  action.receiverCompliance.address = action.receiver.note.owner ∧
    complianceMembership action action.receiverCompliance

def thresholdReached (amount threshold : F) : F :=
  if amount.val < threshold.val then 0 else 1

def thresholdFlag (isRegulated amount threshold : F) : F :=
  isRegulated * thresholdReached amount threshold

def selectPoint (selector : F) (whenTrue whenFalse : Point) : Point :=
  ⟨whenFalse.x - selector * (whenFalse.x - whenTrue.x),
   whenFalse.y - selector * (whenFalse.y - whenTrue.y)⟩

def selectField (selector whenTrue whenFalse : F) : F :=
  whenFalse - selector * (whenFalse - whenTrue)

def effectiveRingPk (action : Action F Path24 Path16) : Point :=
  selectPoint action.assetProof.isRegulated
    action.assetProof.leaf.ringPk unregulatedRingPk

def effectiveDkPub (action : Action F Path24 Path16) : Point :=
  selectPoint action.assetProof.isRegulated
    action.assetProof.leaf.dkPub unregulatedDkPub

def effectiveRingIdHash (action : Action F Path24 Path16) : F :=
  selectField action.assetProof.isRegulated
    action.assetProof.leaf.ringIdHash unregulatedPolicyHash

def effectivePolicyIdHash (action : Action F Path24 Path16) : F :=
  selectField action.assetProof.isRegulated
    action.assetProof.leaf.policyIdHash unregulatedPolicyHash

def effectiveResourceHash (action : Action F Path24 Path16) : F :=
  selectField action.assetProof.isRegulated
    action.assetProof.leaf.resourceHash unregulatedPolicyHash

def effectivePermissionHash (action : Action F Path24 Path16) : F :=
  selectField action.assetProof.isRegulated
    action.assetProof.leaf.permissionHash unregulatedPolicyHash

def ack (ringPk : Point) (d : F) : Point :=
  Common.Decaf.scalarMulWindow2 251 ringPk d

def transferSalt (nonceRoot label : F) : F :=
  Poseidon377.hash2 transferSaltDomain nonceRoot label

def streamBlock (seed counter : F) : F :=
  Poseidon377.hash2 streamDomain seed counter

def sharedIssuer (dkPub : Point) (esk : F) : Point :=
  Common.Decaf.scalarMulWindow2 251 dkPub esk

def sharedUser (ackPoint : Point) (esk : F) : Point :=
  Common.Decaf.scalarMulWindow2 251 ackPoint esk

def sharedSelected
    (isFlagged : F) (ackPoint dkPub : Point) (esk : F) : Point :=
  selectPoint isFlagged
    (sharedIssuer dkPub esk) (sharedUser ackPoint esk)

def sharedSecrets
    (esk : F) (ackPoint dkPub publishedEpk : Point) (isFlagged : F)
    (issuer user selected : Point) : Prop :=
  esk.val < 2 ^ 251 ∧
    Common.Decaf.equivalent
      (Common.Decaf.scalarMulLE 251 Common.Decaf.generator esk)
      publishedEpk ∧
    issuer = sharedIssuer dkPub esk ∧
    user = sharedUser ackPoint esk ∧
    selected = sharedSelected isFlagged ackPoint dkPub esk

def addressPlaintext0 (address : Address F) : F :=
  ((address.diversifiedGeneratorEncoding.val % 2 ^ 248 : Nat) : F)

def addressPlaintext1 (address : Address F) : F :=
  ((address.diversifiedGeneratorEncoding.val / 2 ^ 248 +
    2 ^ 8 * (address.transmissionEncoding.val % 2 ^ 240) : Nat) : F)

def addressPlaintext2 (address : Address F) : F :=
  ((address.transmissionEncoding.val / 2 ^ 240 : Nat) : F)

def detectionEncryption
    (action : Action F Path24 Path16) (issuerSharedFq : F) : Prop :=
  let seed :=
    Poseidon377.hash2 issuerDetectionDomain issuerSharedFq
      action.transcript.senderCore.epkEncoding
  action.senderCompliance.slotId.val < 2 ^ 32 ∧
    action.receiverCompliance.slotId.val < 2 ^ 32 ∧
    action.transcript.detectionCiphertext 0 =
      action.assetId + streamBlock seed 0 ∧
    action.transcript.detectionCiphertext 1 =
      action.transcript.salts 0 + streamBlock seed 1 ∧
    action.transcript.detectionCiphertext 2 =
      action.senderCompliance.slotId +
        action.transcript.isFlagged * (2 ^ 32 : F) +
        streamBlock seed 2 ∧
    action.transcript.detectionCiphertext 3 =
      action.receiverCompliance.slotId + streamBlock seed 3

def amountEncryption
    (sharedFq c2 amount ciphertext : F) : Prop :=
  ciphertext = amount + streamBlock (c2 - sharedFq) 0

def addressEncryption
    (sharedFq c2 : F)
    (address : Address F) (ciphertext : Fin 3 → F) : Prop :=
  ciphertext 0 =
      addressPlaintext0 address + streamBlock (c2 - sharedFq) 0 ∧
    ciphertext 1 =
      addressPlaintext1 address + streamBlock (c2 - sharedFq) 1 ∧
    ciphertext 2 =
      addressPlaintext2 address + streamBlock (c2 - sharedFq) 2

def metadataBinding
    (action : Action F Path24 Path16) : Prop :=
  let metadata := action.transcript.metadata
  metadata.senderSubjectDerivation =
      action.senderCompliance.slotDerivation ∧
    metadata.outputSubjectDerivation =
      action.receiverCompliance.slotDerivation ∧
    metadata.ringIdHash = effectiveRingIdHash action ∧
    metadata.policyIdHash = effectivePolicyIdHash action ∧
    metadata.resourceHash = effectiveResourceHash action ∧
    metadata.permissionHash = effectivePermissionHash action ∧
    metadata.targetTimestamp = action.targetTimestamp ∧
    metadata.senderCoreSalt = action.transcript.salts 1 ∧
    metadata.senderExtSalt = action.transcript.salts 2 ∧
    metadata.outputCoreSalt = action.transcript.salts 3 ∧
    metadata.outputExtSalt = action.transcript.salts 4

def complianceTranscript (action : Action F Path24 Path16) : Prop :=
  let transcript := action.transcript
  let ringPk := effectiveRingPk action
  let dkPub := effectiveDkPub action
  let senderAck := ack ringPk action.senderCompliance.d
  let receiverAck := ack ringPk action.receiverCompliance.d
  Common.amount128 action.assetProof.leaf.threshold ∧
    Common.boolean transcript.isFlagged ∧
    transcript.isFlagged =
      thresholdFlag action.assetProof.isRegulated
        action.receiver.note.amount
        action.assetProof.leaf.threshold ∧
    transcript.salts 0 =
      transferSalt transcript.transferNonceRoot detectionSaltLabel ∧
    transcript.salts 1 =
      transferSalt transcript.transferNonceRoot senderCoreSaltLabel ∧
    transcript.salts 2 =
      transferSalt transcript.transferNonceRoot senderExtSaltLabel ∧
    transcript.salts 3 =
      transferSalt transcript.transferNonceRoot outputCoreSaltLabel ∧
    transcript.salts 4 =
      transferSalt transcript.transferNonceRoot outputExtSaltLabel ∧
    Common.Decaf.compressesTo
      transcript.senderCore.epk transcript.senderCore.epkEncoding ∧
    Common.Decaf.compressesTo
      transcript.senderExt.epk transcript.senderExt.epkEncoding ∧
    Common.Decaf.compressesTo
      transcript.outputCore.epk transcript.outputCore.epkEncoding ∧
    Common.Decaf.compressesTo
      transcript.outputExt.epk transcript.outputExt.epkEncoding ∧
    ∃ senderCoreIssuer senderCoreUser senderCoreSelected
      senderExtIssuer senderExtUser senderExtSelected
      outputCoreIssuer outputCoreUser outputCoreSelected
      outputExtIssuer outputExtUser outputExtSelected,
      sharedSecrets transcript.senderRCore senderAck dkPub
        transcript.senderCore.epk transcript.isFlagged
        senderCoreIssuer senderCoreUser senderCoreSelected ∧
      sharedSecrets transcript.senderRExt senderAck dkPub
        transcript.senderExt.epk transcript.isFlagged
        senderExtIssuer senderExtUser senderExtSelected ∧
      sharedSecrets transcript.outputRCore receiverAck dkPub
        transcript.outputCore.epk transcript.isFlagged
        outputCoreIssuer outputCoreUser outputCoreSelected ∧
      sharedSecrets transcript.outputRExt receiverAck dkPub
        transcript.outputExt.epk transcript.isFlagged
        outputExtIssuer outputExtUser outputExtSelected ∧
      (∃ senderCoreIssuerFq senderCoreSelectedFq senderExtSelectedFq
          outputCoreSelectedFq outputExtSelectedFq,
        Common.Decaf.compressesTo
          senderCoreIssuer senderCoreIssuerFq ∧
        Common.Decaf.compressesTo
          senderCoreSelected senderCoreSelectedFq ∧
        Common.Decaf.compressesTo
          senderExtSelected senderExtSelectedFq ∧
        Common.Decaf.compressesTo
          outputCoreSelected outputCoreSelectedFq ∧
        Common.Decaf.compressesTo
          outputExtSelected outputExtSelectedFq ∧
        detectionEncryption action senderCoreIssuerFq ∧
        amountEncryption senderCoreSelectedFq transcript.senderCore.c2
          action.receiver.note.amount transcript.senderCore.ciphertext ∧
        addressEncryption senderExtSelectedFq transcript.senderExt.c2
          action.receiver.note.owner transcript.senderExt.ciphertext ∧
        amountEncryption outputCoreSelectedFq transcript.outputCore.c2
          action.receiver.note.amount transcript.outputCore.ciphertext ∧
        addressEncryption outputExtSelectedFq transcript.outputExt.c2
          action.sender transcript.outputExt.ciphertext) ∧
      metadataBinding action

def balanceComputedAndCompressed
    (action : Action F Path24 Path16) : Prop :=
  Common.amount128 action.required.note.amount ∧
    Common.amount128 action.optional.amount ∧
    Common.amount128 action.receiver.note.amount ∧
    Common.amount128 action.change.note.amount ∧
    action.balanceBlinding.val < 2 ^ 251 ∧
    ∃ balanceCommitment,
      Common.Decaf.netBalanceCommitment2
        action.required.note.amount action.optional.amount
        action.receiver.note.amount action.change.note.amount
        action.assetId action.balanceBlinding balanceCommitment ∧
      Common.Decaf.compressesTo
        balanceCommitment action.balanceCommitmentEncoding

def statementFields (action : Action F Path24 Path16) : List F :=
  [action.anchor,
   action.receiver.note.commitment,
   action.change.note.commitment,
   action.balanceCommitmentEncoding,
   action.required.nullifier,
   action.required.randomizedVerificationKeyEncoding,
   action.optional.nullifier,
   action.optional.rkEncoding,
   action.assetAnchor,
   action.complianceAnchor,
   action.transcript.detectionCiphertext 0,
   action.transcript.detectionCiphertext 1,
   action.transcript.detectionCiphertext 2,
   action.transcript.detectionCiphertext 3,
   action.transcript.senderCore.epkEncoding,
   action.transcript.senderCore.c2,
   action.transcript.senderCore.ciphertext,
   action.transcript.senderExt.epkEncoding,
   action.transcript.senderExt.c2,
   action.transcript.senderExt.ciphertext 0,
   action.transcript.senderExt.ciphertext 1,
   action.transcript.senderExt.ciphertext 2,
   action.transcript.outputCore.epkEncoding,
   action.transcript.outputCore.c2,
   action.transcript.outputCore.ciphertext,
   action.transcript.outputExt.epkEncoding,
   action.transcript.outputExt.c2,
   action.transcript.outputExt.ciphertext 0,
   action.transcript.outputExt.ciphertext 1,
   action.transcript.outputExt.ciphertext 2,
   action.targetTimestamp,
   action.transcript.metadata.senderSubjectDerivation,
   action.transcript.metadata.outputSubjectDerivation,
   action.transcript.metadata.ringIdHash,
   action.transcript.metadata.policyIdHash,
   action.transcript.metadata.resourceHash,
   action.transcript.metadata.permissionHash,
   action.transcript.metadata.senderCoreSalt,
   action.transcript.metadata.senderExtSalt,
   action.transcript.metadata.outputCoreSalt,
   action.transcript.metadata.outputExtSalt]

theorem statementFields_length
    (action : Action F Path24 Path16) :
    (statementFields action).length = 41 := by
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
    receiverOutput
    changeOutput
    assetRegistry
    senderCompliance
    receiverCompliance
    complianceTranscript
    balanceComputedAndCompressed
    statementBinding
  }

end Shieldd.GnarkFormal.Protocol.Transfer.Concrete
