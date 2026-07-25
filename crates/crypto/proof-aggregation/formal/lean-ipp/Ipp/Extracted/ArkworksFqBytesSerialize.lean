import Ipp.Extracted.ArkworksFqBytesParse
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

private theorem limbArray_eq_six (value : LimbArray) :
    value = MacCampaign.Array.make 6#usize [
      limbWord value ⟨0, by simp [limbCount]⟩,
      limbWord value ⟨1, by simp [limbCount]⟩,
      limbWord value ⟨2, by simp [limbCount]⟩,
      limbWord value ⟨3, by simp [limbCount]⟩,
      limbWord value ⟨4, by simp [limbCount]⟩,
      limbWord value ⟨5, by simp [limbCount]⟩] := by
  apply MacCampaign.Array.ext
  apply List.ext_get
  · simp [value.hlen, MacCampaign.Array.make]
  · intro n hnValue hnMake
    have hn : n < 6 := by simpa [value.hlen] using hnValue
    interval_cases n <;> rfl

private def wordBytes (word : MacCampaign.U64) :
    MacCampaign.Array UInt8 (Usize.ofNat 8) :=
  MacCampaign.Array.make 8#usize [
    UInt8.ofNat word.val,
    UInt8.ofNat (word.val / 2 ^ 8),
    UInt8.ofNat (word.val / 2 ^ 16),
    UInt8.ofNat (word.val / 2 ^ 24),
    UInt8.ofNat (word.val / 2 ^ 32),
    UInt8.ofNat (word.val / 2 ^ 40),
    UInt8.ofNat (word.val / 2 ^ 48),
    UInt8.ofNat (word.val / 2 ^ 56)]

private theorem decodeLE_wordBytes (word : MacCampaign.U64) :
    Ipp.CanonicalWire.decodeLE (wordBytes word).val = word.val := by
  have hword := word.isLt
  change word.val < 2 ^ 64 at hword
  simp [wordBytes, MacCampaign.Array.make, Ipp.CanonicalWire.decodeLE]
  norm_num [MacCampaign.U64.ofNat, MacCampaign.u64Base] at hword ⊢
  omega

private def limbBytes (x0 x1 x2 x3 x4 x5 : MacCampaign.U64) : ByteArray :=
  ⟨(wordBytes x0).val ++ (wordBytes x1).val ++ (wordBytes x2).val ++
    (wordBytes x3).val ++ (wordBytes x4).val ++ (wordBytes x5).val,
    by simp [wordBytes, MacCampaign.Array.make]⟩

private theorem word_to_bytes_eq (word : MacCampaign.U64) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.word_to_bytes word =
      .ok (wordBytes word) := by
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.word_to_bytes,
    shr64_i32_ofNat, Aeneas.lift, MacCampaign.castU8, wordBytes,
    u64_ofNat_div_val]

private theorem limbs_to_bytes_make_eq
    (x0 x1 x2 x3 x4 x5 : MacCampaign.U64) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.limbs_to_bytes
      (MacCampaign.Array.make 6#usize [x0, x1, x2, x3, x4, x5]) =
        .ok (limbBytes x0 x1 x2 x3 x4 x5) := by
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.limbs_to_bytes,
    word_to_bytes_eq, MacCampaign.Array.index_usize, MacCampaign.Array.make,
    wordBytes, limbBytes]

/-- Serializing six words preserves their ordinary little-endian integer. -/
theorem limbs_to_bytes_value_spec
    (value : LimbArray) (bytes : ByteArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.limbs_to_bytes value =
      .ok bytes) :
    bytesValue bytes = limbsToNat value := by
  rw [limbArray_eq_six value, limbs_to_bytes_make_eq] at hexec
  have hbytes : bytes = limbBytes
      (limbWord value ⟨0, by simp [limbCount]⟩)
      (limbWord value ⟨1, by simp [limbCount]⟩)
      (limbWord value ⟨2, by simp [limbCount]⟩)
      (limbWord value ⟨3, by simp [limbCount]⟩)
      (limbWord value ⟨4, by simp [limbCount]⟩)
      (limbWord value ⟨5, by simp [limbCount]⟩) :=
    (Result.ok.inj hexec).symm
  subst bytes
  rw [limbsToNat_six]
  simp only [bytesValue, limbBytes]
  rw [decodeLE_append, decodeLE_append, decodeLE_append, decodeLE_append,
    decodeLE_append]
  rw [decodeLE_wordBytes, decodeLE_wordBytes, decodeLE_wordBytes,
    decodeLE_wordBytes, decodeLE_wordBytes, decodeLE_wordBytes]
  simp [wordBytes, MacCampaign.Array.make, limb, wordBase]
  ring

private theorem byteChunks_eq (bytes : ByteArray) :
    List.ofFn (byteFn bytes) =
      (byteChunk bytes 0).val ++ (byteChunk bytes 8).val ++
      (byteChunk bytes 16).val ++ (byteChunk bytes 24).val ++
      (byteChunk bytes 32).val ++ (byteChunk bytes 40).val := by
  apply List.ext_get
  · simp [byteChunk, byteChunkList]
  · intro n hnLeft hnRight
    have hn : n < 48 := by simpa using hnLeft
    interval_cases n <;> rfl

private theorem six_word_values_spec (bytes : ByteArray)
    (w0 w1 w2 w3 w4 w5 : MacCampaign.U64)
    (h0 : w0.val = Ipp.CanonicalWire.decodeLE (byteChunk bytes 0).val)
    (h1 : w1.val = Ipp.CanonicalWire.decodeLE (byteChunk bytes 8).val)
    (h2 : w2.val = Ipp.CanonicalWire.decodeLE (byteChunk bytes 16).val)
    (h3 : w3.val = Ipp.CanonicalWire.decodeLE (byteChunk bytes 24).val)
    (h4 : w4.val = Ipp.CanonicalWire.decodeLE (byteChunk bytes 32).val)
    (h5 : w5.val = Ipp.CanonicalWire.decodeLE (byteChunk bytes 40).val) :
    limbsToNat (MacCampaign.Array.make 6#usize [w0, w1, w2, w3, w4, w5]) =
      Ipp.CanonicalWire.decodeLE (List.ofFn (byteFn bytes)) := by
  rw [byteChunks_eq, decodeLE_append, decodeLE_append, decodeLE_append,
    decodeLE_append, decodeLE_append]
  rw [limbsToNat_six]
  simp only [limb, limbWord, limbCount, MacCampaign.Array.make,
    List.get_eq_getElem, List.getElem_cons_zero, List.getElem_cons_succ]
  rw [h0, h1, h2, h3, h4, h5]
  simp [byteChunk, byteChunkList, wordBase]
  ring

/-- Reconstructing six little-endian words preserves the 48-byte value. -/
theorem bytes_to_limbs_value_spec
    (bytes : ByteArray) (value : LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_limbs bytes =
      .ok value) :
    limbsToNat value = Ipp.CanonicalWire.decodeLE bytes.val := by
  rw [bytes_to_limbs_eq] at hexec
  obtain ⟨w0, hw0, hrest⟩ := bind_eq_ok hexec
  obtain ⟨w1, hw1, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w2, hw2, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w3, hw3, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w4, hw4, hrest⟩ := bind_eq_ok hrest
  obtain ⟨w5, hw5, hreturn⟩ := bind_eq_ok hrest
  simp only [Result.ok.injEq] at hreturn
  subst value
  rw [byteArray_eq_ofFn bytes]
  apply six_word_values_spec bytes w0 w1 w2 w3 w4 w5
  · apply bytes_to_word_spec
    exact hw0
  · apply bytes_to_word_spec
    exact hw1
  · apply bytes_to_word_spec
    exact hw2
  · apply bytes_to_word_spec
    exact hw3
  · apply bytes_to_word_spec
    exact hw4
  · apply bytes_to_word_spec
    exact hw5

/-- The extracted reader rejects whenever its reconstructed integer is not below `q`. -/
theorem extracted_from_bytes_rejects_noncanonical
    (bytes : ByteArray)
    (value : LimbArray)
    (hparse : ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_limbs bytes =
      .ok value)
    (hge : Ipp.Bls12377.baseModulus ≤ limbsToNat value) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes bytes = .ok none := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes
  rw [hparse]
  simp only [Result.bind_ok]
  rw [extracted_geq_modulus_spec]
  simp only [Result.bind_ok]
  have hcompare : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = true := by
    apply (geqPrefix_spec value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount (by omega)).2
    change limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ≤
      limbsToNat value
    rw [modulus_limbsToNat]
    exact hge
  rw [hcompare, if_pos rfl]

/-- A canonical reconstructed integer takes the reader's conversion branch. -/
theorem extracted_from_bytes_accepts_canonical
    (bytes : ByteArray)
    (value output : LimbArray)
    (hparse : ark_ip_proofs.s3_07_arkworks_fq_spike.bytes_to_limbs bytes =
      .ok value)
    (hvalue : limbsToNat value < Ipp.Bls12377.baseModulus)
    (hmul : ark_ip_proofs.s3_07_arkworks_fq_spike.mul value
      ark_ip_proofs.s3_07_arkworks_fq_spike.R2 = .ok output) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes bytes =
      .ok (some output) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.from_bytes
  rw [hparse]
  simp only [Result.bind_ok]
  rw [extracted_geq_modulus_spec]
  simp only [Result.bind_ok]
  have hcompare : geqPrefix value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount = false := by
    apply Bool.eq_false_iff.mpr
    intro htrue
    have := (geqPrefix_spec value
      ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS limbCount (by omega)).1 htrue
    change limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ≤
      limbsToNat value at this
    rw [modulus_limbsToNat] at this
    omega
  rw [hcompare, if_neg (by decide), hmul]
  simp only [Result.bind_ok]

theorem baseMontgomeryRadix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix
      Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

private abbrev oneInteger : LimbArray :=
  MacCampaign.Array.make 6#usize [
    MacCampaign.U64.ofNat 1, MacCampaign.U64.ofNat 0,
    MacCampaign.U64.ofNat 0, MacCampaign.U64.ofNat 0,
    MacCampaign.U64.ofNat 0, MacCampaign.U64.ofNat 0]

private theorem into_bigint_value (a output : LimbArray)
    (ha : Canonical a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.mul a oneInteger =
      .ok output) :
    limbsToNat output = (decode a).val ∧ Canonical output := by
  have hone : limbsToNat oneInteger = 1 := by
    rw [limbsToNat_six]
    norm_num [oneInteger, MacCampaign.Array.make, limb, limbWord,
      MacCampaign.U64.ofNat, MacCampaign.u64Base, wordBase]
  have honeCanonical : Canonical oneInteger := by
    rw [Canonical, hone]
    norm_num [Ipp.Bls12377.baseModulus]
  have hspec := extracted_mul_spec a oneInteger output ha honeCanonical hexec
  refine ⟨?_, hspec.1⟩
  have hmod := hspec.2
  rw [hone, Nat.mul_one] at hmod
  have hcast : ((limbsToNat output * wordBase ^ limbCount : Nat) :
      Ipp.Bls12377.Fq) = (limbsToNat a : Ipp.Bls12377.Fq) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
  rw [Nat.cast_mul, wordRadix_eq_baseMontgomeryRadix] at hcast
  have hcancel :
      (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ = 1 :=
    ZMod.coe_mul_inv_eq_one Ipp.Bls12377.baseMontgomeryRadix
      baseMontgomeryRadix_coprime
  have hvalue : (limbsToNat output : Ipp.Bls12377.Fq) = decode a := by
    rw [decode_eq_cast_mul_inv]
    calc
      (limbsToNat output : Ipp.Bls12377.Fq) =
          (limbsToNat output : Ipp.Bls12377.Fq) *
            ((Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) *
              (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹) := by
                rw [hcancel, mul_one]
      _ = ((limbsToNat output : Ipp.Bls12377.Fq) *
            (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ := by ring
      _ = (limbsToNat a : Ipp.Bls12377.Fq) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ := by rw [hcast]
  rw [← hvalue, ZMod.val_natCast_of_lt hspec.1]

/-- Canonical serialization emits the ordinary representative of the field value. -/
theorem to_bytes_value_spec (a : LimbArray) (bytes : ByteArray)
    (ha : Canonical a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.to_bytes a = .ok bytes) :
    bytesValue bytes = (decode a).val := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.to_bytes at hexec
  obtain ⟨value, hmul, hbytes⟩ := bind_eq_ok hexec
  rw [limbs_to_bytes_value_spec value bytes hbytes]
  exact (into_bigint_value a value ha hmul).1


end Ipp.Extracted.ArkworksFqSqrtBytes
