/-
GAP-11A: exact compressed traversal of the checked aggregate-proof domain.

The four-byte-family inventories count group values. Rust's derived encoding
also writes one round-vector length and four singleton `IdentityOutput`
vector lengths per round; those eight-byte frames are explicit below.
-/
import Ipp.StrictG1Decode
import Ipp.StrictG2Decode
import Ipp.StrictGtDecode

namespace Ipp.AggregateSerialization

open Ipp.Bls12377
open Ipp.CanonicalWire

noncomputable section

local instance classicalPropDecidable (p : Prop) : Decidable p :=
  Classical.propDecidable p

/-- A G1 value together with the exact compressed bytes accepted for it. -/
structure G1Component where
  value : G1
  bytes : List UInt8
  accepted : Ipp.StrictG1Decode.strictG1Decode bytes =
    .ok value

/-- A G2 value together with the exact compressed bytes accepted for it. -/
structure G2Component where
  value : G2
  bytes : List UInt8
  accepted : Ipp.StrictG2Decode.strictG2Decode bytes =
    .ok value

/-- A GT value together with the exact uncompressed bytes accepted for it. -/
structure GtComponent where
  value : GtGroup
  bytes : List UInt8
  accepted : Ipp.StrictGtDecode.strictGtDecode bytes =
    .ok value

theorem G1Component.bytes_length (c : G1Component) :
    c.bytes.length = 48 := by
  rcases (Ipp.StrictG1Decode.g1_strict_checked_success_iff
    c.bytes c.value).mp c.accepted with ⟨wire, hdecode, _⟩
  exact Ipp.CanonicalG1Decode.decode_exact_consumption hdecode

theorem G2Component.bytes_length (c : G2Component) :
    c.bytes.length = 96 := by
  rcases (Ipp.StrictG2Decode.g2_strict_checked_success_iff
    c.bytes c.value).mp c.accepted with ⟨wire, hdecode, _⟩
  exact Ipp.CanonicalG2Decode.decode_exact_consumption hdecode

theorem GtComponent.bytes_length (c : GtComponent) :
    c.bytes.length = 576 := by
  rcases (Ipp.StrictGtDecode.gt_strict_checked_success_iff
    c.bytes c.value).mp c.accepted with ⟨value, hdecode, _⟩
  exact Ipp.CanonicalGtDecode.decode_exact_consumption hdecode

/-- GAP-08 makes the accepted compressed bytes unique for a fixed G1 value. -/
theorem G1Component.bytes_eq_of_value_eq {a b : G1Component}
    (h : a.value = b.value) : a.bytes = b.bytes := by
  have hb := b.accepted
  rw [← h] at hb
  exact Ipp.StrictG1Decode.g1_strict_checked_byte_injective
    a.accepted hb

/-- GAP-09 makes the accepted compressed bytes unique for a fixed G2 value. -/
theorem G2Component.bytes_eq_of_value_eq {a b : G2Component}
    (h : a.value = b.value) : a.bytes = b.bytes := by
  have hb := b.accepted
  rw [← h] at hb
  exact Ipp.StrictG2Decode.g2_strict_checked_byte_injective
    a.accepted hb

/-- GAP-10 makes the accepted uncompressed bytes unique for a fixed GT value. -/
theorem GtComponent.bytes_eq_of_value_eq {a b : GtComponent}
    (h : a.value = b.value) : a.bytes = b.bytes := by
  have hb := b.accepted
  rw [← h] at hb
  exact Ipp.StrictGtDecode.gt_strict_checked_byte_injective
    a.accepted hb

/-- One derived `TippMippCommitment`; both identity outputs are singletons. -/
structure Commitment where
  ab0 : GtComponent
  ab1 : GtComponent
  abIdentity : GtComponent
  c0 : GtComponent
  cIdentity : G1Component

structure Round where
  left : Commitment
  right : Commitment

/-- The aggregate object reached by `backend.rs::deserialize_aggregate_proof`.
The bound is Rust's successful `usize`-to-`u64` vector-length condition. -/
structure AggregateProof where
  comA : GtComponent
  comB : GtComponent
  comC : GtComponent
  ipAb : GtComponent
  aggC : G1Component
  rounds : List Round
  roundsLengthFits : rounds.length < 2 ^ 64
  finalCkG2 : G2Component
  finalCkG1 : G1Component
  finalCkProofG2 : G2Component
  finalCkProofG1 : G1Component
  finalMessageA : G1Component
  finalMessageB : G2Component
  finalMessageC : G1Component

def singletonFrame : List UInt8 := encodeLE 8 1

def Commitment.serializeCompressed (c : Commitment) : List UInt8 :=
  c.ab0.bytes ++ c.ab1.bytes ++ singletonFrame ++ c.abIdentity.bytes ++
    c.c0.bytes ++ singletonFrame ++ c.cIdentity.bytes

def Round.serializeCompressed (r : Round) : List UInt8 :=
  r.left.serializeCompressed ++ r.right.serializeCompressed

/-- Exact derived-field order, including every nested vector-length frame. -/
def serializeCompressed (p : AggregateProof) : List UInt8 :=
  p.comA.bytes ++ p.comB.bytes ++ p.comC.bytes ++ p.ipAb.bytes ++
    p.aggC.bytes ++ encodeLE 8 p.rounds.length ++
    p.rounds.flatMap Round.serializeCompressed ++
    p.finalCkG2.bytes ++ p.finalCkG1.bytes ++
    p.finalCkProofG2.bytes ++ p.finalCkProofG1.bytes ++
    p.finalMessageA.bytes ++ p.finalMessageB.bytes ++ p.finalMessageC.bytes

def Commitment.gtElements (c : Commitment) : List GtComponent :=
  [c.ab0, c.ab1, c.abIdentity, c.c0]

def Commitment.g1Elements (c : Commitment) : List G1Component :=
  [c.cIdentity]

def Round.gtElements (r : Round) : List GtComponent :=
  r.left.gtElements ++ r.right.gtElements

def Round.g1Elements (r : Round) : List G1Component :=
  r.left.g1Elements ++ r.right.g1Elements

def AggregateProof.gtElements (p : AggregateProof) : List GtComponent :=
  [p.comA, p.comB, p.comC, p.ipAb] ++
    p.rounds.flatMap Round.gtElements

def AggregateProof.g1Elements (p : AggregateProof) : List G1Component :=
  [p.aggC] ++ p.rounds.flatMap Round.g1Elements ++
    [p.finalCkG1, p.finalCkProofG1, p.finalMessageA, p.finalMessageC]

def AggregateProof.g2Elements (p : AggregateProof) : List G2Component :=
  [p.finalCkG2, p.finalCkProofG2, p.finalMessageB]

theorem Commitment.serializeCompressed_length (c : Commitment) :
    c.serializeCompressed.length = 2368 := by
  simp [Commitment.serializeCompressed, singletonFrame,
    G1Component.bytes_length, GtComponent.bytes_length, encodeLE_length]

theorem Round.serializeCompressed_length (r : Round) :
    r.serializeCompressed.length = 4736 := by
  simp [Round.serializeCompressed, Commitment.serializeCompressed_length]

private theorem rounds_serialized_length (rounds : List Round) :
    (rounds.flatMap Round.serializeCompressed).length =
      4736 * rounds.length := by
  induction rounds with
  | nil => simp
  | cons round rounds ih =>
      simp [Round.serializeCompressed_length, ih, Nat.mul_succ]
      omega

theorem serializeCompressed_length (p : AggregateProof) :
    (serializeCompressed p).length = 2840 + 4736 * p.rounds.length := by
  simp only [serializeCompressed, List.length_append]
  rw [show (p.rounds.flatMap Round.serializeCompressed).length =
    4736 * p.rounds.length from rounds_serialized_length p.rounds]
  simp [G1Component.bytes_length,
    G2Component.bytes_length, GtComponent.bytes_length, encodeLE_length]
  omega

private theorem rounds_gt_length (rounds : List Round) :
    (rounds.flatMap Round.gtElements).length = 8 * rounds.length := by
  induction rounds with
  | nil => simp
  | cons round rounds ih =>
      simp [Round.gtElements, Commitment.gtElements, ih, Nat.mul_succ]

private theorem rounds_g1_length (rounds : List Round) :
    (rounds.flatMap Round.g1Elements).length = 2 * rounds.length := by
  induction rounds with
  | nil => simp
  | cons round rounds ih =>
      simp [Round.g1Elements, Commitment.g1Elements, ih, Nat.mul_succ]

/-- The exact landed `4 + 8μ` GT, `5 + 2μ` G1, and three-G2 inventory. -/
theorem AggregateProof.component_inventory (p : AggregateProof) :
    p.gtElements.length = 4 + 8 * p.rounds.length ∧
    p.g1Elements.length = 5 + 2 * p.rounds.length ∧
    p.g2Elements.length = 3 := by
  simp only [AggregateProof.gtElements, AggregateProof.g1Elements,
    AggregateProof.g2Elements, List.length_append, List.length_cons,
    List.length_nil]
  rw [show (p.rounds.flatMap Round.gtElements).length =
    8 * p.rounds.length from rounds_gt_length p.rounds]
  rw [show (p.rounds.flatMap Round.g1Elements).length =
    2 * p.rounds.length from rounds_g1_length p.rounds]
  constructor
  · omega
  constructor
  · omega
  · trivial

inductive DecodeResult where
  | ok (proof : AggregateProof)
  | fail

/-- Canonical aggregate traversal before the wrapper's explicit round trip. -/
noncomputable def permissiveAggregateDecode (bytes : List UInt8) :
    Option AggregateProof :=
  if h : ∃ proof, serializeCompressed proof = bytes then
    some (Classical.choose h)
  else
    none

/-- The reached full-consumption/exact-round-trip wrapper. -/
noncomputable def strictAggregateDecode (bytes : List UInt8) : DecodeResult :=
  match permissiveAggregateDecode bytes with
  | none => .fail
  | some proof =>
      if serializeCompressed proof = bytes then .ok proof else .fail

/-- A successful top-level strict decode exactly reserializes to its input. -/
theorem strictAggregateDecode_round_trip {bytes : List UInt8}
    {proof : AggregateProof}
    (h : strictAggregateDecode bytes = .ok proof) :
    serializeCompressed proof = bytes := by
  unfold strictAggregateDecode at h
  split at h
  · contradiction
  · rename_i decoded hdecode
    split at h
    · rename_i hround
      have : decoded = proof := DecodeResult.ok.inj h
      simpa [this] using hround
    · contradiction

/-- GAP-11A: two strict aggregate inputs cannot decode to the same proof. -/
theorem aggregate_strict_decode_injective (b1 b2 : List UInt8)
    (agg : AggregateProof) :
    strictAggregateDecode b1 = .ok agg →
    strictAggregateDecode b2 = .ok agg →
    b1 = b2 := by
  intro h1 h2
  exact (strictAggregateDecode_round_trip h1).symm.trans
    (strictAggregateDecode_round_trip h2)

/-- GAP-14's traversal gate: strict success covers every component, every
derived vector frame, and the whole input with no suffix. -/
theorem aggregate_decoder_traversal_conformance {bytes : List UInt8}
    {agg : AggregateProof}
    (h : strictAggregateDecode bytes = .ok agg) :
    bytes = serializeCompressed agg ∧
    bytes.length = 2840 + 4736 * agg.rounds.length ∧
    agg.gtElements.length = 4 + 8 * agg.rounds.length ∧
    agg.g1Elements.length = 5 + 2 * agg.rounds.length ∧
    agg.g2Elements.length = 3 ∧
    (∀ c ∈ agg.gtElements,
      Ipp.StrictGtDecode.strictGtDecode c.bytes = .ok c.value) ∧
    (∀ c ∈ agg.g1Elements,
      Ipp.StrictG1Decode.strictG1Decode c.bytes = .ok c.value) ∧
    (∀ c ∈ agg.g2Elements,
      Ipp.StrictG2Decode.strictG2Decode c.bytes = .ok c.value) := by
  have hbytes := strictAggregateDecode_round_trip h
  refine ⟨hbytes.symm, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hbytes.symm]
    exact serializeCompressed_length agg
  · exact agg.component_inventory.1
  · exact agg.component_inventory.2.1
  · exact agg.component_inventory.2.2
  · intro c hc
    exact c.accepted
  · intro c hc
    exact c.accepted
  · intro c hc
    exact c.accepted

#print axioms G1Component.bytes_eq_of_value_eq
#print axioms G2Component.bytes_eq_of_value_eq
#print axioms GtComponent.bytes_eq_of_value_eq
#print axioms aggregate_strict_decode_injective
#print axioms aggregate_decoder_traversal_conformance

end
end Ipp.AggregateSerialization
