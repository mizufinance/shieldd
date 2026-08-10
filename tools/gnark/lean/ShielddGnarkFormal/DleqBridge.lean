import ShielddGnarkFormal.AckBridge
import ShielddGnarkFormal.DecafCompressionBridge
import ShielddGnarkFormal.Protocol.Transfer.Concrete
import ShielddGnarkFormal.Poseidon7Bridge
import ShielddGnarkFormal.ThresholdRegulatedBridge

set_option linter.unusedSectionVars false

/-!
Exact composite bridge for the transfer DLEQ verifier.

The circuit side retains the two 253-bit double-base responses, five extracted
Decaf compression gadgets, the extracted Poseidon7 transcript, and the
conditional 250-bit challenge comparison. The protocol side is the independent
`Protocol.Transfer.Concrete.dleqBinding` relation.
-/

namespace Shieldd.GnarkFormal.DleqBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Protocol.Transfer

abbrev F := Protocol.Common.F
abbrev Point := Protocol.Common.Point F
abbrev CircuitPoint := Decaf377Assumptions.Point

variable [Fact (Nat.Prime Extracted.DecafCompressToField.Order)]

-- The extracted gadgets all use the same scalar-field modulus. Expose one
-- canonical prime dependency and derive the leaf witnesses definitionally so
-- downstream DLEQ theorems do not require several indistinguishable instances.
local instance : Fact (Nat.Prime Extracted.DecafEdwardsAdd.Order) := ‹_›
local instance : Fact (Nat.Prime Extracted.PoseidonHash7.Order) := ‹_›

def toCircuitPoint (point : Point) : CircuitPoint :=
  ⟨point.x, point.y⟩

@[simp] theorem toProtocolPoint_toCircuitPoint (point : Point) :
    AckBridge.toProtocolPoint (toCircuitPoint point) = point := by
  rfl

@[simp] theorem toProtocolPoint_neg (point : CircuitPoint) :
    AckBridge.toProtocolPoint (Decaf377Assumptions.neg point) =
      Protocol.Common.Decaf.neg (AckBridge.toProtocolPoint point) := by
  rfl

def circuitDoubleBaseDigit
    (first second : CircuitPoint) (firstScalar secondScalar : F)
    (bitIndex : Nat) : CircuitPoint :=
  if firstScalar.val.testBit bitIndex then
    if secondScalar.val.testBit bitIndex then
      Decaf377Assumptions.add first second
    else first
  else if secondScalar.val.testBit bitIndex then
    second
  else Decaf377Assumptions.identity

def circuitDoubleBaseScalarMulMSBFrom
    (first second : CircuitPoint) (firstScalar secondScalar : F) :
    Nat → CircuitPoint → CircuitPoint
  | 0, accumulator => accumulator
  | fuel + 1, accumulator =>
      circuitDoubleBaseScalarMulMSBFrom
        first second firstScalar secondScalar fuel
        (Decaf377Assumptions.add
          (Decaf377Assumptions.double accumulator)
          (circuitDoubleBaseDigit
            first second firstScalar secondScalar fuel))

def circuitDoubleBaseScalarMulMSB
    (nBits : Nat) (first second : CircuitPoint)
    (firstScalar secondScalar : F) : CircuitPoint :=
  match nBits with
  | 0 => Decaf377Assumptions.identity
  | remaining + 1 =>
      circuitDoubleBaseScalarMulMSBFrom
        first second firstScalar secondScalar remaining
        (circuitDoubleBaseDigit
          first second firstScalar secondScalar remaining)

@[simp] theorem circuitDoubleBaseDigit_maps
    (first second : CircuitPoint) (firstScalar secondScalar : F)
    (bitIndex : Nat) :
    AckBridge.toProtocolPoint
        (circuitDoubleBaseDigit
          first second firstScalar secondScalar bitIndex) =
      Protocol.Common.Decaf.doubleBaseDigit
        (AckBridge.toProtocolPoint first)
        (AckBridge.toProtocolPoint second)
        firstScalar secondScalar bitIndex := by
  simp only [
    circuitDoubleBaseDigit,
    Protocol.Common.Decaf.doubleBaseDigit
  ]
  split <;> split <;> rfl

theorem circuitDoubleBaseScalarMulMSBFrom_maps
    (first second : CircuitPoint) (firstScalar secondScalar : F)
    (fuel : Nat) (accumulator : CircuitPoint) :
    AckBridge.toProtocolPoint
        (circuitDoubleBaseScalarMulMSBFrom
          first second firstScalar secondScalar fuel accumulator) =
      Protocol.Common.Decaf.doubleBaseScalarMulMSBFrom
        (AckBridge.toProtocolPoint first)
        (AckBridge.toProtocolPoint second)
        firstScalar secondScalar fuel
        (AckBridge.toProtocolPoint accumulator) := by
  induction fuel generalizing accumulator with
  | zero => rfl
  | succ fuel ih =>
      simp only [
        circuitDoubleBaseScalarMulMSBFrom,
        Protocol.Common.Decaf.doubleBaseScalarMulMSBFrom,
        ih,
        AckBridge.toProtocolPoint_add,
        AckBridge.toProtocolPoint_double,
        circuitDoubleBaseDigit_maps
      ]

theorem circuitDoubleBaseScalarMulMSB_maps
    (nBits : Nat) (first second : CircuitPoint)
    (firstScalar secondScalar : F) :
    AckBridge.toProtocolPoint
        (circuitDoubleBaseScalarMulMSB
          nBits first second firstScalar secondScalar) =
      Protocol.Common.Decaf.doubleBaseScalarMulMSB
        nBits
        (AckBridge.toProtocolPoint first)
        (AckBridge.toProtocolPoint second)
        firstScalar secondScalar := by
  cases nBits with
  | zero => rfl
  | succ remaining =>
      simp only [
        circuitDoubleBaseScalarMulMSB,
        Protocol.Common.Decaf.doubleBaseScalarMulMSB
      ]
      rw [
        circuitDoubleBaseScalarMulMSBFrom_maps,
        circuitDoubleBaseDigit_maps
      ]

def circuitResponseR (proof : DleqProof F) : CircuitPoint :=
  circuitDoubleBaseScalarMulMSB 253
    Decaf377Assumptions.generator
    (Decaf377Assumptions.neg (toCircuitPoint proof.encCmt))
    proof.response proof.challenge

def circuitResponseRP (proof : DleqProof F) : CircuitPoint :=
  circuitDoubleBaseScalarMulMSB 253
    (toCircuitPoint proof.derivedPk)
    (Decaf377Assumptions.neg (toCircuitPoint proof.sharedPoint))
    proof.response proof.challenge

theorem circuitResponseR_maps (proof : DleqProof F) :
    AckBridge.toProtocolPoint (circuitResponseR proof) =
      Protocol.Transfer.Concrete.dleqResponseR proof := by
  unfold circuitResponseR Protocol.Transfer.Concrete.dleqResponseR
  rw [circuitDoubleBaseScalarMulMSB_maps]
  rfl

theorem circuitResponseRP_maps (proof : DleqProof F) :
    AckBridge.toProtocolPoint (circuitResponseRP proof) =
      Protocol.Transfer.Concrete.dleqResponseRP proof := by
  unfold circuitResponseRP Protocol.Transfer.Concrete.dleqResponseRP
  rw [circuitDoubleBaseScalarMulMSB_maps]
  rfl

/--
Recovered semantic endpoint of gnark's joint left-to-right double-base
ladder. Its provider is proved from the normalized lookup, double, and add
rows; it is not supplied by a refinement caller.
-/
def DoubleBaseCircuit
    (proof : DleqProof F) (rRec rpRec : CircuitPoint) : Prop :=
  rRec = circuitResponseR proof ∧
    rpRec = circuitResponseRP proof

/--
Recovered result of the two canonical field decompositions and the emitted
conditional upper-bit-zero/lower-bit-equality rows.
-/
def ChallengeComparisonCircuit
    (isRegulated published computed : F) : Prop :=
  published.val < 2 ^ 253 ∧
    computed.val < 2 ^ 253 ∧
    (isRegulated = 1 →
      published.val < 2 ^ 250 ∧
      published.val % 2 ^ 250 = computed.val % 2 ^ 250)

def DleqBodyCircuit
    (isRegulated : F) (proof : DleqProof F) : Prop :=
  Decaf377Assumptions.CompressToFieldSpec
      (toCircuitPoint proof.derivedPk) proof.derivedPkEncoding ∧
    Decaf377Assumptions.CompressToFieldSpec
      (toCircuitPoint proof.encCmt) proof.encCmtEncoding ∧
    Decaf377Assumptions.CompressToFieldSpec
      (toCircuitPoint proof.sharedPoint) proof.sharedPointEncoding ∧
    ∃ rRec rpRec rFq rpFq challengeHash,
      DoubleBaseCircuit proof rRec rpRec ∧
      Decaf377Assumptions.CompressToFieldSpec rRec rFq ∧
      Decaf377Assumptions.CompressToFieldSpec rpRec rpFq ∧
      Extracted.PoseidonHash7.circuit
        Protocol.Transfer.Concrete.dleqChallengeDomain
        proof.metadataHash 8 proof.derivedPkEncoding proof.encCmtEncoding
        proof.sharedPointEncoding rFq rpFq challengeHash ∧
      ChallengeComparisonCircuit
        isRegulated proof.challenge challengeHash

def DleqBodySpec
    (isRegulated : F) (proof : DleqProof F) : Prop :=
  Protocol.Common.Decaf.compressesTo
      proof.derivedPk proof.derivedPkEncoding ∧
    Protocol.Common.Decaf.compressesTo
      proof.encCmt proof.encCmtEncoding ∧
    Protocol.Common.Decaf.compressesTo
      proof.sharedPoint proof.sharedPointEncoding ∧
    ∃ rFq rpFq,
      Protocol.Common.Decaf.compressesTo
        (Protocol.Transfer.Concrete.dleqResponseR proof) rFq ∧
      Protocol.Common.Decaf.compressesTo
        (Protocol.Transfer.Concrete.dleqResponseRP proof) rpFq ∧
      (isRegulated = 1 →
        proof.challenge.val < 2 ^ 250 ∧
        proof.challenge.val % 2 ^ 250 =
          (Protocol.Transfer.Concrete.dleqChallenge proof rFq rpFq).val %
            2 ^ 250)

theorem dleq_body_sound
    (isRegulated : F)
    (proof : DleqProof F)
    (h : DleqBodyCircuit isRegulated proof) :
    DleqBodySpec isRegulated proof := by
  rcases h with
    ⟨hderived, hencCmt, hshared,
      rRec, rpRec, rFq, rpFq, challengeHash,
      hresponses, hrRec, hrpRec, hchallenge, hcomparison⟩
  have hderivedSpec :=
    DecafCompressionBridge.compressesTo_of_spec
      (toCircuitPoint proof.derivedPk) proof.derivedPkEncoding hderived
  have hencCmtSpec :=
    DecafCompressionBridge.compressesTo_of_spec
      (toCircuitPoint proof.encCmt) proof.encCmtEncoding hencCmt
  have hsharedSpec :=
    DecafCompressionBridge.compressesTo_of_spec
      (toCircuitPoint proof.sharedPoint) proof.sharedPointEncoding hshared
  have hrRecSpec :=
    DecafCompressionBridge.compressesTo_of_spec rRec rFq hrRec
  have hrpRecSpec :=
    DecafCompressionBridge.compressesTo_of_spec rpRec rpFq hrpRec
  have hchallengeSpec :=
    Poseidon7Bridge.circuit_sound_eq
      Protocol.Transfer.Concrete.dleqChallengeDomain
      proof.metadataHash 8 proof.derivedPkEncoding proof.encCmtEncoding
      proof.sharedPointEncoding rFq rpFq challengeHash hchallenge
  rcases hresponses with ⟨hrResponse, hrpResponse⟩
  rw [hrResponse, circuitResponseR_maps] at hrRecSpec
  rw [hrpResponse, circuitResponseRP_maps] at hrpRecSpec
  refine ⟨
    ?_,
    ?_,
    ?_,
    rFq,
    rpFq,
    hrRecSpec,
    hrpRecSpec,
    ?_
  ⟩
  · simpa using hderivedSpec
  · simpa using hencCmtSpec
  · simpa using hsharedSpec
  · intro hregulated
    rcases hcomparison.2.2 hregulated with
      ⟨hchallengeRange, hchallengeBits⟩
    refine ⟨hchallengeRange, ?_⟩
    rw [hchallengeSpec] at hchallengeBits
    exact hchallengeBits

/-!
`AssertEquivalent` contributes only a cross-ratio row.  The surrounding
transfer proof must combine that row with independently proved on-curve facts:
the expected ACK/EPK facts come from their scalar ladders, while the DLEQ
representatives are on-curve because the exact body proves their compression
relations.  There is deliberately no all-in-one `DleqCircuit` theorem here;
such a theorem previously smuggled stale on-curve rows into this gadget.
-/

def CrossRatioCircuit
    (expectedAck expectedEpk : Point) (proof : DleqProof F) : Prop :=
  Decaf377Assumptions.AssertEquivalentCircuit
      (toCircuitPoint expectedAck) (toCircuitPoint proof.derivedPk) ∧
    Decaf377Assumptions.AssertEquivalentCircuit
      (toCircuitPoint expectedEpk) (toCircuitPoint proof.encCmt)

theorem dleq_binding_of_body_and_cross_ratios
    (isRegulated : F) (expectedAck expectedEpk : Point)
    (proof : DleqProof F)
    (hExpectedAck : Protocol.Common.Decaf.onCurve expectedAck)
    (hExpectedEpk : Protocol.Common.Decaf.onCurve expectedEpk)
    (hCross : CrossRatioCircuit expectedAck expectedEpk proof)
    (hBody : DleqBodyCircuit isRegulated proof) :
    Protocol.Transfer.Concrete.dleqBinding
      isRegulated expectedAck expectedEpk proof := by
  rcases hCross with ⟨hAckCross, hEpkCross⟩
  have hBodySpec := dleq_body_sound isRegulated proof hBody
  rcases hBodySpec with
    ⟨hDerived, hEncCmt, hShared, rFq, rpFq,
      hR, hRP, hChallenge⟩
  refine ⟨
    ⟨hExpectedAck, ?_, hAckCross⟩,
    ⟨hExpectedEpk, ?_, hEpkCross⟩,
    hDerived,
    hEncCmt,
    hShared,
    rFq,
    rpFq,
    hR,
    hRP,
    hChallenge
  ⟩
  · exact hDerived.1
  · exact hEncCmt.1

end Shieldd.GnarkFormal.DleqBridge
