import Ipp.Extracted.TippMippAdapter
import Ipp.Extracted.AggregateAdapter
import Ipp.ShippingHashFsCoupling

/-!
The exact bridge from Arkworks challenge values to the typed shipping byte
oracle.  The external serializer boundary supplies canonical component bytes;
all stage routing, family/context framing, nonce encoding, message order, and
preimage injectivity are then proved in Lean.
-/

namespace Ipp.ShippingArkworksHash

open Aeneas Aeneas.Std Result
open Ipp.Bls12377
open OracleSpec OracleComp
open ark_ip_proofs

noncomputable section

abbrev CanonicalGt :=
  Ipp.ChallengeMessageSerialization.CanonicalGt

abbrev Primitive (FX : Type) :=
  Ipp.Extracted.TippMippAdapter.Primitive
    FX Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput

abbrev Serialization {FX : Type} (primitive : Primitive FX) :=
  Ipp.Extracted.TippMippAdapter.SerializationContract primitive

/-- Exact external postconditions for the Arkworks serializers called by the
extracted production adapter.  `canonicalGt` also binds every serialized GT
value to the mathematical pairing-group value used by the v1 proof. -/
structure SerializationContract
    {FX : Type} {primitive : Primitive FX}
    (serialization : Serialization primitive) where
  canonicalGt : ArkPairingOutput ↪ CanonicalGt
  canonicalGt_value : ∀ value,
    (canonicalGt value).value = Additive.toMul value
  encodeF_exact : ∀ value,
    serialization.encodeF value =
      Ipp.CanonicalSerializers.serializeFr value
  encodeG1_exact : ∀ value,
    serialization.encodeG1 value =
      Ipp.CanonicalSerializers.serializeG1 value
  encodeG2_exact : ∀ value,
    serialization.encodeG2 value =
      Ipp.CanonicalSerializers.serializeG2 value
  encodeGT_exact : ∀ value,
    serialization.encodeGT value = (canonicalGt value).bytes

def canonicalRoundComs
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (coms : Ipp.RoundComs g1PrimeSubgroup ArkPairingOutput) :
    Ipp.RoundComs g1PrimeSubgroup CanonicalGt := {
  LA := (contract.canonicalGt coms.LA.1,
    contract.canonicalGt coms.LA.2)
  RA := (contract.canonicalGt coms.RA.1,
    contract.canonicalGt coms.RA.2)
  LB := contract.canonicalGt coms.LB
  RB := contract.canonicalGt coms.RB
  LT := (contract.canonicalGt coms.LT.1, coms.LT.2)
  RT := (contract.canonicalGt coms.RT.1, coms.RT.2)
}

/-- Type-preserving projection of a concrete Arkworks challenge point into the
canonical byte-carrying challenge domain. -/
def canonicalPoint
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization) :
    Ipp.ChallengePoint Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput →
      Ipp.ShippingHashGame.ShippingPoint
  | .randomizer payload nonce =>
      .randomizer {
        comA := contract.canonicalGt payload.comA
        comB := contract.canonicalGt payload.comB
        comC := contract.canonicalGt payload.comC
      } nonce
  | .x0 payload nonce =>
      .x0 {
        r := payload.r
        comA := contract.canonicalGt payload.comA
        comB := contract.canonicalGt payload.comB
        comC := contract.canonicalGt payload.comC
        ipAb := contract.canonicalGt payload.ipAb
        aggC := payload.aggC
      } nonce
  | .round previous coms nonce =>
      .round previous (canonicalRoundComs contract coms) nonce
  | .bridge payload nonce => .bridge payload nonce
  | .kzg payload nonce => .kzg payload nonce

private theorem randomizerPayload_eq_of_fields
    (left right : Ipp.RandomizerPayload ArkPairingOutput)
    (hA : left.comA = right.comA)
    (hB : left.comB = right.comB)
    (hC : left.comC = right.comC) :
    left = right := by
  cases left
  cases right
  simp_all

private theorem x0Payload_eq_of_fields
    (left right :
      Ipp.X0Payload Fr g1PrimeSubgroup ArkPairingOutput)
    (hr : left.r = right.r)
    (hA : left.comA = right.comA)
    (hB : left.comB = right.comB)
    (hC : left.comC = right.comC)
    (hip : left.ipAb = right.ipAb)
    (hagg : left.aggC = right.aggC) :
    left = right := by
  cases left
  cases right
  simp_all

private theorem roundComs_eq_of_fields
    (left right :
      Ipp.RoundComs g1PrimeSubgroup ArkPairingOutput)
    (hLA1 : left.LA.1 = right.LA.1)
    (hLA2 : left.LA.2 = right.LA.2)
    (hRA1 : left.RA.1 = right.RA.1)
    (hRA2 : left.RA.2 = right.RA.2)
    (hLB : left.LB = right.LB)
    (hRB : left.RB = right.RB)
    (hLT1 : left.LT.1 = right.LT.1)
    (hLT2 : left.LT.2 = right.LT.2)
    (hRT1 : left.RT.1 = right.RT.1)
    (hRT2 : left.RT.2 = right.RT.2) :
    left = right := by
  have hLA : left.LA = right.LA := Prod.ext hLA1 hLA2
  have hRA : left.RA = right.RA := Prod.ext hRA1 hRA2
  have hLT : left.LT = right.LT := Prod.ext hLT1 hLT2
  have hRT : left.RT = right.RT := Prod.ext hRT1 hRT2
  cases left
  cases right
  simp_all

theorem canonicalPoint_injective
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization) :
    Function.Injective (canonicalPoint contract) := by
  intro left right heq
  cases left <;> cases right <;>
    simp_all [canonicalPoint, canonicalRoundComs,
      EmbeddingLike.apply_eq_iff_eq]
  case randomizer.randomizer =>
    apply randomizerPayload_eq_of_fields <;> simp_all
  case x0.x0 =>
    apply x0Payload_eq_of_fields <;> simp_all
  case round.round =>
    apply roundComs_eq_of_fields <;> simp_all

theorem pointNonce_canonicalPoint
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (point : Ipp.ChallengePoint Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput) :
    Ipp.ShippingHashGame.pointNonce (canonicalPoint contract point) =
      Ipp.ShippingHashGame.pointNonce point := by
  cases point <;> rfl

/-- Exact payload bytes passed to the extracted challenge adapter before the
shared stage/context/nonce framing is added. -/
def adapterPointMessage
    {FX : Type} {primitive : Primitive FX}
    (serialization : Serialization primitive) :
    Ipp.ChallengePoint Fr g1PrimeSubgroup g2PrimeSubgroup
        ArkPairingOutput →
      List UInt8
  | .randomizer payload _ =>
      serialization.encodeGT payload.comA ++
        serialization.encodeGT payload.comB ++
        serialization.encodeGT payload.comC
  | .x0 payload _ =>
      Ipp.Extracted.TippMippAdapter.x0Message serialization
        payload.r payload.comA payload.comB payload.comC
        payload.ipAb payload.aggC
  | .round previous coms _ =>
      Ipp.Extracted.TippMippAdapter.roundMessage serialization previous
        { ab := (coms.LA.1, coms.LB, coms.LT.1)
          c := (coms.LA.2, coms.LT.2) }
        { ab := (coms.RA.1, coms.RB, coms.RT.1)
          c := (coms.RA.2, coms.RT.2) }
  | .bridge payload _ =>
      Ipp.Extracted.TippMippAdapter.finalBridgeMessage serialization
        payload.lastRawChallenge (payload.vFinal, payload.wFinal)
        (payload.aFinal, payload.bFinal, payload.cFinal)
  | .kzg payload _ =>
      Ipp.Extracted.TippMippAdapter.kzgMessage serialization
        payload.bridgeChallenge (payload.vFinal, payload.wFinal)

/-- Reconstruct the typed round payload from the two concrete commitment
records consumed by the extracted round adapter. -/
def roundComsOfCommitments
    (left right :
      Ipp.Extracted.TippMippAdapter.Commitment
        ArkPairingOutput g1PrimeSubgroup) :
    Ipp.RoundComs g1PrimeSubgroup ArkPairingOutput := {
  LA := (left.ab.1, left.c.1)
  RA := (right.ab.1, right.c.1)
  LB := left.ab.2.1
  RB := right.ab.2.1
  LT := (left.ab.2.2, left.c.2)
  RT := (right.ab.2.2, right.c.2)
}

/-- The typed round-point serializer is definitionally the message assembled
by the extracted adapter from those same two commitments. -/
theorem adapterPointMessage_roundComsOfCommitments
    {FX : Type} {primitive : Primitive FX}
    (serialization : Serialization primitive)
    (prior : Fr)
    (left right :
      Ipp.Extracted.TippMippAdapter.Commitment
        ArkPairingOutput g1PrimeSubgroup)
    (nonce : Nat) :
    adapterPointMessage serialization
        (.round prior (roundComsOfCommitments left right) nonce) =
      Ipp.Extracted.TippMippAdapter.roundMessage serialization
        prior left right := by
  rfl

/-- Reconstructing a typed round from the extracted verifier's
reverse-indexed pair returns the original chronological round. -/
theorem roundComsOfCommitments_extractedRounds_rev
    {n : Nat}
    (rounds :
      Fin n →
        Ipp.RoundComs g1PrimeSubgroup ArkPairingOutput)
    (i : Fin n) :
    roundComsOfCommitments
        (Ipp.Extracted.VerifyTippMipp.extractedRounds
          rounds (Fin.rev i)).1
        (Ipp.Extracted.VerifyTippMipp.extractedRounds
          rounds (Fin.rev i)).2 =
      rounds i := by
  simp [roundComsOfCommitments,
    Ipp.Extracted.VerifyTippMipp.extractedRounds]

theorem singletonIdentityOutputPrefix_eq_canonical :
    Ipp.Extracted.TippMippAdapter.singletonIdentityOutputPrefix =
      Ipp.ChallengeMessageSerialization.singletonFrame := by
  decide

/-- The extracted adapter's payload concatenations are exactly the existing
typed canonical challenge-message serializer after `canonicalPoint`. -/
theorem adapterPointMessage_eq_canonical
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (point : Ipp.ChallengePoint Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput) :
    adapterPointMessage serialization point =
      Ipp.ChallengeMessageSerialization.serializeChallengeMessage
        (Ipp.ShippingHashGame.pointMessage
          (canonicalPoint contract point)) := by
  cases point with
  | randomizer payload nonce =>
      rcases payload with ⟨comA, comB, comC⟩
      simp [adapterPointMessage, canonicalPoint,
        Ipp.ShippingHashGame.pointMessage,
        Ipp.ChallengeMessageSerialization.serializeChallengeMessage,
        Ipp.ChallengeMessageSerialization.randomizerFixed,
        Ipp.ChallengeMessageSerialization.randomizerEquiv,
        Ipp.ChallengeMessageSerialization.FixedSerializer.pullback,
        Ipp.ChallengeMessageSerialization.FixedSerializer.prod,
        Ipp.ChallengeMessageSerialization.gtFixed,
        Ipp.ChallengeMessageSerialization.serializeCanonicalGt,
        contract.encodeGT_exact]
  | x0 payload nonce =>
      rcases payload with ⟨r, comA, comB, comC, ipAb, aggC⟩
      simp [adapterPointMessage, canonicalPoint,
        Ipp.Extracted.TippMippAdapter.x0Message,
        Ipp.ShippingHashGame.pointMessage,
        Ipp.ChallengeMessageSerialization.serializeChallengeMessage,
        Ipp.ChallengeMessageSerialization.x0Fixed,
        Ipp.ChallengeMessageSerialization.x0Equiv,
        Ipp.ChallengeMessageSerialization.FixedSerializer.pullback,
        Ipp.ChallengeMessageSerialization.FixedSerializer.prod,
        Ipp.ChallengeMessageSerialization.frFixed,
        Ipp.ChallengeMessageSerialization.g1Fixed,
        Ipp.ChallengeMessageSerialization.gtFixed,
        Ipp.ChallengeMessageSerialization.serializeCanonicalGt,
        contract.encodeF_exact, contract.encodeG1_exact,
        contract.encodeGT_exact]
  | round previous coms nonce =>
      rcases coms with ⟨⟨la0, la1⟩, ⟨ra0, ra1⟩, lb, rb,
        ⟨lt0, lt1⟩, ⟨rt0, rt1⟩⟩
      simp [adapterPointMessage, canonicalPoint, canonicalRoundComs,
        Ipp.Extracted.TippMippAdapter.roundMessage,
        Ipp.ShippingHashGame.pointMessage,
        Ipp.ChallengeMessageSerialization.serializeChallengeMessage,
        Ipp.ChallengeMessageSerialization.roundFixed,
        Ipp.ChallengeMessageSerialization.roundEquiv,
        Ipp.ChallengeMessageSerialization.commitmentFixed,
        Ipp.ChallengeMessageSerialization.identityGtFixed,
        Ipp.ChallengeMessageSerialization.identityG1Fixed,
        Ipp.ChallengeMessageSerialization.FixedSerializer.pullback,
        Ipp.ChallengeMessageSerialization.FixedSerializer.prod,
        Ipp.ChallengeMessageSerialization.FixedSerializer.prepend,
        Ipp.ChallengeMessageSerialization.frFixed,
        Ipp.ChallengeMessageSerialization.g1Fixed,
        Ipp.ChallengeMessageSerialization.gtFixed,
        Ipp.ChallengeMessageSerialization.serializeCanonicalGt,
        contract.encodeF_exact, contract.encodeG1_exact,
        contract.encodeGT_exact,
        singletonIdentityOutputPrefix_eq_canonical]
  | bridge payload nonce =>
      rcases payload with ⟨last, v, w, a, b, c⟩
      simp [adapterPointMessage, canonicalPoint,
        Ipp.Extracted.TippMippAdapter.finalBridgeMessage,
        Ipp.ShippingHashGame.pointMessage,
        Ipp.ChallengeMessageSerialization.serializeChallengeMessage,
        Ipp.ChallengeMessageSerialization.bridgeFixed,
        Ipp.ChallengeMessageSerialization.bridgeEquiv,
        Ipp.ChallengeMessageSerialization.FixedSerializer.pullback,
        Ipp.ChallengeMessageSerialization.FixedSerializer.prod,
        Ipp.ChallengeMessageSerialization.frFixed,
        Ipp.ChallengeMessageSerialization.g1Fixed,
        Ipp.ChallengeMessageSerialization.g2Fixed,
        contract.encodeF_exact, contract.encodeG1_exact,
        contract.encodeG2_exact]
  | kzg payload nonce =>
      rcases payload with ⟨bridge, v, w⟩
      simp [adapterPointMessage, canonicalPoint,
        Ipp.Extracted.TippMippAdapter.kzgMessage,
        Ipp.ShippingHashGame.pointMessage,
        Ipp.ChallengeMessageSerialization.serializeChallengeMessage,
        Ipp.ChallengeMessageSerialization.kzgFixed,
        Ipp.ChallengeMessageSerialization.kzgEquiv,
        Ipp.ChallengeMessageSerialization.FixedSerializer.pullback,
        Ipp.ChallengeMessageSerialization.FixedSerializer.prod,
        Ipp.ChallengeMessageSerialization.frFixed,
        Ipp.ChallengeMessageSerialization.g1Fixed,
        Ipp.ChallengeMessageSerialization.g2Fixed,
        contract.encodeF_exact, contract.encodeG1_exact,
        contract.encodeG2_exact]

/-- Exact family-domain-separated Blake2b preimage for an Arkworks challenge
point. -/
def preimage
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (point : Ipp.ChallengePoint Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput) :
    List UInt8 :=
  Ipp.ShippingHashGame.shippingBlake2bPreimage family context
    (canonicalPoint contract point)

/-- The Arkworks bridge's preimage is the family prefix followed by the exact
typed challenge frame whose payload is assembled by the extracted adapter. -/
theorem preimage_eq_adapter_frame
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (point : Ipp.ChallengePoint Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput) :
    preimage contract family context point =
      family.transcriptDomain.getD [] ++
        Ipp.ChallengeEncoding.challengePreimage
          (Ipp.challengePointStage point) context
          (Ipp.ShippingHashGame.nonceBytes
            (Ipp.ShippingHashGame.pointNonce point))
          (adapterPointMessage serialization point) := by
  unfold preimage Ipp.ShippingHashGame.shippingBlake2bPreimage
    Ipp.ShippingHashGame.shippingPreimage
  rw [← adapterPointMessage_eq_canonical contract point]
  rw [pointNonce_canonicalPoint]
  cases point <;> rfl

/-- Deterministic bounded byte-hash sampler used to compare a concrete
Arkworks challenge-effect call with the formal shipping execution. -/
def deployedPointSample
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (fuel : Nat)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (mkPoint :
      Nat →
        Ipp.ChallengePoint Fr g1PrimeSubgroup g2PrimeSubgroup
          ArkPairingOutput)
    (acceptable : Fr → Bool) :
    Option (Fr × Nat) :=
  evalWithAnswerFn blake2b
    (Ipp.ShippingHashGame.queryDecodedPointOracle
      (preimage contract family context) mkPoint acceptable fuel 0)

/-- The irreducible deployed Blake2b/from-random-bytes semantics of the
stateful TIPP/MIPP challenge effect.

The extracted stage wrappers prove every stage, payload byte, returned value,
and effect transition. They do not contain the implementation of
`Digest::digest`, `Fr::from_random_bytes`, or the internal rejection loop, and
the primitive result erases the successful nonce. Each field below states
only that missing implementation fact and returns the nonce selected by the
same bounded formal sampler. -/
structure Blake2bTippEffectPostcondition
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (fuel : Nat)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes) : Prop where
  x0 : ∀ effect next r comA comB comC ipAb aggC value,
    primitive.derive_challenge effect .X0
        ⟨Ipp.Extracted.TippMippAdapter.x0Message serialization
          r comA comB comC ipAb aggC⟩ =
      .ok (.Ok value, next) →
    ∃ nonce,
      deployedPointSample contract family context fuel blake2b
          (fun nonce => .x0 {
            r := r
            comA := comA
            comB := comB
            comC := comC
            ipAb := ipAb
            aggC := aggC
          } nonce)
          Ipp.nonzeroB =
        some (value, nonce)
  round : ∀ effect next prior left right value,
    primitive.derive_challenge effect .Round
        ⟨Ipp.Extracted.TippMippAdapter.roundMessage
          serialization prior left right⟩ =
      .ok (.Ok value, next) →
    ∃ nonce,
      deployedPointSample contract family context fuel blake2b
          (fun nonce => .round prior
            (roundComsOfCommitments left right) nonce)
          Ipp.nonzeroB =
        some (value, nonce)
  bridge : ∀ effect next last finalCk finalMessages value,
    primitive.derive_challenge effect .FinalBridge
        ⟨Ipp.Extracted.TippMippAdapter.finalBridgeMessage
          serialization last finalCk finalMessages⟩ =
      .ok (.Ok value, next) →
    ∃ nonce,
      deployedPointSample contract family context fuel blake2b
          (fun nonce => .bridge {
            lastRawChallenge := last
            vFinal := finalCk.1
            wFinal := finalCk.2
            aFinal := finalMessages.1
            bFinal := finalMessages.2.1
            cFinal := finalMessages.2.2
          } nonce)
          Ipp.nonzeroB =
        some (value, nonce)
  kzg : ∀ effect next bridge finalCk value,
    primitive.derive_challenge effect .Kzg
        ⟨Ipp.Extracted.TippMippAdapter.kzgMessage
          serialization bridge finalCk⟩ =
      .ok (.Ok value, next) →
    ∃ nonce,
      deployedPointSample contract family context fuel blake2b
          (fun nonce => .kzg {
            bridgeChallenge := bridge
            vFinal := finalCk.1
            wFinal := finalCk.2
          } nonce)
          Ipp.nonzeroB =
        some (value, nonce)

/-- A successful extracted X0 adapter call is supplied by the exact deployed
bounded sampler. The only premise beyond extraction is the named primitive
hash/decoder postcondition. -/
theorem Blake2bTippEffectPostcondition.x0AdapterSample
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {contract : SerializationContract serialization}
    {family : Ipp.ShippingV1.Family}
    {context : Ipp.ChallengeEncoding.Context}
    {fuel : Nat}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    (semantics :
      Blake2bTippEffectPostcondition contract family context fuel blake2b)
    (effect next : FX) (r : Fr)
    (comA comB comC ipAb : ArkPairingOutput)
    (aggC : g1PrimeSubgroup) (value : Fr)
    (hsuccess :
      applications.groth16_aggregation.arkworks_tipp_x0_adapter_core
          primitive effect r comA comB comC ipAb aggC =
        .ok (.Ok value, next)) :
    ∃ nonce,
      deployedPointSample contract family context fuel blake2b
          (fun nonce => .x0 {
            r := r
            comA := comA
            comB := comB
            comC := comC
            ipAb := ipAb
            aggC := aggC
          } nonce)
          Ipp.nonzeroB =
        some (value, nonce) :=
  semantics.x0 effect next r comA comB comC ipAb aggC value
    ((Ipp.Extracted.TippMippAdapter.x0_core_success_iff
      primitive serialization effect next r comA comB comC ipAb aggC
      value).mp hsuccess)

/-- The corresponding exact sampler projection for a successful extracted
GIPA-round adapter call. -/
theorem Blake2bTippEffectPostcondition.roundAdapterSample
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {contract : SerializationContract serialization}
    {family : Ipp.ShippingV1.Family}
    {context : Ipp.ChallengeEncoding.Context}
    {fuel : Nat}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    (semantics :
      Blake2bTippEffectPostcondition contract family context fuel blake2b)
    (effect next : FX) (prior value : Fr)
    (left right :
      Ipp.Extracted.TippMippAdapter.Commitment
        ArkPairingOutput g1PrimeSubgroup)
    (hsuccess :
      applications.groth16_aggregation.arkworks_tipp_round_adapter_core
          primitive effect prior left right =
        .ok (.Ok value, next)) :
    ∃ nonce,
      deployedPointSample contract family context fuel blake2b
          (fun nonce =>
            .round prior (roundComsOfCommitments left right) nonce)
          Ipp.nonzeroB =
        some (value, nonce) :=
  semantics.round effect next prior left right value
    ((Ipp.Extracted.TippMippAdapter.round_core_success_iff
      primitive serialization effect next prior value left right).mp hsuccess)

/-- The corresponding exact sampler projection for the successful extracted
final-bridge adapter call. -/
theorem Blake2bTippEffectPostcondition.bridgeAdapterSample
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {contract : SerializationContract serialization}
    {family : Ipp.ShippingV1.Family}
    {context : Ipp.ChallengeEncoding.Context}
    {fuel : Nat}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    (semantics :
      Blake2bTippEffectPostcondition contract family context fuel blake2b)
    (effect next : FX) (last value : Fr)
    (finalCk : g2PrimeSubgroup × g1PrimeSubgroup)
    (finalMessages :
      g1PrimeSubgroup × g2PrimeSubgroup × g1PrimeSubgroup)
    (hsuccess :
      applications.groth16_aggregation.arkworks_tipp_final_bridge_adapter_core
          primitive effect last finalCk finalMessages =
        .ok (.Ok value, next)) :
    ∃ nonce,
      deployedPointSample contract family context fuel blake2b
          (fun nonce => .bridge {
            lastRawChallenge := last
            vFinal := finalCk.1
            wFinal := finalCk.2
            aFinal := finalMessages.1
            bFinal := finalMessages.2.1
            cFinal := finalMessages.2.2
          } nonce)
          Ipp.nonzeroB =
        some (value, nonce) :=
  semantics.bridge effect next last finalCk finalMessages value
    ((Ipp.Extracted.TippMippAdapter.final_bridge_core_success_iff
      primitive serialization effect next last value finalCk finalMessages).mp
        hsuccess)

/-- The corresponding exact sampler projection for the successful extracted
KZG adapter call. -/
theorem Blake2bTippEffectPostcondition.kzgAdapterSample
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    {contract : SerializationContract serialization}
    {family : Ipp.ShippingV1.Family}
    {context : Ipp.ChallengeEncoding.Context}
    {fuel : Nat}
    {blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes}
    (semantics :
      Blake2bTippEffectPostcondition contract family context fuel blake2b)
    (effect next : FX) (bridge value : Fr)
    (finalCk : g2PrimeSubgroup × g1PrimeSubgroup)
    (hsuccess :
      applications.groth16_aggregation.arkworks_tipp_kzg_adapter_core
          primitive effect bridge finalCk =
        .ok (.Ok value, next)) :
    ∃ nonce,
      deployedPointSample contract family context fuel blake2b
          (fun nonce => .kzg {
            bridgeChallenge := bridge
            vFinal := finalCk.1
            wFinal := finalCk.2
          } nonce)
          Ipp.nonzeroB =
        some (value, nonce) :=
  semantics.kzg effect next bridge finalCk value
    ((Ipp.Extracted.TippMippAdapter.kzg_core_success_iff
      primitive serialization effect next bridge value finalCk).mp hsuccess)

/-- The corresponding irreducible postcondition for the aggregate
randomizer. The extracted outer nonce loop retains its successful Rust
`u64` nonce and exact `derive_randomizer` call in `AcceptedRandomizerCall`;
only equality with the deployed byte-hash sampler remains external. -/
structure Blake2bRandomizerEffectPostcondition
    {RFX FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Fr String)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (fuel : Nat)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes) : Prop where
  acceptedCall :
    ∀ payload randomizer finalRandomizerEffect
      (call :
        Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
          randomizerEffects
          ⟨adapterPointMessage serialization
            (.randomizer payload 0)⟩
          randomizer finalRandomizerEffect),
      deployedPointSample contract family context fuel blake2b
          (fun nonce => .randomizer payload nonce)
          Ipp.randomizerAcceptedB =
        some (randomizer, call.nonce.val)

/-- Project the exact sampler result from an accepted randomizer call. This
wrapper makes clear that no acceptance or verifier relation is part of the
deployed-hash postcondition. -/
theorem acceptedRandomizerCall_sample
    {RFX FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (randomizerEffects :
      applications.groth16_aggregation.AggregateRandomizerEffect
        RFX Fr String)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context)
    (fuel : Nat)
    (blake2b : List UInt8 → Ipp.ShippingHashGame.DigestBytes)
    (semantics :
      Blake2bRandomizerEffectPostcondition contract randomizerEffects family
        context fuel blake2b)
    (payload : Ipp.RandomizerPayload ArkPairingOutput)
    (randomizer : Fr) (finalRandomizerEffect : RFX)
    (call :
      Ipp.Extracted.AggregateAdapter.AcceptedRandomizerCall
        randomizerEffects
        ⟨adapterPointMessage serialization (.randomizer payload 0)⟩
        randomizer finalRandomizerEffect) :
    deployedPointSample contract family context fuel blake2b
        (fun nonce => .randomizer payload nonce)
        Ipp.randomizerAcceptedB =
      some (randomizer, call.nonce.val) :=
  semantics.acceptedCall payload randomizer finalRandomizerEffect call

/-- The concrete Arkworks point encoder is injective over every bounded
attempt consumed by the shipping verifier. -/
theorem pointAttemptEncode_preimage_injective
    {FX : Type} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (family : Ipp.ShippingV1.Family)
    (context : Ipp.ChallengeEncoding.Context) :
    Function.Injective
      (Ipp.ShippingHashGame.pointAttemptEncode
        (preimage contract family context)) := by
  intro left right heq
  have hcanonical :
      canonicalPoint contract
          (Ipp.ShippingHashGame.fieldAttemptPoint left) =
        canonicalPoint contract
          (Ipp.ShippingHashGame.fieldAttemptPoint right) := by
    let leftPoint : Ipp.ShippingHashGame.BoundedShippingPoint :=
      ⟨canonicalPoint contract
          (Ipp.ShippingHashGame.fieldAttemptPoint left), by
        simpa only [pointNonce_canonicalPoint,
          Ipp.ShippingHashGame.fieldAttemptPoint,
          Ipp.ShippingHashGame.pointNonce_basePoint]
          using left.2.isLt⟩
    let rightPoint : Ipp.ShippingHashGame.BoundedShippingPoint :=
      ⟨canonicalPoint contract
          (Ipp.ShippingHashGame.fieldAttemptPoint right), by
        simpa only [pointNonce_canonicalPoint,
          Ipp.ShippingHashGame.fieldAttemptPoint,
          Ipp.ShippingHashGame.pointNonce_basePoint]
          using right.2.isLt⟩
    have hbounded : leftPoint = rightPoint :=
      Ipp.ShippingHashGame.shippingBlake2bPreimage_bounded_injective
        family context (by
          simpa [Ipp.ShippingHashGame.pointAttemptEncode, preimage,
            leftPoint, rightPoint] using heq)
    exact congrArg Subtype.val hbounded
  have hpoint :
      Ipp.ShippingHashGame.fieldAttemptPoint left =
        Ipp.ShippingHashGame.fieldAttemptPoint right :=
    canonicalPoint_injective contract hcanonical
  exact Ipp.ShippingHashGame.fieldAttemptPoint_injective hpoint

/-- Randomizer bytes installed in the concrete adapter input. -/
def randomizerMessage
    {FX : Type} {n : Nat} {primitive : Primitive FX}
    (serialization : Serialization primitive)
    (proof : Ipp.Proof (F := Fr) (G1 := g1PrimeSubgroup)
      (G2 := g2PrimeSubgroup) (GT := ArkPairingOutput) n) :
    List UInt8 :=
  adapterPointMessage serialization
    (.randomizer
      { comA := proof.ComA.1
        comB := proof.ComB
        comC := proof.ComA.2 }
      0)

theorem randomizerMessage_eq_canonical
    {FX : Type} {n : Nat} {primitive : Primitive FX}
    {serialization : Serialization primitive}
    (contract : SerializationContract serialization)
    (proof : Ipp.Proof (F := Fr) (G1 := g1PrimeSubgroup)
      (G2 := g2PrimeSubgroup) (GT := ArkPairingOutput) n) :
    randomizerMessage serialization proof =
      Ipp.ChallengeMessageSerialization.serializeChallengeMessage
        (.randomizer {
          comA := contract.canonicalGt proof.ComA.1
          comB := contract.canonicalGt proof.ComB
          comC := contract.canonicalGt proof.ComA.2
        }) := by
  simpa [randomizerMessage] using
    adapterPointMessage_eq_canonical contract
      (.randomizer
        { comA := proof.ComA.1
          comB := proof.ComB
          comC := proof.ComA.2 }
        0)

#print axioms canonicalPoint_injective
#print axioms adapterPointMessage_roundComsOfCommitments
#print axioms roundComsOfCommitments_extractedRounds_rev
#print axioms adapterPointMessage_eq_canonical
#print axioms preimage_eq_adapter_frame
#print axioms Blake2bTippEffectPostcondition.x0AdapterSample
#print axioms Blake2bTippEffectPostcondition.roundAdapterSample
#print axioms Blake2bTippEffectPostcondition.bridgeAdapterSample
#print axioms Blake2bTippEffectPostcondition.kzgAdapterSample
#print axioms acceptedRandomizerCall_sample
#print axioms pointAttemptEncode_preimage_injective
#print axioms randomizerMessage_eq_canonical

end

end Ipp.ShippingArkworksHash
