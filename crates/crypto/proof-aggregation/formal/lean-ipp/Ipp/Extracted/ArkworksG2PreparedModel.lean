import Ipp.Extracted.ArkworksG2Mathlib
import Ipp.Extracted.ArkworksG2PreparedGenerated
import Ipp.Bls12377Pairing
import Mathlib.Tactic

/-! S3-33 homogeneous accumulator and line-coefficient model boundary. -/

namespace Ipp.Extracted.ArkworksG2PreparedModel

open Aeneas Aeneas.Std
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

abbrev G2ProjLimbTriple := ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont
abbrev EllCoeffMont := Fq2LimbPair × Fq2LimbPair × Fq2LimbPair

/-- Decode the pairing accumulator as homogeneous, rather than Jacobian, coordinates. -/
def decodeHomogeneous (r : G2ProjLimbTriple) : G2HomProjective :=
  ⟨decodeFq2 r.x, decodeFq2 r.y, decodeFq2 r.z⟩

/-- The affine class represented by homogeneous coordinates `(X : Y : Z)`. -/
noncomputable def decodeG2Homogeneous (r : G2ProjLimbTriple) :
    Option (Fq2 × Fq2) :=
  let d := decodeHomogeneous r
  if d.z = 0 then none else some (d.x / d.z, d.y / d.z)

/-- Decode the emitted D-twist coefficient triple. -/
def decodeEllCoeff (coeff : EllCoeffMont) : EllCoeff :=
  ⟨decodeFq2 coeff.1, decodeFq2 coeff.2.1, decodeFq2 coeff.2.2⟩

/-- Existing protocol model specialized to the decoded homogeneous accumulator. -/
def doublingLineModel (r : G2ProjLimbTriple) : G2HomProjective × EllCoeff :=
  doubleLine (decodeHomogeneous r)

/-- Affine class of a model-level homogeneous accumulator. -/
noncomputable def decodeModelHomogeneous (r : G2HomProjective) :
    Option (Fq2 × Fq2) :=
  if r.z = 0 then none else some (r.x / r.z, r.y / r.z)

@[simp] theorem decodeG2Homogeneous_eq_model (r : G2ProjLimbTriple) :
    decodeG2Homogeneous r = decodeModelHomogeneous (decodeHomogeneous r) := by
  rfl

@[simp] theorem decodeHomogeneous_coordinates (r : G2ProjLimbTriple) :
    (decodeHomogeneous r).x = decodeFq2 r.x ∧
      (decodeHomogeneous r).y = decodeFq2 r.y ∧
      (decodeHomogeneous r).z = decodeFq2 r.z := by
  exact ⟨rfl, rfl, rfl⟩

theorem ate_twoInv_add_self : twoInv + twoInv = 1 := by
  have hnat : 2 * ((baseModulus + 1) / 2) = baseModulus + 1 := by
    norm_num [baseModulus]
  change (((baseModulus + 1) / 2 : Nat) : Fq) +
      (((baseModulus + 1) / 2 : Nat) : Fq) = 1
  calc
    (((baseModulus + 1) / 2 : Nat) : Fq) +
        (((baseModulus + 1) / 2 : Nat) : Fq) =
      ((2 * ((baseModulus + 1) / 2) : Nat) : Fq) := by push_cast; ring
    _ = ((baseModulus + 1 : Nat) : Fq) := congrArg (fun n : Nat => (n : Fq)) hnat
    _ = 1 := by simp

theorem ate_twoInv_ne_zero : twoInv ≠ 0 := by
  intro h
  have hadd := ate_twoInv_add_self
  rw [h, zero_add] at hadd
  exact zero_ne_one hadd

theorem fq2MulFq_twoInv_add_self (a : Fq2) :
    fq2MulFq a twoInv + fq2MulFq a twoInv = a := by
  apply QuadraticAlgebra.ext <;>
    simp [fq2MulFq, fq2OfFq, ← mul_add, ate_twoInv_add_self]

private theorem half_eq_inv_two {F : Type} [Field F] (half : F)
    (hhalf : half + half = 1) : half = (2 : F)⁻¹ := by
  have htwo : (2 : F) * half = 1 := by simpa [two_mul] using hhalf
  have h2 : (2 : F) ≠ 0 := by
    intro h
    rw [h, zero_mul] at htwo
    exact zero_ne_one htwo
  apply mul_left_cancel₀ h2
  rw [htwo, mul_inv_cancel₀ h2]

private theorem homogeneous_double_decode_core {F : Type} [Field F]
    (x y z curveB half : F) (hhalf : half + half = 1)
    (hz : z ≠ 0) (hy : y ≠ 0)
    (hcurve : (y / z) ^ 2 = (x / z) ^ 3 + curveB) :
    let a := x * y * half
    let b := y ^ 2
    let c := z ^ 2
    let e := curveB * (c + c + c)
    let f := e + e + e
    let g := (b + f) * half
    let h := (y + z) ^ 2 - (b + c)
    let e2 := e ^ 2
    let outX := a * (b - f)
    let outY := g ^ 2 - (e2 + e2 + e2)
    let outZ := b * h
    (outX / outZ, outY / outZ) = tangentDoubleG2 (x / z, y / z) := by
  rw [half_eq_inv_two half hhalf]
  dsimp [tangentDoubleG2]
  have h2 : (2 : F) ≠ 0 := by
    intro h
    have hinv : (2 : F)⁻¹ = 0 := by rw [h, inv_zero]
    have hhalf' := hhalf
    rw [half_eq_inv_two half hhalf, hinv, zero_add] at hhalf'
    exact zero_ne_one hhalf'
  have houtZ : y ^ 2 * ((y + z) ^ 2 - (y ^ 2 + z ^ 2)) ≠ 0 := by
    have hh : (y + z) ^ 2 - (y ^ 2 + z ^ 2) = 2 * y * z := by ring
    rw [hh]
    exact mul_ne_zero (pow_ne_zero _ hy)
      (mul_ne_zero (mul_ne_zero h2 hy) hz)
  apply Prod.ext
  · dsimp
    field_simp [hz, hy, h2, houtZ] at hcurve ⊢
    ring_nf at hcurve ⊢
    simp [h2] at ⊢
    field_simp [hy, hz, h2]
    linear_combination 18 * x * hcurve
  · dsimp
    field_simp [hz, hy, h2, houtZ] at hcurve ⊢
    ring_nf at hcurve ⊢
    simp [h2] at ⊢
    field_simp [hy, hz, h2]
    linear_combination
      (18 * y ^ 2 * z - 54 * x ^ 3 + 54 * z ^ 3 * curveB) * hcurve

private theorem tangent_on_curve_core {F : Type} [Field F]
    (x y curveB : F) (h2 : (2 : F) ≠ 0) (hy : y ≠ 0)
    (hcurve : y ^ 2 = x ^ 3 + curveB) :
    let doubled := tangentDoubleG2 (x, y)
    doubled.2 ^ 2 = doubled.1 ^ 3 + curveB := by
  dsimp [tangentDoubleG2]
  field_simp [hy, h2] at hcurve ⊢
  ring_nf at hcurve ⊢
  field_simp [hy, h2]
  linear_combination 64 * y ^ 6 * hcurve

private theorem fq2_two_ne_zero : (2 : Fq2) ≠ 0 := by
  intro h
  have hre : (2 : Fq) = 0 := by
    simpa using congrArg QuadraticAlgebra.re h
  have hnat := (fq_natCast_eq_zero_iff 2).mp hre
  norm_num [baseModulus] at hnat

theorem doubleLine_decode_generic (r : G2HomProjective)
    (hz : r.z ≠ 0) (hy : r.y ≠ 0)
    (hcurve : (r.y / r.z) ^ 2 = (r.x / r.z) ^ 3 + g2TwistB) :
    decodeModelHomogeneous (doubleLine r).1 =
      some (tangentDoubleG2 (r.x / r.z, r.y / r.z)) := by
  have hhalf : fq2OfFq twoInv + fq2OfFq twoInv = (1 : Fq2) := by
    apply QuadraticAlgebra.ext <;>
      simp [fq2OfFq, ate_twoInv_add_self, QuadraticAlgebra.re_one,
        QuadraticAlgebra.im_one]
  have hzout : (doubleLine r).1.z ≠ 0 := by
    simp only [doubleLine]
    dsimp
    have hh : (r.y + r.z) ^ 2 - (r.y ^ 2 + r.z ^ 2) =
        2 * r.y * r.z := by ring
    rw [hh]
    exact mul_ne_zero (pow_ne_zero _ hy)
      (mul_ne_zero (mul_ne_zero fq2_two_ne_zero hy) hz)
  rw [decodeModelHomogeneous, if_neg hzout]
  have hcore := homogeneous_double_decode_core r.x r.y r.z g2TwistB
    (fq2OfFq twoInv) hhalf hz hy hcurve
  simpa [doubleLine, fq2MulFq, mul_assoc] using hcore

theorem doubleLine_decode_order_two (r : G2HomProjective)
    (hz : r.z ≠ 0) (hy : r.y / r.z = 0) :
    decodeModelHomogeneous (doubleLine r).1 = none := by
  have hyraw : r.y = 0 := by
    apply (div_eq_zero_iff).mp hy |>.resolve_right hz
  simp [decodeModelHomogeneous, doubleLine, hyraw]

theorem doubleLine_decode_infinity (r : G2HomProjective) (hz : r.z = 0) :
    decodeModelHomogeneous (doubleLine r).1 = none := by
  simp [decodeModelHomogeneous, doubleLine, hz]

/-- Model homogeneous doubling represents group doubling in every exceptional case. -/
theorem doubleLine_represents_double (r : G2HomProjective) (point : G2AffinePoint)
    (hrep : RepresentsDecodedG2 (decodeModelHomogeneous r) point) :
    RepresentsDecodedG2 (decodeModelHomogeneous (doubleLine r).1)
      (point + point) := by
  by_cases hz : r.z = 0
  · have hin : decodeModelHomogeneous r = none := by
      simp [decodeModelHomogeneous, hz]
    rw [hin] at hrep
    have hout := doubleLine_decode_infinity r hz
    rw [hout, hrep]
    simp [RepresentsDecodedG2]
  · have hin : decodeModelHomogeneous r =
        some (r.x / r.z, r.y / r.z) := by
      simp [decodeModelHomogeneous, hz]
    rw [hin] at hrep
    rcases hrep with ⟨hp, hpoint⟩
    by_cases hy : r.y / r.z = 0
    · rw [doubleLine_decode_order_two r hz hy]
      change point + point = 0
      rw [hpoint]
      simpa [liftDecodedG2] using
        (lift_order2G2 (r.x / r.z) (r.y / r.z) hy hp).symm
    · have hcurve : (r.y / r.z) ^ 2 =
          (r.x / r.z) ^ 3 + g2TwistB := by
        have heq := (g2Curve.toAffine.equation_iff
          (r.x / r.z) (r.y / r.z)).mp hp
        simpa [g2Curve] using heq
      have hyraw : r.y ≠ 0 := by
        intro h
        exact hy (by simp [h])
      rw [doubleLine_decode_generic r hz hyraw hcurve]
      have hout : DecodedG2OnCurve
          (some (tangentDoubleG2 (r.x / r.z, r.y / r.z))) := by
        apply (g2Curve.toAffine.equation_iff _ _).2
        simpa [g2Curve] using tangent_on_curve_core
          (r.x / r.z) (r.y / r.z) g2TwistB fq2_two_ne_zero hy hcurve
      refine ⟨hout, ?_⟩
      rw [hpoint]
      simpa [liftDecodedG2] using
        (lift_tangentDoubleG2 (r.x / r.z) (r.y / r.z) hy hp hout).symm

private theorem radix_coprime :
    Nat.Coprime baseMontgomeryRadix baseModulus := by
  rw [baseMontgomeryRadix, Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [baseModulus]

private theorem decode_fq_zero :
    Ipp.Extracted.ArkworksFqMul.decode
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO = 0 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO,
    Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv]
  change (0 : Fq) * (baseMontgomeryRadix : Fq)⁻¹ = 0
  ring

private theorem fq_zero_canonical :
    Ipp.Extracted.ArkworksFqMul.limbsToNat
        ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO < baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO,
    Ipp.Extracted.ArkworksFqMul.limbsToNat_six]
  norm_num [Ipp.Extracted.ArkworksFqMul.limb,
    Ipp.Extracted.ArkworksFqMul.limbWord, MacCampaign.Array.replicate,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, baseModulus]

set_option maxRecDepth 4096 in
theorem g2_coeff_b_spec :
    Canonical2 ark_ip_proofs.s3_07_arkworks_fq_spike.G2_COEFF_B ∧
      decodeFq2 ark_ip_proofs.s3_07_arkworks_fq_spike.G2_COEFF_B = g2TwistB := by
  constructor
  · refine ⟨fq_zero_canonical, ?_⟩
    rw [ark_ip_proofs.s3_07_arkworks_fq_spike.G2_COEFF_B,
      Ipp.Extracted.ArkworksFqMul.limbsToNat_six]
    norm_num [Ipp.Extracted.ArkworksFqMul.limb,
      Ipp.Extracted.ArkworksFqMul.limbWord, Array.make, MacCampaign.Array.make,
      MacCampaign.U64.ofNat, MacCampaign.u64Base,
      Ipp.Extracted.ArkworksFqMul.wordBase, baseModulus]
  · apply QuadraticAlgebra.ext
    · simpa [decodeFq2, ark_ip_proofs.s3_07_arkworks_fq_spike.G2_COEFF_B,
        g2TwistB] using decode_fq_zero
    · change Ipp.Extracted.ArkworksFqMul.decode
          ark_ip_proofs.s3_07_arkworks_fq_spike.G2_COEFF_B.c1 =
        (155198655607781456406391640216936120121836107652948796323930557600032281009004493664981332883744016074664192874906 : Fq)
      rw [Ipp.Extracted.ArkworksFqMul.decode_eq_cast_mul_inv]
      have hmod :
          (Ipp.Extracted.ArkworksFqMul.limbsToNat
              ark_ip_proofs.s3_07_arkworks_fq_spike.G2_COEFF_B.c1 : Fq) =
            (155198655607781456406391640216936120121836107652948796323930557600032281009004493664981332883744016074664192874906 : Fq) *
              (baseMontgomeryRadix : Fq) := by
        apply (ZMod.natCast_eq_natCast_iff _ _ _).2
        norm_num [Nat.ModEq, ark_ip_proofs.s3_07_arkworks_fq_spike.G2_COEFF_B,
          Ipp.Extracted.ArkworksFqMul.limbsToNat,
          Ipp.Extracted.ArkworksFqMul.prefixToNat,
          Ipp.Extracted.ArkworksFqMul.limbCount,
          Ipp.Extracted.ArkworksFqMul.limb,
          Ipp.Extracted.ArkworksFqMul.limbWord,
          Array.make, MacCampaign.Array.make, MacCampaign.U64.ofNat, MacCampaign.u64Base,
          Ipp.Extracted.ArkworksFqMul.wordBase, baseModulus,
          baseMontgomeryRadix]
        decide
      rw [hmod]
      rw [mul_assoc, ZMod.coe_mul_inv_eq_one _ radix_coprime, mul_one]

#print axioms decodeHomogeneous_coordinates
#print axioms ate_twoInv_add_self
#print axioms ate_twoInv_ne_zero
#print axioms fq2MulFq_twoInv_add_self
#print axioms g2_coeff_b_spec

end Ipp.Extracted.ArkworksG2PreparedModel
