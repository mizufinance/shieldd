import Ipp.Extracted.ArkworksScalarMulNormalizeGenerated
import Ipp.Extracted.ArkworksG2

/-!
S3-29: executed Jacobian-to-affine normalization preserves the represented
Mathlib G1/G2 point. Batch normalization is proved in the companion module.
-/

namespace Ipp.Extracted.ArkworksScalarMulNormalizeCommon

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul (decode limbsToNat)
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG2

set_option maxHeartbeats 1000000

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

theorem mul_inv_square_eq_div {F : Type} [Field F]
    (x z : F) : x * (z⁻¹ * z⁻¹) = x / z ^ 2 := by
  rw [div_eq_mul_inv, ← inv_pow]
  ring

theorem mul_inv_cube_eq_div {F : Type} [Field F]
    (y z : F) : (y * (z⁻¹ * z⁻¹)) * z⁻¹ = y / z ^ 3 := by
  rw [div_eq_mul_inv, ← inv_pow]
  ring

/-- An explicit left inverse gives the Jacobian inverse-square/cube formulas. -/
theorem inverse_scaled_coords {F : Type} [Field F] (x y z zinv : F)
    (hinv : zinv * z = 1) :
    x * (zinv * zinv) = x / z ^ 2 ∧
      (y * (zinv * zinv)) * zinv = y / z ^ 3 := by
  have hz : z ≠ 0 := by
    intro hzero
    rw [hzero, mul_zero] at hinv
    exact zero_ne_one hinv
  have hzinv : zinv = z⁻¹ := by
    calc
      zinv = zinv * (z * z⁻¹) := by rw [mul_inv_cancel₀ hz, mul_one]
      _ = (zinv * z) * z⁻¹ := (mul_assoc _ _ _).symm
      _ = z⁻¹ := by rw [hinv, one_mul]
  rw [hzinv]
  exact ⟨mul_inv_square_eq_div _ _, mul_inv_cube_eq_div _ _⟩

theorem fq_zero_canonical :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO <
      Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO,
    Ipp.Extracted.ArkworksFqMul.limbsToNat_six]
  norm_num [Ipp.Extracted.ArkworksFqMul.limb,
    Ipp.Extracted.ArkworksFqMul.limbWord, MacCampaign.Array.replicate,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, Ipp.Bls12377.baseModulus]

theorem fq_one_canonical :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE <
      Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE]
  exact Ipp.Extracted.ArkworksFqSqrtBytes.canonical_ONE

theorem baseMontgomeryRadix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix
      Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

theorem decode_fq_zero :
    decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO = 0 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO,
    Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv]
  change (0 : Ipp.Bls12377.Fq) *
    (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ = 0
  ring

set_option exponentiation.threshold 1000 in
theorem decode_fq_one :
    decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = 1 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE,
    Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv]
  have hmod :
      (limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.ONE :
          Ipp.Bls12377.Fq) =
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) := by
    apply (ZMod.natCast_eq_natCast_iff _ _ _).2
    norm_num [Nat.ModEq, Ipp.Extracted.ArkworksFqMul.limbsToNat,
      Ipp.Extracted.ArkworksFqMul.prefixToNat,
      Ipp.Extracted.ArkworksFqMul.limbCount,
      Ipp.Extracted.ArkworksFqMul.limb,
      Ipp.Extracted.ArkworksFqMul.limbWord,
      ark_ip_proofs.s3_07_arkworks_fq_spike.ONE, MacCampaign.Array.make,
      MacCampaign.U64.ofNat, MacCampaign.u64Base,
      Ipp.Extracted.ArkworksFqMul.wordBase, Ipp.Bls12377.baseModulus,
      Ipp.Bls12377.baseMontgomeryRadix]
  rw [hmod]
  exact ZMod.coe_mul_inv_eq_one _ baseMontgomeryRadix_coprime

/-- A successful base-field inversion returns `none` only for zero limbs. -/
theorem inv_none_imp_zero_val
    (x : ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont)
    (h : ark_ip_proofs.s3_07_arkworks_fq_spike.inv x = .ok none) :
    x.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.inv at h
  simp only [ark_ip_proofs.core.array.equality.PartialEqArray.eq,
    Result.bind_ok] at h
  by_cases hz : x.val = (MacCampaign.Array.replicate 6#usize
      (MacCampaign.U64.ofNat 0)).val
  · simpa [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO] using hz
  · exfalso
    rw [if_neg (by simp [hz])] at h
    cases hloop : ark_ip_proofs.s3_07_arkworks_fq_spike.inv_loop0
        (MacCampaign.Array.make 6#usize
          [MacCampaign.U64.ofNat 1, MacCampaign.U64.ofNat 0,
           MacCampaign.U64.ofNat 0, MacCampaign.U64.ofNat 0,
           MacCampaign.U64.ofNat 0, MacCampaign.U64.ofNat 0])
        x ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
        ark_ip_proofs.s3_07_arkworks_fq_spike.R2
        (MacCampaign.Array.replicate 6#usize (MacCampaign.U64.ofNat 0)) with
    | ok val =>
        rw [hloop] at h
        obtain ⟨u, b, c⟩ := val
        simp only [Result.bind_ok,
          ark_ip_proofs.core.array.equality.PartialEqArray.eq] at h
        split at h <;> simp at h
    | fail e => rw [hloop] at h; simp at h
    | div => rw [hloop] at h; simp at h

theorem fq2_zero_canonical :
    Canonical2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO := by
  simp [Canonical2, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO,
    fq_zero_canonical]

theorem fq2_one_canonical :
    Canonical2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE := by
  simp [Canonical2, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE,
    fq_zero_canonical, fq_one_canonical]

theorem decode_fq2_zero :
    decodeFq2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO = 0 := by
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO,
      decode_fq_zero]

theorem decode_fq2_one :
    decodeFq2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE = 1 := by
  apply QuadraticAlgebra.ext
  · change decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE =
      (1 : Ipp.Bls12377.Fq)
    exact decode_fq_one
  · change decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO =
      (0 : Ipp.Bls12377.Fq)
    exact decode_fq_zero

theorem fq2_eq_zero
    (a : ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
      a ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO =
      .ok (Ipp.Extracted.ArkworksG2.isZeroFq2Mont a) := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_eq
    Ipp.Extracted.ArkworksG2.isZeroFq2Mont
  by_cases h : a.c0.val =
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val <;>
    simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO,
      ark_ip_proofs.core.array.equality.PartialEqArray.eq, h]

theorem fq2_eq_components
    (a b : ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
      a b = .ok (decide (a.c0.val = b.c0.val ∧ a.c1.val = b.c1.val)) := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_eq
  by_cases h0 : a.c0.val = b.c0.val <;>
    by_cases h1 : a.c1.val = b.c1.val <;>
      simp [ark_ip_proofs.core.array.equality.PartialEqArray.eq, h0, h1]

end Ipp.Extracted.ArkworksScalarMulNormalizeCommon
