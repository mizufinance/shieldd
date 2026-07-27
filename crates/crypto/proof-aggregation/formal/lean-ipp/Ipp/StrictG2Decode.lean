/-
GAP-09: shieldd's executed strict BLS12-377 G2 compressed decoder.

The Rust boundary first runs arkworks' checked compressed decoder, requires
full consumption, then requires exact compressed re-serialization. This file
models that composition for the 96-byte c0-then-c1 Fq2 wire. Arkworks'
permissive infinity aliases may carry a discarded canonical nonzero value in
either Fq2 component; the round-trip equality gate rejects every such alias.
-/
import Ipp.CanonicalG2DecodeInjectivity

namespace Ipp.StrictG2Decode

open Ipp.Bls12377
open Ipp.CanonicalWire

set_option maxHeartbeats 800000

noncomputable section

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic
local instance classicalPropDecidable (p : Prop) : Decidable p :=
  Classical.propDecidable p

/-- Observable success or failure of the strict boundary. -/
inductive DecodeResult where
  | ok (point : G2)
  | fail

/-- The canonical wire record denotes this concrete G2 point. -/
noncomputable abbrev RepresentsG2 := Ipp.CanonicalG2Decode.Represents

/-- Checked membership lifted from represented G2 points to canonical records. -/
noncomputable abbrev arkworksG2CheckedMembership :=
  Ipp.CanonicalG2Decode.CheckedPrimeSubgroupPoint

/--
Normalize the prefix accepted by arkworks' permissive compressed parser.
Finite canonical prefixes are retained. Canonical Fq2 coordinates carrying
the infinity flag are normalized to the serializer's unique infinity bytes.
-/
noncomputable def permissiveCanonicalBytes (bytes : List UInt8) :
    Option (List UInt8) :=
  let head := bytes.take Ipp.CanonicalG2Decode.compressedBytes
  match Ipp.CanonicalG2Decode.decode head with
  | some _ => some head
  | none => do
      if head.length = Ipp.CanonicalG2Decode.compressedBytes then pure () else none
      let last ← head[95]?
      let flags ← Ipp.CanonicalG2Decode.decodeFlags last
      if flags = .infinity then pure () else none
      let _ ← Ipp.CanonicalG2Decode.decodeFq2List
        (Ipp.CanonicalG2Decode.clearFlags head)
      some Ipp.CanonicalG2Decode.infinityEncoding

/-- Checked canonical decoding, with the represented Mathlib point returned. -/
noncomputable def canonicalCheckedDecode (bytes : List UInt8) : DecodeResult :=
  match Ipp.CanonicalG2Decode.decode bytes with
  | none => .fail
  | some wire =>
      if hchecked : arkworksG2CheckedMembership wire then
        .ok (Classical.choose hchecked)
      else
        .fail

/-- Arkworks' permissive checked decoder, which consumes only one G2 prefix. -/
noncomputable def permissiveCheckedDecode (bytes : List UInt8) : DecodeResult :=
  match permissiveCanonicalBytes bytes with
  | none => .fail
  | some canonical => canonicalCheckedDecode canonical

/-- A byte string is a canonical compressed encoding of a concrete G2 point. -/
noncomputable def CanonicalEncoding (point : G2) (bytes : List UInt8) : Prop :=
  ∃ wire, Ipp.CanonicalG2Decode.decode bytes = some wire ∧ RepresentsG2 wire point

/--
The serializer contract: select the unique canonical compressed encoding when
one exists. Strictly decoded points always inhabit this branch.
-/
noncomputable def serializeCompressed (point : G2) : List UInt8 :=
  if h : ∃ bytes, CanonicalEncoding point bytes then Classical.choose h else []

/-- The shieldd wrapper's exact deserialize/full-consumption/round-trip gate. -/
noncomputable def strictCheckedDecode (bytes : List UInt8) : DecodeResult :=
  match permissiveCheckedDecode bytes with
  | .fail => .fail
  | .ok point =>
      if serializeCompressed point = bytes then .ok point else .fail

/-- Public GAP-09 name for the strict checked G2 decoder. -/
noncomputable abbrev strictG2Decode := strictCheckedDecode

theorem canonical_checked_success_iff (bytes : List UInt8) (point : G2) :
    canonicalCheckedDecode bytes = .ok point ↔
      ∃ wire, Ipp.CanonicalG2Decode.decode bytes = some wire
        ∧ arkworksG2CheckedMembership wire
        ∧ RepresentsG2 wire point := by
  constructor
  · intro h
    unfold canonicalCheckedDecode at h
    split at h
    · contradiction
    · rename_i wire hdecode
      split at h
      · rename_i hchecked
        simp only [DecodeResult.ok.injEq] at h
        subst point
        exact ⟨wire, hdecode, hchecked, (Classical.choose_spec hchecked).1⟩
      · contradiction
  · rintro ⟨wire, hdecode, hchecked, hrep⟩
    unfold canonicalCheckedDecode
    rw [hdecode]
    simp only
    rw [dif_pos hchecked]
    congr 1
    exact Ipp.CanonicalG2Decode.Represents.right_unique
      (Classical.choose_spec hchecked).1 hrep

theorem permissive_checked_success_iff (bytes : List UInt8) (point : G2) :
    permissiveCheckedDecode bytes = .ok point ↔
      ∃ canonical, permissiveCanonicalBytes bytes = some canonical
        ∧ ∃ wire, Ipp.CanonicalG2Decode.decode canonical = some wire
          ∧ arkworksG2CheckedMembership wire
          ∧ RepresentsG2 wire point := by
  constructor
  · intro h
    unfold permissiveCheckedDecode at h
    split at h
    · contradiction
    · rename_i canonical hcanonical
      have hsuccess :=
        (canonical_checked_success_iff canonical point).mp h
      exact ⟨canonical, hcanonical, hsuccess⟩
  · rintro ⟨canonical, hcanonical, hsuccess⟩
    unfold permissiveCheckedDecode
    rw [hcanonical]
    exact (canonical_checked_success_iff canonical point).mpr hsuccess

/-- Successful canonical input is retained by the permissive prefix parser. -/
theorem permissiveCanonicalBytes_of_decode {bytes : List UInt8}
    {wire : Ipp.CanonicalG2Decode.Point}
    (h : Ipp.CanonicalG2Decode.decode bytes = some wire) :
    permissiveCanonicalBytes bytes = some bytes := by
  have hlen := Ipp.CanonicalG2Decode.decode_exact_consumption h
  have htake : bytes.take Ipp.CanonicalG2Decode.compressedBytes = bytes :=
    by simpa [hlen] using List.take_all bytes
  unfold permissiveCanonicalBytes
  dsimp only
  rw [htake, h]

theorem checkedMembership_of_represents
    {wire : Ipp.CanonicalG2Decode.Point} {point : G2}
    (hchecked : arkworksG2CheckedMembership wire)
    (hrep : RepresentsG2 wire point) :
    Ipp.Bls12377.arkworksG2CheckedMembership point := by
  rcases hchecked with ⟨represented, hrepresented, hmembership⟩
  have : represented = point :=
    Ipp.CanonicalG2Decode.Represents.right_unique hrepresented hrep
  simpa [this] using hmembership

theorem canonicalEncoding_unique_of_checked {point : G2} {xs ys : List UInt8}
    (hchecked : Ipp.Bls12377.arkworksG2CheckedMembership point)
    (hx : CanonicalEncoding point xs) (hy : CanonicalEncoding point ys) :
    xs = ys := by
  rcases hx with ⟨wire, hxdecode, hxrep⟩
  rcases hy with ⟨wire', hydecode, hyrep⟩
  have hwire : wire = wire' :=
    Ipp.CanonicalG2Decode.decode_Represents_left_unique
      hxdecode hydecode hxrep hyrep
  subst wire'
  exact Ipp.CanonicalG2Decode.decode_checked_injective hxdecode hydecode
    ⟨point, hxrep, hchecked⟩

theorem serializeCompressed_spec {point : G2}
    (h : ∃ bytes, CanonicalEncoding point bytes) :
    CanonicalEncoding point (serializeCompressed point) := by
  simp only [serializeCompressed, dif_pos h]
  exact Classical.choose_spec h

theorem serializeCompressed_eq_of_checked_encoding {point : G2}
    {bytes : List UInt8}
    (hchecked : Ipp.Bls12377.arkworksG2CheckedMembership point)
    (hencoding : CanonicalEncoding point bytes) :
    serializeCompressed point = bytes := by
  apply canonicalEncoding_unique_of_checked hchecked
  · exact serializeCompressed_spec ⟨bytes, hencoding⟩
  · exact hencoding

/-- Exact executable round-trip-gate characterization. -/
theorem strict_checked_success_iff_round_trip (bytes : List UInt8) (point : G2) :
    strictCheckedDecode bytes = .ok point ↔
      permissiveCheckedDecode bytes = .ok point
        ∧ serializeCompressed point = bytes := by
  unfold strictCheckedDecode
  split
  · rename_i hdecode
    constructor
    · intro h
      cases h
    · rintro ⟨h, _⟩
      have hfalse : DecodeResult.fail = .ok point := hdecode.symm.trans h
      cases hfalse
  · rename_i decoded hdecode
    split
    · rename_i hroundtrip
      constructor
      · intro h
        have hpoint : decoded = point := DecodeResult.ok.inj h
        subst point
        exact ⟨hdecode, hroundtrip⟩
      · rintro ⟨h, _⟩
        exact hdecode.symm.trans h
    · rename_i hroundtrip
      constructor
      · intro h
        cases h
      · rintro ⟨h, hserialized⟩
        have hpoint : decoded = point :=
          DecodeResult.ok.inj (hdecode.symm.trans h)
        subst point
        exact (hroundtrip hserialized).elim

/--
Strict shieldd success is exactly canonical G2 decoding, executed checked
membership, and representation by the returned Mathlib point.
-/
theorem g2_strict_checked_success_iff (bytes : List UInt8) (point : G2) :
    strictG2Decode bytes = .ok point ↔
      ∃ wire, Ipp.CanonicalG2Decode.decode bytes = some wire
        ∧ arkworksG2CheckedMembership wire
        ∧ RepresentsG2 wire point := by
  constructor
  · intro hstrict
    have hgate := (strict_checked_success_iff_round_trip bytes point).mp hstrict
    rcases (permissive_checked_success_iff bytes point).mp hgate.1 with
      ⟨canonical, _, wire, hdecode, hchecked, hrep⟩
    have hmembership := checkedMembership_of_represents hchecked hrep
    have hencoding : CanonicalEncoding point canonical := ⟨wire, hdecode, hrep⟩
    have hserialized := serializeCompressed_spec ⟨canonical, hencoding⟩
    rw [hgate.2] at hserialized
    rcases hserialized with ⟨strictWire, hstrictDecode, hstrictRep⟩
    exact ⟨strictWire, hstrictDecode,
      ⟨point, hstrictRep, hmembership⟩, hstrictRep⟩
  · rintro ⟨wire, hdecode, hchecked, hrep⟩
    have hmembership := checkedMembership_of_represents hchecked hrep
    apply (strict_checked_success_iff_round_trip bytes point).mpr
    constructor
    · unfold permissiveCheckedDecode
      rw [permissiveCanonicalBytes_of_decode hdecode]
      exact (canonical_checked_success_iff bytes point).mpr
        ⟨wire, hdecode, hchecked, hrep⟩
    · exact serializeCompressed_eq_of_checked_encoding hmembership
        ⟨wire, hdecode, hrep⟩

/-- Strict checked G2 decoding is byte-injective, including at infinity. -/
theorem g2_strict_checked_byte_injective {xs ys : List UInt8} {point : G2}
    (hx : strictG2Decode xs = .ok point)
    (hy : strictG2Decode ys = .ok point) :
    xs = ys := by
  rcases (g2_strict_checked_success_iff xs point).mp hx with
    ⟨wire, hxdecode, hxchecked, hxrep⟩
  rcases (g2_strict_checked_success_iff ys point).mp hy with
    ⟨wire', hydecode, _, hyrep⟩
  have hwire : wire = wire' :=
    Ipp.CanonicalG2Decode.decode_Represents_left_unique
      hxdecode hydecode hxrep hyrep
  subst wire'
  exact Ipp.CanonicalG2Decode.decode_checked_injective
    hxdecode hydecode hxchecked

#print axioms g2_strict_checked_success_iff
#print axioms g2_strict_checked_byte_injective

end
end Ipp.StrictG2Decode
