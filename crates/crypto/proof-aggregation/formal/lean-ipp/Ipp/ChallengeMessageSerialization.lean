/-
GAP-11B: injective serializers for the five SnarkPack verifier challenge
messages modeled by `ChallengePoint`.

Round commitments include the two singleton `IdentityOutput` vector frames
written by each derived Rust commitment serializer.
-/
import Ipp.AggregateSerialization
import Ipp.CanonicalSerializers
import Ipp.FsGame

namespace Ipp.ChallengeMessageSerialization

open Ipp.Bls12377

noncomputable section

abbrev CanonicalGt := Ipp.AggregateSerialization.GtComponent

/-- A fixed-width injective byte serializer. -/
structure FixedSerializer (α : Type) where
  serialize : α → List UInt8
  width : Nat
  length : ∀ value, (serialize value).length = width
  injective : Function.Injective serialize

namespace FixedSerializer

def prod {α β : Type} (a : FixedSerializer α) (b : FixedSerializer β) :
    FixedSerializer (α × β) where
  serialize value := a.serialize value.1 ++ b.serialize value.2
  width := a.width + b.width
  length value := by simp [a.length, b.length]
  injective := Ipp.ChallengeEncoding.append_serializers_injective
    a.serialize b.serialize a.width a.length a.injective b.injective

def prepend {α : Type} (frame : List UInt8) (s : FixedSerializer α) :
    FixedSerializer α where
  serialize value := frame ++ s.serialize value
  width := frame.length + s.width
  length value := by simp [s.length]
  injective := by
    intro a b h
    exact s.injective (List.append_cancel_left h)

def pullback {α β : Type} (equiv : α ≃ β) (s : FixedSerializer β) :
    FixedSerializer α where
  serialize value := s.serialize (equiv value)
  width := s.width
  length value := s.length (equiv value)
  injective := by
    intro a b h
    apply equiv.injective
    exact s.injective h

end FixedSerializer

def serializeCanonicalGt (value : CanonicalGt) : List UInt8 := value.bytes

theorem serializeCanonicalGt_length (value : CanonicalGt) :
    (serializeCanonicalGt value).length = 576 :=
  value.bytes_length

theorem serializeCanonicalGt_injective :
    Function.Injective serializeCanonicalGt := by
  rintro ⟨av, abytes, ha⟩ ⟨bv, bbytes, hb⟩ h
  dsimp [serializeCanonicalGt] at h
  subst bbytes
  have hv : av = bv :=
    Ipp.StrictGtDecode.DecodeResult.ok.inj (ha.symm.trans hb)
  subst bv
  rfl

def frFixed : FixedSerializer Fr :=
  ⟨Ipp.CanonicalSerializers.serializeFr, 32,
    Ipp.CanonicalSerializers.serializeFr_length,
    Ipp.CanonicalSerializers.serializeFr_injective⟩

def g1Fixed : FixedSerializer g1PrimeSubgroup :=
  ⟨Ipp.CanonicalSerializers.serializeG1, 96,
    Ipp.CanonicalSerializers.serializeG1_length,
    Ipp.CanonicalSerializers.serializeG1_injective⟩

def g2Fixed : FixedSerializer g2PrimeSubgroup :=
  ⟨Ipp.CanonicalSerializers.serializeG2, 192,
    Ipp.CanonicalSerializers.serializeG2_length,
    Ipp.CanonicalSerializers.serializeG2_injective⟩

def gtFixed : FixedSerializer CanonicalGt :=
  ⟨serializeCanonicalGt, 576, serializeCanonicalGt_length,
    serializeCanonicalGt_injective⟩

def singletonFrame : List UInt8 := Ipp.CanonicalWire.encodeLE 8 1

def identityGtFixed : FixedSerializer CanonicalGt :=
  FixedSerializer.prepend singletonFrame gtFixed

def identityG1Fixed : FixedSerializer g1PrimeSubgroup :=
  FixedSerializer.prepend singletonFrame g1Fixed

abbrev GtTriple := CanonicalGt × (CanonicalGt × CanonicalGt)

def randomizerEquiv :
    Ipp.RandomizerPayload CanonicalGt ≃ GtTriple where
  toFun p := (p.comA, (p.comB, p.comC))
  invFun p := ⟨p.1, p.2.1, p.2.2⟩
  left_inv p := by cases p; rfl
  right_inv p := by rcases p with ⟨a, b, c⟩; rfl

abbrev X0Tuple :=
  Fr × (CanonicalGt × (CanonicalGt ×
    (CanonicalGt × (CanonicalGt × g1PrimeSubgroup))))

def x0Equiv :
    Ipp.X0Payload Fr g1PrimeSubgroup CanonicalGt ≃ X0Tuple where
  toFun p := (p.r, (p.comA, (p.comB, (p.comC, (p.ipAb, p.aggC)))))
  invFun p := ⟨p.1, p.2.1, p.2.2.1, p.2.2.2.1,
    p.2.2.2.2.1, p.2.2.2.2.2⟩
  left_inv p := by cases p; rfl
  right_inv p := by rcases p with ⟨r, a, b, c, ip, agg⟩; rfl

abbrev CommitmentTuple :=
  CanonicalGt × (CanonicalGt ×
    (CanonicalGt × (CanonicalGt × g1PrimeSubgroup)))

abbrev RoundTuple := Fr × (CommitmentTuple × CommitmentTuple)

def roundEquiv :
    (Fr × Ipp.RoundComs g1PrimeSubgroup CanonicalGt) ≃ RoundTuple where
  toFun p :=
    (p.1,
      ((p.2.LA.1, (p.2.LB, (p.2.LT.1, (p.2.LA.2, p.2.LT.2)))),
       (p.2.RA.1, (p.2.RB, (p.2.RT.1, (p.2.RA.2, p.2.RT.2))))))
  invFun p :=
    (p.1,
      { LA := (p.2.1.1, p.2.1.2.2.2.1)
        RA := (p.2.2.1, p.2.2.2.2.2.1)
        LB := p.2.1.2.1
        RB := p.2.2.2.1
        LT := (p.2.1.2.2.1, p.2.1.2.2.2.2)
        RT := (p.2.2.2.2.1, p.2.2.2.2.2.2) })
  left_inv p := by
    rcases p with ⟨prev, ⟨la, ra, lb, rb, lt, rt⟩⟩
    rcases la with ⟨la0, la1⟩
    rcases ra with ⟨ra0, ra1⟩
    rcases lt with ⟨lt0, lt1⟩
    rcases rt with ⟨rt0, rt1⟩
    rfl
  right_inv p := by
    rcases p with
      ⟨prev, ⟨⟨l0, l1, l2, l3, l4⟩, ⟨r0, r1, r2, r3, r4⟩⟩⟩
    rfl

abbrev BridgeTuple :=
  Fr × (g2PrimeSubgroup × (g1PrimeSubgroup ×
    (g1PrimeSubgroup × (g2PrimeSubgroup × g1PrimeSubgroup))))

def bridgeEquiv :
    Ipp.BridgePayload Fr g1PrimeSubgroup g2PrimeSubgroup ≃ BridgeTuple where
  toFun p :=
    (p.lastRawChallenge,
      (p.vFinal, (p.wFinal, (p.aFinal, (p.bFinal, p.cFinal)))))
  invFun p :=
    ⟨p.1, p.2.1, p.2.2.1, p.2.2.2.1, p.2.2.2.2.1, p.2.2.2.2.2⟩
  left_inv p := by cases p; rfl
  right_inv p := by rcases p with ⟨f, v, w, a, b, c⟩; rfl

abbrev KzgTuple := Fr × (g2PrimeSubgroup × g1PrimeSubgroup)

def kzgEquiv :
    Ipp.KzgPayload Fr g1PrimeSubgroup g2PrimeSubgroup ≃ KzgTuple where
  toFun p := (p.bridgeChallenge, (p.vFinal, p.wFinal))
  invFun p := ⟨p.1, p.2.1, p.2.2⟩
  left_inv p := by cases p; rfl
  right_inv p := by rcases p with ⟨f, v, w⟩; rfl

def randomizerFixed : FixedSerializer (Ipp.RandomizerPayload CanonicalGt) :=
  FixedSerializer.pullback randomizerEquiv
    (FixedSerializer.prod gtFixed (FixedSerializer.prod gtFixed gtFixed))

def x0Fixed :
    FixedSerializer (Ipp.X0Payload Fr g1PrimeSubgroup CanonicalGt) :=
  FixedSerializer.pullback x0Equiv
    (FixedSerializer.prod frFixed
      (FixedSerializer.prod gtFixed
        (FixedSerializer.prod gtFixed
          (FixedSerializer.prod gtFixed
            (FixedSerializer.prod gtFixed g1Fixed)))))

def commitmentFixed : FixedSerializer CommitmentTuple :=
  FixedSerializer.prod gtFixed
    (FixedSerializer.prod gtFixed
      (FixedSerializer.prod identityGtFixed
        (FixedSerializer.prod gtFixed identityG1Fixed)))

def roundFixed :
    FixedSerializer (Fr × Ipp.RoundComs g1PrimeSubgroup CanonicalGt) :=
  FixedSerializer.pullback roundEquiv
    (FixedSerializer.prod frFixed
      (FixedSerializer.prod commitmentFixed commitmentFixed))

def bridgeFixed :
    FixedSerializer (Ipp.BridgePayload Fr g1PrimeSubgroup g2PrimeSubgroup) :=
  FixedSerializer.pullback bridgeEquiv
    (FixedSerializer.prod frFixed
      (FixedSerializer.prod g2Fixed
        (FixedSerializer.prod g1Fixed
          (FixedSerializer.prod g1Fixed
            (FixedSerializer.prod g2Fixed g1Fixed)))))

def kzgFixed :
    FixedSerializer (Ipp.KzgPayload Fr g1PrimeSubgroup g2PrimeSubgroup) :=
  FixedSerializer.pullback kzgEquiv
    (FixedSerializer.prod frFixed
      (FixedSerializer.prod g2Fixed g1Fixed))

/-- The five verifier payload domains from `Ipp.ChallengePoint`, without the
separately framed nonce. -/
inductive ChallengeMessage where
  | randomizer (payload : Ipp.RandomizerPayload CanonicalGt)
  | x0 (payload : Ipp.X0Payload Fr g1PrimeSubgroup CanonicalGt)
  | round (payload : Fr × Ipp.RoundComs g1PrimeSubgroup CanonicalGt)
  | bridge (payload : Ipp.BridgePayload Fr g1PrimeSubgroup g2PrimeSubgroup)
  | kzg (payload : Ipp.KzgPayload Fr g1PrimeSubgroup g2PrimeSubgroup)

/-- Exact component concatenation passed as `messages` to `challenge_preimage`. -/
def serializeChallengeMessage : ChallengeMessage → List UInt8
  | .randomizer payload => randomizerFixed.serialize payload
  | .x0 payload => x0Fixed.serialize payload
  | .round payload => roundFixed.serialize payload
  | .bridge payload => bridgeFixed.serialize payload
  | .kzg payload => kzgFixed.serialize payload

def messageLength : ChallengeMessage → Nat
  | .randomizer _ => 1728
  | .x0 _ => 2432
  | .round _ => 4864
  | .bridge _ => 704
  | .kzg _ => 320

theorem serializeChallengeMessage_length (message : ChallengeMessage) :
    (serializeChallengeMessage message).length = messageLength message := by
  cases message with
  | randomizer payload =>
      simpa [serializeChallengeMessage, messageLength, randomizerFixed,
        FixedSerializer.pullback, FixedSerializer.prod] using
        randomizerFixed.length payload
  | x0 payload =>
      simpa [serializeChallengeMessage, messageLength, x0Fixed,
        FixedSerializer.pullback, FixedSerializer.prod] using
        x0Fixed.length payload
  | round payload =>
      simpa [serializeChallengeMessage, messageLength, roundFixed,
        commitmentFixed, identityGtFixed, identityG1Fixed,
        FixedSerializer.pullback, FixedSerializer.prod,
        FixedSerializer.prepend, singletonFrame,
        Ipp.CanonicalWire.encodeLE_length] using roundFixed.length payload
  | bridge payload =>
      simpa [serializeChallengeMessage, messageLength, bridgeFixed,
        FixedSerializer.pullback, FixedSerializer.prod] using
        bridgeFixed.length payload
  | kzg payload =>
      simpa [serializeChallengeMessage, messageLength, kzgFixed,
        FixedSerializer.pullback, FixedSerializer.prod] using
        kzgFixed.length payload

/-- GAP-11B: all five deployed verifier message serializers are injective on
their typed canonical domains. -/
theorem challenge_message_serialize_injective :
    Function.Injective serializeChallengeMessage := by
  intro m1 m2 h
  have hlen : messageLength m1 = messageLength m2 := by
    rw [← serializeChallengeMessage_length m1,
      ← serializeChallengeMessage_length m2, h]
  cases m1 <;> cases m2 <;> simp [messageLength] at hlen
  · exact congrArg ChallengeMessage.randomizer (randomizerFixed.injective h)
  · exact congrArg ChallengeMessage.x0 (x0Fixed.injective h)
  · exact congrArg ChallengeMessage.round (roundFixed.injective h)
  · exact congrArg ChallengeMessage.bridge (bridgeFixed.injective h)
  · exact congrArg ChallengeMessage.kzg (kzgFixed.injective h)

/-- Framing the proved message serializer preserves injectivity of stage,
context, nonce, and typed payload together. -/
theorem challenge_preimage_typed_injective :
    Function.Injective
      (fun input :
        Ipp.ChallengeEncoding.Stage ×
          Ipp.ChallengeEncoding.Context ×
          Ipp.ChallengeEncoding.Nonce × ChallengeMessage =>
        Ipp.ChallengeEncoding.challengePreimage input.1 input.2.1
          input.2.2.1 (serializeChallengeMessage input.2.2.2)) :=
  Ipp.ChallengeEncoding.serialized_challenge_preimage_injective
    serializeChallengeMessage challenge_message_serialize_injective

#print axioms serializeCanonicalGt_injective
#print axioms challenge_message_serialize_injective
#print axioms challenge_preimage_typed_injective

end
end Ipp.ChallengeMessageSerialization
