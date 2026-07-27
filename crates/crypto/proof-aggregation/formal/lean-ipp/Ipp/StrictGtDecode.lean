/-
GAP-10: shieldd's executed strict BLS12-377 `PairingOutput` decoder.

GT is the uncompressed 576-byte Fq12 tower. The wrapper composes checked
prefix decoding with full consumption and exact uncompressed serialization.
-/
import Ipp.Bls12377GtMembership
import Ipp.CanonicalGtBytes

namespace Ipp.StrictGtDecode

open Ipp.Bls12377
open Ipp.CanonicalWire

set_option maxHeartbeats 800000

noncomputable section

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance classicalPropDecidable (p : Prop) : Decidable p :=
  Classical.propDecidable p

/-- Observable success or failure of the strict GT boundary. -/
inductive DecodeResult where
  | ok (gt : GtGroup)
  | fail

/-- The canonical wire value denotes this concrete cardinal-`r` GT element. -/
def RepresentsGt (value : Fq12Value) (gt : GtGroup) : Prop :=
  fq12Coefficients (pairingOutputModelOfValue value) = gtValue gt

/-- Arkworks' executed `Valid::check` equation on the decoded Fq12 value. -/
def ValidCheck (value : Fq12Value) : Prop :=
  fq12Pow (pairingOutputModelOfValue value) scalarModulus = fq12One

theorem RepresentsGt.right_unique {value : Fq12Value} {x y : GtGroup}
    (hx : RepresentsGt value x) (hy : RepresentsGt value y) : x = y := by
  apply Subtype.ext
  apply Units.ext
  exact hx.symm.trans hy

theorem RepresentsGt.left_unique {x y : Fq12Value} {gt : GtGroup}
    (hx : RepresentsGt x gt) (hy : RepresentsGt y gt) : x = y := by
  apply pairingOutputModelOfValue_injective
  apply fq12Coefficients_bijective.injective
  exact hx.trans hy.symm

/-- Checked canonical decoding returns the corresponding `GtGroup` element. -/
noncomputable def canonicalCheckedDecode (bytes : List UInt8) : DecodeResult :=
  match Ipp.CanonicalGtDecode.decode bytes with
  | none => .fail
  | some value =>
      if hchecked : ValidCheck value then
        .ok (checkedPairingOutputEquivGt
          ⟨pairingOutputModelOfValue value, hchecked⟩)
      else
        .fail

/-- Arkworks' permissive parser consumes one uncompressed GT prefix. -/
noncomputable def permissiveCanonicalBytes (bytes : List UInt8) :
    Option (List UInt8) :=
  let head := bytes.take 576
  match Ipp.CanonicalGtDecode.decode head with
  | none => none
  | some _ => some head

noncomputable def permissiveCheckedDecode (bytes : List UInt8) : DecodeResult :=
  match permissiveCanonicalBytes bytes with
  | none => .fail
  | some canonical => canonicalCheckedDecode canonical

/-- A byte string is the canonical uncompressed encoding of this GT element. -/
def CanonicalEncoding (gt : GtGroup) (bytes : List UInt8) : Prop :=
  ∃ value, Ipp.CanonicalGtDecode.decode bytes = some value
    ∧ RepresentsGt value gt

/-- Select the unique canonical uncompressed encoding when one exists. -/
noncomputable def serializeUncompressed (gt : GtGroup) : List UInt8 :=
  if h : ∃ bytes, CanonicalEncoding gt bytes then Classical.choose h else []

/-- The executed permissive/full-consumption/round-trip GT wrapper. -/
noncomputable def strictCheckedDecode (bytes : List UInt8) : DecodeResult :=
  match permissiveCheckedDecode bytes with
  | .fail => .fail
  | .ok gt =>
      if serializeUncompressed gt = bytes then .ok gt else .fail

/-- Public GAP-10 name for strict checked `PairingOutput` decoding. -/
noncomputable abbrev strictGtDecode := strictCheckedDecode

theorem canonical_checked_success_iff (bytes : List UInt8) (gt : GtGroup) :
    canonicalCheckedDecode bytes = .ok gt ↔
      ∃ value, Ipp.CanonicalGtDecode.decode bytes = some value
        ∧ ValidCheck value
        ∧ RepresentsGt value gt := by
  constructor
  · intro h
    unfold canonicalCheckedDecode at h
    split at h
    · contradiction
    · rename_i value hdecode
      split at h
      · rename_i hchecked
        simp only [DecodeResult.ok.injEq] at h
        subst gt
        refine ⟨value, hdecode, hchecked, ?_⟩
        exact (checkedPairingOutputEquivGt_value
          ⟨pairingOutputModelOfValue value, hchecked⟩).symm
      · cases h
  · rintro ⟨value, hdecode, hchecked, hrep⟩
    unfold canonicalCheckedDecode
    rw [hdecode]
    simp only
    rw [dif_pos hchecked]
    apply congrArg DecodeResult.ok
    exact RepresentsGt.right_unique
      (checkedPairingOutputEquivGt_value
        ⟨pairingOutputModelOfValue value, hchecked⟩).symm
      hrep

theorem permissive_checked_success_iff (bytes : List UInt8) (gt : GtGroup) :
    permissiveCheckedDecode bytes = .ok gt ↔
      ∃ canonical, permissiveCanonicalBytes bytes = some canonical
        ∧ ∃ value, Ipp.CanonicalGtDecode.decode canonical = some value
          ∧ ValidCheck value
          ∧ RepresentsGt value gt := by
  constructor
  · intro h
    unfold permissiveCheckedDecode at h
    split at h
    · contradiction
    · rename_i canonical hcanonical
      exact ⟨canonical, hcanonical,
        (canonical_checked_success_iff canonical gt).mp h⟩
  · rintro ⟨canonical, hcanonical, hsuccess⟩
    unfold permissiveCheckedDecode
    rw [hcanonical]
    exact (canonical_checked_success_iff canonical gt).mpr hsuccess

theorem permissiveCanonicalBytes_of_decode {bytes : List UInt8}
    {value : Fq12Value}
    (h : Ipp.CanonicalGtDecode.decode bytes = some value) :
    permissiveCanonicalBytes bytes = some bytes := by
  have hlen := Ipp.CanonicalGtDecode.decode_exact_consumption h
  have htake : bytes.take 576 = bytes := by
    simp [hlen]
  unfold permissiveCanonicalBytes
  dsimp only
  rw [htake, h]

theorem canonicalEncoding_unique {gt : GtGroup} {xs ys : List UInt8}
    (hx : CanonicalEncoding gt xs) (hy : CanonicalEncoding gt ys) :
    xs = ys := by
  rcases hx with ⟨x, hxdecode, hxrep⟩
  rcases hy with ⟨y, hydecode, hyrep⟩
  have hvalue : x = y := RepresentsGt.left_unique hxrep hyrep
  subst y
  exact Ipp.CanonicalGtDecode.decode_injective hxdecode hydecode

theorem serializeUncompressed_spec {gt : GtGroup}
    (h : ∃ bytes, CanonicalEncoding gt bytes) :
    CanonicalEncoding gt (serializeUncompressed gt) := by
  simp only [serializeUncompressed, dif_pos h]
  exact Classical.choose_spec h

theorem serializeUncompressed_eq_of_encoding {gt : GtGroup}
    {bytes : List UInt8} (hencoding : CanonicalEncoding gt bytes) :
    serializeUncompressed gt = bytes := by
  apply canonicalEncoding_unique
  · exact serializeUncompressed_spec ⟨bytes, hencoding⟩
  · exact hencoding

theorem strict_checked_success_iff_round_trip
    (bytes : List UInt8) (gt : GtGroup) :
    strictCheckedDecode bytes = .ok gt ↔
      permissiveCheckedDecode bytes = .ok gt
        ∧ serializeUncompressed gt = bytes := by
  unfold strictCheckedDecode
  split
  · rename_i hdecode
    constructor
    · intro h
      cases h
    · rintro ⟨h, _⟩
      have hfalse : DecodeResult.fail = .ok gt := hdecode.symm.trans h
      cases hfalse
  · rename_i decoded hdecode
    split
    · rename_i hroundtrip
      constructor
      · intro h
        have hgt : decoded = gt := DecodeResult.ok.inj h
        subst gt
        exact ⟨hdecode, hroundtrip⟩
      · rintro ⟨h, _⟩
        exact hdecode.symm.trans h
    · rename_i hroundtrip
      constructor
      · intro h
        cases h
      · rintro ⟨h, hserialized⟩
        have hgt : decoded = gt := DecodeResult.ok.inj (hdecode.symm.trans h)
        subst gt
        exact (hroundtrip hserialized).elim

/--
Strict GT success is exactly canonical Fq12 decoding, the executed
`Valid::check` equation, and representation in the cardinal-`r` `GtGroup`.
-/
theorem gt_strict_checked_success_iff (bytes : List UInt8) (gt : GtGroup) :
    strictGtDecode bytes = .ok gt ↔
      ∃ fq12, Ipp.CanonicalGtDecode.decode bytes = some fq12
        ∧ fq12Pow (pairingOutputModelOfValue fq12) scalarModulus = fq12One
        ∧ RepresentsGt fq12 gt := by
  constructor
  · intro hstrict
    have hgate := (strict_checked_success_iff_round_trip bytes gt).mp hstrict
    rcases (permissive_checked_success_iff bytes gt).mp hgate.1 with
      ⟨canonical, _, value, hdecode, hchecked, hrep⟩
    have hserialized := serializeUncompressed_spec
      ⟨canonical, value, hdecode, hrep⟩
    rw [hgate.2] at hserialized
    rcases hserialized with ⟨strictValue, hstrictDecode, hstrictRep⟩
    have hvalue : value = strictValue :=
      RepresentsGt.left_unique hrep hstrictRep
    subst strictValue
    exact ⟨value, hstrictDecode, hchecked, hstrictRep⟩
  · rintro ⟨value, hdecode, hchecked, hrep⟩
    apply (strict_checked_success_iff_round_trip bytes gt).mpr
    constructor
    · unfold permissiveCheckedDecode
      rw [permissiveCanonicalBytes_of_decode hdecode]
      exact (canonical_checked_success_iff bytes gt).mpr
        ⟨value, hdecode, hchecked, hrep⟩
    · exact serializeUncompressed_eq_of_encoding
        ⟨value, hdecode, hrep⟩

theorem strict_rejects_of_canonical_decode_none {bytes : List UInt8}
    (hdecode : Ipp.CanonicalGtDecode.decode bytes = none) :
    strictGtDecode bytes = .fail := by
  cases h : strictGtDecode bytes with
  | fail => rfl
  | ok gt =>
      rcases (gt_strict_checked_success_iff bytes gt).mp h with
        ⟨value, hvalue, _⟩
      rw [hdecode] at hvalue
      contradiction

/-- Any base-field component at least `q` is rejected. -/
theorem strict_rejects_noncanonical_field {bytes : List UInt8}
    (hlen : bytes.length = 576) (i : Nat) (hi : i < 12)
    (hvalue : fqModulus ≤
      decodeLE (Ipp.CanonicalGtDecode.componentBytes bytes i)) :
    strictGtDecode bytes = .fail := by
  apply strict_rejects_of_canonical_decode_none
  exact Ipp.CanonicalGtDecode.decode_rejects_noncanonical_field
    hlen i hi hvalue

/-- A canonical Fq12 that fails `Valid::check` is rejected. -/
theorem strict_rejects_failed_valid_check {bytes : List UInt8}
    {value : Fq12Value}
    (hdecode : Ipp.CanonicalGtDecode.decode bytes = some value)
    (hfailed : fq12Pow (pairingOutputModelOfValue value)
      scalarModulus ≠ fq12One) :
    strictGtDecode bytes = .fail := by
  cases h : strictGtDecode bytes with
  | fail => rfl
  | ok gt =>
      rcases (gt_strict_checked_success_iff bytes gt).mp h with
        ⟨value', hdecode', hchecked, _⟩
      have hvalue : value = value' :=
        Option.some.inj (hdecode.symm.trans hdecode')
      exact (hfailed (hvalue ▸ hchecked)).elim

/-- Every nonempty suffix after a 576-byte GT prefix is rejected. -/
theorem strict_rejects_trailing_input (bytes suffix : List UInt8)
    (hlen : bytes.length = 576) (hsuffix : suffix ≠ []) :
    strictGtDecode (bytes ++ suffix) = .fail := by
  apply strict_rejects_of_canonical_decode_none
  apply Ipp.CanonicalGtDecode.decode_rejects_wrong_length
  simp [hlen]
  exact hsuffix

/-- Successful strict GT decoding lands directly in the cardinal-`r` subgroup. -/
theorem strict_success_cardinal_r_gt {bytes : List UInt8} {gt : GtGroup}
    (hstrict : strictGtDecode bytes = .ok gt) :
    gt.1 ∈ GtGroup ∧
      ∃ fq12, Ipp.CanonicalGtDecode.decode bytes = some fq12
        ∧ ValidCheck fq12
        ∧ RepresentsGt fq12 gt := by
  exact ⟨gt.2, (gt_strict_checked_success_iff bytes gt).mp hstrict⟩

/-- Strict checked GT decoding is byte-injective. -/
theorem gt_strict_checked_byte_injective {xs ys : List UInt8} {gt : GtGroup}
    (hx : strictGtDecode xs = .ok gt)
    (hy : strictGtDecode ys = .ok gt) :
    xs = ys := by
  rcases (gt_strict_checked_success_iff xs gt).mp hx with
    ⟨x, hxdecode, _, hxrep⟩
  rcases (gt_strict_checked_success_iff ys gt).mp hy with
    ⟨y, hydecode, _, hyrep⟩
  have hvalue : x = y := RepresentsGt.left_unique hxrep hyrep
  subst y
  exact Ipp.CanonicalGtDecode.decode_injective hxdecode hydecode

#print axioms gt_strict_checked_success_iff
#print axioms strict_rejects_noncanonical_field
#print axioms strict_rejects_failed_valid_check
#print axioms strict_rejects_trailing_input
#print axioms strict_success_cardinal_r_gt
#print axioms gt_strict_checked_byte_injective

end
end Ipp.StrictGtDecode
