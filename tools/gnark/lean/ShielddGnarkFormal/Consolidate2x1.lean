import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.Poseidon3Bridge
import ShielddGnarkFormal.Poseidon6Bridge
import ShielddGnarkFormal.Poseidon7Bridge
import ShielddGnarkFormal.AnchorMerkleSpec
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.Decaf377CircuitDefs
import ShielddGnarkFormal.RvkBridge
import ShielddGnarkFormal.DtkBridge
import ShielddGnarkFormal.ConservationNetBalanceCommitmentBridge

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000
set_option linter.unusedSectionVars false

/-! Compose-in-Lean model for the checked-in `consolidate2x1` note-reshape
`Define` flow.

`export-lean` is gadget-scope, so this file models the ordered whole-circuit
call graph and consumes the extracted per-gadget bridges. The fidelity gate
diffs the Go-emitted wiring transcript against
`Consolidate2x1WiringTranscript.canonical`; that certifies gadget call order
and wiring names, not this file's Prop structure.
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
  balanceCommitmentComputed : Point
  balanceCommitmentClaimed : Point
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
  Decaf377Assumptions.CompressToFieldCircuit s.spentDivGen s.note.divGenCompressed ∧
  noteCommitmentCircuit i.noteCommitDomain s.note ∧
  Extracted.PoseidonHash1.circuit i.tctLeafDomain s.note.commitment s.leafHash ∧
  Extracted.Nullifier.circuit i.nk s.note.commitment s.position s.nullifier ∧
  Extracted.QuadPath24.circuit i.tctNodeDomain s.leafHash s.position s.path i.anchor ∧
  Decaf377Assumptions.RandomizedVerificationKeyCircuit i.sharedAK s.authRandomizer s.computedRK ∧
  Decaf377Assumptions.AssertEquivalentCircuit s.computedRK s.rkClaimed ∧
  Decaf377Assumptions.CompressToFieldCircuit s.rkClaimed s.rkCompressed ∧
  Decaf377Assumptions.DiversifiedTransmissionKeyCircuit i.nk i.sharedAK s.spentDivGen
    i.ivkReduced i.ivkQuotientA s.computedTransmission ∧
  Decaf377Assumptions.OnCurveCircuit s.spentTransmission ∧
  Decaf377Assumptions.AssertEquivalentCircuit s.computedTransmission s.spentTransmission ∧
  Decaf377Assumptions.AssertEquivalentCircuit s.spentDivGen i.sharedDivGen ∧
  Decaf377Assumptions.AssertEquivalentCircuit s.spentTransmission i.sharedTransmission ∧
  s.note.assetID = i.spend0.note.assetID

def outputCircuit (i : Inputs) (o : Output) : Prop :=
  Decaf377Assumptions.CompressToFieldCircuit o.createdDivGen o.note.divGenCompressed ∧
  noteCommitmentCircuit i.noteCommitDomain o.note ∧
  o.note.commitment = i.outputCommitment ∧
  Decaf377Assumptions.DiversifiedTransmissionKeyCircuit i.nk i.sharedAK o.createdDivGen
    i.ivkReduced i.ivkQuotientA o.computedTransmission ∧
  Decaf377Assumptions.OnCurveCircuit o.createdTransmission ∧
  Decaf377Assumptions.AssertEquivalentCircuit o.computedTransmission o.createdTransmission ∧
  Decaf377Assumptions.AssertEquivalentCircuit o.createdDivGen i.sharedDivGen ∧
  Decaf377Assumptions.AssertEquivalentCircuit o.createdTransmission i.sharedTransmission ∧
  o.note.assetID = i.spend0.note.assetID

structure DefineModel (i : Inputs) : Prop where
  balanceCommitmentClaimedOnCurve :
    Decaf377Assumptions.OnCurveCircuit i.balanceCommitmentClaimed
  sharedDivGenOnCurve :
    Decaf377Assumptions.OnCurveCircuit i.sharedDivGen
  sharedTransmissionOnCurve :
    Decaf377Assumptions.OnCurveCircuit i.sharedTransmission
  spend0 : spendCircuit i i.spend0
  spend1 : spendCircuit i i.spend1
  output0 : outputCircuit i i.output0
  netBalance : Decaf377Assumptions.ConservationNetBalanceCommitmentCircuit
    i.spend0.note.amount i.spend1.note.amount i.output0.note.amount
    i.actionBalanceBlinding i.balanceCommitmentComputed
  balanceEquivalent : Decaf377Assumptions.AssertEquivalentCircuit
    i.balanceCommitmentComputed i.balanceCommitmentClaimed
  balanceCompressed : Decaf377Assumptions.CompressToFieldCircuit
    i.balanceCommitmentComputed i.balanceCommitmentFq
  statementHash : statementHashCircuit i

structure SpendSound (i : Inputs) (s : Spend) : Prop where
  divGenCompressed :
    Decaf377Assumptions.CompressToFieldSpec s.spentDivGen s.note.divGenCompressed
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
    Decaf377Assumptions.DecafEquivalent s.computedRK s.rkClaimed
  rkCompressed :
    Decaf377Assumptions.CompressToFieldSpec s.rkClaimed s.rkCompressed
  /-- The rk statement field is the compression of the honestly-computed RVK, not
  merely of the prover-chosen representative: two-torsion invariance makes them
  equal (discharges `ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE` for this seam). -/
  rkCompressedCanonical :
    Decaf377Assumptions.CompressToFieldSpec s.computedRK s.rkCompressed
  diversifiedTransmissionKey :
    Decaf377Assumptions.DiversifiedTransmissionKeySpec i.nk i.sharedAK s.spentDivGen
      i.ivkReduced i.ivkQuotientA s.computedTransmission
  transmissionEquivalent :
    Decaf377Assumptions.DecafEquivalent s.computedTransmission s.spentTransmission
  divGenShared :
    Decaf377Assumptions.DecafEquivalent s.spentDivGen i.sharedDivGen
  transmissionShared :
    Decaf377Assumptions.DecafEquivalent s.spentTransmission i.sharedTransmission
  assetShared : s.note.assetID = i.spend0.note.assetID

structure OutputSound (i : Inputs) (o : Output) : Prop where
  divGenCompressed :
    Decaf377Assumptions.CompressToFieldSpec o.createdDivGen o.note.divGenCompressed
  noteCommitment :
    Extracted.PoseidonHash6.poseidonPerm6 i.noteCommitDomain o.note.blinding o.note.amount
      o.note.assetID o.note.divGenCompressed o.note.transmissionKeyS o.note.clueKey
      (fun out => Extracted.PoseidonHash6.Gates.eq out o.note.commitment ∧ True)
  publishedCommitment : o.note.commitment = i.outputCommitment
  diversifiedTransmissionKey :
    Decaf377Assumptions.DiversifiedTransmissionKeySpec i.nk i.sharedAK o.createdDivGen
      i.ivkReduced i.ivkQuotientA o.computedTransmission
  transmissionEquivalent :
    Decaf377Assumptions.DecafEquivalent o.computedTransmission o.createdTransmission
  divGenShared :
    Decaf377Assumptions.DecafEquivalent o.createdDivGen i.sharedDivGen
  transmissionShared :
    Decaf377Assumptions.DecafEquivalent o.createdTransmission i.sharedTransmission
  assetShared : o.note.assetID = i.spend0.note.assetID

structure SoundSpec (i : Inputs) : Prop where
  spend0 : SpendSound i i.spend0
  spend1 : SpendSound i i.spend1
  output0 : OutputSound i i.output0
  netBalance :
    Decaf377Assumptions.ConservationNetBalanceCommitmentSpec
      i.spend0.note.amount i.spend1.note.amount i.output0.note.amount
      i.actionBalanceBlinding i.balanceCommitmentComputed
  balanceEquivalent :
    Decaf377Assumptions.DecafEquivalent i.balanceCommitmentComputed i.balanceCommitmentClaimed
  balanceCompressed :
    Decaf377Assumptions.CompressToFieldSpec i.balanceCommitmentComputed i.balanceCommitmentFq
  statementHash :
    Extracted.PoseidonHash7.poseidonPerm7 i.statementDomain i.anchor i.outputCommitment
      i.balanceCommitmentFq i.spend0.nullifier i.spend0.rkCompressed
      i.spend1.nullifier i.spend1.rkCompressed
      (fun out => Extracted.PoseidonHash7.Gates.eq out i.claimedStatementHash ∧ True)

private theorem spend_sound
    (i : Inputs) (s : Spend)
    (hSharedDivGenOn : Decaf377Assumptions.OnCurveCircuit i.sharedDivGen)
    (hSharedTransmissionOn : Decaf377Assumptions.OnCurveCircuit i.sharedTransmission) :
    spendCircuit i s → SpendSound i s := by
  intro h
  rcases h with
    ⟨hDivGenFq, hNote, hLeaf, hNullifier, hAnchor, hRVK, hRKEq, hRKCompressed, hDTK,
      hSpentTransOn, hTransmissionEq, hDivGenShared, hTransmissionShared, hAsset⟩
  have hDivGenOn := DtkBridge.decaf377_compressToField_onCurve s.spentDivGen
    s.note.divGenCompressed hDivGenFq
  have hAkOn := DtkBridge.decaf377_diversifiedTransmissionKey_ak_onCurve i.nk i.sharedAK
    s.spentDivGen i.ivkReduced i.ivkQuotientA s.computedTransmission hDTK
  have hRKOn := RvkBridge.decaf377_randomizedVerificationKey_onCurve i.sharedAK
    s.authRandomizer s.computedRK hAkOn hRVK
  have hRKClaimedOn := DtkBridge.decaf377_compressToField_onCurve s.rkClaimed
    s.rkCompressed hRKCompressed
  have hTransOn := DtkBridge.decaf377_diversifiedTransmissionKey_onCurve i.nk i.sharedAK
    s.spentDivGen i.ivkReduced i.ivkQuotientA s.computedTransmission hDivGenOn hDTK
  have hRVKSpec :=
    RvkBridge.decaf377_randomizedVerificationKey_sound i.sharedAK s.authRandomizer
      s.computedRK hAkOn hRVK
  have hDTKSpec :=
    DtkBridge.decaf377_diversifiedTransmissionKey_sound i.nk i.sharedAK
      s.spentDivGen i.ivkReduced i.ivkQuotientA s.computedTransmission
      hDivGenOn hDTK
  exact {
    divGenCompressed := Decaf377Assumptions.decaf377_compressToField_sound s.spentDivGen
      s.note.divGenCompressed hDivGenFq
    noteCommitment := Poseidon6Bridge.circuit_sound i.noteCommitDomain s.note.blinding
      s.note.amount s.note.assetID s.note.divGenCompressed s.note.transmissionKeyS
      s.note.clueKey s.note.commitment (by simpa [noteCommitmentCircuit] using hNote)
    leafHash := Poseidon1Bridge.circuit_sound i.tctLeafDomain s.note.commitment s.leafHash hLeaf
    nullifier := Poseidon3Bridge.circuit_sound i.nk s.note.commitment s.position s.nullifier hNullifier
    anchor := AnchorMerkle.concrete_circuit_sound24 i.tctNodeDomain s.leafHash s.position i.anchor
      s.path hAnchor
    randomizedVerificationKey :=
      hRVKSpec
    rkEquivalent := ⟨hRKOn, hRKClaimedOn,
      Decaf377Assumptions.decaf377_assertEquivalent_sound s.computedRK s.rkClaimed hRKEq⟩
    rkCompressed := Decaf377Assumptions.decaf377_compressToField_sound s.rkClaimed
      s.rkCompressed hRKCompressed
    rkCompressedCanonical :=
      Decaf377Assumptions.compress_respects_decafEquivalent s.computedRK s.rkClaimed
        s.rkCompressed
        ⟨hRKOn, hRKClaimedOn,
          Decaf377Assumptions.decaf377_assertEquivalent_sound s.computedRK s.rkClaimed hRKEq⟩
        (Decaf377Assumptions.decaf377_compressToField_sound s.rkClaimed s.rkCompressed
          hRKCompressed)
    diversifiedTransmissionKey :=
      hDTKSpec
    transmissionEquivalent := ⟨hTransOn, hSpentTransOn,
      Decaf377Assumptions.decaf377_assertEquivalent_sound s.computedTransmission
        s.spentTransmission hTransmissionEq⟩
    divGenShared := ⟨hDivGenOn, hSharedDivGenOn,
      Decaf377Assumptions.decaf377_assertEquivalent_sound s.spentDivGen i.sharedDivGen
        hDivGenShared⟩
    transmissionShared := ⟨hSpentTransOn, hSharedTransmissionOn,
      Decaf377Assumptions.decaf377_assertEquivalent_sound s.spentTransmission
        i.sharedTransmission hTransmissionShared⟩
    assetShared := hAsset
  }

private theorem output_sound
    (i : Inputs) (o : Output)
    (hSharedDivGenOn : Decaf377Assumptions.OnCurveCircuit i.sharedDivGen)
    (hSharedTransmissionOn : Decaf377Assumptions.OnCurveCircuit i.sharedTransmission) :
    outputCircuit i o → OutputSound i o := by
  intro h
  rcases h with
    ⟨hDivGenFq, hNote, hPublished, hDTK, hCreatedTransOn, hTransmissionEq,
      hDivGenShared, hTransmissionShared, hAsset⟩
  have hDivGenOn := DtkBridge.decaf377_compressToField_onCurve o.createdDivGen
    o.note.divGenCompressed hDivGenFq
  have hTransOn := DtkBridge.decaf377_diversifiedTransmissionKey_onCurve i.nk i.sharedAK
    o.createdDivGen i.ivkReduced i.ivkQuotientA o.computedTransmission hDivGenOn hDTK
  have hDTKSpec :=
    DtkBridge.decaf377_diversifiedTransmissionKey_sound i.nk i.sharedAK
      o.createdDivGen i.ivkReduced i.ivkQuotientA o.computedTransmission
      hDivGenOn hDTK
  exact {
    divGenCompressed := Decaf377Assumptions.decaf377_compressToField_sound o.createdDivGen
      o.note.divGenCompressed hDivGenFq
    noteCommitment := Poseidon6Bridge.circuit_sound i.noteCommitDomain o.note.blinding
      o.note.amount o.note.assetID o.note.divGenCompressed o.note.transmissionKeyS
      o.note.clueKey o.note.commitment (by simpa [noteCommitmentCircuit] using hNote)
    publishedCommitment := hPublished
    diversifiedTransmissionKey :=
      hDTKSpec
    transmissionEquivalent := ⟨hTransOn, hCreatedTransOn,
      Decaf377Assumptions.decaf377_assertEquivalent_sound o.computedTransmission
        o.createdTransmission hTransmissionEq⟩
    divGenShared := ⟨hDivGenOn, hSharedDivGenOn,
      Decaf377Assumptions.decaf377_assertEquivalent_sound o.createdDivGen i.sharedDivGen
        hDivGenShared⟩
    transmissionShared := ⟨hCreatedTransOn, hSharedTransmissionOn,
      Decaf377Assumptions.decaf377_assertEquivalent_sound o.createdTransmission
        i.sharedTransmission hTransmissionShared⟩
    assetShared := hAsset
  }

theorem consolidate2x1_circuit_sound
    (i : Inputs) :
    DefineModel i → SoundSpec i := by
  intro h
  have hBalanceComputedOn :=
    ConservationNetBalanceCommitmentBridge.decaf377_conservationNetBalanceCommitment_onCurve
      i.spend0.note.amount i.spend1.note.amount i.output0.note.amount
      i.actionBalanceBlinding i.balanceCommitmentComputed h.netBalance
  have hNetBalanceSpec :=
    ConservationNetBalanceCommitmentBridge.decaf377_conservationNetBalanceCommitment_sound
      i.spend0.note.amount i.spend1.note.amount i.output0.note.amount
      i.actionBalanceBlinding i.balanceCommitmentComputed h.netBalance
  exact {
    spend0 := spend_sound i i.spend0 h.sharedDivGenOnCurve h.sharedTransmissionOnCurve h.spend0
    spend1 := spend_sound i i.spend1 h.sharedDivGenOnCurve h.sharedTransmissionOnCurve h.spend1
    output0 := output_sound i i.output0 h.sharedDivGenOnCurve h.sharedTransmissionOnCurve h.output0
    netBalance := hNetBalanceSpec
    balanceEquivalent := ⟨hBalanceComputedOn, h.balanceCommitmentClaimedOnCurve,
      Decaf377Assumptions.decaf377_assertEquivalent_sound i.balanceCommitmentComputed
        i.balanceCommitmentClaimed h.balanceEquivalent⟩
    balanceCompressed := Decaf377Assumptions.decaf377_compressToField_sound
      i.balanceCommitmentComputed i.balanceCommitmentFq h.balanceCompressed
    statementHash := Poseidon7Bridge.circuit_sound i.statementDomain i.anchor i.outputCommitment
      i.balanceCommitmentFq i.spend0.nullifier i.spend0.rkCompressed i.spend1.nullifier
      i.spend1.rkCompressed i.claimedStatementHash (by simpa [statementHashCircuit] using h.statementHash)
  }

#print axioms consolidate2x1_circuit_sound

end Shieldd.GnarkFormal.Consolidate2x1
