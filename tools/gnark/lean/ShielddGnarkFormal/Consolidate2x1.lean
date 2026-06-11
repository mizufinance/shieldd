import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.Poseidon3Bridge
import ShielddGnarkFormal.Poseidon6Bridge
import ShielddGnarkFormal.Poseidon7Bridge
import ShielddGnarkFormal.AnchorMerkleSpec
import ShielddGnarkFormal.Decaf377Assumptions

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000
set_option linter.unusedSectionVars false

/-! Compose-in-Lean model for the checked-in `consolidate2x1` note-reshape
`Define` flow.

`export-lean` is gadget-scope, so this file models the ordered whole-circuit
call graph and consumes the extracted per-gadget bridges. The fidelity gate
checks these marker names against `note_reshape_circuit.go`.
-/

namespace Shieldd.GnarkFormal.Consolidate2x1

abbrev F := Poseidon377.F
abbrev Point := Decaf377Assumptions.Point
abbrev Path24 := List.Vector (List.Vector F 3) 24

variable [Fact (Nat.Prime Extracted.PoseidonHash1.Order)]
variable [Fact (Nat.Prime Extracted.PoseidonHash6.Order)]
variable [Fact (Nat.Prime Extracted.PoseidonHash7.Order)]
variable [Fact (Nat.Prime Extracted.Nullifier.Order)]
variable [Fact (Nat.Prime Extracted.QuadPath2.Order)]
variable [Fact (Nat.Prime Extracted.QuadPath24.Order)]
variable [Fact (Nat.Prime Extracted.PoseidonHash4.Order)]

def defineFidelityMarkers : List String :=
  ["NoteCommitmentWithCompressedDivGen",
   "Nullifier",
   "VerifyStateCommitmentPath",
   "RandomizedVerificationKey",
   "DiversifiedTransmissionKey",
   "computeTransferNetBalanceCommitment",
   "decafgnark.AssertEquivalent",
   "decafgnark.CompressToField",
   "ConsolidateStatementHashForShape"]

structure Note where
  blinding : F
  amount : F
  assetID : F
  divGenCompressed : F
  transmissionKeyS : F
  clueKey : F
  commitment : F

structure Spend where
  note : Note
  position : F
  nullifier : F
  leafHash : F
  path : Path24
  authRandomizer : F
  rkClaimed : Point
  rkCompressed : F
  spentDivGen : Point
  spentTransmission : Point
  computedRK : Point
  computedTransmission : Point

structure Output where
  note : Note
  createdDivGen : Point
  createdTransmission : Point
  computedTransmission : Point

structure Inputs where
  noteCommitDomain : F
  tctLeafDomain : F
  tctNodeDomain : F
  statementDomain : F
  anchor : F
  claimedStatementHash : F
  nk : F
  sharedAK : Point
  sharedDivGen : Point
  sharedTransmission : Point
  ivkReduced : F
  ivkQuotientA : F
  actionBalanceBlinding : F
  balanceCommitmentPoint : Point
  balanceCommitmentFq : F
  outputCommitment : F
  spend0 : Spend
  spend1 : Spend
  output0 : Output

def noteCommitmentCircuit (domain : F) (note : Note) : Prop :=
  Extracted.PoseidonHash6.circuit domain note.blinding note.amount note.assetID
    note.divGenCompressed note.transmissionKeyS note.clueKey note.commitment

def statementHashCircuit (i : Inputs) : Prop :=
  Extracted.PoseidonHash7.circuit i.statementDomain i.anchor i.outputCommitment
    i.balanceCommitmentFq i.spend0.nullifier i.spend0.rkCompressed
    i.spend1.nullifier i.spend1.rkCompressed i.claimedStatementHash

def spendCircuit (i : Inputs) (s : Spend) : Prop :=
  noteCommitmentCircuit i.noteCommitDomain s.note ∧
  Extracted.PoseidonHash1.circuit i.tctLeafDomain s.note.commitment s.leafHash ∧
  Extracted.Nullifier.circuit i.nk s.note.commitment s.position s.nullifier ∧
  Extracted.QuadPath24.circuit i.tctNodeDomain s.leafHash s.position s.path i.anchor ∧
  Decaf377Assumptions.RandomizedVerificationKeyCircuit i.sharedAK s.authRandomizer s.computedRK ∧
  Decaf377Assumptions.AssertEquivalentCircuit s.computedRK s.rkClaimed ∧
  Decaf377Assumptions.CompressToFieldCircuit s.rkClaimed s.rkCompressed ∧
  Decaf377Assumptions.DiversifiedTransmissionKeyCircuit i.nk i.sharedAK s.spentDivGen
    i.ivkReduced i.ivkQuotientA s.computedTransmission ∧
  Decaf377Assumptions.AssertEquivalentCircuit s.computedTransmission s.spentTransmission ∧
  Decaf377Assumptions.AssertEquivalentCircuit s.spentDivGen i.sharedDivGen ∧
  Decaf377Assumptions.AssertEquivalentCircuit s.spentTransmission i.sharedTransmission ∧
  s.note.assetID = i.spend0.note.assetID

def outputCircuit (i : Inputs) (o : Output) : Prop :=
  noteCommitmentCircuit i.noteCommitDomain o.note ∧
  o.note.commitment = i.outputCommitment ∧
  Decaf377Assumptions.DiversifiedTransmissionKeyCircuit i.nk i.sharedAK o.createdDivGen
    i.ivkReduced i.ivkQuotientA o.computedTransmission ∧
  Decaf377Assumptions.AssertEquivalentCircuit o.computedTransmission o.createdTransmission ∧
  Decaf377Assumptions.AssertEquivalentCircuit o.createdDivGen i.sharedDivGen ∧
  Decaf377Assumptions.AssertEquivalentCircuit o.createdTransmission i.sharedTransmission ∧
  o.note.assetID = i.spend0.note.assetID

structure DefineModel (i : Inputs) : Prop where
  spend0 : spendCircuit i i.spend0
  spend1 : spendCircuit i i.spend1
  output0 : outputCircuit i i.output0
  netBalance : Decaf377Assumptions.NetBalanceCommitmentCircuit
    i.spend0.note.amount i.spend1.note.amount i.output0.note.amount i.spend0.note.assetID
    i.actionBalanceBlinding i.balanceCommitmentPoint
  balanceEquivalent : Decaf377Assumptions.AssertEquivalentCircuit
    i.balanceCommitmentPoint i.balanceCommitmentPoint
  balanceCompressed : Decaf377Assumptions.CompressToFieldCircuit
    i.balanceCommitmentPoint i.balanceCommitmentFq
  statementHash : statementHashCircuit i

structure SpendSound (i : Inputs) (s : Spend) : Prop where
  noteCommitment :
    Extracted.PoseidonHash6.poseidonPerm6 i.noteCommitDomain s.note.blinding s.note.amount
      s.note.assetID s.note.divGenCompressed s.note.transmissionKeyS s.note.clueKey
      (fun out => Extracted.PoseidonHash6.Gates.eq out s.note.commitment ∧ True)
  leafHash :
    Extracted.PoseidonHash1.poseidonPerm1 i.tctLeafDomain s.note.commitment
      (fun out => Extracted.PoseidonHash1.Gates.eq out s.leafHash ∧ True)
  nullifier :
    s.nullifier = Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
      i.nk s.note.commitment s.position
  anchor :
    ∃ bits, Extracted.QuadPath24.Gates.to_binary s.position 48 bits ∧
      i.anchor = AnchorMerkle.recover24
        (fun d a b c e => Poseidon4Bridge.permSpec4 d a b c e)
        i.tctNodeDomain s.leafHash s.path bits
  randomizedVerificationKey :
    Decaf377Assumptions.RandomizedVerificationKeySpec i.sharedAK s.authRandomizer s.computedRK
  rkEquivalent :
    Decaf377Assumptions.AssertEquivalentSpec s.computedRK s.rkClaimed
  rkCompressed :
    Decaf377Assumptions.CompressToFieldSpec s.rkClaimed s.rkCompressed
  diversifiedTransmissionKey :
    Decaf377Assumptions.DiversifiedTransmissionKeySpec i.nk i.sharedAK s.spentDivGen
      i.ivkReduced i.ivkQuotientA s.computedTransmission
  transmissionEquivalent :
    Decaf377Assumptions.AssertEquivalentSpec s.computedTransmission s.spentTransmission
  divGenShared :
    Decaf377Assumptions.AssertEquivalentSpec s.spentDivGen i.sharedDivGen
  transmissionShared :
    Decaf377Assumptions.AssertEquivalentSpec s.spentTransmission i.sharedTransmission
  assetShared : s.note.assetID = i.spend0.note.assetID

structure OutputSound (i : Inputs) (o : Output) : Prop where
  noteCommitment :
    Extracted.PoseidonHash6.poseidonPerm6 i.noteCommitDomain o.note.blinding o.note.amount
      o.note.assetID o.note.divGenCompressed o.note.transmissionKeyS o.note.clueKey
      (fun out => Extracted.PoseidonHash6.Gates.eq out o.note.commitment ∧ True)
  publishedCommitment : o.note.commitment = i.outputCommitment
  diversifiedTransmissionKey :
    Decaf377Assumptions.DiversifiedTransmissionKeySpec i.nk i.sharedAK o.createdDivGen
      i.ivkReduced i.ivkQuotientA o.computedTransmission
  transmissionEquivalent :
    Decaf377Assumptions.AssertEquivalentSpec o.computedTransmission o.createdTransmission
  divGenShared :
    Decaf377Assumptions.AssertEquivalentSpec o.createdDivGen i.sharedDivGen
  transmissionShared :
    Decaf377Assumptions.AssertEquivalentSpec o.createdTransmission i.sharedTransmission
  assetShared : o.note.assetID = i.spend0.note.assetID

structure SoundSpec (i : Inputs) : Prop where
  spend0 : SpendSound i i.spend0
  spend1 : SpendSound i i.spend1
  output0 : OutputSound i i.output0
  netBalance :
    Decaf377Assumptions.NetBalanceCommitmentSpec
      i.spend0.note.amount i.spend1.note.amount i.output0.note.amount i.spend0.note.assetID
      i.actionBalanceBlinding i.balanceCommitmentPoint
  balanceEquivalent :
    Decaf377Assumptions.AssertEquivalentSpec i.balanceCommitmentPoint i.balanceCommitmentPoint
  balanceCompressed :
    Decaf377Assumptions.CompressToFieldSpec i.balanceCommitmentPoint i.balanceCommitmentFq
  statementHash :
    Extracted.PoseidonHash7.poseidonPerm7 i.statementDomain i.anchor i.outputCommitment
      i.balanceCommitmentFq i.spend0.nullifier i.spend0.rkCompressed
      i.spend1.nullifier i.spend1.rkCompressed
      (fun out => Extracted.PoseidonHash7.Gates.eq out i.claimedStatementHash ∧ True)

private theorem spend_sound
    (i : Inputs) (s : Spend) :
    spendCircuit i s → SpendSound i s := by
  intro h
  rcases h with
    ⟨hNote, hLeaf, hNullifier, hAnchor, hRVK, hRKEq, hRKCompressed, hDTK,
      hTransmissionEq, hDivGenShared, hTransmissionShared, hAsset⟩
  exact {
    noteCommitment := Poseidon6Bridge.circuit_sound i.noteCommitDomain s.note.blinding
      s.note.amount s.note.assetID s.note.divGenCompressed s.note.transmissionKeyS
      s.note.clueKey s.note.commitment (by simpa [noteCommitmentCircuit] using hNote)
    leafHash := Poseidon1Bridge.circuit_sound i.tctLeafDomain s.note.commitment s.leafHash hLeaf
    nullifier := Poseidon3Bridge.circuit_sound i.nk s.note.commitment s.position s.nullifier hNullifier
    anchor := AnchorMerkle.concrete_circuit_sound24 i.tctNodeDomain s.leafHash s.position i.anchor
      s.path hAnchor
    randomizedVerificationKey :=
      Decaf377Assumptions.decaf377_randomizedVerificationKey_sound i.sharedAK s.authRandomizer
        s.computedRK hRVK
    rkEquivalent := Decaf377Assumptions.decaf377_assertEquivalent_sound s.computedRK
      s.rkClaimed hRKEq
    rkCompressed := Decaf377Assumptions.decaf377_compressToField_sound s.rkClaimed
      s.rkCompressed hRKCompressed
    diversifiedTransmissionKey :=
      Decaf377Assumptions.decaf377_diversifiedTransmissionKey_sound i.nk i.sharedAK
        s.spentDivGen i.ivkReduced i.ivkQuotientA s.computedTransmission hDTK
    transmissionEquivalent := Decaf377Assumptions.decaf377_assertEquivalent_sound
      s.computedTransmission s.spentTransmission hTransmissionEq
    divGenShared := Decaf377Assumptions.decaf377_assertEquivalent_sound s.spentDivGen
      i.sharedDivGen hDivGenShared
    transmissionShared := Decaf377Assumptions.decaf377_assertEquivalent_sound
      s.spentTransmission i.sharedTransmission hTransmissionShared
    assetShared := hAsset
  }

private theorem output_sound
    (i : Inputs) (o : Output) :
    outputCircuit i o → OutputSound i o := by
  intro h
  rcases h with
    ⟨hNote, hPublished, hDTK, hTransmissionEq, hDivGenShared, hTransmissionShared, hAsset⟩
  exact {
    noteCommitment := Poseidon6Bridge.circuit_sound i.noteCommitDomain o.note.blinding
      o.note.amount o.note.assetID o.note.divGenCompressed o.note.transmissionKeyS
      o.note.clueKey o.note.commitment (by simpa [noteCommitmentCircuit] using hNote)
    publishedCommitment := hPublished
    diversifiedTransmissionKey :=
      Decaf377Assumptions.decaf377_diversifiedTransmissionKey_sound i.nk i.sharedAK
        o.createdDivGen i.ivkReduced i.ivkQuotientA o.computedTransmission hDTK
    transmissionEquivalent := Decaf377Assumptions.decaf377_assertEquivalent_sound
      o.computedTransmission o.createdTransmission hTransmissionEq
    divGenShared := Decaf377Assumptions.decaf377_assertEquivalent_sound o.createdDivGen
      i.sharedDivGen hDivGenShared
    transmissionShared := Decaf377Assumptions.decaf377_assertEquivalent_sound
      o.createdTransmission i.sharedTransmission hTransmissionShared
    assetShared := hAsset
  }

theorem consolidate2x1_circuit_sound
    (i : Inputs) :
    DefineModel i → SoundSpec i := by
  intro h
  exact {
    spend0 := spend_sound i i.spend0 h.spend0
    spend1 := spend_sound i i.spend1 h.spend1
    output0 := output_sound i i.output0 h.output0
    netBalance := Decaf377Assumptions.decaf377_netBalanceCommitment_sound
      i.spend0.note.amount i.spend1.note.amount i.output0.note.amount i.spend0.note.assetID
      i.actionBalanceBlinding i.balanceCommitmentPoint h.netBalance
    balanceEquivalent := Decaf377Assumptions.decaf377_assertEquivalent_sound
      i.balanceCommitmentPoint i.balanceCommitmentPoint h.balanceEquivalent
    balanceCompressed := Decaf377Assumptions.decaf377_compressToField_sound
      i.balanceCommitmentPoint i.balanceCommitmentFq h.balanceCompressed
    statementHash := Poseidon7Bridge.circuit_sound i.statementDomain i.anchor i.outputCommitment
      i.balanceCommitmentFq i.spend0.nullifier i.spend0.rkCompressed i.spend1.nullifier
      i.spend1.rkCompressed i.claimedStatementHash (by simpa [statementHashCircuit] using h.statementHash)
  }

#print axioms consolidate2x1_circuit_sound

end Shieldd.GnarkFormal.Consolidate2x1
