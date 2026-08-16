import ShielddGnarkFormal.Deployed.Generated.NoteReshape8x1Commitments
import ShielddGnarkFormal.NoteReshapeMembershipBridge
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.RoleBindings
import ShielddGnarkFormal.NoteReshapeStateBridge
import ShielddGnarkFormal.Protocol.NoteReshape.Refinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-! Handwritten action and policy refinement for the padded 8x1 deployment. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical

namespace C

open Contracts.NoteReshape8x1
open Contracts.NoteReshape8x1.Witness (
  syntheticSpends0AuthRandomizer syntheticSpends0DummyNullifierSeed
  syntheticSpends0IsDummy syntheticSpends0StateProofPosition
  syntheticSpends1AuthRandomizer syntheticSpends1DummyNullifierSeed
  syntheticSpends1IsDummy syntheticSpends1StateProofPosition
  syntheticSpends2AuthRandomizer syntheticSpends2DummyNullifierSeed
  syntheticSpends2IsDummy syntheticSpends2StateProofPosition
  syntheticSpends3AuthRandomizer syntheticSpends3DummyNullifierSeed
  syntheticSpends3IsDummy syntheticSpends3StateProofPosition
  syntheticSpends4AuthRandomizer syntheticSpends4DummyNullifierSeed
  syntheticSpends4IsDummy syntheticSpends4StateProofPosition
  syntheticSpends5AuthRandomizer syntheticSpends5DummyNullifierSeed
  syntheticSpends5IsDummy syntheticSpends5StateProofPosition
  syntheticSpends6AuthRandomizer syntheticSpends6DummyNullifierSeed
  syntheticSpends6IsDummy syntheticSpends6StateProofPosition
  syntheticSpends7AuthRandomizer syntheticSpends7DummyNullifierSeed
  syntheticSpends7IsDummy syntheticSpends7StateProofPosition
)

def path0 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg42.localRho rho)

def path1 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg57.localRho rho)

def path2 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg72.localRho rho)

def path3 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg87.localRho rho)

def path4 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg102.localRho rho)

def path5 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg117.localRho rho)

def path6 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg132.localRho rho)

def path7 (rho : Nat → DeployedF) : NoteReshapeCanonical.Path24 :=
  NoteReshapeMembershipBridge.segmentPath (Seg147.localRho rho)

def realInput0 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend0NoteCommitmentInputs1 rho
    blinding := spend0NoteCommitmentInputs0 rho
    commitment := spend0StateProofCommitment rho
    nullifier := spend0NullifierClaimed rho
    statePosition := syntheticSpends0StateProofPosition rho
    membershipProof := path0 rho
    randomizedVerificationKey := ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
    randomizer := syntheticSpends0AuthRandomizer rho
    historyRequired := spend0HistoryRequired rho
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
    randomizedVerificationKey := ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
    randomizer := syntheticSpends1AuthRandomizer rho
    historyRequired := spend1HistoryRequired rho
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
    randomizedVerificationKey := ⟨spend2RkClaimed0 rho, spend2RkClaimed1 rho⟩
    randomizer := syntheticSpends2AuthRandomizer rho
    historyRequired := spend2HistoryRequired rho
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
    randomizedVerificationKey := ⟨spend3RkClaimed0 rho, spend3RkClaimed1 rho⟩
    randomizer := syntheticSpends3AuthRandomizer rho
    historyRequired := spend3HistoryRequired rho
  }

def realInput4 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend4NoteCommitmentInputs1 rho
    blinding := spend4NoteCommitmentInputs0 rho
    commitment := spend4StateProofCommitment rho
    nullifier := spend4NullifierClaimed rho
    statePosition := syntheticSpends4StateProofPosition rho
    membershipProof := path4 rho
    randomizedVerificationKey := ⟨spend4RkClaimed0 rho, spend4RkClaimed1 rho⟩
    randomizer := syntheticSpends4AuthRandomizer rho
    historyRequired := spend4HistoryRequired rho
  }

def realInput5 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend5NoteCommitmentInputs1 rho
    blinding := spend5NoteCommitmentInputs0 rho
    commitment := spend5StateProofCommitment rho
    nullifier := spend5NullifierClaimed rho
    statePosition := syntheticSpends5StateProofPosition rho
    membershipProof := path5 rho
    randomizedVerificationKey := ⟨spend5RkClaimed0 rho, spend5RkClaimed1 rho⟩
    randomizer := syntheticSpends5AuthRandomizer rho
    historyRequired := spend5HistoryRequired rho
  }

def realInput6 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend6NoteCommitmentInputs1 rho
    blinding := spend6NoteCommitmentInputs0 rho
    commitment := spend6StateProofCommitment rho
    nullifier := spend6NullifierClaimed rho
    statePosition := syntheticSpends6StateProofPosition rho
    membershipProof := path6 rho
    randomizedVerificationKey := ⟨spend6RkClaimed0 rho, spend6RkClaimed1 rho⟩
    randomizer := syntheticSpends6AuthRandomizer rho
    historyRequired := spend6HistoryRequired rho
  }

def realInput7 (rho : Nat → DeployedF) :
    RealInput DeployedF NoteReshapeCanonical.Path24 :=
  {
    amount := spend7NoteCommitmentInputs1 rho
    blinding := spend7NoteCommitmentInputs0 rho
    commitment := spend7StateProofCommitment rho
    nullifier := spend7NullifierClaimed rho
    statePosition := syntheticSpends7StateProofPosition rho
    membershipProof := path7 rho
    randomizedVerificationKey := ⟨spend7RkClaimed0 rho, spend7RkClaimed1 rho⟩
    randomizer := syntheticSpends7AuthRandomizer rho
    historyRequired := spend7HistoryRequired rho
  }

def dummyInput0 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  { slotIndex := 0, amount := spend0NoteCommitmentInputs1 rho,
    nullifier := spend0NullifierClaimed rho,
    nullifierSeed := syntheticSpends0DummyNullifierSeed rho,
    randomizedVerificationKey := ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩,
    randomizer := syntheticSpends0AuthRandomizer rho,
    historyRequired := spend0HistoryRequired rho }

def dummyInput1 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  { slotIndex := 1, amount := spend1NoteCommitmentInputs1 rho,
    nullifier := spend1NullifierClaimed rho,
    nullifierSeed := syntheticSpends1DummyNullifierSeed rho,
    randomizedVerificationKey := ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩,
    randomizer := syntheticSpends1AuthRandomizer rho,
    historyRequired := spend1HistoryRequired rho }

def dummyInput2 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  { slotIndex := 2, amount := spend2NoteCommitmentInputs1 rho,
    nullifier := spend2NullifierClaimed rho,
    nullifierSeed := syntheticSpends2DummyNullifierSeed rho,
    randomizedVerificationKey := ⟨spend2RkClaimed0 rho, spend2RkClaimed1 rho⟩,
    randomizer := syntheticSpends2AuthRandomizer rho,
    historyRequired := spend2HistoryRequired rho }

def dummyInput3 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  { slotIndex := 3, amount := spend3NoteCommitmentInputs1 rho,
    nullifier := spend3NullifierClaimed rho,
    nullifierSeed := syntheticSpends3DummyNullifierSeed rho,
    randomizedVerificationKey := ⟨spend3RkClaimed0 rho, spend3RkClaimed1 rho⟩,
    randomizer := syntheticSpends3AuthRandomizer rho,
    historyRequired := spend3HistoryRequired rho }

def dummyInput4 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  { slotIndex := 4, amount := spend4NoteCommitmentInputs1 rho,
    nullifier := spend4NullifierClaimed rho,
    nullifierSeed := syntheticSpends4DummyNullifierSeed rho,
    randomizedVerificationKey := ⟨spend4RkClaimed0 rho, spend4RkClaimed1 rho⟩,
    randomizer := syntheticSpends4AuthRandomizer rho,
    historyRequired := spend4HistoryRequired rho }

def dummyInput5 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  { slotIndex := 5, amount := spend5NoteCommitmentInputs1 rho,
    nullifier := spend5NullifierClaimed rho,
    nullifierSeed := syntheticSpends5DummyNullifierSeed rho,
    randomizedVerificationKey := ⟨spend5RkClaimed0 rho, spend5RkClaimed1 rho⟩,
    randomizer := syntheticSpends5AuthRandomizer rho,
    historyRequired := spend5HistoryRequired rho }

def dummyInput6 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  { slotIndex := 6, amount := spend6NoteCommitmentInputs1 rho,
    nullifier := spend6NullifierClaimed rho,
    nullifierSeed := syntheticSpends6DummyNullifierSeed rho,
    randomizedVerificationKey := ⟨spend6RkClaimed0 rho, spend6RkClaimed1 rho⟩,
    randomizer := syntheticSpends6AuthRandomizer rho,
    historyRequired := spend6HistoryRequired rho }

def dummyInput7 (rho : Nat → DeployedF) : DummyInput DeployedF :=
  { slotIndex := 7, amount := spend7NoteCommitmentInputs1 rho,
    nullifier := spend7NullifierClaimed rho,
    nullifierSeed := syntheticSpends7DummyNullifierSeed rho,
    randomizedVerificationKey := ⟨spend7RkClaimed0 rho, spend7RkClaimed1 rho⟩,
    randomizer := syntheticSpends7AuthRandomizer rho,
    historyRequired := spend7HistoryRequired rho }

def input0 (rho : Nat → DeployedF) : Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends0IsDummy rho = 0 then
    .real (realInput0 rho)
  else
    .dummy (dummyInput0 rho)

def input1 (rho : Nat → DeployedF) : Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends1IsDummy rho = 0 then
    .real (realInput1 rho)
  else
    .dummy (dummyInput1 rho)

def input2 (rho : Nat → DeployedF) : Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends2IsDummy rho = 0 then
    .real (realInput2 rho)
  else
    .dummy (dummyInput2 rho)

def input3 (rho : Nat → DeployedF) : Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends3IsDummy rho = 0 then
    .real (realInput3 rho)
  else
    .dummy (dummyInput3 rho)

def input4 (rho : Nat → DeployedF) : Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends4IsDummy rho = 0 then
    .real (realInput4 rho)
  else
    .dummy (dummyInput4 rho)

def input5 (rho : Nat → DeployedF) : Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends5IsDummy rho = 0 then
    .real (realInput5 rho)
  else
    .dummy (dummyInput5 rho)

def input6 (rho : Nat → DeployedF) : Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends6IsDummy rho = 0 then
    .real (realInput6 rho)
  else
    .dummy (dummyInput6 rho)

def input7 (rho : Nat → DeployedF) : Input DeployedF NoteReshapeCanonical.Path24 :=
  if syntheticSpends7IsDummy rho = 0 then
    .real (realInput7 rho)
  else
    .dummy (dummyInput7 rho)

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

@[simp] theorem input4Amount (rho : Nat → DeployedF) :
    Input.amount (input4 rho) = spend4NoteCommitmentInputs1 rho := by
  by_cases h : syntheticSpends4IsDummy rho = 0 <;>
    simp [input4, realInput4, dummyInput4, Input.amount, h]

@[simp] theorem input5Amount (rho : Nat → DeployedF) :
    Input.amount (input5 rho) = spend5NoteCommitmentInputs1 rho := by
  by_cases h : syntheticSpends5IsDummy rho = 0 <;>
    simp [input5, realInput5, dummyInput5, Input.amount, h]

@[simp] theorem input6Amount (rho : Nat → DeployedF) :
    Input.amount (input6 rho) = spend6NoteCommitmentInputs1 rho := by
  by_cases h : syntheticSpends6IsDummy rho = 0 <;>
    simp [input6, realInput6, dummyInput6, Input.amount, h]

@[simp] theorem input7Amount (rho : Nat → DeployedF) :
    Input.amount (input7 rho) = spend7NoteCommitmentInputs1 rho := by
  by_cases h : syntheticSpends7IsDummy rho = 0 <;>
    simp [input7, realInput7, dummyInput7, Input.amount, h]

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

@[simp] theorem input4Nullifier (rho : Nat → DeployedF) :
    Input.nullifier (input4 rho) = spend4NullifierClaimed rho := by
  by_cases h : syntheticSpends4IsDummy rho = 0 <;>
    simp [input4, realInput4, dummyInput4, Input.nullifier, h]

@[simp] theorem input5Nullifier (rho : Nat → DeployedF) :
    Input.nullifier (input5 rho) = spend5NullifierClaimed rho := by
  by_cases h : syntheticSpends5IsDummy rho = 0 <;>
    simp [input5, realInput5, dummyInput5, Input.nullifier, h]

@[simp] theorem input6Nullifier (rho : Nat → DeployedF) :
    Input.nullifier (input6 rho) = spend6NullifierClaimed rho := by
  by_cases h : syntheticSpends6IsDummy rho = 0 <;>
    simp [input6, realInput6, dummyInput6, Input.nullifier, h]

@[simp] theorem input7Nullifier (rho : Nat → DeployedF) :
    Input.nullifier (input7 rho) = spend7NullifierClaimed rho := by
  by_cases h : syntheticSpends7IsDummy rho = 0 <;>
    simp [input7, realInput7, dummyInput7, Input.nullifier, h]

@[simp] theorem input0HistoryRequired (rho : Nat → DeployedF) :
    (input0 rho).historyRequired = spend0HistoryRequired rho := by
  by_cases h : syntheticSpends0IsDummy rho = 0 <;>
    simp [input0, realInput0, dummyInput0, Input.historyRequired, h]

@[simp] theorem input1HistoryRequired (rho : Nat → DeployedF) :
    (input1 rho).historyRequired = spend1HistoryRequired rho := by
  by_cases h : syntheticSpends1IsDummy rho = 0 <;>
    simp [input1, realInput1, dummyInput1, Input.historyRequired, h]

@[simp] theorem input2HistoryRequired (rho : Nat → DeployedF) :
    (input2 rho).historyRequired = spend2HistoryRequired rho := by
  by_cases h : syntheticSpends2IsDummy rho = 0 <;>
    simp [input2, realInput2, dummyInput2, Input.historyRequired, h]

@[simp] theorem input3HistoryRequired (rho : Nat → DeployedF) :
    (input3 rho).historyRequired = spend3HistoryRequired rho := by
  by_cases h : syntheticSpends3IsDummy rho = 0 <;>
    simp [input3, realInput3, dummyInput3, Input.historyRequired, h]

@[simp] theorem input4HistoryRequired (rho : Nat → DeployedF) :
    (input4 rho).historyRequired = spend4HistoryRequired rho := by
  by_cases h : syntheticSpends4IsDummy rho = 0 <;>
    simp [input4, realInput4, dummyInput4, Input.historyRequired, h]

@[simp] theorem input5HistoryRequired (rho : Nat → DeployedF) :
    (input5 rho).historyRequired = spend5HistoryRequired rho := by
  by_cases h : syntheticSpends5IsDummy rho = 0 <;>
    simp [input5, realInput5, dummyInput5, Input.historyRequired, h]

@[simp] theorem input6HistoryRequired (rho : Nat → DeployedF) :
    (input6 rho).historyRequired = spend6HistoryRequired rho := by
  by_cases h : syntheticSpends6IsDummy rho = 0 <;>
    simp [input6, realInput6, dummyInput6, Input.historyRequired, h]

@[simp] theorem input7HistoryRequired (rho : Nat → DeployedF) :
    (input7 rho).historyRequired = spend7HistoryRequired rho := by
  by_cases h : syntheticSpends7IsDummy rho = 0 <;>
    simp [input7, realInput7, dummyInput7, Input.historyRequired, h]

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

@[simp] theorem input4Rk (rho : Nat → DeployedF) :
    Input.rk (input4 rho) = ⟨spend4RkClaimed0 rho, spend4RkClaimed1 rho⟩ := by
  by_cases h : syntheticSpends4IsDummy rho = 0 <;>
    simp [input4, realInput4, dummyInput4, Input.rk, h]

@[simp] theorem input5Rk (rho : Nat → DeployedF) :
    Input.rk (input5 rho) = ⟨spend5RkClaimed0 rho, spend5RkClaimed1 rho⟩ := by
  by_cases h : syntheticSpends5IsDummy rho = 0 <;>
    simp [input5, realInput5, dummyInput5, Input.rk, h]

@[simp] theorem input6Rk (rho : Nat → DeployedF) :
    Input.rk (input6 rho) = ⟨spend6RkClaimed0 rho, spend6RkClaimed1 rho⟩ := by
  by_cases h : syntheticSpends6IsDummy rho = 0 <;>
    simp [input6, realInput6, dummyInput6, Input.rk, h]

@[simp] theorem input7Rk (rho : Nat → DeployedF) :
    Input.rk (input7 rho) = ⟨spend7RkClaimed0 rho, spend7RkClaimed1 rho⟩ := by
  by_cases h : syntheticSpends7IsDummy rho = 0 <;>
    simp [input7, realInput7, dummyInput7, Input.rk, h]

def output0 (rho : Nat → DeployedF) : Output DeployedF :=
  {
    amount := output0NoteCommitmentInputs1 rho
    blinding := output0NoteCommitmentInputs0 rho
    commitment := output0NoteCommitmentClaimed rho
  }

def action (rho : Nat → DeployedF) :
    Action DeployedF NoteReshapeCanonical.Path24 :=
  {
    policy := .reshape8x1
    shared := NoteReshapeCanonicalAddress8x1.shared rho
    authorization := NoteReshapeCanonicalAddress8x1.authorization rho
    inputs :=
      [input0 rho, input1 rho, input2 rho, input3 rho,
       input4 rho, input5 rho, input6 rho, input7 rho]
    outputs := [output0 rho]
    anchor := anchor rho
    assetAnchor := assetAnchor rho
    routingTag := routingTag rho
    routingParameterSetId := routingParameterSetId rho
    recentPositionFloor := recentPositionFloor rho
    balanceCommitment := ⟨claimedBalanceCommitment0 rho, claimedBalanceCommitment1 rho⟩
    balanceBlinding := actionBalanceBlinding rho
    publicStatementHash := claimedStatementHash rho
  }

theorem nextSelectorOne
    (previous next : DeployedF)
    (h10 : (1 : DeployedF) ≠ 0)
    (previousOne : previous = 1)
    (nextBoolean : next = 0 ∨ next = 1)
    (suffix : previous * (1 - next) = 0) :
    next = 1 := by
  rcases nextBoolean with nextZero | nextOne
  · have hbad : (1 : DeployedF) = 0 := by
      calc
        1 = previous * (1 - next) := by rw [previousOne, nextZero]; ring
        _ = 0 := suffix
    exact (h10 hbad).elim
  · exact nextOne

theorem selectorsOfControlSpecs
    (a b c d e f g h : DeployedF)
    (h10 : (1 : DeployedF) ≠ 0)
    (h5040 :
      (((7 : DeployedF) - 0) * (7 - 1) * (7 - 2) * (7 - 3) *
        (7 - 4) * (7 - 5) * (7 - 6)) ≠ 0)
    (hb : b = 0 ∨ b = 1)
    (hc : c = 0 ∨ c = 1)
    (hd : d = 0 ∨ d = 1)
    (he : e = 0 ∨ e = 1)
    (hf : f = 0 ∨ f = 1)
    (hg : g = 0 ∨ g = 1)
    (hh : h = 0 ∨ h = 1)
    (suffix :
      a = 0 ∧ a * (1 - b) = 0 ∧ b * (1 - c) = 0 ∧
      c * (1 - d) = 0 ∧ d * (1 - e) = 0 ∧ e * (1 - f) = 0 ∧
      f * (1 - g) = 0 ∧ g * (1 - h) = 0)
    (active :
      ((a + b + c + d + e + f + g + h) - 0) *
        ((a + b + c + d + e + f + g + h) - 1) *
        ((a + b + c + d + e + f + g + h) - 2) *
        ((a + b + c + d + e + f + g + h) - 3) *
        ((a + b + c + d + e + f + g + h) - 4) *
        ((a + b + c + d + e + f + g + h) - 5) *
        ((a + b + c + d + e + f + g + h) - 6) = 0) :
    (a = 0 ∧ b = 0 ∧ c = 0 ∧ d = 0 ∧ e = 0 ∧ f = 0 ∧ g = 0 ∧ h = 0) ∨
    (a = 0 ∧ b = 0 ∧ c = 0 ∧ d = 0 ∧ e = 0 ∧ f = 0 ∧ g = 0 ∧ h = 1) ∨
    (a = 0 ∧ b = 0 ∧ c = 0 ∧ d = 0 ∧ e = 0 ∧ f = 0 ∧ g = 1 ∧ h = 1) ∨
    (a = 0 ∧ b = 0 ∧ c = 0 ∧ d = 0 ∧ e = 0 ∧ f = 1 ∧ g = 1 ∧ h = 1) ∨
    (a = 0 ∧ b = 0 ∧ c = 0 ∧ d = 0 ∧ e = 1 ∧ f = 1 ∧ g = 1 ∧ h = 1) ∨
    (a = 0 ∧ b = 0 ∧ c = 0 ∧ d = 1 ∧ e = 1 ∧ f = 1 ∧ g = 1 ∧ h = 1) ∨
    (a = 0 ∧ b = 0 ∧ c = 1 ∧ d = 1 ∧ e = 1 ∧ f = 1 ∧ g = 1 ∧ h = 1) := by
  rcases hb with hb | hb
  · rcases hc with hc | hc
    · rcases hd with hd | hd
      · rcases he with he | he
        · rcases hf with hf | hf
          · rcases hg with hg | hg
            · rcases hh with hh | hh
              · exact Or.inl ⟨suffix.1, hb, hc, hd, he, hf, hg, hh⟩
              · exact Or.inr <| Or.inl ⟨suffix.1, hb, hc, hd, he, hf, hg, hh⟩
            · have hh := nextSelectorOne g h h10 hg hh suffix.2.2.2.2.2.2.2
              exact Or.inr <| Or.inr <| Or.inl
                ⟨suffix.1, hb, hc, hd, he, hf, hg, hh⟩
          · have hg := nextSelectorOne f g h10 hf hg suffix.2.2.2.2.2.2.1
            have hh := nextSelectorOne g h h10 hg hh suffix.2.2.2.2.2.2.2
            exact Or.inr <| Or.inr <| Or.inr <| Or.inl
              ⟨suffix.1, hb, hc, hd, he, hf, hg, hh⟩
        · have hf := nextSelectorOne e f h10 he hf suffix.2.2.2.2.2.1
          have hg := nextSelectorOne f g h10 hf hg suffix.2.2.2.2.2.2.1
          have hh := nextSelectorOne g h h10 hg hh suffix.2.2.2.2.2.2.2
          exact Or.inr <| Or.inr <| Or.inr <| Or.inr <| Or.inl
            ⟨suffix.1, hb, hc, hd, he, hf, hg, hh⟩
      · have he := nextSelectorOne d e h10 hd he suffix.2.2.2.2.1
        have hf := nextSelectorOne e f h10 he hf suffix.2.2.2.2.2.1
        have hg := nextSelectorOne f g h10 hf hg suffix.2.2.2.2.2.2.1
        have hh := nextSelectorOne g h h10 hg hh suffix.2.2.2.2.2.2.2
        exact Or.inr <| Or.inr <| Or.inr <| Or.inr <| Or.inr <| Or.inl
          ⟨suffix.1, hb, hc, hd, he, hf, hg, hh⟩
    · have hd := nextSelectorOne c d h10 hc hd suffix.2.2.2.1
      have he := nextSelectorOne d e h10 hd he suffix.2.2.2.2.1
      have hf := nextSelectorOne e f h10 he hf suffix.2.2.2.2.2.1
      have hg := nextSelectorOne f g h10 hf hg suffix.2.2.2.2.2.2.1
      have hh := nextSelectorOne g h h10 hg hh suffix.2.2.2.2.2.2.2
      exact Or.inr <| Or.inr <| Or.inr <| Or.inr <| Or.inr <| Or.inr
        ⟨suffix.1, hb, hc, hd, he, hf, hg, hh⟩
  · have hc := nextSelectorOne b c h10 hb hc suffix.2.2.1
    have hd := nextSelectorOne c d h10 hc hd suffix.2.2.2.1
    have he := nextSelectorOne d e h10 hd he suffix.2.2.2.2.1
    have hf := nextSelectorOne e f h10 he hf suffix.2.2.2.2.2.1
    have hg := nextSelectorOne f g h10 hf hg suffix.2.2.2.2.2.2.1
    have hh := nextSelectorOne g h h10 hg hh suffix.2.2.2.2.2.2.2
    have hbad := active
    rw [suffix.1, hb, hc, hd, he, hf, hg, hh] at hbad
    exact (h5040 (by simpa only using hbad)).elim

theorem selectorFacts
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    (syntheticSpends0IsDummy rho = 0 ∧
      syntheticSpends1IsDummy rho = 0 ∧
      syntheticSpends2IsDummy rho = 0 ∧
      syntheticSpends3IsDummy rho = 0 ∧
      syntheticSpends4IsDummy rho = 0 ∧
      syntheticSpends5IsDummy rho = 0 ∧
      syntheticSpends6IsDummy rho = 0 ∧
      syntheticSpends7IsDummy rho = 0) ∨
    (syntheticSpends0IsDummy rho = 0 ∧
      syntheticSpends1IsDummy rho = 0 ∧
      syntheticSpends2IsDummy rho = 0 ∧
      syntheticSpends3IsDummy rho = 0 ∧
      syntheticSpends4IsDummy rho = 0 ∧
      syntheticSpends5IsDummy rho = 0 ∧
      syntheticSpends6IsDummy rho = 0 ∧
      syntheticSpends7IsDummy rho = 1) ∨
    (syntheticSpends0IsDummy rho = 0 ∧
      syntheticSpends1IsDummy rho = 0 ∧
      syntheticSpends2IsDummy rho = 0 ∧
      syntheticSpends3IsDummy rho = 0 ∧
      syntheticSpends4IsDummy rho = 0 ∧
      syntheticSpends5IsDummy rho = 0 ∧
      syntheticSpends6IsDummy rho = 1 ∧
      syntheticSpends7IsDummy rho = 1) ∨
    (syntheticSpends0IsDummy rho = 0 ∧
      syntheticSpends1IsDummy rho = 0 ∧
      syntheticSpends2IsDummy rho = 0 ∧
      syntheticSpends3IsDummy rho = 0 ∧
      syntheticSpends4IsDummy rho = 0 ∧
      syntheticSpends5IsDummy rho = 1 ∧
      syntheticSpends6IsDummy rho = 1 ∧
      syntheticSpends7IsDummy rho = 1) ∨
    (syntheticSpends0IsDummy rho = 0 ∧
      syntheticSpends1IsDummy rho = 0 ∧
      syntheticSpends2IsDummy rho = 0 ∧
      syntheticSpends3IsDummy rho = 0 ∧
      syntheticSpends4IsDummy rho = 1 ∧
      syntheticSpends5IsDummy rho = 1 ∧
      syntheticSpends6IsDummy rho = 1 ∧
      syntheticSpends7IsDummy rho = 1) ∨
    (syntheticSpends0IsDummy rho = 0 ∧
      syntheticSpends1IsDummy rho = 0 ∧
      syntheticSpends2IsDummy rho = 0 ∧
      syntheticSpends3IsDummy rho = 1 ∧
      syntheticSpends4IsDummy rho = 1 ∧
      syntheticSpends5IsDummy rho = 1 ∧
      syntheticSpends6IsDummy rho = 1 ∧
      syntheticSpends7IsDummy rho = 1) ∨
    (syntheticSpends0IsDummy rho = 0 ∧
      syntheticSpends1IsDummy rho = 0 ∧
      syntheticSpends2IsDummy rho = 1 ∧
      syntheticSpends3IsDummy rho = 1 ∧
      syntheticSpends4IsDummy rho = 1 ∧
      syntheticSpends5IsDummy rho = 1 ∧
      syntheticSpends6IsDummy rho = 1 ∧
      syntheticSpends7IsDummy rho = 1) := by
  have h1 := facts.control.AssertBooleanSeg2
  have h2 := facts.control.AssertBooleanSeg3
  have h3 := facts.control.AssertBooleanSeg4
  have h4 := facts.control.AssertBooleanSeg5
  have h5 := facts.control.AssertBooleanSeg6
  have h6 := facts.control.AssertBooleanSeg7
  have h7 := facts.control.AssertBooleanSeg8
  have hs := facts.control.AssertDummySuffixSeg9
  have ha := facts.control.AssertActiveRangeSeg10
  change Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec
    (Seg2.localRho rho) at h1
  change Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec
    (Seg3.localRho rho) at h2
  change Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec
    (Seg4.localRho rho) at h3
  change Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec
    (Seg5.localRho rho) at h4
  change Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec
    (Seg6.localRho rho) at h5
  change Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec
    (Seg7.localRho rho) at h6
  change Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec
    (Seg8.localRho rho) at h7
  change Deployed.Templates.Semantics.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.spec
    (Seg9.localRho rho) at hs
  change Deployed.Templates.Semantics.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b.spec
    (Seg10.localRho rho) at ha
  simp only [
    Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec,
    Deployed.Templates.Semantics.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.spec,
    Deployed.Templates.Semantics.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b.spec,
    Seg2.localRho, Seg3.localRho, Seg4.localRho, Seg5.localRho,
    Seg6.localRho, Seg7.localRho, Seg8.localRho, Seg9.localRho, Seg10.localRho,
    Deployed.Templates.seated,
    Seg2.wireSeating, Seg3.wireSeating, Seg4.wireSeating, Seg5.wireSeating,
    Seg6.wireSeating, Seg7.wireSeating, Seg8.wireSeating,
    Seg9.wireSeating, Seg10.wireSeating,
    Seg2.wireSeatingTable, Seg3.wireSeatingTable, Seg4.wireSeatingTable,
    Seg5.wireSeatingTable, Seg6.wireSeatingTable, Seg7.wireSeatingTable,
    Seg8.wireSeatingTable, Seg9.wireSeatingTable, Seg10.wireSeatingTable
  ] at h1 h2 h3 h4 h5 h6 h7 hs ha
  have h10 : (1 : DeployedF) ≠ 0 :=
    EdwardsBridge.natLit_ne_zero 1 (by decide +kernel) (by decide +kernel)
  have h5040 :
      (((7 : DeployedF) - 0) * (7 - 1) * (7 - 2) * (7 - 3) *
        (7 - 4) * (7 - 5) * (7 - 6)) ≠ 0 := by
    change (5040 : DeployedF) ≠ 0
    exact EdwardsBridge.natLit_ne_zero 5040 (by decide +kernel) (by decide +kernel)
  exact selectorsOfControlSpecs
    (syntheticSpends0IsDummy rho)
    (syntheticSpends1IsDummy rho)
    (syntheticSpends2IsDummy rho)
    (syntheticSpends3IsDummy rho)
    (syntheticSpends4IsDummy rho)
    (syntheticSpends5IsDummy rho)
    (syntheticSpends6IsDummy rho)
    (syntheticSpends7IsDummy rho)
    h10 h5040 h1 h2 h3 h4 h5 h6 h7 hs ha

theorem actionShape
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    canonicalShape (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide +kernel
  rcases selectorFacts rho facts with s | s | s | s | s | s | s
  all_goals
    rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [canonicalShape, realCount, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      FamilyPolicy.inputSlots, FamilyPolicy.outputSlots,
      FamilyPolicy.minimumRealInputs, Input.isReal,
      h0, h1, h2, h3, h4, h5, h6, h7, h10]

theorem actionPadding
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    realPrefix (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide +kernel
  rcases selectorFacts rho facts with s | s | s | s | s | s | s
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    refine ⟨[input0 rho, input1 rho, input2 rho, input3 rho,
      input4 rho, input5 rho, input6 rho, input7 rho], [], ?_, ?_, ?_⟩
    · simp [action]
    · simp [input0, input1, input2, input3, input4, input5, input6, input7,
        Input.isReal, h0, h1, h2, h3, h4, h5, h6, h7]
    · simp
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    refine ⟨[input0 rho, input1 rho, input2 rho, input3 rho,
      input4 rho, input5 rho, input6 rho], [input7 rho], ?_, ?_, ?_⟩
    · simp [action]
    · simp [input0, input1, input2, input3, input4, input5, input6,
        Input.isReal, h0, h1, h2, h3, h4, h5, h6]
    · simp [input7, Input.isReal, h7, h10]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    refine ⟨[input0 rho, input1 rho, input2 rho, input3 rho,
      input4 rho, input5 rho], [input6 rho, input7 rho], ?_, ?_, ?_⟩
    · simp [action]
    · simp [input0, input1, input2, input3, input4, input5,
        Input.isReal, h0, h1, h2, h3, h4, h5]
    · simp [input6, input7, Input.isReal, h6, h7, h10]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    refine ⟨[input0 rho, input1 rho, input2 rho, input3 rho, input4 rho],
      [input5 rho, input6 rho, input7 rho], ?_, ?_, ?_⟩
    · simp [action]
    · simp [input0, input1, input2, input3, input4,
        Input.isReal, h0, h1, h2, h3, h4]
    · simp [input5, input6, input7, Input.isReal, h5, h6, h7, h10]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    refine ⟨[input0 rho, input1 rho, input2 rho, input3 rho],
      [input4 rho, input5 rho, input6 rho, input7 rho], ?_, ?_, ?_⟩
    · simp [action]
    · simp [input0, input1, input2, input3,
        Input.isReal, h0, h1, h2, h3]
    · simp [input4, input5, input6, input7,
        Input.isReal, h4, h5, h6, h7, h10]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    refine ⟨[input0 rho, input1 rho, input2 rho],
      [input3 rho, input4 rho, input5 rho, input6 rho, input7 rho],
      ?_, ?_, ?_⟩
    · simp [action]
    · simp [input0, input1, input2, Input.isReal, h0, h1, h2]
    · simp [input3, input4, input5, input6, input7,
        Input.isReal, h3, h4, h5, h6, h7, h10]
  · rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    refine ⟨[input0 rho, input1 rho],
      [input2 rho, input3 rho, input4 rho, input5 rho, input6 rho, input7 rho],
      ?_, ?_, ?_⟩
    · simp [action]
    · simp [input0, input1, Input.isReal, h0, h1]
    · simp [input2, input3, input4, input5, input6, input7,
        Input.isReal, h2, h3, h4, h5, h6, h7, h10]

theorem actionCanonicalAddress
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    NoteReshapeCanonical.canonicalTransmission
      (action rho).authorization (action rho).shared := by
  simpa [action] using
    NoteReshapeCanonicalAddress8x1.canonicalTransmission_of_exact rho facts

theorem sharedAuthorizationKeyOnCurve
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    EdwardsBridge.onCurve ⟨authAk0 rho, authAk1 rho⟩ := by
  rcases NoteReshapeCanonicalAddress8x1.canonicalTransmissionFacts_of_exact
      rho facts with ⟨_, _, _, hdtk, _⟩
  rcases hdtk.1 with ⟨akFq, hak, _⟩
  exact Decaf377Assumptions.onCurve_of_compress
    ⟨authAk0 rho, authAk1 rho⟩ akFq hak

theorem actionInputCommitments
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    inputCommitments
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  have h10 : (1 : DeployedF) ≠ 0 := by decide +kernel
  rcases selectorFacts rho facts with s | s | s | s | s | s | s
  all_goals
    rcases s with ⟨h0, h1, h2, h3, h4, h5, h6, h7⟩
    simp [
      inputCommitments, action,
      input0, input1, input2, input3, input4, input5, input6, input7,
      realInput0, realInput1, realInput2, realInput3,
      realInput4, realInput5, realInput6, realInput7,
      NoteReshapeCanonical.circuitPrimitives, NoteReshapeCanonical.realCommitment,
      Protocol.NoteReshape.Concrete.realCommitment,
      h0, h1, h2, h3, h4, h5, h6, h7, h10,
      Generated.NoteReshape8x1Commitments.spend0Commitment rho facts,
      Generated.NoteReshape8x1Commitments.spend1Commitment rho facts,
      Generated.NoteReshape8x1Commitments.spend2Commitment rho facts,
      Generated.NoteReshape8x1Commitments.spend3Commitment rho facts,
      Generated.NoteReshape8x1Commitments.spend4Commitment rho facts,
      Generated.NoteReshape8x1Commitments.spend5Commitment rho facts,
      Generated.NoteReshape8x1Commitments.spend6Commitment rho facts,
      Generated.NoteReshape8x1Commitments.spend7Commitment rho facts
    ]

theorem actionOutputCommitments
    (rho : Nat → DeployedF)
    (facts : NoteReshape8x1CircuitFacts rho) :
    outputCommitments
      NoteReshapeCanonical.circuitPrimitives
      (action rho) := by
  simp [
    outputCommitments, action, output0,
    NoteReshapeCanonical.circuitPrimitives, NoteReshapeCanonical.outputCommitment,
    Protocol.NoteReshape.Concrete.outputCommitment,
    Generated.NoteReshape8x1Commitments.output0Commitment rho facts
  ]

end C

end Shieldd.GnarkFormal.Deployed.NoteReshape8x1Refinement
