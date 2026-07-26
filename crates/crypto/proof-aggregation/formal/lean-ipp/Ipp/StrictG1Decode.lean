/-
GAP-08: shieldd's executed strict BLS12-377 G1 compressed decoder.

The Rust boundary first runs arkworks' checked compressed decoder, requires
full consumption, then requires exact compressed re-serialization. This file
models that composition. Arkworks' only accepted noncanonical G1 wire is an
infinity flag paired with a discarded canonical nonzero x-coordinate; the
round-trip equality gate rejects it and every trailing input.
-/
import Ipp.CanonicalG1DecodeInjectivity
import Ipp.Extracted.ArkworksSubgroupCheck

namespace Ipp.StrictG1Decode

open Ipp.Bls12377
open Ipp.CanonicalWire

set_option maxHeartbeats 800000

noncomputable section

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : g1Curve.IsElliptic := g1_isElliptic
local instance classicalPropDecidable (p : Prop) : Decidable p :=
  Classical.propDecidable p

/-- Observable success or failure of the strict boundary. -/
inductive DecodeResult where
  | ok (point : G1)
  | fail

/-- The canonical wire record denotes this concrete G1 point. -/
noncomputable abbrev RepresentsG1 := Ipp.CanonicalG1Decode.Represents

/-- Checked membership lifted from represented G1 points to canonical records. -/
noncomputable abbrev arkworksG1CheckedMembership :=
  Ipp.CanonicalG1Decode.CheckedPrimeSubgroupPoint

/--
Normalize the prefix accepted by arkworks' permissive compressed parser.
Finite canonical prefixes are retained. A canonical field element carrying
the infinity flag is normalized to the serializer's unique infinity bytes.
-/
noncomputable def permissiveCanonicalBytes (bytes : List UInt8) :
    Option (List UInt8) :=
  let head := bytes.take Ipp.CanonicalG1Decode.compressedBytes
  match Ipp.CanonicalG1Decode.decode head with
  | some _ => some head
  | none => do
      if head.length = Ipp.CanonicalG1Decode.compressedBytes then pure () else none
      let last ← head[47]?
      let flags ← Ipp.CanonicalG1Decode.decodeFlags last
      if flags = .infinity then pure () else none
      let _ ← decodeFqList (Ipp.CanonicalG1Decode.clearFlags head)
      some Ipp.CanonicalG1Decode.infinityEncoding

/-- Checked canonical decoding, with the represented Mathlib point returned. -/
noncomputable def canonicalCheckedDecode (bytes : List UInt8) : DecodeResult :=
  match Ipp.CanonicalG1Decode.decode bytes with
  | none => .fail
  | some wire =>
      if hchecked : arkworksG1CheckedMembership wire then
        .ok (Classical.choose hchecked)
      else
        .fail

/-- Arkworks' permissive checked decoder, which consumes only one G1 prefix. -/
noncomputable def permissiveCheckedDecode (bytes : List UInt8) : DecodeResult :=
  match permissiveCanonicalBytes bytes with
  | none => .fail
  | some canonical => canonicalCheckedDecode canonical

/-- A byte string is a canonical compressed encoding of a concrete G1 point. -/
noncomputable def CanonicalEncoding (point : G1) (bytes : List UInt8) : Prop :=
  ∃ wire, Ipp.CanonicalG1Decode.decode bytes = some wire ∧ RepresentsG1 wire point

/--
The serializer contract: select the unique canonical compressed encoding when
one exists. Strictly decoded points always inhabit this branch.
-/
noncomputable def serializeCompressed (point : G1) : List UInt8 :=
  if h : ∃ bytes, CanonicalEncoding point bytes then Classical.choose h else []

/-- The shieldd wrapper's exact deserialize/full-consumption/round-trip gate. -/
noncomputable def strictCheckedDecode (bytes : List UInt8) : DecodeResult :=
  match permissiveCheckedDecode bytes with
  | .fail => .fail
  | .ok point =>
      if serializeCompressed point = bytes then .ok point else .fail

/-- Public GAP-08 name for the strict checked G1 decoder. -/
noncomputable abbrev strictG1Decode := strictCheckedDecode

theorem canonical_checked_success_iff (bytes : List UInt8) (point : G1) :
    canonicalCheckedDecode bytes = .ok point ↔
      ∃ wire, Ipp.CanonicalG1Decode.decode bytes = some wire
        ∧ arkworksG1CheckedMembership wire
        ∧ RepresentsG1 wire point := by
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
    exact Ipp.CanonicalG1Decode.Represents.right_unique
      (Classical.choose_spec hchecked).1 hrep

theorem permissive_checked_success_iff (bytes : List UInt8) (point : G1) :
    permissiveCheckedDecode bytes = .ok point ↔
      ∃ canonical, permissiveCanonicalBytes bytes = some canonical
        ∧ ∃ wire, Ipp.CanonicalG1Decode.decode canonical = some wire
          ∧ arkworksG1CheckedMembership wire
          ∧ RepresentsG1 wire point := by
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
    {wire : Ipp.CanonicalG1Decode.Point}
    (h : Ipp.CanonicalG1Decode.decode bytes = some wire) :
    permissiveCanonicalBytes bytes = some bytes := by
  have hlen := Ipp.CanonicalG1Decode.decode_exact_consumption h
  have htake : bytes.take Ipp.CanonicalG1Decode.compressedBytes = bytes :=
    by simpa [hlen] using List.take_all bytes
  unfold permissiveCanonicalBytes
  dsimp only
  rw [htake, h]

theorem checkedMembership_of_represents
    {wire : Ipp.CanonicalG1Decode.Point} {point : G1}
    (hchecked : arkworksG1CheckedMembership wire)
    (hrep : RepresentsG1 wire point) :
    Ipp.Bls12377.arkworksG1CheckedMembership point := by
  rcases hchecked with ⟨represented, hrepresented, hmembership⟩
  have : represented = point :=
    Ipp.CanonicalG1Decode.Represents.right_unique hrepresented hrep
  simpa [this] using hmembership

theorem canonicalEncoding_unique_of_checked {point : G1} {xs ys : List UInt8}
    (hchecked : Ipp.Bls12377.arkworksG1CheckedMembership point)
    (hx : CanonicalEncoding point xs) (hy : CanonicalEncoding point ys) :
    xs = ys := by
  rcases hx with ⟨wire, hxdecode, hxrep⟩
  rcases hy with ⟨wire', hydecode, hyrep⟩
  have hwire : wire = wire' :=
    Ipp.CanonicalG1Decode.decode_Represents_left_unique
      hxdecode hydecode hxrep hyrep
  subst wire'
  exact Ipp.CanonicalG1Decode.decode_checked_injective hxdecode hydecode
    ⟨point, hxrep, hchecked⟩

theorem serializeCompressed_spec {point : G1}
    (h : ∃ bytes, CanonicalEncoding point bytes) :
    CanonicalEncoding point (serializeCompressed point) := by
  simp only [serializeCompressed, dif_pos h]
  exact Classical.choose_spec h

theorem serializeCompressed_eq_of_checked_encoding {point : G1}
    {bytes : List UInt8}
    (hchecked : Ipp.Bls12377.arkworksG1CheckedMembership point)
    (hencoding : CanonicalEncoding point bytes) :
    serializeCompressed point = bytes := by
  apply canonicalEncoding_unique_of_checked hchecked
  · exact serializeCompressed_spec ⟨bytes, hencoding⟩
  · exact hencoding

/-- Exact executable round-trip-gate characterization. -/
theorem strict_checked_success_iff_round_trip (bytes : List UInt8) (point : G1) :
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
Strict shieldd success is exactly canonical G1 decoding, executed checked
membership, and representation by the returned Mathlib point.
-/
theorem g1_strict_checked_success_iff (bytes : List UInt8) (point : G1) :
    strictG1Decode bytes = .ok point ↔
      ∃ wire, Ipp.CanonicalG1Decode.decode bytes = some wire
        ∧ arkworksG1CheckedMembership wire
        ∧ RepresentsG1 wire point := by
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

theorem strict_rejects_of_canonical_decode_none {bytes : List UInt8}
    (hdecode : Ipp.CanonicalG1Decode.decode bytes = none) :
    strictG1Decode bytes = .fail := by
  cases h : strictG1Decode bytes with
  | fail => rfl
  | ok point =>
      rcases (g1_strict_checked_success_iff bytes point).mp h with
        ⟨wire, hwire, _⟩
      rw [hdecode] at hwire
      contradiction

/-- Contradictory compressed flags (`11`) are rejected. -/
theorem strict_rejects_malformed_flags {bytes : List UInt8} {last : UInt8}
    (hlen : bytes.length = Ipp.CanonicalG1Decode.compressedBytes)
    (hlast : bytes[47]? = some last)
    (hflags : Ipp.CanonicalG1Decode.decodeFlags last = none) :
    strictG1Decode bytes = .fail := by
  apply strict_rejects_of_canonical_decode_none
  exact Ipp.CanonicalG1Decode.decode_rejects_illegal_flags hlen hlast hflags

/-- A coordinate outside the canonical base-field image is rejected. -/
theorem strict_rejects_noncanonical_field {bytes : List UInt8} {last : UInt8}
    {flags : Ipp.CanonicalG1Decode.Flags}
    (hlen : bytes.length = Ipp.CanonicalG1Decode.compressedBytes)
    (hlast : bytes[47]? = some last)
    (hflags : Ipp.CanonicalG1Decode.decodeFlags last = some flags)
    (hfield : decodeFqList (Ipp.CanonicalG1Decode.clearFlags bytes) = none) :
    strictG1Decode bytes = .fail := by
  apply strict_rejects_of_canonical_decode_none
  simp [Ipp.CanonicalG1Decode.decode, hlen, hlast, hflags, hfield]

/-- A finite x-coordinate whose curve right-hand side has no root is rejected. -/
theorem strict_rejects_non_curve_root {bytes : List UInt8} {last : UInt8}
    {flags : Ipp.CanonicalG1Decode.Flags} {x : FqValue}
    (hlen : bytes.length = Ipp.CanonicalG1Decode.compressedBytes)
    (hlast : bytes[47]? = some last)
    (hflags : Ipp.CanonicalG1Decode.decodeFlags last = some flags)
    (hfinite : flags ≠ .infinity)
    (hx : decodeFqList (Ipp.CanonicalG1Decode.clearFlags bytes) = some x)
    (hroot : Ipp.CanonicalG1Decode.sqrtFq
      (Ipp.CanonicalG1Decode.curveRhs x.1) = none) :
    strictG1Decode bytes = .fail := by
  apply strict_rejects_of_canonical_decode_none
  cases flags with
  | infinity => contradiction
  | smallerRoot =>
      simp [Ipp.CanonicalG1Decode.decode, Ipp.CanonicalG1Decode.decodeFinite,
        hlen, hlast, hflags, hx, hroot]
  | largerRoot =>
      simp [Ipp.CanonicalG1Decode.decode, Ipp.CanonicalG1Decode.decodeFinite,
        hlen, hlast, hflags, hx, hroot]

/--
Arkworks accepts a canonical nonzero x carrying the infinity flag as identity;
the strict round-trip gate rejects every such noncanonical infinity alias.
-/
theorem strict_rejects_noncanonical_infinity {bytes : List UInt8} {last : UInt8}
    {x : FqValue}
    (hlen : bytes.length = Ipp.CanonicalG1Decode.compressedBytes)
    (hne : bytes ≠ Ipp.CanonicalG1Decode.infinityEncoding)
    (hlast : bytes[47]? = some last)
    (hflags : Ipp.CanonicalG1Decode.decodeFlags last = some .infinity)
    (hx : decodeFqList (Ipp.CanonicalG1Decode.clearFlags bytes) = some x) :
    permissiveCheckedDecode bytes = .ok 0
      ∧ strictG1Decode bytes = .fail := by
  have hdecode : Ipp.CanonicalG1Decode.decode bytes = none := by
    simp [Ipp.CanonicalG1Decode.decode, hlen, hlast, hflags, hx, hne]
  have hcanonical : permissiveCanonicalBytes bytes =
      some Ipp.CanonicalG1Decode.infinityEncoding := by
    have htake : bytes.take Ipp.CanonicalG1Decode.compressedBytes = bytes :=
      by simpa [hlen] using List.take_all bytes
    unfold permissiveCanonicalBytes
    dsimp only
    rw [htake, hdecode]
    simp [hlen, hlast, hflags, hx]
  constructor
  · unfold permissiveCheckedDecode
    rw [hcanonical]
    apply (canonical_checked_success_iff Ipp.CanonicalG1Decode.infinityEncoding 0).mpr
    exact ⟨Ipp.CanonicalG1Decode.infinityPoint, by
      simp [Ipp.CanonicalG1Decode.decode, Ipp.CanonicalG1Decode.infinityEncoding,
        Ipp.CanonicalG1Decode.compressedBytes, Ipp.CanonicalG1Decode.decodeFlags,
        Ipp.CanonicalG1Decode.clearFlags,
        decodeFqList, decodeFqCanonical, FqWire.value, decodeLE,
        Ipp.CanonicalG1Decode.infinityPoint, Ipp.CanonicalG1Decode.zeroFq,
        Ipp.CanonicalG1Decode.infinityMask, fqModulus],
      Ipp.CanonicalG1Decode.checkedPrimeSubgroupPoint_infinity,
      by simp [RepresentsG1, Ipp.CanonicalG1Decode.Represents,
        Ipp.CanonicalG1Decode.infinityPoint]⟩
  · exact strict_rejects_of_canonical_decode_none hdecode

/-- Every nonempty suffix is rejected, even after a valid 48-byte prefix. -/
theorem strict_rejects_trailing_input (bytes suffix : List UInt8)
    (hlen : bytes.length = Ipp.CanonicalG1Decode.compressedBytes)
    (hsuffix : suffix ≠ []) :
    strictG1Decode (bytes ++ suffix) = .fail := by
  apply strict_rejects_of_canonical_decode_none
  apply Ipp.CanonicalG1Decode.decode_rejects_wrong_length
  simp [hlen, Ipp.CanonicalG1Decode.compressedBytes]
  exact hsuffix

/-- Canonical points that fail the checked subgroup predicate are rejected. -/
theorem strict_rejects_failed_subgroup_check {bytes : List UInt8}
    {wire : Ipp.CanonicalG1Decode.Point}
    (hdecode : Ipp.CanonicalG1Decode.decode bytes = some wire)
    (hfailed : ¬ arkworksG1CheckedMembership wire) :
    strictG1Decode bytes = .fail := by
  cases h : strictG1Decode bytes with
  | fail => rfl
  | ok point =>
      rcases (g1_strict_checked_success_iff bytes point).mp h with
        ⟨wire', hdecode', hchecked', _⟩
      have : wire = wire' := Option.some.inj (hdecode.symm.trans hdecode')
      exact (hfailed (this ▸ hchecked')).elim

/-- Strict success lands in the GAP-05 prime subgroup. -/
theorem strict_success_prime_subgroup {bytes : List UInt8} {point : G1}
    (hstrict : strictG1Decode bytes = .ok point) :
    point ∈ g1PrimeSubgroup := by
  rcases (g1_strict_checked_success_iff bytes point).mp hstrict with
    ⟨wire, _, hchecked, hrep⟩
  exact (arkworksG1CheckedMembership_iff_mem_g1PrimeSubgroup point).mp
    (checkedMembership_of_represents hchecked hrep)

/-- S3-32's executed subgroup check returns true on every strict success. -/
theorem executed_subgroup_check_accepts_strict {bytes : List UInt8} {point : G1}
    {encoded : Ipp.Extracted.ArkworksG1.G1AffineLimbPair} {out : Bool}
    (hstrict : strictG1Decode bytes = .ok point)
    (hpoint : Ipp.Extracted.ArkworksScalarMul.ValidG1AffineLoopBase encoded
      (Ipp.Extracted.ArkworksSubgroupCheck.g1AffineEquiv point))
    (hexec : Ipp.Extracted.ArkworksSubgroupCheck.g1_subgroup_check encoded = .ok out) :
    out = true := by
  have hout :=
    Ipp.Extracted.ArkworksSubgroupCheck.valid_g1_subgroup_check_checked_membership
      encoded point out hpoint hexec
  have hmembership :
      Ipp.Bls12377.arkworksG1CheckedMembership point := by
    simpa [arkworksG1CheckedMembership_iff_mem_g1PrimeSubgroup] using
      strict_success_prime_subgroup hstrict
  rw [hout]
  simpa only [decide_eq_true_eq] using hmembership

/-- Strict checked G1 decoding is byte-injective, including at infinity. -/
theorem g1_strict_checked_byte_injective {xs ys : List UInt8} {point : G1}
    (hx : strictG1Decode xs = .ok point)
    (hy : strictG1Decode ys = .ok point) :
    xs = ys := by
  rcases (g1_strict_checked_success_iff xs point).mp hx with
    ⟨wire, hxdecode, hxchecked, hxrep⟩
  rcases (g1_strict_checked_success_iff ys point).mp hy with
    ⟨wire', hydecode, _, hyrep⟩
  have hwire : wire = wire' :=
    Ipp.CanonicalG1Decode.decode_Represents_left_unique
      hxdecode hydecode hxrep hyrep
  subst wire'
  exact Ipp.CanonicalG1Decode.decode_checked_injective
    hxdecode hydecode hxchecked

#print axioms g1_strict_checked_success_iff
#print axioms g1_strict_checked_byte_injective

end
end Ipp.StrictG1Decode
