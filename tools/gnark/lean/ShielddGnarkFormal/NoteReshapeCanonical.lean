import ShielddGnarkFormal.Protocol.NoteReshape.Concrete
import ShielddGnarkFormal.Poseidon5Bridge
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.ChoiceFreeZMod

/-!
Circuit adapter for the canonical NoteReshape protocol relation.

Protocol-owned hashes, domains, membership, nullifiers, and statement layout are
reused directly from `Protocol.NoteReshape.Concrete`. Only the Decaf relations
whose extracted representation still needs refinement are defined here.
-/

namespace Shieldd.GnarkFormal.NoteReshapeCanonical

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Protocol.NoteReshape

abbrev F := Concrete.F
abbrev Path24 := Concrete.Path24

def toProtocolPoint (point : Decaf377Assumptions.Point) : Point F :=
  ⟨point.x, point.y⟩

def toDecafPoint (point : Point F) : Decaf377Assumptions.Point :=
  ⟨point.x, point.y⟩

def noteCommitmentDomain : F := Protocol.Common.noteCommitmentDomain
def syntheticDummyNullifierDomain : F := Concrete.syntheticDummyNullifierDomain
def stateCommitmentDomain : F := Protocol.Common.stateCommitmentDomain

def pathSibling (path : Path24) (level sibling : Nat) : F :=
  Protocol.Common.pathSibling path level sibling
def stateChildren := Protocol.Common.stateChildren
def stateCommitmentStep := Protocol.Common.stateCommitmentStep
def stateCommitmentRecover := Protocol.Common.stateCommitmentRecover
def stateCommitmentRoot := Protocol.Common.stateCommitmentRoot
def statePositionFromBits := Protocol.Common.statePositionFromBits
def member := Concrete.member
def noteCommitment := Concrete.noteCommitment

/-- Turn the extracted rate-5 hash equality into the protocol commitment fact. -/
theorem noteCommitment_of_hash
    (shared : SharedContext F)
    (blinding amount commitment : F)
    (hcommitment :
      commitment =
        Poseidon5Bridge.permSpec5 noteCommitmentDomain
          blinding amount shared.assetId shared.diversifiedGeneratorEncoding
            shared.transmissionEncoding) :
    Concrete.noteCommitment shared blinding amount commitment := by
  simpa [
    noteCommitmentDomain,
    Concrete.noteCommitment,
    Protocol.Common.noteCommitmentHash,
    Poseidon5Bridge.permSpec5
  ] using hcommitment

def canonicalTransmission
    (authorization : AuthorizationContext F)
    (shared : SharedContext F) : Prop :=
  (Protocol.Common.Decaf.nonIdentity authorization.authorizationKey ∧
      Protocol.Common.Decaf.nonIdentity shared.diversifiedGenerator ∧
      Decaf377Assumptions.CompressToFieldSpec
        (toDecafPoint shared.diversifiedGenerator)
        shared.diversifiedGeneratorEncoding ∧
      Decaf377Assumptions.DiversifiedTransmissionKeySpec
        authorization.nullifierKey
        (toDecafPoint authorization.authorizationKey)
        (toDecafPoint shared.diversifiedGenerator)
        authorization.ivkReduced
        authorization.ivkQuotientA
        (toDecafPoint shared.transmission) ∧
      Decaf377Assumptions.CompressToFieldSpec
        (toDecafPoint shared.transmission) shared.transmissionEncoding) ∧
    Protocol.Common.Decaf.incomingViewingKeyNonzero
      authorization.ivkReduced ∧
    Protocol.Common.Decaf.transmissionKeyNonIdentity shared.transmission

def randomizerCanonical := Concrete.randomizerCanonical
def dummySlotIndexCanonical := Concrete.dummySlotIndexCanonical

def realCommitment := Concrete.realCommitment
def outputCommitment := Concrete.outputCommitment
def realNullifier := Concrete.realNullifier
def dummyNullifier := Concrete.dummyNullifier
def historyClassification := Concrete.historyClassification

def randomizedKeyReal
    (authorization : AuthorizationContext F)
    (input : RealInput F Path24) : Prop :=
  ∃ computed,
    Decaf377Assumptions.RandomizedVerificationKeySpec
      (toDecafPoint authorization.authorizationKey) input.randomizer computed ∧
    Decaf377Assumptions.DecafEquivalent
      computed (toDecafPoint input.randomizedVerificationKey)

def conservation (action : Action F Path24) : Prop :=
  (∀ input ∈ action.inputs, input.amount.val < 2 ^ 128) ∧
  (∀ output ∈ action.outputs, output.amount.val < 2 ^ 128) ∧
  action.balanceBlinding.val < 2 ^ 251 ∧
  (action.inputs.map Input.amount).sum =
    (action.outputs.map Output.amount).sum ∧
  Decaf377Assumptions.DecafEquivalent
    (Decaf377Assumptions.scalarMulLE 251
      Decaf377Assumptions.valueBlindingGenerator action.balanceBlinding)
    (toDecafPoint action.balanceCommitment)

def statementDomain := Concrete.statementDomain
def statementPad0 := Concrete.statementPad0
def statementPad1 := Concrete.statementPad1
def statementField := Concrete.statementField
def statementFirstBlock := Concrete.statementFirstBlock
def statementHash := Concrete.statementHash
def inputStatementFields := Concrete.inputStatementFields
def statementFields := Concrete.statementFields

def statementBinding (action : Action F Path24) : Prop :=
  ∃ balanceFq rkFqs,
    Decaf377Assumptions.CompressToFieldSpec
      (toDecafPoint action.balanceCommitment) balanceFq ∧
    List.Forall₂
      (fun input rkFq =>
        Decaf377Assumptions.CompressToFieldSpec
          (toDecafPoint input.rk) rkFq)
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

end Shieldd.GnarkFormal.NoteReshapeCanonical
