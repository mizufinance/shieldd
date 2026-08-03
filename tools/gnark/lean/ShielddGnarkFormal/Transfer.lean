import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.Poseidon3Bridge
import ShielddGnarkFormal.Poseidon5Bridge
import ShielddGnarkFormal.Poseidon6Bridge
import ShielddGnarkFormal.Poseidon7Bridge
import ShielddGnarkFormal.AnchorMerkleSpec
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.RvkBridge
import ShielddGnarkFormal.DtkBridge
import ShielddGnarkFormal.NetBalanceCommitment2Bridge
import ShielddGnarkFormal.AckBridge
import ShielddGnarkFormal.SharedSecretBridge
import ShielddGnarkFormal.TransferSaltBridge
import ShielddGnarkFormal.PoseidonEncryptionBridge
import ShielddGnarkFormal.DleqBridge
import ShielddGnarkFormal.ThresholdRegulatedBridge

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000
set_option linter.unusedSectionVars false

/-! Compose-in-Lean model for the checked-in `transfer` Define flow.

The theorem follows the same boundary as `NoteReshape2x1`: Go emits a wiring
transcript for the Define call graph, and this file composes the gadget-level
bridges into a closed functional statement for that call graph. -/

namespace Shieldd.GnarkFormal.Transfer

abbrev F := Poseidon377.F
abbrev Point := Decaf377Assumptions.Point
abbrev Path16 := List.Vector (List.Vector F 3) 16
abbrev Path24 := List.Vector (List.Vector F 3) 24

variable [Fact (Nat.Prime Extracted.PoseidonHash1.Order)]
variable [Fact (Nat.Prime Extracted.PoseidonHash5.Order)]
variable [Fact (Nat.Prime Extracted.PoseidonHash6.Order)]
variable [Fact (Nat.Prime Extracted.PoseidonHash7.Order)]
variable [Fact (Nat.Prime Extracted.Nullifier.Order)]
variable [Fact (Nat.Prime Extracted.QuadPath24.Order)]
variable [Fact (Nat.Prime Extracted.DecafAssertEquivalent.Order)]
variable [Fact (Nat.Prime Extracted.DecafCompressToField.Order)]
variable [Fact (Nat.Prime Extracted.DecafEncodeToCurve.Order)]
variable [Fact (Nat.Prime Extracted.DecafRvk.Order)]
variable [Fact (Nat.Prime Extracted.DecafDtk.Order)]
variable [Fact (Nat.Prime Extracted.DecafEdwardsAdd.Order)]

structure Note where
  blinding : F
  amount : F
  assetID : F
  divGen : Point
  divGenFq : F
  transmission : Point
  transmissionFq : F
  transmissionKeyS : F
  clueKey : F
  commitment : F

structure Spend where
  note : Note
  stateCommitment : F
  position : F
  path : Path24
  anchor : F
  realNullifier : F
  syntheticNullifier : F
  nullifier : F
  isDummy : F
  isNotDummy : F
  authRandomizer : F
  rkClaimed : Point
  rkComputed : Point
  rkDummy : Point
  rkCompressed : F
  transmissionComputed : Point

structure Output where
  note : Note
  noteCommitment : F
  recipientDivGen : Point
  recipientTransmission : Point
  recipientAssetID : F
  recipientSlotID : F
  recipientSlotDerivation : F
  recipientD : F
  recipientLeafCommitment : F
  recipientPath : Path16
  recipientPosition : F
  recipientComplianceRoot : F
  isReceiver : F
  isDummy : F
  ack : Point

structure AssetLeaf where
  value : F
  nextIndex : F
  nextValue : F
  dkPub : Point
  dkPubFq : F
  threshold : F
  slotCount : F
  channelsHash : F
  paramsHash : F
  ringPK : Point
  ringPKFq : F
  ringIDHash : F
  policyIDHash : F
  permissionHash : F
  resourceHash : F
  ringHash : F
  leafCommitment : F
  path : Path16
  position : F

structure ComplianceTier where
  epk : Point
  epkFq : F
  c2 : F
  shared : SharedSecretBridge.SharedSecrets
  sharedSelectedFq : F
  ciphertext0 : F
  ciphertext1 : F
  ciphertext2 : F
  proofDerivedPK : Point
  proofDerivedPKFq : F
  proofEncCmt : Point
  proofEncCmtFq : F
  proofSharedPoint : Point
  proofSharedPointFq : F
  proofMetadataHash : F
  proofChallenge : F
  proofResponse : F
  -- Public DLEQ statement metadata, hashed into the transfer statement vector.
  stmtSubjectDerivation : F
  stmtRingIDHash : F
  stmtPolicyIDHash : F
  stmtResourceHash : F
  stmtPermissionHash : F
  stmtTier : F
  stmtTargetTimestamp : F
  stmtAuthorizationID : F
  stmtSalt : F
  dleq : DleqBridge.DleqInputs

structure Compliance where
  transferNonceRoot : F
  isFlagged : F
  salt0 : F
  salt1 : F
  salt2 : F
  salt3 : F
  salt4 : F
  ssDetectionFq : F
  detectionCipher0 : F
  detectionCipher1 : F
  detectionCipher2 : F
  detectionCipher3 : F
  senderCore : ComplianceTier
  senderExt : ComplianceTier
  outputCore : ComplianceTier
  outputExt : ComplianceTier

structure Inputs where
  noteCommitDomain : F
  tctLeafDomain : F
  tctNodeDomain : F
  statementDomain : F
  statementPad0 : F
  statementPad1 : F
  transferSaltDomain : F
  transferSaltLabel0 : F
  transferSaltLabel1 : F
  transferSaltLabel2 : F
  transferSaltLabel3 : F
  transferSaltLabel4 : F
  complianceStreamDomain : F
  issuerDetectionDomain : F
  flagBit : F
  anchor : F
  assetAnchor : F
  complianceAnchor : F
  targetTimestamp : F
  claimedStatementHash : F
  balanceCommitmentComputed : Point
  balanceCommitmentClaimed : Point
  balanceCommitmentFq : F
  actionBalanceBlinding : F
  isRegulated : F
  unregulatedRingPK : Point
  unregulatedDKPub : Point
  nk : F
  sharedAK : Point
  ivkReduced : F
  ivkQuotientA : F
  senderDivGen : Point
  senderDivGenFq : F
  senderTransmission : Point
  senderTransmissionFq : F
  senderAssetID : F
  senderSlotID : F
  senderSlotDerivation : F
  senderD : F
  effectiveRingPK : Point
  effectiveDKPub : Point
  senderAck : Point
  receiverAmount : F
  receiverDivGenFq : F
  receiverTransmissionFq : F
  receiverSlotID : F
  receiverSlotDerivation : F
  receiverAck : Point
  asset : AssetLeaf
  spend0 : Spend
  spend1 : Spend
  output0 : Output
  output1 : Output
  compliance : Compliance

def noteCommitmentCircuit (domain : F) (note : Note) : Prop :=
  Decaf377Assumptions.CompressToFieldCircuit note.divGen note.divGenFq ∧
  Extracted.PoseidonHash6.circuit domain note.blinding note.amount note.assetID
    note.divGenFq note.transmissionKeyS note.clueKey note.commitment

def noteCommitmentSpec (domain : F) (note : Note) : Prop :=
  Decaf377Assumptions.CompressToFieldSpec note.divGen note.divGenFq ∧
  Extracted.PoseidonHash6.circuit domain note.blinding note.amount note.assetID
    note.divGenFq note.transmissionKeyS note.clueKey note.commitment

theorem note_commitment_sound (domain : F) (note : Note) :
    noteCommitmentCircuit domain note → noteCommitmentSpec domain note := by
  intro h
  exact ⟨Decaf377Assumptions.decaf377_compressToField_sound note.divGen
    note.divGenFq h.1, h.2⟩

def complianceLeafCircuit (domain5 domain4 : F) (leaf : AssetLeaf) : Prop :=
  Decaf377Assumptions.CompressToFieldCircuit leaf.dkPub leaf.dkPubFq ∧
  Decaf377Assumptions.CompressToFieldCircuit leaf.ringPK leaf.ringPKFq ∧
  Extracted.PoseidonHash5.circuit domain5 leaf.ringPKFq leaf.ringIDHash leaf.policyIDHash
    leaf.permissionHash leaf.resourceHash leaf.ringHash ∧
  Extracted.PoseidonHash5.circuit domain4 leaf.value leaf.nextIndex leaf.nextValue
    leaf.paramsHash leaf.ringHash leaf.leafCommitment

def complianceLeafSpec (domain5 domain4 : F) (leaf : AssetLeaf) : Prop :=
  Decaf377Assumptions.CompressToFieldSpec leaf.dkPub leaf.dkPubFq ∧
  Decaf377Assumptions.CompressToFieldSpec leaf.ringPK leaf.ringPKFq ∧
  Extracted.PoseidonHash5.circuit domain5 leaf.ringPKFq leaf.ringIDHash leaf.policyIDHash
    leaf.permissionHash leaf.resourceHash leaf.ringHash ∧
  Extracted.PoseidonHash5.circuit domain4 leaf.value leaf.nextIndex leaf.nextValue
    leaf.paramsHash leaf.ringHash leaf.leafCommitment

theorem compliance_leaf_sound (domain5 domain4 : F) (leaf : AssetLeaf) :
    complianceLeafCircuit domain5 domain4 leaf → complianceLeafSpec domain5 domain4 leaf := by
  intro h
  rcases h with ⟨hdk, hring, hringHash, hleafHash⟩
  exact ⟨
    Decaf377Assumptions.decaf377_compressToField_sound leaf.dkPub leaf.dkPubFq hdk,
    Decaf377Assumptions.decaf377_compressToField_sound leaf.ringPK leaf.ringPKFq hring,
    Poseidon5Bridge.circuit_sound domain5 leaf.ringPKFq leaf.ringIDHash leaf.policyIDHash
      leaf.permissionHash leaf.resourceHash leaf.ringHash hringHash,
    Poseidon5Bridge.circuit_sound domain4 leaf.value leaf.nextIndex leaf.nextValue
      leaf.paramsHash leaf.ringHash leaf.leafCommitment hleafHash
  ⟩

def spendCircuit (i : Inputs) (s : Spend) : Prop :=
  noteCommitmentCircuit i.noteCommitDomain s.note ∧
  s.note.commitment = s.stateCommitment ∧
  Extracted.Nullifier.circuit i.nk s.stateCommitment s.position s.realNullifier ∧
  Extracted.QuadPath24.circuit i.tctNodeDomain s.stateCommitment s.position s.path s.anchor ∧
  (s.isDummy = 0 → s.nullifier = s.realNullifier) ∧
  (s.isDummy = 1 → s.nullifier = s.syntheticNullifier) ∧
  Decaf377Assumptions.RandomizedVerificationKeyCircuit i.sharedAK s.authRandomizer s.rkComputed ∧
  Decaf377Assumptions.RandomizedVerificationKeySpec Decaf377Assumptions.generator
    s.authRandomizer s.rkDummy ∧
  ThresholdRegulatedBridge.AssertEquivalentIfCircuit s.isNotDummy s.rkComputed s.rkClaimed ∧
  ThresholdRegulatedBridge.AssertEquivalentIfCircuit s.isDummy s.rkDummy s.rkClaimed ∧
  Decaf377Assumptions.CompressToFieldCircuit s.rkClaimed s.rkCompressed ∧
  Decaf377Assumptions.DiversifiedTransmissionKeyCircuit i.nk i.sharedAK s.note.divGen
    i.ivkReduced i.ivkQuotientA s.transmissionComputed ∧
  ThresholdRegulatedBridge.AssertEquivalentIfCircuit s.isNotDummy
    s.transmissionComputed s.note.transmission ∧
  ThresholdRegulatedBridge.AssertEquivalentIfCircuit 1 i.senderDivGen s.note.divGen ∧
  ThresholdRegulatedBridge.AssertEquivalentIfCircuit 1 i.senderTransmission s.note.transmission ∧
  s.note.assetID = i.spend0.note.assetID ∧
  s.note.assetID = i.senderAssetID

def spendSpec (i : Inputs) (s : Spend) : Prop :=
  noteCommitmentSpec i.noteCommitDomain s.note ∧
  s.note.commitment = s.stateCommitment ∧
  Extracted.Nullifier.circuit i.nk s.stateCommitment s.position s.realNullifier ∧
  Extracted.QuadPath24.circuit i.tctNodeDomain s.stateCommitment s.position s.path s.anchor ∧
  (s.isDummy = 0 → s.nullifier = s.realNullifier) ∧
  (s.isDummy = 1 → s.nullifier = s.syntheticNullifier) ∧
  Decaf377Assumptions.RandomizedVerificationKeySpec i.sharedAK s.authRandomizer s.rkComputed ∧
  Decaf377Assumptions.RandomizedVerificationKeySpec Decaf377Assumptions.generator
    s.authRandomizer s.rkDummy ∧
  ThresholdRegulatedBridge.AssertEquivalentIfSpec s.isNotDummy s.rkComputed s.rkClaimed ∧
  ThresholdRegulatedBridge.AssertEquivalentIfSpec s.isDummy s.rkDummy s.rkClaimed ∧
  Decaf377Assumptions.CompressToFieldSpec s.rkClaimed s.rkCompressed ∧
  Decaf377Assumptions.DiversifiedTransmissionKeySpec i.nk i.sharedAK s.note.divGen
    i.ivkReduced i.ivkQuotientA s.transmissionComputed ∧
  ThresholdRegulatedBridge.AssertEquivalentIfSpec s.isNotDummy
    s.transmissionComputed s.note.transmission ∧
  ThresholdRegulatedBridge.AssertEquivalentIfSpec 1 i.senderDivGen s.note.divGen ∧
  ThresholdRegulatedBridge.AssertEquivalentIfSpec 1 i.senderTransmission s.note.transmission ∧
  s.note.assetID = i.spend0.note.assetID ∧
  s.note.assetID = i.senderAssetID

theorem spend_sound (i : Inputs) (s : Spend) :
    spendCircuit i s → spendSpec i s := by
  intro h
  rcases h with ⟨hnote, hstate, hnullifier, hpath, hdummy0, hdummy1, hrvk,
    hrvkDummy, hrkClaimed, hrkDummy, hrkCompressed, hdtk, htransmission,
    hsenderDivGen, hsenderTransmission, hasset0, hassetSender⟩
  have hak := DtkBridge.decaf377_diversifiedTransmissionKey_ak_onCurve
    i.nk i.sharedAK s.note.divGen i.ivkReduced i.ivkQuotientA
    s.transmissionComputed hdtk
  have hdiv := DtkBridge.decaf377_compressToField_onCurve
    s.note.divGen s.note.divGenFq hnote.1
  exact ⟨
    note_commitment_sound i.noteCommitDomain s.note hnote,
    hstate,
    hnullifier,
    hpath,
    hdummy0,
    hdummy1,
    RvkBridge.decaf377_randomizedVerificationKey_sound i.sharedAK
      s.authRandomizer s.rkComputed hak hrvk,
    hrvkDummy,
    ThresholdRegulatedBridge.assert_equivalent_if_sound s.isNotDummy
      s.rkComputed s.rkClaimed hrkClaimed,
    ThresholdRegulatedBridge.assert_equivalent_if_sound s.isDummy
      s.rkDummy s.rkClaimed hrkDummy,
    Decaf377Assumptions.decaf377_compressToField_sound s.rkClaimed
      s.rkCompressed hrkCompressed,
    DtkBridge.decaf377_diversifiedTransmissionKey_sound i.nk i.sharedAK
      s.note.divGen i.ivkReduced i.ivkQuotientA s.transmissionComputed hdiv hdtk,
    ThresholdRegulatedBridge.assert_equivalent_if_sound s.isNotDummy
      s.transmissionComputed s.note.transmission htransmission,
    ThresholdRegulatedBridge.assert_equivalent_if_sound 1
      i.senderDivGen s.note.divGen hsenderDivGen,
    ThresholdRegulatedBridge.assert_equivalent_if_sound 1
      i.senderTransmission s.note.transmission hsenderTransmission,
    hasset0,
    hassetSender
  ⟩

def outputCircuit (i : Inputs) (o : Output) : Prop :=
  noteCommitmentCircuit i.noteCommitDomain o.note ∧
  o.note.commitment = o.noteCommitment ∧
  o.note.assetID = i.spend0.note.assetID ∧
  o.recipientAssetID = o.note.assetID ∧
  ThresholdRegulatedBridge.AssertEquivalentIfCircuit 1 o.recipientDivGen o.note.divGen ∧
  ThresholdRegulatedBridge.AssertEquivalentIfCircuit 1 o.recipientTransmission o.note.transmission ∧
  Decaf377Assumptions.CompressToFieldCircuit o.note.transmission o.note.transmissionFq ∧
  (i.isRegulated = 1 → o.recipientComplianceRoot = i.complianceAnchor) ∧
  (o.isReceiver = 1 → AckBridge.AckCircuit i.effectiveRingPK o.recipientD o.ack)

def outputSpec (i : Inputs) (o : Output) : Prop :=
  noteCommitmentSpec i.noteCommitDomain o.note ∧
  o.note.commitment = o.noteCommitment ∧
  o.note.assetID = i.spend0.note.assetID ∧
  o.recipientAssetID = o.note.assetID ∧
  ThresholdRegulatedBridge.AssertEquivalentIfSpec 1 o.recipientDivGen o.note.divGen ∧
  ThresholdRegulatedBridge.AssertEquivalentIfSpec 1 o.recipientTransmission o.note.transmission ∧
  Decaf377Assumptions.CompressToFieldSpec o.note.transmission o.note.transmissionFq ∧
  (i.isRegulated = 1 → o.recipientComplianceRoot = i.complianceAnchor) ∧
  (o.isReceiver = 1 → AckBridge.AckSpec i.effectiveRingPK o.recipientD o.ack)

theorem output_sound (i : Inputs) (o : Output) :
    outputCircuit i o → outputSpec i o := by
  intro h
  rcases h with ⟨hnote, hcommitment, hasset0, hrecipientAsset,
    hdivGen, htransmission, htransmissionFq, hroot, hack⟩
  exact ⟨
    note_commitment_sound i.noteCommitDomain o.note hnote,
    hcommitment,
    hasset0,
    hrecipientAsset,
    ThresholdRegulatedBridge.assert_equivalent_if_sound 1 o.recipientDivGen
      o.note.divGen hdivGen,
    ThresholdRegulatedBridge.assert_equivalent_if_sound 1 o.recipientTransmission
      o.note.transmission htransmission,
    Decaf377Assumptions.decaf377_compressToField_sound o.note.transmission
      o.note.transmissionFq htransmissionFq,
    hroot,
    by
      intro hrecv
      exact AckBridge.ack_sound i.effectiveRingPK o.recipientD o.ack (hack hrecv)
  ⟩

def tierCircuit (i : Inputs) (tier : ComplianceTier) : Prop :=
  Decaf377Assumptions.CompressToFieldCircuit tier.epk tier.epkFq ∧
  SharedSecretBridge.SharedSecretsCircuit tier.dleq.response tier.dleq.ack
    i.effectiveDKPub tier.epk i.compliance.isFlagged tier.shared ∧
  Decaf377Assumptions.CompressToFieldCircuit tier.shared.selected tier.sharedSelectedFq ∧
  Decaf377Assumptions.CompressToFieldCircuit tier.proofDerivedPK tier.proofDerivedPKFq ∧
  Decaf377Assumptions.CompressToFieldCircuit tier.proofEncCmt tier.proofEncCmtFq ∧
  Decaf377Assumptions.CompressToFieldCircuit tier.proofSharedPoint tier.proofSharedPointFq ∧
  DleqBridge.DleqCircuit tier.dleq

def tierSpec (i : Inputs) (tier : ComplianceTier) : Prop :=
  Decaf377Assumptions.CompressToFieldSpec tier.epk tier.epkFq ∧
  SharedSecretBridge.SharedSecretsSpec tier.dleq.response tier.dleq.ack
    i.effectiveDKPub tier.epk i.compliance.isFlagged tier.shared ∧
  Decaf377Assumptions.CompressToFieldSpec tier.shared.selected tier.sharedSelectedFq ∧
  Decaf377Assumptions.CompressToFieldSpec tier.proofDerivedPK tier.proofDerivedPKFq ∧
  Decaf377Assumptions.CompressToFieldSpec tier.proofEncCmt tier.proofEncCmtFq ∧
  Decaf377Assumptions.CompressToFieldSpec tier.proofSharedPoint tier.proofSharedPointFq ∧
  DleqBridge.DleqSpec tier.dleq

theorem tier_sound (i : Inputs) (tier : ComplianceTier) :
    tierCircuit i tier → tierSpec i tier := by
  intro h
  rcases h with ⟨hepk, hshared, hselected, hderived, hencCmt, hsharedPt, hdleq⟩
  exact ⟨
    Decaf377Assumptions.decaf377_compressToField_sound tier.epk tier.epkFq hepk,
    SharedSecretBridge.shared_secrets_sound tier.dleq.response tier.dleq.ack
      i.effectiveDKPub tier.epk i.compliance.isFlagged tier.shared hshared,
    Decaf377Assumptions.decaf377_compressToField_sound tier.shared.selected
      tier.sharedSelectedFq hselected,
    Decaf377Assumptions.decaf377_compressToField_sound tier.proofDerivedPK
      tier.proofDerivedPKFq hderived,
    Decaf377Assumptions.decaf377_compressToField_sound tier.proofEncCmt
      tier.proofEncCmtFq hencCmt,
    Decaf377Assumptions.decaf377_compressToField_sound tier.proofSharedPoint
      tier.proofSharedPointFq hsharedPt,
    DleqBridge.dleq_sound tier.dleq hdleq
  ⟩

def complianceCircuit (i : Inputs) : Prop :=
  ThresholdRegulatedBridge.ThresholdFlagCircuit i.receiverAmount i.asset.threshold
    i.compliance.isFlagged ∧
  TransferSaltBridge.TransferSaltCircuit i.transferSaltDomain i.compliance.transferNonceRoot
    i.transferSaltLabel0 i.compliance.salt0 ∧
  TransferSaltBridge.TransferSaltCircuit i.transferSaltDomain i.compliance.transferNonceRoot
    i.transferSaltLabel1 i.compliance.salt1 ∧
  TransferSaltBridge.TransferSaltCircuit i.transferSaltDomain i.compliance.transferNonceRoot
    i.transferSaltLabel2 i.compliance.salt2 ∧
  TransferSaltBridge.TransferSaltCircuit i.transferSaltDomain i.compliance.transferNonceRoot
    i.transferSaltLabel3 i.compliance.salt3 ∧
  TransferSaltBridge.TransferSaltCircuit i.transferSaltDomain i.compliance.transferNonceRoot
    i.transferSaltLabel4 i.compliance.salt4 ∧
  tierCircuit i i.compliance.senderCore ∧
  tierCircuit i i.compliance.senderExt ∧
  tierCircuit i i.compliance.outputCore ∧
  tierCircuit i i.compliance.outputExt ∧
  PoseidonEncryptionBridge.DetectionCircuit i.complianceStreamDomain i.issuerDetectionDomain
    i.flagBit i.isRegulated i.compliance.isFlagged i.compliance.ssDetectionFq
    i.compliance.senderCore.epkFq i.compliance.salt0 i.spend0.note.assetID
    i.senderSlotID i.receiverSlotID i.compliance.detectionCipher0
    i.compliance.detectionCipher1 i.compliance.detectionCipher2 i.compliance.detectionCipher3 ∧
  PoseidonEncryptionBridge.AmountCircuit i.complianceStreamDomain i.isRegulated
    i.compliance.senderCore.sharedSelectedFq i.compliance.senderCore.c2 i.receiverAmount
    i.compliance.senderCore.ciphertext0 ∧
  PoseidonEncryptionBridge.AddressCircuit i.complianceStreamDomain i.isRegulated
    i.compliance.senderExt.sharedSelectedFq i.compliance.senderExt.c2 i.receiverDivGenFq
    i.receiverTransmissionFq i.compliance.senderExt.ciphertext0 i.compliance.senderExt.ciphertext1
    i.compliance.senderExt.ciphertext2 ∧
  PoseidonEncryptionBridge.AmountCircuit i.complianceStreamDomain i.isRegulated
    i.compliance.outputCore.sharedSelectedFq i.compliance.outputCore.c2 i.receiverAmount
    i.compliance.outputCore.ciphertext0 ∧
  PoseidonEncryptionBridge.AddressCircuit i.complianceStreamDomain i.isRegulated
    i.compliance.outputExt.sharedSelectedFq i.compliance.outputExt.c2 i.senderDivGenFq
    i.senderTransmissionFq i.compliance.outputExt.ciphertext0 i.compliance.outputExt.ciphertext1
    i.compliance.outputExt.ciphertext2

def complianceSpec (i : Inputs) : Prop :=
  ThresholdRegulatedBridge.ThresholdFlagSpec i.receiverAmount i.asset.threshold
    i.compliance.isFlagged ∧
  TransferSaltBridge.TransferSaltSpec i.transferSaltDomain i.compliance.transferNonceRoot
    i.transferSaltLabel0 i.compliance.salt0 ∧
  TransferSaltBridge.TransferSaltSpec i.transferSaltDomain i.compliance.transferNonceRoot
    i.transferSaltLabel1 i.compliance.salt1 ∧
  TransferSaltBridge.TransferSaltSpec i.transferSaltDomain i.compliance.transferNonceRoot
    i.transferSaltLabel2 i.compliance.salt2 ∧
  TransferSaltBridge.TransferSaltSpec i.transferSaltDomain i.compliance.transferNonceRoot
    i.transferSaltLabel3 i.compliance.salt3 ∧
  TransferSaltBridge.TransferSaltSpec i.transferSaltDomain i.compliance.transferNonceRoot
    i.transferSaltLabel4 i.compliance.salt4 ∧
  tierSpec i i.compliance.senderCore ∧
  tierSpec i i.compliance.senderExt ∧
  tierSpec i i.compliance.outputCore ∧
  tierSpec i i.compliance.outputExt ∧
  PoseidonEncryptionBridge.DetectionSpec i.complianceStreamDomain i.issuerDetectionDomain
    i.flagBit i.isRegulated i.compliance.isFlagged i.compliance.ssDetectionFq
    i.compliance.senderCore.epkFq i.compliance.salt0 i.spend0.note.assetID
    i.senderSlotID i.receiverSlotID i.compliance.detectionCipher0
    i.compliance.detectionCipher1 i.compliance.detectionCipher2 i.compliance.detectionCipher3 ∧
  PoseidonEncryptionBridge.AmountSpec i.complianceStreamDomain i.isRegulated
    i.compliance.senderCore.sharedSelectedFq i.compliance.senderCore.c2 i.receiverAmount
    i.compliance.senderCore.ciphertext0 ∧
  PoseidonEncryptionBridge.AddressSpec i.complianceStreamDomain i.isRegulated
    i.compliance.senderExt.sharedSelectedFq i.compliance.senderExt.c2 i.receiverDivGenFq
    i.receiverTransmissionFq i.compliance.senderExt.ciphertext0 i.compliance.senderExt.ciphertext1
    i.compliance.senderExt.ciphertext2 ∧
  PoseidonEncryptionBridge.AmountSpec i.complianceStreamDomain i.isRegulated
    i.compliance.outputCore.sharedSelectedFq i.compliance.outputCore.c2 i.receiverAmount
    i.compliance.outputCore.ciphertext0 ∧
  PoseidonEncryptionBridge.AddressSpec i.complianceStreamDomain i.isRegulated
    i.compliance.outputExt.sharedSelectedFq i.compliance.outputExt.c2 i.senderDivGenFq
    i.senderTransmissionFq i.compliance.outputExt.ciphertext0 i.compliance.outputExt.ciphertext1
    i.compliance.outputExt.ciphertext2

theorem compliance_sound (i : Inputs) :
    complianceCircuit i → complianceSpec i := by
  intro h
  rcases h with ⟨hflag, hsalt0, hsalt1, hsalt2, hsalt3, hsalt4,
    hsenderCore, hsenderExt, houtputCore, houtputExt, hdetection,
    hsenderAmount, hsenderAddress, houtputAmount, houtputAddress⟩
  exact ⟨
    ThresholdRegulatedBridge.threshold_flag_sound i.receiverAmount i.asset.threshold
      i.compliance.isFlagged hflag,
    TransferSaltBridge.transfer_salt_sound i.transferSaltDomain
      i.compliance.transferNonceRoot i.transferSaltLabel0 i.compliance.salt0 hsalt0,
    TransferSaltBridge.transfer_salt_sound i.transferSaltDomain
      i.compliance.transferNonceRoot i.transferSaltLabel1 i.compliance.salt1 hsalt1,
    TransferSaltBridge.transfer_salt_sound i.transferSaltDomain
      i.compliance.transferNonceRoot i.transferSaltLabel2 i.compliance.salt2 hsalt2,
    TransferSaltBridge.transfer_salt_sound i.transferSaltDomain
      i.compliance.transferNonceRoot i.transferSaltLabel3 i.compliance.salt3 hsalt3,
    TransferSaltBridge.transfer_salt_sound i.transferSaltDomain
      i.compliance.transferNonceRoot i.transferSaltLabel4 i.compliance.salt4 hsalt4,
    tier_sound i i.compliance.senderCore hsenderCore,
    tier_sound i i.compliance.senderExt hsenderExt,
    tier_sound i i.compliance.outputCore houtputCore,
    tier_sound i i.compliance.outputExt houtputExt,
    PoseidonEncryptionBridge.detection_sound i.complianceStreamDomain
      i.issuerDetectionDomain i.flagBit i.isRegulated i.compliance.isFlagged
      i.compliance.ssDetectionFq i.compliance.senderCore.epkFq i.compliance.salt0
      i.spend0.note.assetID i.senderSlotID i.receiverSlotID
      i.compliance.detectionCipher0 i.compliance.detectionCipher1
      i.compliance.detectionCipher2 i.compliance.detectionCipher3 hdetection,
    PoseidonEncryptionBridge.amount_sound i.complianceStreamDomain i.isRegulated
      i.compliance.senderCore.sharedSelectedFq i.compliance.senderCore.c2
      i.receiverAmount i.compliance.senderCore.ciphertext0 hsenderAmount,
    PoseidonEncryptionBridge.address_sound i.complianceStreamDomain i.isRegulated
      i.compliance.senderExt.sharedSelectedFq i.compliance.senderExt.c2
      i.receiverDivGenFq i.receiverTransmissionFq i.compliance.senderExt.ciphertext0
      i.compliance.senderExt.ciphertext1 i.compliance.senderExt.ciphertext2 hsenderAddress,
    PoseidonEncryptionBridge.amount_sound i.complianceStreamDomain i.isRegulated
      i.compliance.outputCore.sharedSelectedFq i.compliance.outputCore.c2
      i.receiverAmount i.compliance.outputCore.ciphertext0 houtputAmount,
    PoseidonEncryptionBridge.address_sound i.complianceStreamDomain i.isRegulated
      i.compliance.outputExt.sharedSelectedFq i.compliance.outputExt.c2
      i.senderDivGenFq i.senderTransmissionFq i.compliance.outputExt.ciphertext0
      i.compliance.outputExt.ciphertext1 i.compliance.outputExt.ciphertext2 houtputAddress
  ⟩

def getD (fields : List F) (idx : Nat) (fallback : F) : F :=
  fields.getD idx fallback

def statementHashTail (domain pad0 pad1 h : F) : List F → F
  | [] => h
  | a :: b :: c :: d :: e :: f :: rest =>
      statementHashTail domain pad0 pad1
        (Poseidon7Bridge.hash7Spec domain h a b c d e f) rest
  | rest =>
      Poseidon7Bridge.hash7Spec domain h
        (getD rest 0 pad0) (getD rest 1 pad1) (getD rest 2 pad0)
        (getD rest 3 pad1) (getD rest 4 pad0) (getD rest 5 pad1)

def statementHashSpecValue (domain pad0 pad1 : F) (fields : List F) : F :=
  let h0 := Poseidon7Bridge.hash7Spec domain
    (getD fields 0 pad0) (getD fields 1 pad1) (getD fields 2 pad0)
    (getD fields 3 pad1) (getD fields 4 pad0) (getD fields 5 pad1)
    (getD fields 6 pad0)
  statementHashTail domain pad0 pad1 h0 (fields.drop 7)

/-- A compliance tier's contribution to the statement vector: `epkFq, c2`, then
its ciphertext fields. Core tiers carry one ciphertext field, ext tiers three. -/
def tierStatementChunk (tier : ComplianceTier) (extCiphertext : Bool) : List F :=
  if extCiphertext then
    [tier.epkFq, tier.c2, tier.ciphertext0, tier.ciphertext1, tier.ciphertext2]
  else
    [tier.epkFq, tier.c2, tier.ciphertext0]

/-- A compliance tier's DLEQ proof contribution to the statement vector, in the
exact order of `buildTransferStatementFields`'s `appendProofTier`. -/
def proofStatementChunk (tier : ComplianceTier) : List F :=
  [tier.stmtSubjectDerivation, tier.stmtRingIDHash, tier.stmtPolicyIDHash,
   tier.stmtResourceHash, tier.stmtPermissionHash, tier.stmtTier,
   tier.stmtTargetTimestamp, tier.stmtAuthorizationID, tier.stmtSalt,
   tier.proofDerivedPKFq, tier.proofEncCmtFq, tier.proofSharedPointFq,
   tier.proofChallenge, tier.proofResponse]

/-- Statement field vector reconstructed from the verified model fields, matching
`TransferCircuit.buildTransferStatementFields` field-for-field. Binding the
statement hash to this list (rather than a free list) is what ties the proof to
the verified outputs, nullifiers, balance commitment, and ciphertexts. -/
def transferStatementFields (i : Inputs) : List F :=
  let c := i.compliance
  [i.anchor]
    ++ [i.output0.noteCommitment, i.output1.noteCommitment]
    ++ [i.balanceCommitmentFq]
    ++ [i.spend0.nullifier, i.spend0.rkCompressed,
        i.spend1.nullifier, i.spend1.rkCompressed]
    ++ [i.assetAnchor, i.complianceAnchor]
    ++ [c.detectionCipher0, c.detectionCipher1, c.detectionCipher2, c.detectionCipher3]
    ++ tierStatementChunk c.senderCore false
    ++ tierStatementChunk c.senderExt true
    ++ tierStatementChunk c.outputCore false
    ++ tierStatementChunk c.outputExt true
    ++ [i.targetTimestamp]
    ++ proofStatementChunk c.senderCore
    ++ proofStatementChunk c.senderExt
    ++ proofStatementChunk c.outputCore
    ++ proofStatementChunk c.outputExt

def statementHashCircuit (i : Inputs) : Prop :=
  i.claimedStatementHash =
    statementHashSpecValue i.statementDomain i.statementPad0 i.statementPad1
      (transferStatementFields i)

def statementHashSpec := statementHashCircuit

structure DefineModel (i : Inputs) : Prop where
  senderDivGenCompressed :
    Decaf377Assumptions.CompressToFieldCircuit i.senderDivGen i.senderDivGenFq
  senderTransmissionCompressed :
    Decaf377Assumptions.CompressToFieldCircuit i.senderTransmission i.senderTransmissionFq
  effectiveRingPK :
    ThresholdRegulatedBridge.SelectPointCircuit i.isRegulated i.asset.ringPK i.unregulatedRingPK i.effectiveRingPK
  effectiveDKPub :
    ThresholdRegulatedBridge.SelectPointCircuit i.isRegulated i.asset.dkPub i.unregulatedDKPub i.effectiveDKPub
  assetLeaf : complianceLeafCircuit i.noteCommitDomain i.noteCommitDomain i.asset
  senderAck : AckBridge.AckCircuit i.effectiveRingPK i.senderD i.senderAck
  receiverAck : AckBridge.AckCircuit i.effectiveRingPK i.output0.recipientD i.receiverAck
  spend0 : spendCircuit i i.spend0
  spend1 : spendCircuit i i.spend1
  output0 : outputCircuit i i.output0
  output1 : outputCircuit i i.output1
  compliance : complianceCircuit i
  netBalance : Decaf377Assumptions.NetBalanceCommitment2Circuit
    i.spend0.note.amount i.spend1.note.amount i.output0.note.amount i.output1.note.amount
    i.spend0.note.assetID i.actionBalanceBlinding i.balanceCommitmentComputed
  balanceEquivalent :
    Decaf377Assumptions.AssertEquivalentCircuit i.balanceCommitmentComputed i.balanceCommitmentClaimed
  balanceCompressed :
    Decaf377Assumptions.CompressToFieldCircuit i.balanceCommitmentComputed i.balanceCommitmentFq
  statementHash : statementHashCircuit i

structure SoundSpec (i : Inputs) : Prop where
  senderDivGenCompressed :
    Decaf377Assumptions.CompressToFieldSpec i.senderDivGen i.senderDivGenFq
  senderTransmissionCompressed :
    Decaf377Assumptions.CompressToFieldSpec i.senderTransmission i.senderTransmissionFq
  effectiveRingPK :
    ThresholdRegulatedBridge.SelectPointSpec i.isRegulated i.asset.ringPK i.unregulatedRingPK i.effectiveRingPK
  effectiveDKPub :
    ThresholdRegulatedBridge.SelectPointSpec i.isRegulated i.asset.dkPub i.unregulatedDKPub i.effectiveDKPub
  assetLeaf : complianceLeafSpec i.noteCommitDomain i.noteCommitDomain i.asset
  senderAck : AckBridge.AckSpec i.effectiveRingPK i.senderD i.senderAck
  receiverAck : AckBridge.AckSpec i.effectiveRingPK i.output0.recipientD i.receiverAck
  spend0 : spendSpec i i.spend0
  spend1 : spendSpec i i.spend1
  output0 : outputSpec i i.output0
  output1 : outputSpec i i.output1
  compliance : complianceSpec i
  netBalance : Decaf377Assumptions.NetBalanceCommitment2Spec
    i.spend0.note.amount i.spend1.note.amount i.output0.note.amount i.output1.note.amount
    i.spend0.note.assetID i.actionBalanceBlinding i.balanceCommitmentComputed
  balanceCompressed :
    Decaf377Assumptions.CompressToFieldSpec i.balanceCommitmentComputed i.balanceCommitmentFq
  statementHash : statementHashSpec i

theorem transfer_circuit_sound (i : Inputs) :
    DefineModel i → SoundSpec i := by
  intro h
  exact {
    senderDivGenCompressed := Decaf377Assumptions.decaf377_compressToField_sound
      i.senderDivGen i.senderDivGenFq h.senderDivGenCompressed
    senderTransmissionCompressed := Decaf377Assumptions.decaf377_compressToField_sound
      i.senderTransmission i.senderTransmissionFq h.senderTransmissionCompressed
    effectiveRingPK := ThresholdRegulatedBridge.select_point_sound
      i.isRegulated i.asset.ringPK i.unregulatedRingPK i.effectiveRingPK h.effectiveRingPK
    effectiveDKPub := ThresholdRegulatedBridge.select_point_sound
      i.isRegulated i.asset.dkPub i.unregulatedDKPub i.effectiveDKPub h.effectiveDKPub
    assetLeaf := compliance_leaf_sound i.noteCommitDomain i.noteCommitDomain i.asset h.assetLeaf
    senderAck := AckBridge.ack_sound i.effectiveRingPK i.senderD i.senderAck h.senderAck
    receiverAck := AckBridge.ack_sound i.effectiveRingPK i.output0.recipientD i.receiverAck
      h.receiverAck
    spend0 := spend_sound i i.spend0 h.spend0
    spend1 := spend_sound i i.spend1 h.spend1
    output0 := output_sound i i.output0 h.output0
    output1 := output_sound i i.output1 h.output1
    compliance := compliance_sound i h.compliance
    netBalance := NetBalanceCommitment2Bridge.decaf377_netBalanceCommitment2_sound
      i.spend0.note.amount i.spend1.note.amount i.output0.note.amount i.output1.note.amount
      i.spend0.note.assetID i.actionBalanceBlinding i.balanceCommitmentComputed h.netBalance
    balanceCompressed := Decaf377Assumptions.decaf377_compressToField_sound
      i.balanceCommitmentComputed i.balanceCommitmentFq h.balanceCompressed
    statementHash := h.statementHash
  }

#print axioms transfer_circuit_sound

end Shieldd.GnarkFormal.Transfer
