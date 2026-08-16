import Ipp.Extracted.ArkworksScalarMulGlvEndomorphism
import Ipp.Bls12377Subgroups

/-!
The concrete BLS12-377 G2 Frobenius endomorphism and the polynomial
identity used to make the fast subgroup test a proved sound filter.
-/

namespace Ipp.Bls12377G2Endomorphism

set_option maxRecDepth 4096
set_option maxHeartbeats 400000

open Ipp.Bls12377
open Ipp.Extracted.ArkworksScalarMul

local instance : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- Canonical base-field X coefficient used by the Rust G2 `psi` map. -/
def psiXBase : Fq := glvBetaNeg

/-- Canonical base-field Y coefficient used by the Rust G2 `psi` map. -/
def psiYBase : Fq :=
  216465761340224619389371505802605247630151569547285782856803747159100223055385581585702401816380679166954762214499

/-- X scaling coefficient embedded in `Fq2`. -/
def psiX : Fq2 := ⟨psiXBase, 0⟩

/-- Y scaling coefficient embedded in `Fq2`. -/
def psiY : Fq2 := ⟨psiYBase, 0⟩

/-- The degree-two Frobenius on this quadratic extension. -/
noncomputable def fq2Conj : Fq2 ≃+* Fq2 := starRingAut

private theorem psiXBase_eq_neg_beta : psiXBase = -glvBeta := by
  rw [glvBeta_eq_neg, neg_neg]
  rfl

private theorem psiXBase_cube : psiXBase ^ 3 = -1 := by
  calc
    psiXBase ^ 3 = (-glvBeta) ^ 3 := by rw [psiXBase_eq_neg_beta]
    _ = -(glvBeta ^ 3) := by ring
    _ = -1 := by rw [glvBeta_cube]

private theorem psiYBase_square : psiYBase ^ 2 = -1 := by
  let coefficient : Nat :=
    216465761340224619389371505802605247630151569547285782856803747159100223055385581585702401816380679166954762214499
  let quotient : Nat :=
    181151411328025886815176192667968446554664778768091909694706152634165055319292955280911803130847968306306372849226
  have hrelation : coefficient ^ 2 + 1 = quotient * baseModulus := by
    norm_num [coefficient, quotient, baseModulus]
  have hmod : Nat.ModEq baseModulus (coefficient ^ 2 + 1) 0 := by
    rw [hrelation]
    norm_num [Nat.ModEq, baseModulus]
  have hcast :
      (coefficient : Fq) ^ 2 + 1 = 0 := by
    simpa only [Nat.cast_add, Nat.cast_pow, Nat.cast_one, Nat.cast_zero] using
      (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
  change (coefficient : Fq) ^ 2 = -1
  linear_combination hcast

private theorem psiX_eq_algebraMap :
    psiX = algebraMap Fq Fq2 psiXBase := rfl

private theorem psiY_eq_algebraMap :
    psiY = algebraMap Fq Fq2 psiYBase := rfl

/-- The concrete X coefficient cubes to `-1`. -/
theorem psiX_cube : psiX ^ 3 = -1 := by
  rw [psiX_eq_algebraMap, ← map_pow, psiXBase_cube, map_neg, map_one]

/-- The concrete Y coefficient squares to `-1`. -/
theorem psiY_square : psiY ^ 2 = -1 := by
  rw [psiY_eq_algebraMap, ← map_pow, psiYBase_square, map_neg, map_one]

private theorem psiX_ne_zero : psiX ≠ 0 := by
  intro hzero
  have hcube := psiX_cube
  rw [hzero, zero_pow (by decide)] at hcube
  exact (neg_ne_zero.mpr one_ne_zero) hcube.symm

private theorem psiY_ne_zero : psiY ≠ 0 := by
  intro hzero
  have hsquare := psiY_square
  rw [hzero, zero_pow (by decide)] at hsquare
  exact (neg_ne_zero.mpr one_ne_zero) hsquare.symm

private theorem psi_scale_relation : psiY ^ 2 = psiX ^ 3 := by
  rw [psiY_square, psiX_cube]

@[simp]
private theorem fq2Conj_psiX : fq2Conj psiX = psiX := by
  ext <;> simp [fq2Conj, psiX, psiXBase]

@[simp]
private theorem fq2Conj_psiY : fq2Conj psiY = psiY := by
  ext <;> simp [fq2Conj, psiY, psiYBase]

@[simp]
private theorem fq2Conj_twist : fq2Conj g2TwistB = -g2TwistB := by
  ext <;> simp [fq2Conj, g2TwistB]

@[simp]
private theorem fq2Conj_involutive (x : Fq2) :
    fq2Conj (fq2Conj x) = x := by
  change star (star x) = x
  exact star_star x

/-- Slope scaling induced by `(x,y) ↦ (psiX·conj(x), psiY·conj(y))`. -/
def psiSlopeScale : Fq2 := psiY * psiX⁻¹

private theorem psiSlopeScale_mul_x : psiSlopeScale * psiX = psiY := by
  rw [psiSlopeScale]
  field_simp [psiX_ne_zero]

private theorem psiSlopeScale_square : psiSlopeScale ^ 2 = psiX := by
  rw [psiSlopeScale]
  field_simp [psiX_ne_zero]
  linear_combination psi_scale_relation

private theorem psi_double_scale : psiX ^ 2 * psiY⁻¹ = psiSlopeScale := by
  rw [psiSlopeScale]
  field_simp [psiX_ne_zero, psiY_ne_zero]
  linear_combination -1 * psi_scale_relation

private theorem psi_affine_on_curve (x y : Fq2)
    (h : g2Curve.toAffine.Equation x y) :
    g2Curve.toAffine.Equation (psiX * fq2Conj x) (psiY * fq2Conj y) := by
  rw [WeierstrassCurve.Affine.equation_iff] at h ⊢
  simp only [g2Curve, zero_mul, add_zero] at h ⊢
  have hconj := congrArg fq2Conj h
  simp only [map_pow, map_add, fq2Conj_twist] at hconj
  rw [mul_pow, mul_pow, psiY_square, psiX_cube]
  rw [hconj]
  ring

/-- The total affine Frobenius map, including identity. -/
noncomputable def g2PsiAffineFn :
    g2Curve.toAffine.Point → g2Curve.toAffine.Point
  | .zero => 0
  | .some x y h =>
      WeierstrassCurve.Affine.Point.mk
        (psi_affine_on_curve x y
          (WeierstrassCurve.Affine.equation_iff_nonsingular.mpr h))

private theorem psiXConj_injective :
    Function.Injective (fun x : Fq2 => psiX * fq2Conj x) := by
  intro x y h
  apply fq2Conj.injective
  exact mul_left_cancel₀ psiX_ne_zero h

private theorem psi_negY (x y : Fq2) :
    psiY * fq2Conj (g2Curve.toAffine.negY x y) =
      g2Curve.toAffine.negY (psiX * fq2Conj x) (psiY * fq2Conj y) := by
  simp only [WeierstrassCurve.Affine.negY, g2Curve, zero_mul, sub_zero,
    map_neg]
  ring

private theorem psi_slope (x₁ x₂ y₁ y₂ : Fq2) :
    g2Curve.toAffine.slope
        (psiX * fq2Conj x₁) (psiX * fq2Conj x₂)
        (psiY * fq2Conj y₁) (psiY * fq2Conj y₂) =
      psiSlopeScale * fq2Conj (g2Curve.toAffine.slope x₁ x₂ y₁ y₂) := by
  by_cases hx : x₁ = x₂
  · subst x₂
    by_cases hy : y₁ = g2Curve.toAffine.negY x₁ y₂
    · have hy' :
          psiY * fq2Conj y₁ =
            g2Curve.toAffine.negY (psiX * fq2Conj x₁)
              (psiY * fq2Conj y₂) := by
        rw [← psi_negY, hy]
      rw [WeierstrassCurve.Affine.slope_of_Y_eq rfl hy,
        WeierstrassCurve.Affine.slope_of_Y_eq rfl hy']
      simp
    · have hy' :
          psiY * fq2Conj y₁ ≠
            g2Curve.toAffine.negY (psiX * fq2Conj x₁)
              (psiY * fq2Conj y₂) := by
        rw [← psi_negY]
        intro heq
        have := mul_left_cancel₀ psiY_ne_zero heq
        exact hy (fq2Conj.injective this)
      rw [WeierstrassCurve.Affine.slope_of_Y_ne rfl hy,
        WeierstrassCurve.Affine.slope_of_Y_ne rfl hy']
      simp only [g2Curve, WeierstrassCurve.Affine.negY, zero_mul,
        mul_zero, add_zero, sub_zero]
      have hmap :
          fq2Conj ((3 * x₁ ^ 2) / (y₁ - -y₁)) =
            (3 * (fq2Conj x₁) ^ 2) /
              (fq2Conj y₁ - -(fq2Conj y₁)) := by
        calc
          fq2Conj ((3 * x₁ ^ 2) / (y₁ - -y₁)) =
              fq2Conj (3 * x₁ ^ 2) / fq2Conj (y₁ - -y₁) :=
            map_div₀ fq2Conj _ _
          _ = (fq2Conj 3 * fq2Conj (x₁ ^ 2)) /
              (fq2Conj y₁ - fq2Conj (-y₁)) := by
            rw [map_mul, map_sub]
          _ = (3 * (fq2Conj x₁) ^ 2) /
              (fq2Conj y₁ - -(fq2Conj y₁)) := by
            rw [map_pow, map_neg, map_ofNat]
      calc
        (3 * (psiX * fq2Conj x₁) ^ 2) /
            (psiY * fq2Conj y₁ - -(psiY * fq2Conj y₁)) =
            (psiX ^ 2 * psiY⁻¹) *
              ((3 * (fq2Conj x₁) ^ 2) /
                (fq2Conj y₁ - -(fq2Conj y₁))) := by
          simp only [div_eq_mul_inv]
          rw [show psiY * fq2Conj y₁ - -(psiY * fq2Conj y₁) =
            psiY * (fq2Conj y₁ - -(fq2Conj y₁)) by ring,
            mul_inv_rev]
          ring
        _ = (psiX ^ 2 * psiY⁻¹) *
              fq2Conj ((3 * x₁ ^ 2) / (y₁ - -y₁)) := by
          rw [hmap]
        _ = psiSlopeScale *
              fq2Conj ((3 * x₁ ^ 2) / (y₁ - -y₁)) := by
          rw [psi_double_scale]
  · have hx' : psiX * fq2Conj x₁ ≠ psiX * fq2Conj x₂ := by
      exact fun h => hx (psiXConj_injective h)
    rw [WeierstrassCurve.Affine.slope_of_X_ne hx,
      WeierstrassCurve.Affine.slope_of_X_ne hx']
    have hmap :
        fq2Conj ((y₁ - y₂) / (x₁ - x₂)) =
          (fq2Conj y₁ - fq2Conj y₂) /
            (fq2Conj x₁ - fq2Conj x₂) := by
      calc
        fq2Conj ((y₁ - y₂) / (x₁ - x₂)) =
            fq2Conj (y₁ - y₂) / fq2Conj (x₁ - x₂) :=
          map_div₀ fq2Conj _ _
        _ = (fq2Conj y₁ - fq2Conj y₂) /
            (fq2Conj x₁ - fq2Conj x₂) := by
          rw [map_sub, map_sub]
    rw [hmap]
    simp only [div_eq_mul_inv, psiSlopeScale]
    rw [show psiX * fq2Conj x₁ - psiX * fq2Conj x₂ =
      psiX * (fq2Conj x₁ - fq2Conj x₂) by ring,
      mul_inv_rev]
    ring

private theorem psi_addX (x₁ x₂ slope : Fq2) :
    g2Curve.toAffine.addX (psiX * fq2Conj x₁) (psiX * fq2Conj x₂)
        (psiSlopeScale * fq2Conj slope) =
      psiX * fq2Conj (g2Curve.toAffine.addX x₁ x₂ slope) := by
  simp only [WeierstrassCurve.Affine.addX, g2Curve, zero_mul, add_zero,
    sub_zero, map_sub, map_pow]
  rw [show (psiSlopeScale * fq2Conj slope) ^ 2 =
    psiSlopeScale ^ 2 * (fq2Conj slope) ^ 2 by ring,
    psiSlopeScale_square]
  ring

private theorem psi_addY (x₁ x₂ y₁ slope : Fq2) :
    g2Curve.toAffine.addY (psiX * fq2Conj x₁) (psiX * fq2Conj x₂)
        (psiY * fq2Conj y₁) (psiSlopeScale * fq2Conj slope) =
      psiY * fq2Conj (g2Curve.toAffine.addY x₁ x₂ y₁ slope) := by
  unfold WeierstrassCurve.Affine.addY WeierstrassCurve.Affine.negAddY
  rw [psi_addX]
  simp only [WeierstrassCurve.Affine.negY, g2Curve, zero_mul, sub_zero,
    map_add, map_mul, map_sub, map_neg]
  rw [← psiSlopeScale_mul_x]
  ring

/-- The affine Frobenius map is an additive group endomorphism. -/
noncomputable def g2PsiAffine :
    g2Curve.toAffine.Point →+ g2Curve.toAffine.Point where
  toFun := g2PsiAffineFn
  map_zero' := rfl
  map_add' := by
    intro left right
    rcases left with (_ | @⟨x₁, y₁, h₁⟩)
    · rfl
    rcases right with (_ | @⟨x₂, y₂, h₂⟩)
    · rfl
    by_cases hopposite :
        x₁ = x₂ ∧ y₁ = g2Curve.toAffine.negY x₂ y₂
    · have hopposite' :
          psiX * fq2Conj x₁ = psiX * fq2Conj x₂ ∧
            psiY * fq2Conj y₁ =
              g2Curve.toAffine.negY (psiX * fq2Conj x₂)
                (psiY * fq2Conj y₂) := by
        exact ⟨congrArg (fun x => psiX * fq2Conj x) hopposite.1,
          by rw [← psi_negY, hopposite.2]⟩
      rw [WeierstrassCurve.Affine.Point.add_of_Y_eq
        hopposite.1 hopposite.2]
      simp only [g2PsiAffineFn, WeierstrassCurve.Affine.Point.mk]
      rw [WeierstrassCurve.Affine.Point.add_of_Y_eq
        hopposite'.1 hopposite'.2]
    · have hnotOpposite' :
          ¬(psiX * fq2Conj x₁ = psiX * fq2Conj x₂ ∧
            psiY * fq2Conj y₁ =
              g2Curve.toAffine.negY (psiX * fq2Conj x₂)
                (psiY * fq2Conj y₂)) := by
        rintro ⟨hx, hy⟩
        apply hopposite
        refine ⟨psiXConj_injective hx, ?_⟩
        rw [← psi_negY] at hy
        exact fq2Conj.injective (mul_left_cancel₀ psiY_ne_zero hy)
      rw [WeierstrassCurve.Affine.Point.add_some hopposite]
      simp only [g2PsiAffineFn, WeierstrassCurve.Affine.Point.mk]
      rw [WeierstrassCurve.Affine.Point.add_some hnotOpposite']
      rw [WeierstrassCurve.Affine.Point.some.injEq]
      constructor
      · rw [psi_slope, psi_addX]
      · rw [psi_slope, psi_addY]

/-- Applying the concrete affine Frobenius map six times is negation. -/
theorem g2PsiAffine_six (point : g2Curve.toAffine.Point) :
    g2PsiAffine (g2PsiAffine (g2PsiAffine
      (g2PsiAffine (g2PsiAffine (g2PsiAffine point))))) = -point := by
  cases point with
  | zero => rfl
  | some x y h =>
      change g2PsiAffineFn (g2PsiAffineFn (g2PsiAffineFn
        (g2PsiAffineFn (g2PsiAffineFn
          (g2PsiAffineFn (.some x y h)))))) = -(.some x y h)
      simp only [g2PsiAffineFn,
        WeierstrassCurve.Affine.Point.mk]
      rw [WeierstrassCurve.Affine.Point.neg_some]
      rw [WeierstrassCurve.Affine.Point.some.injEq]
      constructor
      · simp only [map_mul, fq2Conj_psiX, fq2Conj_involutive]
        calc
          psiX * (psiX * (psiX * (psiX * (psiX * (psiX * x))))) =
              psiX ^ 6 * x := by ring
          _ = x := by rw [show psiX ^ 6 = 1 by
            calc
              psiX ^ 6 = (psiX ^ 3) ^ 2 := by ring
              _ = 1 := by rw [psiX_cube]; ring,
            one_mul]
      · simp only [map_mul, fq2Conj_psiY, fq2Conj_involutive,
          WeierstrassCurve.Affine.negY, g2Curve, zero_mul, sub_zero]
        calc
          psiY * (psiY * (psiY * (psiY * (psiY * (psiY * y))))) =
              psiY ^ 6 * y := by ring
          _ = -y := by rw [show psiY ^ 6 = -1 by
            calc
              psiY ^ 6 = (psiY ^ 2) ^ 3 := by ring
              _ = -1 := by rw [psiY_square]; ring,
            neg_one_mul]

#print axioms psiX_cube
#print axioms psiY_square
#print axioms g2PsiAffine
#print axioms g2PsiAffine_six

end Ipp.Bls12377G2Endomorphism
