import ShielddGnarkFormal.NoteReshapeCanonical
import ShielddGnarkFormal.Protocol.NoteReshape.Concrete
import ShielddGnarkFormal.Protocol.NoteReshape.CircuitFacts

/-!
Handwritten refinement from the circuit-facing NoteReshape interpretation to
the independent protocol relation.

It intentionally knows both definitions, but contains no wire indices or
generated circuit contracts.
-/

namespace Shieldd.GnarkFormal.Deployed.NoteReshapeRefinement

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Protocol.NoteReshape

abbrev F := Concrete.F
abbrev Path24 := Concrete.Path24

theorem compressesTo_of_circuitSpec
    (point : Point F) (output : F)
    (h :
      Decaf377Assumptions.CompressToFieldSpec
        (NoteReshapeCanonical.toDecafPoint point) output) :
    Protocol.Common.Decaf.compressesTo point output := by
  simpa [
    Decaf377Assumptions.CompressToFieldSpec,
    Extracted.DecafCompressToField.Relation,
    Extracted.DecafCompressToField.OnCurve,
    Extracted.DecafCompressToField.SqrtCase,
    Extracted.DecafCompressToField.den,
    Extracted.DecafCompressToField.u1,
    Extracted.DecafCompressToField.outOf,
    Extracted.DecafCompressToField.aMinusD,
    Extracted.DecafCompressToField.zeta,
    Protocol.Common.Decaf.compressesTo,
    Protocol.Common.Decaf.onCurve,
    Protocol.Common.Decaf.sqrtCase,
    Protocol.Common.Decaf.compressDenominator,
    Protocol.Common.Decaf.compressU1,
    Protocol.Common.Decaf.compressedOutput,
    Protocol.Common.Decaf.aMinusD,
    Protocol.Common.Decaf.zeta,
    NoteReshapeCanonical.toDecafPoint
  ] using h

theorem circuitSpec_of_compressesTo
    (point : Point F) (output : F)
    (h : Protocol.Common.Decaf.compressesTo point output) :
    Decaf377Assumptions.CompressToFieldSpec
      (NoteReshapeCanonical.toDecafPoint point) output := by
  simpa [
    Decaf377Assumptions.CompressToFieldSpec,
    Extracted.DecafCompressToField.Relation,
    Extracted.DecafCompressToField.OnCurve,
    Extracted.DecafCompressToField.SqrtCase,
    Extracted.DecafCompressToField.den,
    Extracted.DecafCompressToField.u1,
    Extracted.DecafCompressToField.outOf,
    Extracted.DecafCompressToField.aMinusD,
    Extracted.DecafCompressToField.zeta,
    Protocol.Common.Decaf.compressesTo,
    Protocol.Common.Decaf.onCurve,
    Protocol.Common.Decaf.sqrtCase,
    Protocol.Common.Decaf.compressDenominator,
    Protocol.Common.Decaf.compressU1,
    Protocol.Common.Decaf.compressedOutput,
    Protocol.Common.Decaf.aMinusD,
    Protocol.Common.Decaf.zeta,
    NoteReshapeCanonical.toDecafPoint
  ] using h

theorem equivalent_of_circuitSpec
    (left right : Point F)
    (h :
      Decaf377Assumptions.DecafEquivalent
        (NoteReshapeCanonical.toDecafPoint left)
        (NoteReshapeCanonical.toDecafPoint right)) :
    Protocol.Common.Decaf.equivalent left right := by
  rcases h with ⟨hleft, hright, hcross⟩
  simp only [
    Decaf377Assumptions.DecafEquivalent,
    Decaf377Assumptions.AssertEquivalentSpec,
    EdwardsBridge.onCurve,
    EdwardsBridge.d,
    NoteReshapeCanonical.toDecafPoint
  ] at hleft hright hcross
  refine ⟨?_, ?_, hcross⟩
  · unfold Protocol.Common.Decaf.onCurve Protocol.Common.Decaf.curveD
    linear_combination hleft
  · unfold Protocol.Common.Decaf.onCurve Protocol.Common.Decaf.curveD
    linear_combination hright

@[simp] theorem toProtocolPoint_toDecafPoint (point : Point F) :
    NoteReshapeCanonical.toProtocolPoint
      (NoteReshapeCanonical.toDecafPoint point) = point := by
  cases point
  rfl

@[simp] theorem toDecafPoint_toProtocolPoint
    (point : Decaf377Assumptions.Point) :
    NoteReshapeCanonical.toDecafPoint
      (NoteReshapeCanonical.toProtocolPoint point) = point := by
  cases point
  rfl

@[simp] theorem toProtocolPoint_add
    (left right : Decaf377Assumptions.Point) :
    NoteReshapeCanonical.toProtocolPoint
        (Decaf377Assumptions.add left right) =
      Protocol.Common.Decaf.add
        (NoteReshapeCanonical.toProtocolPoint left)
        (NoteReshapeCanonical.toProtocolPoint right) := by
  rfl

@[simp] theorem toProtocolPoint_double
    (point : Decaf377Assumptions.Point) :
    NoteReshapeCanonical.toProtocolPoint
        (Decaf377Assumptions.double point) =
      Protocol.Common.Decaf.double
        (NoteReshapeCanonical.toProtocolPoint point) := by
  rfl

theorem toProtocolPoint_scalarMulLEFrom
    (scalar : F) (fuel bitIndex : Nat)
    (result current : Decaf377Assumptions.Point) :
    NoteReshapeCanonical.toProtocolPoint
        (Decaf377Assumptions.scalarMulLEFrom
          scalar fuel bitIndex result current) =
      Protocol.Common.Decaf.scalarMulLEFrom scalar fuel bitIndex
        (NoteReshapeCanonical.toProtocolPoint result)
        (NoteReshapeCanonical.toProtocolPoint current) := by
  induction fuel generalizing bitIndex result current with
  | zero => rfl
  | succ fuel ih =>
      simp only [
        Decaf377Assumptions.scalarMulLEFrom,
        Protocol.Common.Decaf.scalarMulLEFrom,
        Decaf377Assumptions.select
      ]
      split <;> simp only [toProtocolPoint_add, toProtocolPoint_double, ih]

theorem toProtocolPoint_scalarMulLE
    (bits : Nat) (base : Decaf377Assumptions.Point) (scalar : F) :
    NoteReshapeCanonical.toProtocolPoint
        (Decaf377Assumptions.scalarMulLE bits base scalar) =
      Protocol.Common.Decaf.scalarMulLE bits
        (NoteReshapeCanonical.toProtocolPoint base) scalar := by
  exact toProtocolPoint_scalarMulLEFrom scalar bits 0
    Decaf377Assumptions.identity base

@[simp] theorem toProtocolPoint_window2Digit
    (base : Decaf377Assumptions.Point) (high low : Bool) :
    NoteReshapeCanonical.toProtocolPoint
        (Decaf377Assumptions.window2Digit base high low) =
      Protocol.Common.Decaf.window2Digit
        (NoteReshapeCanonical.toProtocolPoint base) high low := by
  cases high <;> cases low <;> rfl

theorem toProtocolPoint_scalarMulWindow2PairsFromBits
    {nBits : Nat} (bits : List.Vector Bool nBits)
    (base : Decaf377Assumptions.Point) (fuel highBit : Nat)
    (accumulator : Decaf377Assumptions.Point) :
    NoteReshapeCanonical.toProtocolPoint
        (Decaf377Assumptions.scalarMulWindow2PairsFromBits
          bits base fuel highBit accumulator) =
      Protocol.Common.Decaf.scalarMulWindow2PairsFromBits
        bits (NoteReshapeCanonical.toProtocolPoint base) fuel highBit
          (NoteReshapeCanonical.toProtocolPoint accumulator) := by
  induction fuel generalizing highBit accumulator with
  | zero => rfl
  | succ fuel ih =>
      simp only [
        Decaf377Assumptions.scalarMulWindow2PairsFromBits,
        Protocol.Common.Decaf.scalarMulWindow2PairsFromBits
      ]
      rw [ih, toProtocolPoint_add, toProtocolPoint_double,
        toProtocolPoint_double, toProtocolPoint_window2Digit]

theorem toProtocolPoint_scalarMulWindow2FromBits
    {nBits : Nat} (bits : List.Vector Bool nBits)
    (base : Decaf377Assumptions.Point) :
    NoteReshapeCanonical.toProtocolPoint
        (Decaf377Assumptions.scalarMulWindow2FromBits bits base) =
      Protocol.Common.Decaf.scalarMulWindow2FromBits bits
        (NoteReshapeCanonical.toProtocolPoint base) := by
  cases nBits with
  | zero => rfl
  | succ nBits =>
      cases nBits with
      | zero =>
          simp only [
            Decaf377Assumptions.scalarMulWindow2FromBits,
            Protocol.Common.Decaf.scalarMulWindow2FromBits
          ]
          split <;> rfl
      | succ width =>
          simp only [
            Decaf377Assumptions.scalarMulWindow2FromBits,
            Protocol.Common.Decaf.scalarMulWindow2FromBits
          ]
          split
          · split <;> simp only [
              toProtocolPoint_add,
              toProtocolPoint_double,
              toProtocolPoint_scalarMulWindow2PairsFromBits,
              toProtocolPoint_window2Digit
            ]
          · simp only [
              toProtocolPoint_scalarMulWindow2PairsFromBits,
              toProtocolPoint_window2Digit
            ]

theorem toProtocolPoint_scalarMulWindow2
    (nBits : Nat) (base : Decaf377Assumptions.Point) (scalar : F) :
    NoteReshapeCanonical.toProtocolPoint
        (Decaf377Assumptions.scalarMulWindow2 nBits base scalar) =
      Protocol.Common.Decaf.scalarMulWindow2 nBits
        (NoteReshapeCanonical.toProtocolPoint base) scalar := by
  simpa only [
    Decaf377Assumptions.scalarMulWindow2,
    Decaf377Assumptions.scalarBits,
    Protocol.Common.Decaf.scalarMulWindow2,
    Protocol.Common.Decaf.scalarBits
  ] using toProtocolPoint_scalarMulWindow2FromBits
    (Decaf377Assumptions.scalarBits nBits scalar) base

theorem toProtocolPoint_dtk
    (nullifierKey : F)
    (authorizationKey diversifiedGenerator : Decaf377Assumptions.Point)
    (ivkReduced ivkQuotientA : F) :
    NoteReshapeCanonical.toProtocolPoint
        (Decaf377Assumptions.dtk nullifierKey authorizationKey
          diversifiedGenerator ivkReduced ivkQuotientA) =
      Protocol.Common.Decaf.dtk
        (NoteReshapeCanonical.toProtocolPoint diversifiedGenerator)
        ivkReduced := by
  simpa only [
    Decaf377Assumptions.dtk,
    Protocol.Common.Decaf.dtk
  ] using toProtocolPoint_scalarMulWindow2
    251 diversifiedGenerator ivkReduced

theorem noteCommitment_of_circuitInterpretation
    (shared : SharedContext F) (blinding amount commitment : F)
    (h :
      NoteReshapeCanonical.noteCommitment
        shared blinding amount commitment) :
    Concrete.noteCommitment shared blinding amount commitment :=
  h

theorem statePositionFromBits_eq
    (b0 b1 : Nat → F) (level : Nat) :
    NoteReshapeCanonical.statePositionFromBits b0 b1 level =
      Protocol.Common.statePositionFromBits b0 b1 level :=
  rfl

theorem stateCommitmentRecover_eq
    (commitment : F) (path : Path24) (b0 b1 : Nat → F) (level : Nat) :
    NoteReshapeCanonical.stateCommitmentRecover
        commitment path b0 b1 level =
      Protocol.Common.stateCommitmentRecover commitment path b0 b1 level :=
  rfl

theorem member_of_circuitInterpretation
    (anchor : F) (input : RealInput F Path24)
    (h : NoteReshapeCanonical.member anchor input) :
    Concrete.member anchor input :=
  h

theorem realNullifier_of_circuitInterpretation
    (authorization : AuthorizationContext F) (input : RealInput F Path24)
    (h : NoteReshapeCanonical.realNullifier authorization input) :
    Concrete.realNullifier authorization input :=
  h

theorem dummyNullifier_of_circuitInterpretation
    (input : DummyInput F)
    (h : NoteReshapeCanonical.dummyNullifier input) :
    Concrete.dummyNullifier input :=
  h

theorem diversifiedTransmissionKey_of_circuitSpec
    (nullifierKey : F)
    (authorizationKey diversifiedGenerator transmission : Point F)
    (ivkReduced ivkQuotientA : F)
    (h :
      Decaf377Assumptions.DiversifiedTransmissionKeySpec
        nullifierKey
        (NoteReshapeCanonical.toDecafPoint authorizationKey)
        (NoteReshapeCanonical.toDecafPoint diversifiedGenerator)
        ivkReduced ivkQuotientA
        (NoteReshapeCanonical.toDecafPoint transmission)) :
    Protocol.Common.Decaf.diversifiedTransmissionKey
      nullifierKey authorizationKey diversifiedGenerator
      ivkReduced ivkQuotientA transmission := by
  rcases h with
    ⟨⟨authorizationKeyEncoding, hencoding, hreduced, hquotient⟩, htransmission⟩
  refine ⟨⟨authorizationKeyEncoding, ?_, ?_, ?_⟩, ?_⟩
  · exact compressesTo_of_circuitSpec authorizationKey authorizationKeyEncoding hencoding
  · simpa [
      Decaf377Assumptions.dtkIvkModQ,
      Protocol.Common.Decaf.dtkIvkModQ,
      Poseidon2Bridge.permSpec2,
      Extracted.IvkModR.rNat,
      Protocol.Common.Decaf.scalarOrder
    ] using hreduced
  · simpa [
      Decaf377Assumptions.dtkIvkModQ,
      Protocol.Common.Decaf.dtkIvkModQ,
      Poseidon2Bridge.permSpec2,
      Extracted.IvkModR.rNat,
      Protocol.Common.Decaf.scalarOrder
    ] using hquotient
  · have hmapped :=
      congrArg NoteReshapeCanonical.toProtocolPoint htransmission
    simpa only [
      toProtocolPoint_toDecafPoint,
      toProtocolPoint_dtk
    ] using hmapped

theorem circuitSpec_of_diversifiedTransmissionKey
    (nullifierKey : F)
    (authorizationKey diversifiedGenerator transmission : Point F)
    (ivkReduced ivkQuotientA : F)
    (h :
      Protocol.Common.Decaf.diversifiedTransmissionKey
        nullifierKey authorizationKey diversifiedGenerator
        ivkReduced ivkQuotientA transmission) :
    Decaf377Assumptions.DiversifiedTransmissionKeySpec
      nullifierKey
      (NoteReshapeCanonical.toDecafPoint authorizationKey)
      (NoteReshapeCanonical.toDecafPoint diversifiedGenerator)
      ivkReduced ivkQuotientA
      (NoteReshapeCanonical.toDecafPoint transmission) := by
  rcases h with
    ⟨⟨authorizationKeyEncoding, hencoding, hreduced, hquotient⟩,
      htransmission⟩
  refine ⟨⟨authorizationKeyEncoding, ?_, ?_, ?_⟩, ?_⟩
  · exact circuitSpec_of_compressesTo
      authorizationKey authorizationKeyEncoding hencoding
  · simpa [
      Decaf377Assumptions.dtkIvkModQ,
      Protocol.Common.Decaf.dtkIvkModQ,
      Poseidon2Bridge.permSpec2,
      Extracted.IvkModR.rNat,
      Protocol.Common.Decaf.scalarOrder
    ] using hreduced
  · simpa [
      Decaf377Assumptions.dtkIvkModQ,
      Protocol.Common.Decaf.dtkIvkModQ,
      Poseidon2Bridge.permSpec2,
      Extracted.IvkModR.rNat,
      Protocol.Common.Decaf.scalarOrder
    ] using hquotient
  · have hdtkMap :=
      congrArg NoteReshapeCanonical.toDecafPoint
        (toProtocolPoint_dtk nullifierKey
        (NoteReshapeCanonical.toDecafPoint authorizationKey)
        (NoteReshapeCanonical.toDecafPoint diversifiedGenerator)
        ivkReduced ivkQuotientA)
    simp only [toDecafPoint_toProtocolPoint,
      toProtocolPoint_toDecafPoint] at hdtkMap
    have hmapped :=
      congrArg NoteReshapeCanonical.toDecafPoint htransmission
    rw [hdtkMap]
    exact hmapped

theorem canonicalTransmission_of_circuitInterpretation
    (authorization : AuthorizationContext F) (shared : SharedContext F)
    (h :
      NoteReshapeCanonical.canonicalTransmission authorization shared) :
    Concrete.canonicalTransmission authorization shared := by
  rcases h with ⟨hcanonical, hivkNonzero, htransmissionNonIdentity⟩
  rcases hcanonical with
    ⟨hauthorizationKey, hdiversifiedGenerator, hgenerator, hdtk,
      htransmission⟩
  exact ⟨
    ⟨
      hauthorizationKey,
      hdiversifiedGenerator,
      compressesTo_of_circuitSpec
        shared.diversifiedGenerator shared.diversifiedGeneratorEncoding hgenerator,
      diversifiedTransmissionKey_of_circuitSpec
        authorization.nullifierKey authorization.authorizationKey
        shared.diversifiedGenerator shared.transmission
        authorization.ivkReduced authorization.ivkQuotientA hdtk,
      compressesTo_of_circuitSpec
        shared.transmission shared.transmissionEncoding htransmission
    ⟩,
    hivkNonzero,
    htransmissionNonIdentity
  ⟩

theorem randomizedKeyReal_of_circuitInterpretation
    (authorization : AuthorizationContext F) (input : RealInput F Path24)
    (h : NoteReshapeCanonical.randomizedKeyReal authorization input) :
    Concrete.randomizedKeyReal authorization input := by
  rcases h with ⟨computed, hcomputed, hequivalent⟩
  refine ⟨NoteReshapeCanonical.toProtocolPoint computed, ?_, ?_⟩
  · have hmapped := congrArg NoteReshapeCanonical.toProtocolPoint hcomputed
    simpa [
      Decaf377Assumptions.RandomizedVerificationKeySpec,
      Decaf377Assumptions.rvk,
      Protocol.Common.Decaf.randomizedVerificationKey,
      Protocol.Common.Decaf.rvk,
      toProtocolPoint_scalarMulLE
    ] using hmapped
  · apply equivalent_of_circuitSpec
    simpa [NoteReshapeCanonical.toDecafPoint,
      NoteReshapeCanonical.toProtocolPoint] using hequivalent

theorem conservation_of_circuitInterpretation
    (action : Action F Path24)
    (h : NoteReshapeCanonical.conservation action) :
    Concrete.conservation action := by
  rcases h with ⟨hinputs, houtputs, hblind, hsum, hbalance⟩
  refine ⟨hinputs, houtputs, hblind, hsum, ?_⟩
  have hpoint :=
    congrArg NoteReshapeCanonical.toDecafPoint
      (toProtocolPoint_scalarMulLE 251
        Decaf377Assumptions.valueBlindingGenerator action.balanceBlinding)
  have hpoint' :
      Decaf377Assumptions.scalarMulLE 251
          Decaf377Assumptions.valueBlindingGenerator action.balanceBlinding =
        NoteReshapeCanonical.toDecafPoint
          (Protocol.Common.Decaf.scalarMulLE 251
            Protocol.Common.Decaf.valueBlindingGenerator action.balanceBlinding) := by
    simpa [
      Decaf377Assumptions.valueBlindingGenerator,
      Protocol.Common.Decaf.valueBlindingGenerator
    ] using hpoint
  have hmapped :
      Decaf377Assumptions.DecafEquivalent
        (NoteReshapeCanonical.toDecafPoint
          (Protocol.Common.Decaf.scalarMulLE 251
            Protocol.Common.Decaf.valueBlindingGenerator action.balanceBlinding))
        (NoteReshapeCanonical.toDecafPoint action.balanceCommitment) := by
    rw [← hpoint']
    exact hbalance
  exact equivalent_of_circuitSpec _ _ hmapped

theorem statementHash_eq
    (policy : FamilyPolicy) (fields : List F) :
    NoteReshapeCanonical.statementHash policy fields =
      Concrete.statementHash policy fields :=
  rfl

theorem inputStatementFields_eq
    (inputs : List (Input F Path24)) (rkFqs : List F) :
    NoteReshapeCanonical.inputStatementFields inputs rkFqs =
      Concrete.inputStatementFields inputs rkFqs :=
  rfl

theorem statementFields_eq
    (action : Action F Path24) (balanceFq : F) (rkFqs : List F) :
    NoteReshapeCanonical.statementFields action balanceFq rkFqs =
      Concrete.statementFields action balanceFq rkFqs :=
  rfl

theorem forall₂_compressesTo_of_circuitSpec
    {inputs : List (Input F Path24)} {outputs : List F}
    (h :
      List.Forall₂
        (fun input output =>
          Decaf377Assumptions.CompressToFieldSpec
            (NoteReshapeCanonical.toDecafPoint input.rk) output)
        inputs outputs) :
    List.Forall₂
      (fun input output => Protocol.Common.Decaf.compressesTo input.rk output)
      inputs outputs := by
  induction h with
  | nil => exact .nil
  | cons hhead _ ih =>
      exact .cons (compressesTo_of_circuitSpec _ _ hhead) ih

theorem statementBinding_of_circuitInterpretation
    (action : Action F Path24)
    (h : NoteReshapeCanonical.statementBinding action) :
    Concrete.statementBinding action := by
  rcases h with ⟨balanceFq, rkFqs, hbalance, hrks, hstatement⟩
  refine ⟨balanceFq, rkFqs, ?_, ?_, ?_⟩
  · exact compressesTo_of_circuitSpec
      action.balanceCommitment balanceFq hbalance
  · exact forall₂_compressesTo_of_circuitSpec hrks
  · calc
      action.publicStatementHash =
          NoteReshapeCanonical.statementHash action.policy
            (NoteReshapeCanonical.statementFields action balanceFq rkFqs) :=
        hstatement
      _ = Concrete.statementHash action.policy
            (NoteReshapeCanonical.statementFields action balanceFq rkFqs) :=
        statementHash_eq _ _
      _ = Concrete.statementHash action.policy
            (Concrete.statementFields action balanceFq rkFqs) := by
        rw [statementFields_eq]

/--
The circuit-facing facts refine the independently defined protocol
cryptographic relations. Shape and padding are shared structural predicates;
every cryptographic field crosses an explicit implication above.
-/
theorem circuitFacts_refine
    (action : Action F Path24)
    (facts :
      CircuitFacts NoteReshapeCanonical.circuitPrimitives action) :
    CircuitFacts Concrete.circuitPrimitives action := by
  refine {
    shape := facts.shape
    padding := facts.padding
    randomizersCanonical := facts.randomizersCanonical
    dummySlotIndicesCanonical := facts.dummySlotIndicesCanonical
    canonicalAddress :=
      canonicalTransmission_of_circuitInterpretation
        action.authorization action.shared facts.canonicalAddress
    inputsBound := ?_
    membership := ?_
    authorizationKeys := ?_
    outputsBound := ?_
    valueConserved :=
      conservation_of_circuitInterpretation action facts.valueConserved
    statementBound :=
      statementBinding_of_circuitInterpretation action facts.statementBound
  }
  · intro input hinput
    have hbound := facts.inputsBound input hinput
    cases input with
    | real real =>
        exact noteCommitment_of_circuitInterpretation
          action.shared real.blinding real.amount real.commitment hbound
    | dummy _ => trivial
  · intro input hinput
    have hmembership := facts.membership input hinput
    cases input with
    | real real =>
        exact ⟨
          member_of_circuitInterpretation action.anchor real hmembership.1,
          realNullifier_of_circuitInterpretation
            action.authorization real hmembership.2
        ⟩
    | dummy dummy =>
        exact ⟨
          hmembership.1,
          dummyNullifier_of_circuitInterpretation dummy hmembership.2
        ⟩
  · intro input hinput
    have hkey := facts.authorizationKeys input hinput
    cases input with
    | real real =>
        exact randomizedKeyReal_of_circuitInterpretation
          action.authorization real hkey
    | dummy _ => trivial
  · intro output houtput
    have hbound := facts.outputsBound output houtput
    exact noteCommitment_of_circuitInterpretation
      action.shared output.blinding output.amount output.commitment hbound

end Shieldd.GnarkFormal.Deployed.NoteReshapeRefinement
