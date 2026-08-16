import Ipp.EigenvalueSubgroupCriterion
import Ipp.Extracted.ArkworksScalarMulGlvEndomorphism
import Ipp.Bls12377Subgroups

/-!
The concrete BLS12-377 G1 endomorphism as an additive point map, together
with the polynomial identity used by the fast subgroup test.
-/

namespace Ipp.Bls12377G1Endomorphism

set_option maxRecDepth 4096
set_option maxHeartbeats 400000

open Ipp.Bls12377
open Ipp.Extracted.ArkworksScalarMul

local instance : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance : g1Curve.IsElliptic := g1_isElliptic

private theorem nsmul_cube_assoc {A : Type} [AddMonoid A]
    (n : Nat) (point : A) :
    (n * n) • (n • point) = (n * n * n) • point := by
  simp only [mul_nsmul]

private theorem beta_ne_zero : glvBeta ≠ 0 := by
  intro h
  have hc := glvBeta_cube
  rw [h, zero_pow (by decide)] at hc
  exact zero_ne_one hc

private theorem beta_four : glvBeta ^ 4 = glvBeta := by
  calc
    glvBeta ^ 4 = glvBeta ^ 3 * glvBeta := by ring
    _ = glvBeta := by rw [glvBeta_cube, one_mul]

private theorem beta_mul_injective : Function.Injective (glvBeta * ·) := by
  intro x y h
  exact mul_left_cancel₀ beta_ne_zero h

private theorem phi_slope (x₁ x₂ y₁ y₂ : Fq) :
    g1Curve.toAffine.slope (glvBeta * x₁) (glvBeta * x₂) y₁ y₂ =
      glvBeta ^ 2 * g1Curve.toAffine.slope x₁ x₂ y₁ y₂ := by
  by_cases hx : x₁ = x₂
  · subst x₂
    by_cases hy : y₁ = g1Curve.toAffine.negY x₁ y₂
    · have hy' : y₁ = g1Curve.toAffine.negY (glvBeta * x₁) y₂ := by
        simpa [g1Curve] using hy
      rw [WeierstrassCurve.Affine.slope_of_Y_eq rfl hy,
        WeierstrassCurve.Affine.slope_of_Y_eq rfl hy']
      ring
    · have hy' : y₁ ≠ g1Curve.toAffine.negY (glvBeta * x₁) y₂ := by
        simpa [g1Curve] using hy
      rw [WeierstrassCurve.Affine.slope_of_Y_ne rfl hy,
        WeierstrassCurve.Affine.slope_of_Y_ne rfl hy']
      simp only [WeierstrassCurve.Affine.negY, g1Curve, zero_mul,
        add_zero, sub_zero]
      ring
  · have hx' : glvBeta * x₁ ≠ glvBeta * x₂ := by
      exact fun h => hx (beta_mul_injective h)
    rw [WeierstrassCurve.Affine.slope_of_X_ne hx,
      WeierstrassCurve.Affine.slope_of_X_ne hx']
    have hbinv : glvBeta⁻¹ = glvBeta ^ 2 := by
      calc
        glvBeta⁻¹ = glvBeta⁻¹ * 1 := (mul_one _).symm
        _ = glvBeta⁻¹ * glvBeta ^ 3 := by rw [glvBeta_cube]
        _ = glvBeta⁻¹ * (glvBeta * glvBeta ^ 2) := by ring
        _ = (glvBeta⁻¹ * glvBeta) * glvBeta ^ 2 := by rw [mul_assoc]
        _ = glvBeta ^ 2 := by rw [inv_mul_cancel₀ beta_ne_zero, one_mul]
    rw [show glvBeta * x₁ - glvBeta * x₂ =
      glvBeta * (x₁ - x₂) by ring]
    simp only [div_eq_mul_inv, mul_inv_rev, hbinv]
    ring

private theorem phi_addX (x₁ x₂ slope : Fq) :
    g1Curve.toAffine.addX (glvBeta * x₁) (glvBeta * x₂)
        (glvBeta ^ 2 * slope) =
      glvBeta * g1Curve.toAffine.addX x₁ x₂ slope := by
  simp only [WeierstrassCurve.Affine.addX, g1Curve, zero_mul, add_zero,
    sub_zero]
  rw [show (glvBeta ^ 2 * slope) ^ 2 = glvBeta ^ 4 * slope ^ 2 by ring,
    beta_four]
  ring

private theorem phi_addY (x₁ x₂ y₁ slope : Fq) :
    g1Curve.toAffine.addY (glvBeta * x₁) (glvBeta * x₂) y₁
        (glvBeta ^ 2 * slope) =
      g1Curve.toAffine.addY x₁ x₂ y₁ slope := by
  unfold WeierstrassCurve.Affine.addY WeierstrassCurve.Affine.negAddY
  rw [phi_addX]
  rw [show glvBeta ^ 2 * slope *
      (glvBeta * g1Curve.toAffine.addX x₁ x₂ slope - glvBeta * x₁) =
      slope * (g1Curve.toAffine.addX x₁ x₂ slope - x₁) by
    calc
      glvBeta ^ 2 * slope *
          (glvBeta * g1Curve.toAffine.addX x₁ x₂ slope - glvBeta * x₁) =
          glvBeta ^ 3 *
            (slope * (g1Curve.toAffine.addX x₁ x₂ slope - x₁)) := by ring
      _ = slope * (g1Curve.toAffine.addX x₁ x₂ slope - x₁) := by
        rw [glvBeta_cube, one_mul]]
  simp only [WeierstrassCurve.Affine.negY, g1Curve, zero_mul, sub_zero]

/-- The affine `(x,y) ↦ (βx,y)` map is a group endomorphism. -/
noncomputable def g1PhiAffine :
    g1Curve.toAffine.Point →+ g1Curve.toAffine.Point where
  toFun := glvPhi
  map_zero' := rfl
  map_add' := by
    intro left right
    rcases left with (_ | @⟨x₁, y₁, h₁⟩)
    · rfl
    rcases right with (_ | @⟨x₂, y₂, h₂⟩)
    · rfl
    by_cases hopposite :
        x₁ = x₂ ∧ y₁ = g1Curve.toAffine.negY x₂ y₂
    · have hopposite' :
          glvBeta * x₁ = glvBeta * x₂ ∧
            y₁ = g1Curve.toAffine.negY (glvBeta * x₂) y₂ := by
        exact ⟨congrArg (glvBeta * ·) hopposite.1,
          by simpa [g1Curve] using hopposite.2⟩
      rw [WeierstrassCurve.Affine.Point.add_of_Y_eq
        hopposite.1 hopposite.2]
      simp only [glvPhi, WeierstrassCurve.Affine.Point.mk]
      rw [WeierstrassCurve.Affine.Point.add_of_Y_eq
        hopposite'.1 hopposite'.2]
    · have hnotOpposite' :
          ¬(glvBeta * x₁ = glvBeta * x₂ ∧
            y₁ = g1Curve.toAffine.negY (glvBeta * x₂) y₂) := by
        rintro ⟨hx, hy⟩
        apply hopposite
        exact ⟨beta_mul_injective hx, by simpa [g1Curve] using hy⟩
      rw [WeierstrassCurve.Affine.Point.add_some hopposite]
      simp only [glvPhi, WeierstrassCurve.Affine.Point.mk]
      rw [WeierstrassCurve.Affine.Point.add_some hnotOpposite']
      rw [WeierstrassCurve.Affine.Point.some.injEq]
      constructor
      · rw [phi_slope, phi_addX]
      · rw [phi_slope, phi_addY]

/-- Transport the concrete affine map to the repository's Jacobian G1. -/
noncomputable def g1Phi : G1 →+ G1 :=
  let equiv := WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
    g1Curve.toJacobian
  { toFun := fun point => equiv.symm (g1PhiAffine (equiv point))
    map_zero' := by simp
    map_add' := by simp }

@[simp]
theorem g1Phi_toAffine (point : G1) :
    (WeierstrassCurve.Jacobian.Point.toAffineAddEquiv g1Curve.toJacobian)
        (g1Phi point) =
      g1PhiAffine
        ((WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
          g1Curve.toJacobian) point) := by
  let equiv := WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
    g1Curve.toJacobian
  change equiv (equiv.symm (g1PhiAffine (equiv point))) = _
  exact equiv.apply_symm_apply _

/-- Applying the concrete cube-root endomorphism three times is identity. -/
theorem g1PhiAffine_cube (point : g1Curve.toAffine.Point) :
    g1PhiAffine (g1PhiAffine (g1PhiAffine point)) = point := by
  cases point with
  | zero => rfl
  | some x y h =>
      change WeierstrassCurve.Affine.Point.some
          (glvBeta * (glvBeta * (glvBeta * x))) y _ =
        WeierstrassCurve.Affine.Point.some x y h
      rw [WeierstrassCurve.Affine.Point.some.injEq]
      constructor
      · have hproduct : glvBeta * glvBeta * glvBeta = 1 := by
          rw [← pow_two, ← pow_succ, glvBeta_cube]
        rw [← mul_assoc, ← mul_assoc, hproduct, one_mul]
      · rfl

/-- The transported Jacobian endomorphism also has order three. -/
theorem g1Phi_cube (point : G1) :
    g1Phi (g1Phi (g1Phi point)) = point := by
  let equiv := WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
    g1Curve.toJacobian
  apply equiv.injective
  rw [g1Phi_toAffine, g1Phi_toAffine, g1Phi_toAffine,
    g1PhiAffine_cube]

private theorem seedSquared_eq_twice_add_one :
    ateLoopParameter ^ 2 =
      2 * 45946876252440628850761639813416222720 + 1 := by
  norm_num [ateLoopParameter]

/-- The only two-torsion point satisfying the fast G1 relation is identity. -/
theorem g1_two_torsion_fast_eq_zero (point : G1)
    (htwo : 2 • point = 0)
    (hfast : g1Phi point = -(ateLoopParameter ^ 2 • point)) :
    point = 0 := by
  have hseed : ateLoopParameter ^ 2 • point = point := by
    rw [seedSquared_eq_twice_add_one, add_nsmul, mul_nsmul, htwo,
      nsmul_zero, zero_add, one_nsmul]
  have hsum : point + point = 0 := by
    simpa [two_nsmul] using htwo
  have hneg : -point = point := by
    calc
      -point = -point + 0 := (add_zero _).symm
      _ = -point + (point + point) := by rw [hsum]
      _ = point := by abel
  have hphi : g1Phi point = point := by
    rw [hfast, hseed, hneg]
  let equiv := WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
    g1Curve.toJacobian
  have hphiAffine : g1PhiAffine (equiv point) = equiv point := by
    rw [← g1Phi_toAffine]
    exact congrArg equiv hphi
  have htwoAffine : 2 • equiv point = 0 := by
    have := congrArg equiv htwo
    simpa using this
  cases hpoint : equiv point with
  | zero =>
      apply equiv.injective
      calc
        equiv point = 0 := hpoint
        _ = equiv 0 := equiv.map_zero.symm
  | some x y h =>
      rw [hpoint] at hphiAffine htwoAffine
      simp only [g1PhiAffine] at hphiAffine
      have hxScale :=
        (WeierstrassCurve.Affine.Point.some.inj hphiAffine).1
      have hxProduct : (glvBeta - 1) * x = 0 := by
        linear_combination hxScale
      have hx : x = 0 :=
        (mul_eq_zero.mp hxProduct).resolve_left
          (sub_ne_zero.mpr glvBeta_ne_one)
      have hpointSum :
          WeierstrassCurve.Affine.Point.some x y h +
            WeierstrassCurve.Affine.Point.some x y h = 0 := by
        simpa [two_nsmul] using htwoAffine
      have hpointNeg :
          WeierstrassCurve.Affine.Point.some x y h =
            -(WeierstrassCurve.Affine.Point.some x y h) := by
        calc
          WeierstrassCurve.Affine.Point.some x y h =
              0 + WeierstrassCurve.Affine.Point.some x y h :=
            (zero_add _).symm
          _ = (-(WeierstrassCurve.Affine.Point.some x y h) +
                WeierstrassCurve.Affine.Point.some x y h) +
              WeierstrassCurve.Affine.Point.some x y h := by
            rw [neg_add_cancel]
          _ = -(WeierstrassCurve.Affine.Point.some x y h) +
              (WeierstrassCurve.Affine.Point.some x y h +
                WeierstrassCurve.Affine.Point.some x y h) := by
            rw [add_assoc]
          _ = -(WeierstrassCurve.Affine.Point.some x y h) := by
            rw [hpointSum, add_zero]
      have hyNeg : y = -y := by
        have hcoords := WeierstrassCurve.Affine.Point.some.inj hpointNeg
        simpa [g1Curve, WeierstrassCurve.Affine.negY] using hcoords.2
      have hyTwo : (2 : Fq) * y = 0 := by
        linear_combination hyNeg
      have htwoNonzero : (2 : Fq) ≠ 0 := by
        intro hzero
        have hdvd := (fq_natCast_eq_zero_iff 2).mp hzero
        norm_num [baseModulus] at hdvd
      have hy : y = 0 :=
        (mul_eq_zero.mp hyTwo).resolve_left htwoNonzero
      have hequation := h.1
      rw [WeierstrassCurve.Affine.equation_iff] at hequation
      norm_num [g1Curve, hx, hy] at hequation

/-- Scalar obtained by cubing the G1 fast-test eigenvalue. -/
def g1FastAnnihilator : Nat :=
  (ateLoopParameter ^ 2) * (ateLoopParameter ^ 2) *
    (ateLoopParameter ^ 2) + 1

/-- The G1 fast relation forces the order to divide `u^6 + 1`. -/
theorem g1_fast_annihilates (point : G1)
    (hfast : g1Phi point = -(ateLoopParameter ^ 2 • point)) :
    g1FastAnnihilator • point = 0 := by
  let scalar := ateLoopParameter ^ 2
  have hphi2 : g1Phi (g1Phi point) = (scalar * scalar) • point := by
    calc
      g1Phi (g1Phi point) = g1Phi (-(scalar • point)) :=
        congrArg g1Phi hfast
      _ = -(scalar • g1Phi point) := by rw [map_neg, map_nsmul]
      _ = -(scalar • (-(scalar • point))) := by rw [hfast]
      _ = (scalar * scalar) • point := by
        rw [neg_nsmul, neg_neg]
        exact (mul_nsmul point scalar scalar).symm
  have hphi3 :
      g1Phi (g1Phi (g1Phi point)) =
        -((scalar * scalar * scalar) • point) := by
    calc
      g1Phi (g1Phi (g1Phi point)) =
          g1Phi ((scalar * scalar) • point) := congrArg g1Phi hphi2
      _ = (scalar * scalar) • g1Phi point := by rw [map_nsmul]
      _ = (scalar * scalar) • (-(scalar • point)) := by rw [hfast]
      _ = -((scalar * scalar * scalar) • point) := by
        rw [neg_nsmul]
        set_option maxRecDepth 8192 in
          exact congrArg (fun q : G1 => -q)
            (nsmul_cube_assoc scalar point)
  have hneg : -((scalar * scalar * scalar) • point) = point := by
    exact hphi3.symm.trans (g1Phi_cube point)
  have hzero : (scalar * scalar * scalar + 1) • point = 0 := by
    rw [add_nsmul, one_nsmul]
    calc
      (scalar * scalar * scalar) • point + point =
          (scalar * scalar * scalar) • point +
            -((scalar * scalar * scalar) • point) :=
        congrArg ((scalar * scalar * scalar) • point + ·) hneg.symm
      _ = 0 := add_neg_cancel _
  simpa [g1FastAnnihilator, scalar] using hzero

private theorem g1_fast_common_annihilator (point : G1)
    (hfast : g1FastAnnihilator • point = 0)
    (hcard : (g1Cofactor * scalarModulus) • point = 0) :
    (2 * scalarModulus) • point = 0 := by
  let common := (2 * scalarModulus) • point
  have hfastFactor :
      g1FastAnnihilator =
        (2 * scalarModulus) *
          45946876252440628850761639813416222721 := by
    norm_num [g1FastAnnihilator, ateLoopParameter, scalarModulus]
  have hcardFactor :
      g1Cofactor * scalarModulus =
        (2 * scalarModulus) *
          15315625417480209613725172300108529664 := by
    norm_num [g1Cofactor] <;> ring
  have hfastCommon :
      45946876252440628850761639813416222721 • common = 0 := by
    calc
      45946876252440628850761639813416222721 • common =
          ((2 * scalarModulus) *
            45946876252440628850761639813416222721) • point := by
        exact (mul_nsmul point (2 * scalarModulus)
          45946876252440628850761639813416222721).symm
      _ = g1FastAnnihilator • point := by rw [hfastFactor]
      _ = 0 := hfast
  have hcardCommon :
      15315625417480209613725172300108529664 • common = 0 := by
    calc
      15315625417480209613725172300108529664 • common =
          ((2 * scalarModulus) *
            15315625417480209613725172300108529664) • point := by
        exact (mul_nsmul point (2 * scalarModulus)
          15315625417480209613725172300108529664).symm
      _ = (g1Cofactor * scalarModulus) • point := by rw [hcardFactor]
      _ = 0 := hcard
  have hbezout :
      28758368739271901187 *
          15315625417480209613725172300108529664 =
        9586122913090633727 *
            45946876252440628850761639813416222721 + 1 := by
    norm_num
  calc
    common = 0 + common := (zero_add _).symm
    _ = 9586122913090633727 •
          (45946876252440628850761639813416222721 • common) +
        1 • common := by rw [hfastCommon, nsmul_zero, one_nsmul]
    _ = (45946876252440628850761639813416222721 *
            9586122913090633727 + 1) • common := by
      rw [add_nsmul, mul_nsmul, one_nsmul]
    _ = (15315625417480209613725172300108529664 *
            28758368739271901187) • common := by
      rw [Nat.mul_comm 45946876252440628850761639813416222721,
        Nat.mul_comm 15315625417480209613725172300108529664,
        hbezout]
    _ = 28758368739271901187 •
          (15315625417480209613725172300108529664 • common) := by
      rw [mul_nsmul]
    _ = 0 := by rw [hcardCommon, nsmul_zero]

/-- A point passing the concrete G1 fast relation is in the prime subgroup. -/
theorem g1_fast_sound (facts : PublishedCurveOrderFacts) (point : G1)
    (hfast : g1Phi point = -(ateLoopParameter ^ 2 • point)) :
    arkworksG1CheckedMembership point := by
  letI : Finite G1 := Nat.finite_of_card_ne_zero (by
    rw [facts.g1_cardinality]
    exact mul_ne_zero (by norm_num) scalarModulus_prime.ne_zero)
  have hannihilator := g1_fast_annihilates point hfast
  have hcard : Nat.card G1 • point = 0 := card_nsmul_eq_zero' (x := point)
  have hcardExact : (g1Cofactor * scalarModulus) • point = 0 := by
    rw [facts.g1_cardinality] at hcard
    simpa only [g1Cofactor] using hcard
  have hcommon :=
    g1_fast_common_annihilator point hannihilator hcardExact
  let torsion := scalarModulus • point
  have htwo : 2 • torsion = 0 := by
    change 2 • (scalarModulus • point) = 0
    rw [← mul_nsmul, Nat.mul_comm]
    exact hcommon
  have hfastTorsion :
      g1Phi torsion = -(ateLoopParameter ^ 2 • torsion) := by
    dsimp only [torsion]
    rw [map_nsmul, hfast, neg_nsmul]
    exact congrArg Neg.neg (calc
      scalarModulus • (ateLoopParameter ^ 2 • point) =
          ((ateLoopParameter ^ 2) * scalarModulus) • point :=
        (mul_nsmul point (ateLoopParameter ^ 2) scalarModulus).symm
      _ = (scalarModulus * (ateLoopParameter ^ 2)) • point := by
        rw [Nat.mul_comm]
      _ = ateLoopParameter ^ 2 • (scalarModulus • point) :=
        mul_nsmul point scalarModulus (ateLoopParameter ^ 2))
  change scalarModulus • point = 0
  exact g1_two_torsion_fast_eq_zero torsion htwo hfastTorsion

#print axioms g1PhiAffine
#print axioms g1Phi
#print axioms g1PhiAffine_cube
#print axioms g1Phi_cube
#print axioms g1_two_torsion_fast_eq_zero
#print axioms g1_fast_annihilates
#print axioms g1_fast_sound

end Ipp.Bls12377G1Endomorphism
