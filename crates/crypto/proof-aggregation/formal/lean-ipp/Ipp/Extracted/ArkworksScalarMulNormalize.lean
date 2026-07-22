import Ipp.Extracted.ArkworksScalarMulNormalizeGenerated
import Ipp.Extracted.ArkworksScalarMulG1Base
import Ipp.Extracted.ArkworksScalarMulG2Base

/-!
S3-29: executed Jacobian-to-affine normalization preserves the represented
Mathlib G1/G2 point. Batch normalization is proved in the companion module.
-/

namespace Ipp.Extracted.ArkworksScalarMulNormalize

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul (decode limbsToNat)
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMul

set_option maxHeartbeats 1000000

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

local instance : Ipp.Bls12377.g2Curve.IsElliptic :=
  Ipp.Bls12377.g2_isElliptic

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

private theorem mul_inv_square_eq_div {F : Type} [Field F]
    (x z : F) : x * (z⁻¹ * z⁻¹) = x / z ^ 2 := by
  rw [div_eq_mul_inv, ← inv_pow]
  ring

private theorem mul_inv_cube_eq_div {F : Type} [Field F]
    (y z : F) : (y * (z⁻¹ * z⁻¹)) * z⁻¹ = y / z ^ 3 := by
  rw [div_eq_mul_inv, ← inv_pow]
  ring

private theorem fq_zero_canonical :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO <
      Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO,
    Ipp.Extracted.ArkworksFqMul.limbsToNat_six]
  norm_num [Ipp.Extracted.ArkworksFqMul.limb,
    Ipp.Extracted.ArkworksFqMul.limbWord, MacCampaign.Array.replicate,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, Ipp.Bls12377.baseModulus]

private theorem fq_one_canonical :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE <
      Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE]
  exact Ipp.Extracted.ArkworksFqSqrtBytes.canonical_ONE

private theorem baseMontgomeryRadix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix
      Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

private theorem decode_fq_zero :
    decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO = 0 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO,
    Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv]
  change (0 : Ipp.Bls12377.Fq) *
    (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ = 0
  ring

set_option exponentiation.threshold 1000 in
private theorem decode_fq_one :
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

private theorem fq2_zero_canonical :
    Canonical2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO := by
  simp [Canonical2, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO,
    fq_zero_canonical]

private theorem fq2_one_canonical :
    Canonical2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE := by
  simp [Canonical2, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE,
    fq_zero_canonical, fq_one_canonical]

private theorem decode_fq2_zero :
    decodeFq2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO = 0 := by
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO,
      decode_fq_zero]

private theorem decode_fq2_one :
    decodeFq2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE = 1 := by
  apply QuadraticAlgebra.ext
  · change decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE =
      (1 : Ipp.Bls12377.Fq)
    exact decode_fq_one
  · change decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO =
      (0 : Ipp.Bls12377.Fq)
    exact decode_fq_zero

private theorem inv_none_imp_zero_val
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

private theorem fq2_eq_zero
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

private theorem fq2_eq_components
    (a b : ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
      a b = .ok (decide (a.c0.val = b.c0.val ∧ a.c1.val = b.c1.val)) := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_eq
  by_cases h0 : a.c0.val = b.c0.val <;>
    by_cases h1 : a.c1.val = b.c1.val <;>
      simp [ark_ip_proofs.core.array.equality.PartialEqArray.eq, h0, h1]

/-- Executed G1 Jacobian normalization preserves the represented Mathlib point. -/
theorem valid_g1_into_affine (proj : G1ProjLimbTriple)
    (point : G1AffinePoint) (out : G1AffineLimbPair)
    (hproj : ValidG1LoopState proj point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_into_affine proj =
      .ok out) :
    ValidG1AffineLoopBase out point := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_into_affine at hexec
  simp only [
    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    ark_ip_proofs.core.array.equality.PartialEqArray.eq, Result.bind_ok] at hexec
  by_cases hz : proj.z.val =
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val
  · rw [if_pos (by simpa using hz)] at hexec
    simp only [Result.ok.injEq] at hexec
    subst out
    refine ⟨fq_zero_canonical, fq_one_canonical, ?_⟩
    simpa [decodeG1, hz, RepresentsDecodedG1] using hproj.represents
  · by_cases hone : proj.z.val =
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE.val
    · rw [if_neg (by simpa using hz), if_pos (by simpa using hone)] at hexec
      simp only [Result.ok.injEq] at hexec
      subst out
      refine ⟨hproj.canonical.1, hproj.canonical.2.1, ?_⟩
      have hzOne : decode proj.z = 1 :=
        (Ipp.Extracted.ArkworksG1.canonical_fq_val_eq_iff_decode_eq
          proj.z ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE
          hproj.canonical.2.2 fq_one_canonical).1 hone |>.trans decode_fq_one
      simpa [decodeG1, hz, hzOne] using hproj.represents
    · rw [if_neg (by simpa using hz), if_neg (by simpa using hone)] at hexec
      cases hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv proj.z with
      | fail e => rw [hinv] at hexec; simp at hexec
      | div => rw [hinv] at hexec; simp at hexec
      | ok inverse =>
          rw [hinv] at hexec
          cases inverse with
          | none =>
              exact (hz (inv_none_imp_zero_val proj.z hinv)).elim
          | some zinv =>
              change (do
                let z2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.square zinv
                let x ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.x z2
                let yz2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul proj.y z2
                let y ← ark_ip_proofs.s3_07_arkworks_fq_spike.mul yz2 zinv
                ok ({ x := x, y := y, infinity := false } : G1AffineLimbPair)) =
                  .ok out at hexec
              obtain ⟨z2, hz2, hexec⟩ := bind_eq_ok hexec
              obtain ⟨x, hx, hexec⟩ := bind_eq_ok hexec
              obtain ⟨yz2, hyz2, hexec⟩ := bind_eq_ok hexec
              obtain ⟨y, hy, hret⟩ := bind_eq_ok hexec
              simp only [Result.ok.injEq] at hret
              subst out
              have hzNe : proj.z ≠ Ipp.Extracted.ArkworksFqInv.zeroArray := by
                intro heq
                apply hz
                rw [heq]
                simp [Ipp.Extracted.ArkworksFqInv.zeroArray,
                  ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]
              have hinvSpec := Ipp.Extracted.ArkworksFqInv.extracted_inv_spec
                proj.z zinv hproj.canonical.2.2 hzNe hinv
              have hzinvCanonical := hinvSpec.coefficient_lt
              have hzinv := Ipp.Extracted.ArkworksFqInv.decode_extracted_inv
                proj.z zinv hproj.canonical.2.2 hzNe hinv
              have hz2Spec := Ipp.Extracted.ArkworksFqSquare.extracted_square_spec
                zinv z2 hzinvCanonical hz2
              have hxSpec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
                proj.x z2 x hproj.canonical.1 hz2Spec.1 hx
              have hyz2Spec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
                proj.y z2 yz2 hproj.canonical.2.1 hz2Spec.1 hyz2
              have hySpec := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
                yz2 zinv y hyz2Spec.1 hzinvCanonical hy
              refine ⟨hxSpec.1, hySpec.1, ?_⟩
              have dz2 := Ipp.Extracted.ArkworksFqSquare.decode_extracted_square
                zinv z2 hzinvCanonical hz2
              have dx := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
                proj.x z2 x hproj.canonical.1 hz2Spec.1 hx
              have dyz2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
                proj.y z2 yz2 hproj.canonical.2.1 hz2Spec.1 hyz2
              have dy := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
                yz2 zinv y hyz2Spec.1 hzinvCanonical hy
              have hzDecode : decode proj.z ≠ 0 := by
                intro hzero
                rw [hzero, mul_zero] at hzinv
                exact zero_ne_one hzinv
              have hzinvDecode : decode zinv = (decode proj.z)⁻¹ := by
                calc
                  decode zinv = decode zinv *
                      (decode proj.z * (decode proj.z)⁻¹) := by
                    rw [mul_inv_cancel₀ hzDecode, mul_one]
                  _ = (decode zinv * decode proj.z) *
                      (decode proj.z)⁻¹ := (mul_assoc _ _ _).symm
                  _ = (decode proj.z)⁻¹ := by rw [hzinv, one_mul]
              have hdecode :
                  some (decode x, decode y) = decodeG1 proj := by
                simp only [decodeG1, hz, if_false, Option.some.injEq,
                  Prod.mk.injEq]
                constructor
                · rw [dx, dz2, hzinvDecode]
                  exact mul_inv_square_eq_div _ _
                · rw [dy, dyz2, dz2, hzinvDecode]
                  exact mul_inv_cube_eq_div _ _
              rw [hdecode]
              exact hproj.represents

#print axioms valid_g1_into_affine

end Ipp.Extracted.ArkworksScalarMulNormalize

