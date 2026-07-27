import ShielddGnarkFormal.Protocol.NoteReshape.Semantics
import ShielddGnarkFormal.Poseidon1Bridge
import ShielddGnarkFormal.Poseidon3Bridge
import ShielddGnarkFormal.Poseidon4Bridge
import ShielddGnarkFormal.Poseidon6Bridge
import ShielddGnarkFormal.Poseidon7Bridge
import ShielddGnarkFormal.Decaf377Assumptions
import ShielddGnarkFormal.ChoiceFreeZMod

/-!
Concrete NoteReshape cryptographic relations.

This handwritten module fixes the interpretation used by the deployed
refinement. It contains no circuit row, wire, segment, or generated-contract
reference.
-/

namespace Shieldd.GnarkFormal.NoteReshapeCanonical

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Protocol.NoteReshape

abbrev F := Poseidon377.F
abbrev Path24 := Fin 24 → Fin 3 → F

def toProtocolPoint (point : Decaf377Assumptions.Point) : Point F :=
  ⟨point.x, point.y⟩

def toDecafPoint (point : Point F) : Decaf377Assumptions.Point :=
  ⟨point.x, point.y⟩

def noteCommitmentDomain : F :=
  1434889507249773667048406511864487084155637425201771740895788105903307238157

def syntheticDummyNullifierDomain : F :=
  4505177391167371668782402606211279728823173764000320688501210965528183505890

def stateCommitmentDomain : F :=
  545001158149490383238005163525397553024965043366546261617421270984613353336

def pathSibling (path : Path24) (level sibling : Nat) : F :=
  if hlevel : level < 24 then
    if hsibling : sibling < 3 then
      path ⟨level, hlevel⟩ ⟨sibling, hsibling⟩
    else 0
  else 0

def stateChildren (cur s0 s1 s2 b0 b1 : F) : F × F × F × F :=
  let i0 := (1 - b0) * (1 - b1)
  let i1 := b0 * (1 - b1)
  let i2 := (1 - b0) * b1
  let i3 := b0 * b1
  (s0 - i0 * (s0 - cur),
   s1 - i0 * (s1 - s0) - i1 * (s1 - i0 * (s1 - s0) - cur),
   s1 - b1 * (s1 - s2) - i2 * (s1 - b1 * (s1 - s2) - cur),
   s2 - i3 * (s2 - cur))

def stateCommitmentStep
    (domain cur s0 s1 s2 b0 b1 : F) : F :=
  let children := stateChildren cur s0 s1 s2 b0 b1
  Poseidon4Bridge.permSpec4
    domain children.1 children.2.1 children.2.2.1 children.2.2.2

def stateCommitmentRecover
    (commitment : F) (path : Path24) (b0 b1 : Nat → F) : Nat → F
  | 0 =>
      stateCommitmentStep (stateCommitmentDomain + 1)
        (Poseidon1Bridge.permSpec1 stateCommitmentDomain commitment)
        (pathSibling path 0 0) (pathSibling path 0 1) (pathSibling path 0 2)
        (b0 0) (b1 0)
  | level + 1 =>
      stateCommitmentStep (stateCommitmentDomain + (level : F) + 2)
        (stateCommitmentRecover commitment path b0 b1 level)
        (pathSibling path (level + 1) 0)
        (pathSibling path (level + 1) 1)
        (pathSibling path (level + 1) 2)
        (b0 (level + 1)) (b1 (level + 1))

def stateCommitmentRoot
    (commitment : F) (path : Path24) (b0 b1 : Nat → F) : F :=
  stateCommitmentRecover commitment path b0 b1 23

def statePositionFromBits (b0 b1 : Nat → F) : Nat → F
  | 0 => 0
  | level + 1 =>
      statePositionFromBits b0 b1 level +
        (2 ^ (2 * level) : F) * b0 level +
        (2 ^ (2 * level + 1) : F) * b1 level

def member (anchor : F) (input : RealInput F Path24) : Prop :=
  ∃ b0 b1 : Nat → F,
    (∀ level < 24, b0 level = 0 ∨ b0 level = 1) ∧
    (∀ level < 24, b1 level = 0 ∨ b1 level = 1) ∧
    input.statePosition = statePositionFromBits b0 b1 24 ∧
    anchor = stateCommitmentRoot input.commitment input.membershipProof b0 b1

def noteCommitment
    (authorization : AuthorizationContext F)
    (shared : SharedContext F)
    (blinding amount commitment : F) : Prop :=
  ∃ divGenFq transmission transmissionFq,
    Decaf377Assumptions.CompressToFieldSpec
      (toDecafPoint shared.diversifiedGenerator) divGenFq ∧
    Decaf377Assumptions.DiversifiedTransmissionKeySpec
      authorization.nullifierKey
      (toDecafPoint authorization.authorizationKey)
      (toDecafPoint shared.diversifiedGenerator)
      authorization.ivkReduced
      authorization.ivkQuotientA
      transmission ∧
    Decaf377Assumptions.CompressToFieldSpec transmission transmissionFq ∧
    commitment =
      Poseidon6Bridge.permSpec6 noteCommitmentDomain
        blinding amount shared.assetId divGenFq transmissionFq shared.clueKey

/--
Build a note-commitment obligation from one explicit canonical transmission
witness and the commitment hash. This is the shared refinement join used by
input and output adapters.
-/
theorem noteCommitment_of_canonicalWitness
    (authorization : AuthorizationContext F)
    (shared : SharedContext F)
    (blinding amount commitment divGenFq transmissionFq : F)
    (transmission : Decaf377Assumptions.Point)
    (hdivGen :
      Decaf377Assumptions.CompressToFieldSpec
        (toDecafPoint shared.diversifiedGenerator) divGenFq)
    (htransmission :
      Decaf377Assumptions.DiversifiedTransmissionKeySpec
        authorization.nullifierKey
        (toDecafPoint authorization.authorizationKey)
        (toDecafPoint shared.diversifiedGenerator)
        authorization.ivkReduced
        authorization.ivkQuotientA
        transmission)
    (htransmissionFq :
      Decaf377Assumptions.CompressToFieldSpec transmission transmissionFq)
    (hcommitment :
      commitment =
        Poseidon6Bridge.permSpec6 noteCommitmentDomain
          blinding amount shared.assetId divGenFq transmissionFq shared.clueKey) :
    noteCommitment authorization shared blinding amount commitment := by
  exact ⟨divGenFq, transmission, transmissionFq,
    hdivGen, htransmission, htransmissionFq, hcommitment⟩

def canonicalTransmission
    (authorization : AuthorizationContext F)
    (shared : SharedContext F) : Prop :=
  ∃ divGenFq transmission transmissionFq,
    Decaf377Assumptions.CompressToFieldSpec
      (toDecafPoint shared.diversifiedGenerator) divGenFq ∧
    Decaf377Assumptions.DiversifiedTransmissionKeySpec
      authorization.nullifierKey
      (toDecafPoint authorization.authorizationKey)
      (toDecafPoint shared.diversifiedGenerator)
      authorization.ivkReduced
      authorization.ivkQuotientA
      transmission ∧
    Decaf377Assumptions.CompressToFieldSpec transmission transmissionFq

def realCommitment
    (authorization : AuthorizationContext F)
    (shared : SharedContext F)
    (input : RealInput F Path24) : Prop :=
  noteCommitment authorization shared input.blinding input.amount input.commitment

def outputCommitment
    (authorization : AuthorizationContext F)
    (shared : SharedContext F)
    (output : Output F) : Prop :=
  noteCommitment authorization shared output.blinding output.amount output.commitment

def realNullifier
    (authorization : AuthorizationContext F)
    (input : RealInput F Path24) : Prop :=
  input.nullifier =
    Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
      authorization.nullifierKey input.commitment input.statePosition

def dummyNullifier (input : DummyInput F) : Prop :=
  input.nullifier =
    Poseidon3Bridge.permSpec3 syntheticDummyNullifierDomain
      input.nullifierSeed input.randomizer input.slotIndex

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
  (action.inputs.map Input.amount).sum =
    (action.outputs.map Output.amount).sum ∧
  Decaf377Assumptions.DecafEquivalent
    (Decaf377Assumptions.scalarMulLE 251
      Decaf377Assumptions.valueBlindingGenerator action.balanceBlinding)
    (toDecafPoint action.balanceCommitment)

def statementDomain : FamilyPolicy → F
  | .reshape2x1 =>
      5079577531472816977664249278115400294401892237874490721478834552286369830267
  | .reshape1x8 =>
      2598058543572663691928291801991083332834406653466399970650219017347474033401
  | .reshape4x1 =>
      5915654282401331336747985974992743439571166637199277295399593266008193812311
  | .reshape8x1 =>
      8151566796627494957780365425260097767647931594965532798107827918965818197203

def statementPad0 : FamilyPolicy → F
  | .reshape2x1 =>
      5045310869510348962806205692490258173984769940506816255339044190456023371912
  | .reshape1x8 =>
      3265217450668797951568683547963990927841845086752579767062168357780493777363
  | .reshape4x1 =>
      6435842850099173833513748825762623705081823114719452592076083094765780982117
  | .reshape8x1 =>
      2310407198398592542434300833852291040911121939303310913824413219212949527351

def statementPad1 : FamilyPolicy → F
  | .reshape2x1 =>
      152829339914556277658387355430866190760290215177739340533540084191146577079
  | .reshape1x8 =>
      7628228517115617761731724754875004303107790596370304736275780016796853259057
  | .reshape4x1 =>
      2279160445477882898944068799933079351983642684999701084965958931992088916257
  | .reshape8x1 =>
      2915450631090043870362923548486420008631941260295434438381537057702768319276

def statementField (fields : List F) (index : Nat) (padding : F) : F :=
  fields.getD index padding

def statementFirstBlock (policy : FamilyPolicy) (fields : List F) : F :=
  Poseidon7Bridge.permSpec7 (statementDomain policy)
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
  | .reshape2x1 => first
  | .reshape1x8 =>
      Poseidon7Bridge.permSpec7 (statementDomain policy) first
        (statementField fields 7 (statementPad0 policy))
        (statementField fields 8 (statementPad1 policy))
        (statementField fields 9 (statementPad0 policy))
        (statementField fields 10 (statementPad1 policy))
        (statementField fields 11 (statementPad0 policy))
        (statementPad1 policy)
  | .reshape4x1 =>
      Poseidon7Bridge.permSpec7 (statementDomain policy) first
        (statementField fields 7 (statementPad0 policy))
        (statementField fields 8 (statementPad1 policy))
        (statementField fields 9 (statementPad0 policy))
        (statementField fields 10 (statementPad1 policy))
        (statementPad0 policy)
        (statementPad1 policy)
  | .reshape8x1 =>
      let second :=
        Poseidon7Bridge.permSpec7 (statementDomain policy) first
          (statementField fields 7 (statementPad0 policy))
          (statementField fields 8 (statementPad1 policy))
          (statementField fields 9 (statementPad0 policy))
          (statementField fields 10 (statementPad1 policy))
          (statementField fields 11 (statementPad0 policy))
          (statementField fields 12 (statementPad1 policy))
      Poseidon7Bridge.permSpec7 (statementDomain policy) second
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
    Decaf377Assumptions.CompressToFieldSpec
      (toDecafPoint action.balanceCommitment) balanceFq ∧
    List.Forall₂
      (fun input rkFq =>
        Decaf377Assumptions.CompressToFieldSpec
          (toDecafPoint input.rk) rkFq)
      action.inputs rkFqs ∧
    action.publicStatementHash =
      statementHash action.policy (statementFields action balanceFq rkFqs)

def primitives
    (signatureVerifies : Point F → Prop)
    (nullifierFresh : F → Prop)
    (transitionAccepted : Action F Path24 → Prop) :
    Primitives F Path24 :=
  {
    canonicalTransmission
    realCommitment
    outputCommitment
    member
    realNullifier
    dummyNullifier
    randomizedKeyReal
    conservation
    statementBinding
    signatureVerifies
    nullifierFresh
    transitionAccepted
  }

end Shieldd.GnarkFormal.NoteReshapeCanonical
