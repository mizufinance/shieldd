import ShielddGnarkFormal.Protocol.NoteReshape.Semantics
import ShielddGnarkFormal.Poseidon377
import ShielddGnarkFormal.Poseidon1Spec
import ShielddGnarkFormal.Poseidon2Spec
import ShielddGnarkFormal.Poseidon3Spec
import ShielddGnarkFormal.Poseidon4Spec
import ShielddGnarkFormal.Poseidon6Spec
import ShielddGnarkFormal.Poseidon7Spec
import ShielddGnarkFormal.ChoiceFreeZMod

/-!
Concrete NoteReshape protocol relation.

This module fixes every cryptographic operation and domain separator used by
the accepted language. It imports no circuit, extractor, deployment, or proof
bridge module.
-/

namespace Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Protocol.NoteReshape

abbrev F := Poseidon377.F
abbrev Path24 := Fin 24 → Fin 3 → F

namespace Decaf

def curveD : F := 3021

def generator : Point F :=
  ⟨4959445789346820725352484487855828915252512307947624787834978378872129235627,
   6060471950081851567114691557659790004756535011754163002297540472747064943288⟩

def valueBlindingGenerator : Point F :=
  ⟨4661681602708190761543544705274244814260880986867766715334030151044279151219,
   4337336842509898676347982752646772244181661588533917621717979456142867120378⟩

def identity : Point F := ⟨0, 1⟩

def add (p q : Point F) : Point F :=
  let v0 := q.y * p.x
  let v1 := q.x * p.y
  let v2 := curveD * v0 * v1
  let u := (p.y + p.x) * (q.x + q.y)
  ⟨(v0 + v1) * (1 + v2)⁻¹, (-v0 - v1 + u) * (1 - v2)⁻¹⟩

def double (p : Point F) : Point F :=
  let u := p.x * p.y
  let v := p.x * p.x
  let w := p.y * p.y
  ⟨(2 * u) * (w - v)⁻¹, (w + v) * (2 - (w - v))⁻¹⟩

def scalarMulLEFrom (scalar : F) : Nat → Nat → Point F → Point F → Point F
  | 0, _, result, _ => result
  | fuel + 1, bitIndex, result, current =>
      let sum := add result current
      let result' := if scalar.val.testBit bitIndex then sum else result
      scalarMulLEFrom scalar fuel (bitIndex + 1) result' (double current)

def scalarMulLE (nBits : Nat) (base : Point F) (scalar : F) : Point F :=
  scalarMulLEFrom scalar nBits 0 identity base

def onCurve (point : Point F) : Prop :=
  point.y * point.y - point.x * point.x =
    1 + curveD * (point.x * point.x) * (point.y * point.y)

def equivalent (p q : Point F) : Prop :=
  onCurve p ∧ onCurve q ∧ p.x * q.y = q.x * p.y

def absF (value : F) : F :=
  if value.val % 2 = 0 then value else -value

def aMinusD : F :=
  8444461749428370424248824938781546531375899335154063827935233455917409236019

def zeta : F :=
  2841681278031794617739547238867782961338435681360110683443920362658525667816

def compressU1 (x y : F) : F := (x + x * y) * (x - x * y)

def compressDenominator (x y : F) : F :=
  compressU1 x y * aMinusD * (x * x)

def sqrtCase (x y sqrtRatio : F) : Prop :=
  (compressDenominator x y ≠ 0 ∧
      sqrtRatio * sqrtRatio * compressDenominator x y = 1) ∨
  (compressDenominator x y = 0 ∧ sqrtRatio = 0) ∨
  (compressDenominator x y ≠ 0 ∧
      sqrtRatio * sqrtRatio * compressDenominator x y = zeta)

def compressedOutput (x y sqrtRatio : F) : F :=
  absF
    (aMinusD * sqrtRatio *
      (absF (sqrtRatio * compressU1 x y) - x * y) * x)

def compressesTo (point : Point F) (output : F) : Prop :=
  onCurve point ∧
    ∃ sqrtRatio,
      sqrtCase point.x point.y sqrtRatio ∧
        output = compressedOutput point.x point.y sqrtRatio

def rvk (authorizationKey : Point F) (randomizer : F) : Point F :=
  add authorizationKey (scalarMulLE 251 generator randomizer)

def randomizedVerificationKey
    (authorizationKey : Point F) (randomizer : F) (output : Point F) : Prop :=
  output = rvk authorizationKey randomizer

def scalarOrder : Nat :=
  2111115437357092606062206234695386632838870926408408195193685246394721360383

def dtkIvkModQ (nullifierKey authorizationKeyEncoding : F) : F :=
  Poseidon2Spec.permSpec2
    Poseidon377.ivkDomain nullifierKey authorizationKeyEncoding

def dtk
    (diversifiedGenerator : Point F) (ivkReduced : F) : Point F :=
  scalarMulLE 251 diversifiedGenerator ivkReduced

def diversifiedTransmissionKey
    (nullifierKey : F)
    (authorizationKey diversifiedGenerator : Point F)
    (ivkReduced ivkQuotientA : F)
    (output : Point F) : Prop :=
  (∃ authorizationKeyEncoding,
      compressesTo authorizationKey authorizationKeyEncoding ∧
      ivkReduced.val =
        (dtkIvkModQ nullifierKey authorizationKeyEncoding).val % scalarOrder ∧
      ivkQuotientA.val =
        (dtkIvkModQ nullifierKey authorizationKeyEncoding).val / scalarOrder) ∧
  output = dtk diversifiedGenerator ivkReduced

end Decaf

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
  Poseidon4Spec.permSpec4
    domain children.1 children.2.1 children.2.2.1 children.2.2.2

def stateCommitmentRecover
    (commitment : F) (path : Path24) (b0 b1 : Nat → F) : Nat → F
  | 0 =>
      stateCommitmentStep (stateCommitmentDomain + 1)
        (Poseidon1Spec.permSpec1 stateCommitmentDomain commitment)
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

/-- A note commitment hashes the already-canonical shared context exactly once. -/
def noteCommitment
    (shared : SharedContext F)
    (blinding amount commitment : F) : Prop :=
  commitment =
    Poseidon6Spec.permSpec6 noteCommitmentDomain
      blinding amount shared.assetId shared.diversifiedGeneratorEncoding
        shared.transmissionEncoding shared.clueKey

def canonicalTransmission
    (authorization : AuthorizationContext F)
    (shared : SharedContext F) : Prop :=
  Decaf.compressesTo
      shared.diversifiedGenerator shared.diversifiedGeneratorEncoding ∧
    Decaf.diversifiedTransmissionKey
      authorization.nullifierKey authorization.authorizationKey
      shared.diversifiedGenerator authorization.ivkReduced
      authorization.ivkQuotientA shared.transmission ∧
    Decaf.compressesTo shared.transmission shared.transmissionEncoding

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
    Poseidon3Spec.permSpec3 Poseidon377.nullifierDomain
      authorization.nullifierKey input.commitment input.statePosition

def dummyNullifier (input : DummyInput F) : Prop :=
  input.nullifier =
    Poseidon3Spec.permSpec3 syntheticDummyNullifierDomain
      input.nullifierSeed input.randomizer input.slotIndex

def randomizedKeyReal
    (authorization : AuthorizationContext F)
    (input : RealInput F Path24) : Prop :=
  ∃ computed,
    Decaf.randomizedVerificationKey
      authorization.authorizationKey input.randomizer computed ∧
    Decaf.equivalent computed input.randomizedVerificationKey

def conservation (action : Action F Path24) : Prop :=
  (∀ input ∈ action.inputs, input.amount.val < 2 ^ 128) ∧
  (∀ output ∈ action.outputs, output.amount.val < 2 ^ 128) ∧
  (action.inputs.map Input.amount).sum =
    (action.outputs.map Output.amount).sum ∧
  Decaf.equivalent
    (Decaf.scalarMulLE 251
      Decaf.valueBlindingGenerator action.balanceBlinding)
    action.balanceCommitment

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
  Poseidon7Spec.permSpec7 (statementDomain policy)
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
      Poseidon7Spec.permSpec7 (statementDomain policy) first
        (statementField fields 7 (statementPad0 policy))
        (statementField fields 8 (statementPad1 policy))
        (statementField fields 9 (statementPad0 policy))
        (statementField fields 10 (statementPad1 policy))
        (statementField fields 11 (statementPad0 policy))
        (statementPad1 policy)
  | .reshape4x1 =>
      Poseidon7Spec.permSpec7 (statementDomain policy) first
        (statementField fields 7 (statementPad0 policy))
        (statementField fields 8 (statementPad1 policy))
        (statementField fields 9 (statementPad0 policy))
        (statementField fields 10 (statementPad1 policy))
        (statementPad0 policy)
        (statementPad1 policy)
  | .reshape8x1 =>
      let second :=
        Poseidon7Spec.permSpec7 (statementDomain policy) first
          (statementField fields 7 (statementPad0 policy))
          (statementField fields 8 (statementPad1 policy))
          (statementField fields 9 (statementPad0 policy))
          (statementField fields 10 (statementPad1 policy))
          (statementField fields 11 (statementPad0 policy))
          (statementField fields 12 (statementPad1 policy))
      Poseidon7Spec.permSpec7 (statementDomain policy) second
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
    Decaf.compressesTo action.balanceCommitment balanceFq ∧
    List.Forall₂
      (fun input rkFq => Decaf.compressesTo input.rk rkFq)
      action.inputs rkFqs ∧
    action.publicStatementHash =
      statementHash action.policy (statementFields action balanceFq rkFqs)

def circuitPrimitives : CircuitPrimitives F Path24 :=
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
  }

end Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete
