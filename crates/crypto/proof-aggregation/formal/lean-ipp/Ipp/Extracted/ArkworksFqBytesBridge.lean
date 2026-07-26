import Ipp.Extracted.ArkworksFqBytesCore
import Ipp.Extracted.ArkworksFqSqrt
import Mathlib.Tactic

namespace Ipp.Extracted.ArkworksFqSqrtBytes

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqOps
open Ipp.Extracted.ArkworksFqSquare
open Ipp.Extracted.ArkworksFqInv
open Ipp.Extracted.ArkworksFqByteRuntime

set_option maxHeartbeats 1000000
set_option maxRecDepth 8192

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action <;> simp_all

private theorem u64_ext {left right : MacCampaign.U64}
    (h : left.val = right.val) : left = right := by
  cases left
  cases right
  simp_all

private theorem limbsToNat_injective {left right : LimbArray}
    (h : limbsToNat left = limbsToNat right) : left = right := by
  rw [limbsToNat_six, limbsToNat_six] at h
  have hl0 := (limbWord left ⟨0, by simp [limbCount]⟩).isLt
  have hl1 := (limbWord left ⟨1, by simp [limbCount]⟩).isLt
  have hl2 := (limbWord left ⟨2, by simp [limbCount]⟩).isLt
  have hl3 := (limbWord left ⟨3, by simp [limbCount]⟩).isLt
  have hl4 := (limbWord left ⟨4, by simp [limbCount]⟩).isLt
  have hl5 := (limbWord left ⟨5, by simp [limbCount]⟩).isLt
  have hr0 := (limbWord right ⟨0, by simp [limbCount]⟩).isLt
  have hr1 := (limbWord right ⟨1, by simp [limbCount]⟩).isLt
  have hr2 := (limbWord right ⟨2, by simp [limbCount]⟩).isLt
  have hr3 := (limbWord right ⟨3, by simp [limbCount]⟩).isLt
  have hr4 := (limbWord right ⟨4, by simp [limbCount]⟩).isLt
  have hr5 := (limbWord right ⟨5, by simp [limbCount]⟩).isLt
  change limb left ⟨0, by simp [limbCount]⟩ < wordBase at hl0
  change limb left ⟨1, by simp [limbCount]⟩ < wordBase at hl1
  change limb left ⟨2, by simp [limbCount]⟩ < wordBase at hl2
  change limb left ⟨3, by simp [limbCount]⟩ < wordBase at hl3
  change limb left ⟨4, by simp [limbCount]⟩ < wordBase at hl4
  change limb left ⟨5, by simp [limbCount]⟩ < wordBase at hl5
  change limb right ⟨0, by simp [limbCount]⟩ < wordBase at hr0
  change limb right ⟨1, by simp [limbCount]⟩ < wordBase at hr1
  change limb right ⟨2, by simp [limbCount]⟩ < wordBase at hr2
  change limb right ⟨3, by simp [limbCount]⟩ < wordBase at hr3
  change limb right ⟨4, by simp [limbCount]⟩ < wordBase at hr4
  change limb right ⟨5, by simp [limbCount]⟩ < wordBase at hr5
  norm_num [wordBase] at h hl0 hl1 hl2 hl3 hl4 hl5 hr0 hr1 hr2 hr3 hr4 hr5
  have h0 : limb left ⟨0, by simp [limbCount]⟩ =
      limb right ⟨0, by simp [limbCount]⟩ := by omega
  have h1 : limb left ⟨1, by simp [limbCount]⟩ =
      limb right ⟨1, by simp [limbCount]⟩ := by omega
  have h2 : limb left ⟨2, by simp [limbCount]⟩ =
      limb right ⟨2, by simp [limbCount]⟩ := by omega
  have h3 : limb left ⟨3, by simp [limbCount]⟩ =
      limb right ⟨3, by simp [limbCount]⟩ := by omega
  have h4 : limb left ⟨4, by simp [limbCount]⟩ =
      limb right ⟨4, by simp [limbCount]⟩ := by omega
  have h5 : limb left ⟨5, by simp [limbCount]⟩ =
      limb right ⟨5, by simp [limbCount]⟩ := by omega
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [left.hlen, right.hlen]
  · intro n hnLeft hnRight
    have hn : n < 6 := by simpa [left.hlen] using hnLeft
    interval_cases n
    · apply u64_ext; simpa [limb, limbWord] using h0
    · apply u64_ext; simpa [limb, limbWord] using h1
    · apply u64_ext; simpa [limb, limbWord] using h2
    · apply u64_ext; simpa [limb, limbWord] using h3
    · apply u64_ext; simpa [limb, limbWord] using h4
    · apply u64_ext; simpa [limb, limbWord] using h5

theorem decode_injective_of_canonical {left right : LimbArray}
    (hl : Canonical left) (hr : Canonical right)
    (hdecode : decode left = decode right) : left = right := by
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv] at hdecode
  have hcancel :
      (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ = 1 :=
    ZMod.coe_mul_inv_eq_one Ipp.Bls12377.baseMontgomeryRadix
      baseMontgomeryRadix_coprime
  have hcast : (limbsToNat left : Ipp.Bls12377.Fq) =
      (limbsToNat right : Ipp.Bls12377.Fq) := by
    calc
      (limbsToNat left : Ipp.Bls12377.Fq) =
          (limbsToNat left : Ipp.Bls12377.Fq) *
            ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
              (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) := by
                rw [hcancel, mul_one]
      _ = ((limbsToNat left : Ipp.Bls12377.Fq) *
            (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) := by ring
      _ = ((limbsToNat right : Ipp.Bls12377.Fq) *
            (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) := by rw [hdecode]
      _ = (limbsToNat right : Ipp.Bls12377.Fq) *
          ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
            (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) := by ring
      _ = (limbsToNat right : Ipp.Bls12377.Fq) := by rw [hcancel, mul_one]
  have hmod : Nat.ModEq Ipp.Bls12377.baseModulus
      (limbsToNat left) (limbsToNat right) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).mp hcast
  change limbsToNat left % Ipp.Bls12377.baseModulus =
    limbsToNat right % Ipp.Bls12377.baseModulus at hmod
  rw [Nat.mod_eq_of_lt hl, Nat.mod_eq_of_lt hr] at hmod
  exact limbsToNat_injective hmod

private def defaultLimbArray : LimbArray :=
  MacCampaign.Array.make 6#usize [MacCampaign.U64.ofNat 0,
    MacCampaign.U64.ofNat 0, MacCampaign.U64.ofNat 0,
    MacCampaign.U64.ofNat 0, MacCampaign.U64.ofNat 0,
    MacCampaign.U64.ofNat 0]

private def RepresentsDecoded (n : Nat) (value : LimbArray) : Prop :=
  Canonical value ∧ (decode value).val = n

noncomputable def sqrtRepresentative (n : Nat) : LimbArray := by
  classical
  exact if h : ∃ value, RepresentsDecoded n value then Classical.choose h
    else defaultLimbArray

private theorem sqrtRepresentative_decode (a : LimbArray) (ha : Canonical a) :
    sqrtRepresentative (decode a).val = a := by
  classical
  letI : NeZero Ipp.Bls12377.baseModulus := ⟨by
    norm_num [Ipp.Bls12377.baseModulus]⟩
  have hexists : ∃ value, RepresentsDecoded (decode a).val value :=
    ⟨a, ha, rfl⟩
  rw [sqrtRepresentative, dif_pos hexists]
  have hspec := Classical.choose_spec hexists
  apply decode_injective_of_canonical hspec.1 ha
  apply ZMod.val_injective
  exact hspec.2

/-- GAP-02A's square-root spec, definitionally backed by the extracted schedule. -/
noncomputable def executedSqrtFq (a : Nat) : Option Nat :=
  match ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt (sqrtRepresentative a) with
  | .ok result => result.map fun output => (decode output).val
  | .fail _ | .div => none

/-- Extracted `some` and `none` results agree exactly with the GAP-02A spec. -/
theorem extracted_sqrt_sqrtFq (a : LimbArray) (result : Option LimbArray)
    (ha : Canonical a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sqrt a = .ok result) :
    executedSqrtFq (decode a).val =
      result.map fun output => (decode output).val := by
  rw [executedSqrtFq, sqrtRepresentative_decode a ha, hexec]

theorem executedSqrtFq_zero : executedSqrtFq 0 = some 0 := by
  have hcanonical : Canonical zeroArray := by
    simp [Canonical, limbsToNat_zeroArray, Ipp.Bls12377.baseModulus]
  have hagree := extracted_sqrt_sqrtFq zeroArray (some zeroArray) hcanonical
    extracted_sqrt_zero
  simpa [decode_eq_cast_mul_inv, limbsToNat_zeroArray] using hagree

/-- The conversion branch returns the ordinary field value of the input integer. -/
theorem decode_from_bytes_conversion
    (value output : LimbArray)
    (hvalue : limbsToNat value < Ipp.Bls12377.baseModulus)
    (hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul value
      ark_ip_proofs.s3_07_arkworks_fq_spike.R2 = .ok output) :
    decode output = (limbsToNat value : Ipp.Bls12377.Fq) := by
  rw [decode_extracted_mul value
    ark_ip_proofs.s3_07_arkworks_fq_spike.R2 output hvalue
    limbsToNat_R2_lt hmul]
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv]
  have hR2 :
      (limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.R2 :
          Ipp.Bls12377.Fq) =
        (Ipp.Bls12377.baseMontgomeryRadix ^ 2 : Nat) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 R2_modEq
  rw [hR2]
  push_cast
  have hcancel :
      (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ = 1 :=
    ZMod.coe_mul_inv_eq_one Ipp.Bls12377.baseMontgomeryRadix
      baseMontgomeryRadix_coprime
  calc
    (limbsToNat value : Ipp.Bls12377.Fq) *
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ *
        ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) ^ 2 *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) =
      (limbsToNat value : Ipp.Bls12377.Fq) *
        ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) ^ 2 := by
            ring
    _ = (limbsToNat value : Ipp.Bls12377.Fq) := by rw [hcancel]; ring

/-- GAP-08 bridge once the fixed 48-byte reconstruction equality is supplied. -/
theorem from_bytes_decodeFqCanonical_bridge_of_value
    (bytes : ByteArray) (value output : LimbArray)
    (hparse : ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_limbs bytes =
      .ok value)
    (hbytes : limbsToNat value = bytesValue bytes)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes bytes =
      .ok (some output)) :
    ∃ canonicalValue : Ipp.CanonicalWire.FqValue,
      Ipp.CanonicalWire.decodeFqCanonical (asFqWire bytes) =
        some canonicalValue ∧
      decode output = (canonicalValue.1 : Ipp.Bls12377.Fq) := by
  have hvalue : limbsToNat value < Ipp.Bls12377.baseModulus := by
    by_contra hnot
    have hreject := extracted_from_bytes_rejects_noncanonical bytes value hparse
      (Nat.le_of_not_gt hnot)
    rw [hreject] at hexec
    cases hexec
  let canonicalValue : Ipp.CanonicalWire.FqValue :=
    ⟨bytesValue bytes, by
      rw [Ipp.CanonicalWire.fqModulus, ← hbytes]
      exact hvalue⟩
  have hcanonical :
      Ipp.CanonicalWire.decodeFqCanonical (asFqWire bytes) =
        some canonicalValue := by
    apply (Ipp.CanonicalWire.decodeFqCanonical_eq_some_iff
      (asFqWire bytes) canonicalValue).2
    exact asFqWire_value bytes
  have hcompare : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = false := by
    apply Bool.eq_false_iff.mpr
    intro htrue
    have hge := (geqPrefix_spec value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount (by omega)).1 htrue
    change limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ≤
      limbsToNat value at hge
    rw [modulus_limbsToNat] at hge
    omega
  have hreturn := hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes at hreturn
  rw [hparse] at hreturn
  simp only [Result.bind_ok] at hreturn
  rw [extracted_geq_modulus_spec] at hreturn
  simp only [Result.bind_ok] at hreturn
  rw [hcompare, if_neg (by decide)] at hreturn
  obtain ⟨converted, hmul, hconverted⟩ := bind_eq_ok hreturn
  have heq : converted = output := by
    exact Option.some.inj (Result.ok.inj hconverted)
  subst converted
  refine ⟨canonicalValue, hcanonical, ?_⟩
  change decode output = (bytesValue bytes : Ipp.Bls12377.Fq)
  rw [← hbytes]
  exact decode_from_bytes_conversion value output hvalue hmul

/-- Successful extracted decoding agrees with GAP-01 canonical Fq decoding. -/
theorem from_bytes_decodeFqCanonical_bridge
    (bytes : ByteArray) (output : LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes bytes =
      .ok (some output)) :
    ∃ canonicalValue : Ipp.CanonicalWire.FqValue,
      Ipp.CanonicalWire.decodeFqCanonical (asFqWire bytes) =
        some canonicalValue ∧
      decode output = (canonicalValue.1 : Ipp.Bls12377.Fq) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes at hexec
  obtain ⟨value, hparse, _⟩ := bind_eq_ok hexec
  exact from_bytes_decodeFqCanonical_bridge_of_value bytes value output hparse
    (bytes_to_limbs_value_spec bytes value hparse) hexec

/-- Every successful base-field decode returns a canonical Montgomery value. -/
theorem from_bytes_some_canonical
    (bytes : ByteArray) (output : LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes bytes =
      .ok (some output)) : Canonical output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes at hexec
  obtain ⟨value, hparse, hexec⟩ := bind_eq_ok hexec
  obtain ⟨noncanonical, hcompare, hexec⟩ := bind_eq_ok hexec
  cases noncanonical with
  | true => simp at hexec
  | false =>
      simp only [Bool.false_eq_true, if_false] at hexec
      obtain ⟨converted, hmul, hreturn⟩ := bind_eq_ok hexec
      have hvalue : Canonical value := by
        rw [Canonical]
        by_contra hnot
        have hprefix : geqPrefix value
            ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = false := by
          rw [extracted_geq_modulus_spec] at hcompare
          exact Result.ok.inj hcompare
        have htrue : geqPrefix value
            ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = true := by
          apply (geqPrefix_spec value
            ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount (by omega)).2
          change limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ≤
            limbsToNat value
          rw [modulus_limbsToNat]
          exact Nat.le_of_not_gt hnot
        rw [hprefix] at htrue
        contradiction
      have hcanonical :=
        (extracted_mul_spec value
          ark_ip_proofs.s3_07_arkworks_fq_spike.R2 converted hvalue
          limbsToNat_R2_lt hmul).1
      have : converted = output := Option.some.inj (Result.ok.inj hreturn)
      simpa [this] using hcanonical

/-- An extracted `none` is exactly a noncanonical GAP-01 base-field lane. -/
theorem from_bytes_none_rejects_model
    (bytes : ByteArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes bytes =
      .ok none) :
    Ipp.CanonicalWire.decodeFqCanonical (asFqWire bytes) = none := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes at hexec
  obtain ⟨value, hparse, hexec⟩ := bind_eq_ok hexec
  obtain ⟨noncanonical, hcompare, hexec⟩ := bind_eq_ok hexec
  cases noncanonical with
  | false =>
      simp only [Bool.false_eq_true, if_false] at hexec
      obtain ⟨converted, hmul, hreturn⟩ := bind_eq_ok hexec
      simp at hreturn
  | true =>
      have hprefix : geqPrefix value
          ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = true := by
        rw [extracted_geq_modulus_spec] at hcompare
        exact Result.ok.inj hcompare
      have hge := (geqPrefix_spec value
        ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount (by omega)).1
          hprefix
      apply Ipp.CanonicalWire.decodeFqCanonical_rejects_noncanonical
      rw [asFqWire_value]
      change Ipp.CanonicalWire.fqModulus ≤
        Ipp.CanonicalWire.decodeLE bytes.val
      rw [← bytes_to_limbs_value_spec bytes value hparse]
      change limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ≤
        limbsToNat value at hge
      simpa [Ipp.CanonicalWire.fqModulus, modulus_limbsToNat,
        Ipp.Bls12377.baseModulus] using hge

end Ipp.Extracted.ArkworksFqSqrtBytes

#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.decode_extracted_sqrt
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.extracted_from_bytes_rejects_noncanonical
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.decode_from_bytes_conversion
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.from_bytes_decodeFqCanonical_bridge_of_value
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.bytes_to_limbs_value_spec
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.from_bytes_decodeFqCanonical_bridge
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.extracted_sqrt_sqrtFq
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.executedSqrtFq_zero
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.limbs_to_bytes_value_spec
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.to_bytes_value_spec
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.from_bytes_some_canonical
#print axioms Ipp.Extracted.ArkworksFqSqrtBytes.from_bytes_none_rejects_model
