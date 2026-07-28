import ShielddGnarkFormal.Deployed.Generated.NoteReshape4x1Commitments
import ShielddGnarkFormal.NoteReshapeMembershipBridge
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape4x1.RoleBindings
import ShielddGnarkFormal.NoteReshapeStateBridge
import ShielddGnarkFormal.Protocol.NoteReshape.Refinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Handwritten action and policy refinement for the padded 4x1 deployment. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical

namespace C

open Contracts.NoteReshape4x1
open Contracts.NoteReshape4x1.Witness (
  syntheticSpends0AuthRandomizer syntheticSpends0DummyNullifierSeed
  syntheticSpends0IsDummy syntheticSpends0StateProofPosition
  syntheticSpends1AuthRandomizer syntheticSpends1DummyNullifierSeed
  syntheticSpends1IsDummy syntheticSpends1StateProofPosition
  syntheticSpends2AuthRandomizer syntheticSpends2DummyNullifierSeed
  syntheticSpends2IsDummy syntheticSpends2StateProofPosition
  syntheticSpends3AuthRandomizer syntheticSpends3DummyNullifierSeed
  syntheticSpends3IsDummy syntheticSpends3StateProofPosition
)

def path0 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg17.localRho rho)

def path1 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg31.localRho rho)

def path2 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg45.localRho rho)

def path3 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg59.localRho rho)

def realInput0 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend0NoteCommitmentInputs1 rho
    blinding := spend0NoteCommitmentInputs0 rho
    commitment := spend0StateProofCommitment rho
    nullifier := spend0NullifierClaimed rho
    statePosition := syntheticSpends0StateProofPosition rho
    membershipProof := path0 rho
    randomizedVerificationKey :=
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
    randomizer := syntheticSpends0AuthRandomizer rho
  }

def realInput1 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend1NoteCommitmentInputs1 rho
    blinding := spend1NoteCommitmentInputs0 rho
    commitment := spend1StateProofCommitment rho
    nullifier := spend1NullifierClaimed rho
    statePosition := syntheticSpends1StateProofPosition rho
    membershipProof := path1 rho
    randomizedVerificationKey :=
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
    randomizer := syntheticSpends1AuthRandomizer rho
  }

def realInput2 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend2NoteCommitmentInputs1 rho
    blinding := spend2NoteCommitmentInputs0 rho
    commitment := spend2StateProofCommitment rho
    nullifier := spend2NullifierClaimed rho
    statePosition := syntheticSpends2StateProofPosition rho
    membershipProof := path2 rho
    randomizedVerificationKey :=
      ⟨spend2RkClaimed0 rho, spend2RkClaimed1 rho⟩
    randomizer := syntheticSpends2AuthRandomizer rho
  }

def realInput3 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend3NoteCommitmentInputs1 rho
    blinding := spend3NoteCommitmentInputs0 rho
    commitment := spend3StateProofCommitment rho
    nullifier := spend3NullifierClaimed rho
    statePosition := syntheticSpends3StateProofPosition rho
    membershipProof := path3 rho
    randomizedVerificationKey :=
      ⟨spend3RkClaimed0 rho, spend3RkClaimed1 rho⟩
    randomizer := syntheticSpends3AuthRandomizer rho
  }

def dummyInput0 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  {
    slotIndex := 0
    amount := spend0NoteCommitmentInputs1 rho
    nullifier := spend0NullifierClaimed rho
    nullifierSeed := syntheticSpends0DummyNullifierSeed rho
    randomizedVerificationKey :=
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
    randomizer := syntheticSpends0AuthRandomizer rho
  }

def dummyInput1 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  {
    slotIndex := 1
    amount := spend1NoteCommitmentInputs1 rho
    nullifier := spend1NullifierClaimed rho
    nullifierSeed := syntheticSpends1DummyNullifierSeed rho
    randomizedVerificationKey :=
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
    randomizer := syntheticSpends1AuthRandomizer rho
  }

def dummyInput2 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  {
    slotIndex := 2
    amount := spend2NoteCommitmentInputs1 rho
    nullifier := spend2NullifierClaimed rho
    nullifierSeed := syntheticSpends2DummyNullifierSeed rho
    randomizedVerificationKey :=
      ⟨spend2RkClaimed0 rho, spend2RkClaimed1 rho⟩
    randomizer := syntheticSpends2AuthRandomizer rho
  }

def dummyInput3 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  {
    slotIndex := 3
    amount := spend3NoteCommitmentInputs1 rho
    nullifier := spend3NullifierClaimed rho
    nullifierSeed := syntheticSpends3DummyNullifierSeed rho
    randomizedVerificationKey :=
      ⟨spend3RkClaimed0 rho, spend3RkClaimed1 rho⟩
    randomizer := syntheticSpends3AuthRandomizer rho
  }

def input0 (rho : Nat → DeployedF) :
    Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends0IsDummy rho = 0 then
    .real (realInput0 rho)
  else
    .dummy (dummyInput0 rho)

def input1 (rho : Nat → DeployedF) :
    Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends1IsDummy rho = 0 then
    .real (realInput1 rho)
  else
    .dummy (dummyInput1 rho)

def input2 (rho : Nat → DeployedF) :
    Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends2IsDummy rho = 0 then
    .real (realInput2 rho)
  else
    .dummy (dummyInput2 rho)

def input3 (rho : Nat → DeployedF) :
    Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends3IsDummy rho = 0 then
    .real (realInput3 rho)
  else
    .dummy (dummyInput3 rho)

@[simp] theorem input0Amount (rho : Nat → DeployedF) :
    Input.amount (input0 rho) = spend0NoteCommitmentInputs1 rho := by
  by_cases h : syntheticSpends0IsDummy rho = 0 <;>
    simp [input0, realInput0, dummyInput0, Input.amount, h]

@[simp] theorem input1Amount (rho : Nat → DeployedF) :
    Input.amount (input1 rho) = spend1NoteCommitmentInputs1 rho := by
  by_cases h : syntheticSpends1IsDummy rho = 0 <;>
    simp [input1, realInput1, dummyInput1, Input.amount, h]

@[simp] theorem input2Amount (rho : Nat → DeployedF) :
    Input.amount (input2 rho) = spend2NoteCommitmentInputs1 rho := by
  by_cases h : syntheticSpends2IsDummy rho = 0 <;>
    simp [input2, realInput2, dummyInput2, Input.amount, h]

@[simp] theorem input3Amount (rho : Nat → DeployedF) :
    Input.amount (input3 rho) = spend3NoteCommitmentInputs1 rho := by
  by_cases h : syntheticSpends3IsDummy rho = 0 <;>
    simp [input3, realInput3, dummyInput3, Input.amount, h]

@[simp] theorem input0Nullifier (rho : Nat → DeployedF) :
    Input.nullifier (input0 rho) = spend0NullifierClaimed rho := by
  by_cases h : syntheticSpends0IsDummy rho = 0 <;>
    simp [input0, realInput0, dummyInput0, Input.nullifier, h]

@[simp] theorem input1Nullifier (rho : Nat → DeployedF) :
    Input.nullifier (input1 rho) = spend1NullifierClaimed rho := by
  by_cases h : syntheticSpends1IsDummy rho = 0 <;>
    simp [input1, realInput1, dummyInput1, Input.nullifier, h]

@[simp] theorem input2Nullifier (rho : Nat → DeployedF) :
    Input.nullifier (input2 rho) = spend2NullifierClaimed rho := by
  by_cases h : syntheticSpends2IsDummy rho = 0 <;>
    simp [input2, realInput2, dummyInput2, Input.nullifier, h]

@[simp] theorem input3Nullifier (rho : Nat → DeployedF) :
    Input.nullifier (input3 rho) = spend3NullifierClaimed rho := by
  by_cases h : syntheticSpends3IsDummy rho = 0 <;>
    simp [input3, realInput3, dummyInput3, Input.nullifier, h]

@[simp] theorem input0Rk (rho : Nat → DeployedF) :
    Input.rk (input0 rho) = ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
  by_cases h : syntheticSpends0IsDummy rho = 0 <;>
    simp [input0, realInput0, dummyInput0, Input.rk, h]

@[simp] theorem input1Rk (rho : Nat → DeployedF) :
    Input.rk (input1 rho) = ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩ := by
  by_cases h : syntheticSpends1IsDummy rho = 0 <;>
    simp [input1, realInput1, dummyInput1, Input.rk, h]

@[simp] theorem input2Rk (rho : Nat → DeployedF) :
    Input.rk (input2 rho) = ⟨spend2RkClaimed0 rho, spend2RkClaimed1 rho⟩ := by
  by_cases h : syntheticSpends2IsDummy rho = 0 <;>
    simp [input2, realInput2, dummyInput2, Input.rk, h]

@[simp] theorem input3Rk (rho : Nat → DeployedF) :
    Input.rk (input3 rho) = ⟨spend3RkClaimed0 rho, spend3RkClaimed1 rho⟩ := by
  by_cases h : syntheticSpends3IsDummy rho = 0 <;>
    simp [input3, realInput3, dummyInput3, Input.rk, h]

def output0 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output0NoteCommitmentInputs1 rho
    blinding := output0NoteCommitmentInputs0 rho
    commitment := output0NoteCommitmentClaimed rho
  }

def action (rho : Nat → DeployedF) :
    Action DeployedF NoteReshapeCanonical.Path24 :=
  {
    policy := .reshape4x1
    shared := NoteReshapeCanonicalAddress4x1.shared rho
    authorization := NoteReshapeCanonicalAddress4x1.authorization rho
    inputs := [input0 rho, input1 rho, input2 rho, input3 rho]
    outputs := [output0 rho]
    anchor := anchor rho
    balanceCommitment :=
      ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
    balanceBlinding := actionBalanceBlinding rho
    publicStatementHash := claimedStatementHash rho
  }

theorem selectorsOfControlSpecs
    (a b c d : DeployedF)
    (h10 : (1 : DeployedF) ≠ 0)
    (h20 : (1 + 1 : DeployedF) ≠ 0)
    (h60 : ((1 + 1 + 1) * (1 + 1) : DeployedF) ≠ 0)
    (hb : b = 0 ∨ b = 1)
    (hc : c = 0 ∨ c = 1)
    (hd : d = 0 ∨ d = 1)
    (suffix :
      a = 0 ∧
      a * (1 - b) = 0 ∧
      b * (1 - c) = 0 ∧
      c * (1 - d) = 0)
    (active :
      ((a + b + c + d) - 0) * ((a + b + c + d) - 1) = 0) :
    (a = 0 ∧ b = 0 ∧ c = 0 ∧ d = 0) ∨
    (a = 0 ∧ b = 0 ∧ c = 0 ∧ d = 1) := by
  rcases hb with hb | hb <;>
    rcases hc with hc | hc <;>
    rcases hd with hd | hd
  · exact Or.inl ⟨suffix.1, hb, hc, hd⟩
  · exact Or.inr ⟨suffix.1, hb, hc, hd⟩
  · have hbad : (1 : DeployedF) = 0 := by
      calc
        1 = c * (1 - d) := by rw [hc, hd]; ring
        _ = 0 := suffix.2.2.2
    exact (h10 hbad).elim
  · have hbad : (1 + 1 : DeployedF) = 0 := by
      calc
        1 + 1 =
            ((a + b + c + d) - 0) *
              ((a + b + c + d) - 1) := by
                rw [suffix.1, hb, hc, hd]
                ring
        _ = 0 := active
    exact (h20 hbad).elim
  · have hbad : (1 : DeployedF) = 0 := by
      calc
        1 = b * (1 - c) := by rw [hb, hc]; ring
        _ = 0 := suffix.2.2.1
    exact (h10 hbad).elim
  · have hbad : (1 : DeployedF) = 0 := by
      calc
        1 = b * (1 - c) := by rw [hb, hc]; ring
        _ = 0 := suffix.2.2.1
    exact (h10 hbad).elim
  · have hbad : (1 : DeployedF) = 0 := by
      calc
        1 = c * (1 - d) := by rw [hc, hd]; ring
        _ = 0 := suffix.2.2.2
    exact (h10 hbad).elim
  · have hbad : ((1 + 1 + 1) * (1 + 1) : DeployedF) = 0 := by
      calc
        (1 + 1 + 1) * (1 + 1) =
            ((a + b + c + d) - 0) *
              ((a + b + c + d) - 1) := by
                rw [suffix.1, hb, hc, hd]
                ring
        _ = 0 := active
    exact (h60 hbad).elim

theorem selectorFacts
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    (syntheticSpends0IsDummy rho = 0 ∧
      syntheticSpends1IsDummy rho = 0 ∧
      syntheticSpends2IsDummy rho = 0 ∧
      syntheticSpends3IsDummy rho = 0) ∨
    (syntheticSpends0IsDummy rho = 0 ∧
      syntheticSpends1IsDummy rho = 0 ∧
      syntheticSpends2IsDummy rho = 0 ∧
      syntheticSpends3IsDummy rho = 1) := by
  have h1 := facts.control.AssertBooleanSeg2
  have h2 := facts.control.AssertBooleanSeg3
  have h3 := facts.control.AssertBooleanSeg4
  have hs := facts.control.AssertDummySuffixSeg5
  have ha := facts.control.AssertActiveRangeSeg6
  change
    Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec
      (Seg2.localRho rho) at h1
  change
    Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec
      (Seg3.localRho rho) at h2
  change
    Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec
      (Seg4.localRho rho) at h3
  change
    Deployed.Templates.Semantics.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc.spec
      (Seg5.localRho rho) at hs
  change
    Deployed.Templates.Semantics.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549.spec
      (Seg6.localRho rho) at ha
  simp only [
    Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec,
    Deployed.Templates.Semantics.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc.spec,
    Deployed.Templates.Semantics.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549.spec,
    Seg2.localRho, Seg3.localRho, Seg4.localRho,
    Seg5.localRho, Seg6.localRho, Deployed.Templates.seated,
    Seg2.wireSeating, Seg3.wireSeating, Seg4.wireSeating,
    Seg5.wireSeating, Seg6.wireSeating,
    Seg2.wireSeatingTable,
    Seg3.wireSeatingTable, Seg4.wireSeatingTable,
    Seg5.wireSeatingTable, Seg6.wireSeatingTable
  ] at h1 h2 h3 hs ha
  have h10 : (1 : DeployedF) ≠ 0 := by
    exact EdwardsBridge.natLit_ne_zero 1 (by decide +kernel) (by decide +kernel)
  have h20 : (1 + 1 : DeployedF) ≠ 0 := by
    change (2 : DeployedF) ≠ 0
    exact EdwardsBridge.two_ne_zero'
  have h60 : ((1 + 1 + 1) * (1 + 1) : DeployedF) ≠ 0 := by
    change (6 : DeployedF) ≠ 0
    exact EdwardsBridge.natLit_ne_zero 6 (by decide +kernel) (by decide +kernel)
  exact selectorsOfControlSpecs
    (syntheticSpends0IsDummy rho)
    (syntheticSpends1IsDummy rho)
    (syntheticSpends2IsDummy rho)
    (syntheticSpends3IsDummy rho)
    h10 h20 h60 h1 h2 h3 hs ha

theorem actionShape
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    canonicalShape (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide
  rcases selectorFacts rho facts with selectors | selectors
  · rcases selectors with ⟨h0, h1, h2, h3⟩
    simp [canonicalShape, realCount, action, input0, input1, input2, input3,
      FamilyPolicy.inputSlots, FamilyPolicy.outputSlots,
      FamilyPolicy.minimumRealInputs, Input.isReal, h0, h1, h2, h3, h10]
  · rcases selectors with ⟨h0, h1, h2, h3⟩
    simp [canonicalShape, realCount, action, input0, input1, input2, input3,
      FamilyPolicy.inputSlots, FamilyPolicy.outputSlots,
      FamilyPolicy.minimumRealInputs, Input.isReal, h0, h1, h2, h3, h10]

theorem actionPadding
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    realPrefix (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide
  rcases selectorFacts rho facts with selectors | selectors
  · rcases selectors with ⟨h0, h1, h2, h3⟩
    refine ⟨[input0 rho, input1 rho, input2 rho, input3 rho], [], ?_, ?_, ?_⟩
    · simp [action]
    · simp [input0, input1, input2, input3, Input.isReal, h0, h1, h2, h3]
    · simp
  · rcases selectors with ⟨h0, h1, h2, h3⟩
    refine ⟨[input0 rho, input1 rho, input2 rho], [input3 rho], ?_, ?_, ?_⟩
    · simp [action]
    · simp [input0, input1, input2, Input.isReal, h0, h1, h2]
    · simp [input3, Input.isReal, h3, h10]

theorem actionCanonicalAddress
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    NoteReshapeCanonical.canonicalTransmission
      (action rho).authorization (action rho).shared := by
  simpa [action] using
    NoteReshapeCanonicalAddress4x1.canonicalTransmission_of_exact rho facts

theorem sharedAuthorizationKeyOnCurve
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩ := by
  rcases
      NoteReshapeCanonicalAddress4x1.canonicalTransmissionFacts_of_exact
        rho facts with
    ⟨_, hdtk, _⟩
  rcases hdtk.1 with ⟨akFq, hak, _⟩
  exact Decaf377Assumptions.onCurve_of_compress
    ⟨authAk0 rho, authAk1 rho⟩ akFq hak

theorem actionInputCommitments
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    inputCommitments
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  by_cases h0 : syntheticSpends0IsDummy rho = 0 <;>
    by_cases h1 : syntheticSpends1IsDummy rho = 0 <;>
    by_cases h2 : syntheticSpends2IsDummy rho = 0 <;>
    by_cases h3 : syntheticSpends3IsDummy rho = 0 <;>
    simp [
      inputCommitments, action, input0, input1, input2, input3,
      realInput0, realInput1, realInput2, realInput3,
      NoteReshapeCanonical.circuitPrimitives, NoteReshapeCanonical.realCommitment,
      h0, h1, h2, h3,
      Generated.NoteReshape4x1Commitments.spend0Commitment rho facts,
      Generated.NoteReshape4x1Commitments.spend1Commitment rho facts,
      Generated.NoteReshape4x1Commitments.spend2Commitment rho facts,
      Generated.NoteReshape4x1Commitments.spend3Commitment rho facts
    ]

theorem actionOutputCommitments
    (rho : Nat → DeployedF)
    (facts : NoteReshape4x1CircuitFacts rho) :
    outputCommitments
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  simp [
    outputCommitments, action, output0,
    NoteReshapeCanonical.circuitPrimitives, NoteReshapeCanonical.outputCommitment,
    Generated.NoteReshape4x1Commitments.output0Commitment rho facts
  ]

end C

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1Refinement
