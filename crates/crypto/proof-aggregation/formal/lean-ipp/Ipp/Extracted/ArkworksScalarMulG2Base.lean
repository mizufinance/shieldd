import Ipp.Extracted.ArkworksScalarMul
import Ipp.Extracted.ArkworksG2Mathlib

/-! Valid represented G2 states and branch-complete executed arithmetic. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Result
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG2

set_option maxHeartbeats 8000000

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

local instance : Ipp.Bls12377.g2Curve.IsElliptic :=
  Ipp.Bls12377.g2_isElliptic

/-- A canonical G2 limb triple representing the indexed algebraic point. -/
structure ValidG2LoopState (limbs : G2ProjLimbTriple)
    (point : G2AffinePoint) : Prop where
  canonical : CanonicalG2 limbs
  represents : RepresentsDecodedG2 (decodeG2 limbs) point

/-- A G2 affine loop base has canonical coordinates and represents its indexed point. -/
structure ValidG2AffineLoopBase (limbs : G2AffineLimbPair)
    (point : G2AffinePoint) : Prop where
  canonicalX : Canonical2 limbs.x
  canonicalY : Canonical2 limbs.y
  represents : RepresentsDecodedG2
    (if limbs.infinity then none else some (decodeFq2 limbs.x, decodeFq2 limbs.y)) point

theorem g2_chord_on_curve (p q : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hp : DecodedG2OnCurve (some p)) (hq : DecodedG2OnCurve (some q))
    (hx : p.1 ≠ q.1) : DecodedG2OnCurve (some (chordAddG2 p q)) := by
  rcases p with ⟨x₁, y₁⟩
  rcases q with ⟨x₂, y₂⟩
  rw [chordAddG2_eq_mathlib x₁ y₁ x₂ y₂ hx]
  exact (WeierstrassCurve.Affine.nonsingular_add
    (WeierstrassCurve.Affine.equation_iff_nonsingular.mp hp)
    (WeierstrassCurve.Affine.equation_iff_nonsingular.mp hq)
    (fun h => hx h.1)).1

theorem g2_tangent_on_curve (p : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hp : DecodedG2OnCurve (some p)) (hy : p.2 ≠ 0) :
    DecodedG2OnCurve (some (tangentDoubleG2 p)) := by
  rcases p with ⟨x, y⟩
  rw [tangentDoubleG2_eq_mathlib x y hy]
  have hyneg : y ≠ Ipp.Bls12377.g2Curve.toAffine.negY x y := by
    simp only [WeierstrassCurve.Affine.negY, Ipp.Bls12377.g2Curve,
      zero_mul, sub_zero]
    intro h
    have htwo : 2 * y = 0 := by linear_combination h
    have htwo_ne : (2 : Ipp.Bls12377.Fq2) ≠ 0 := by
      intro hz
      have hc0 : (2 : Ipp.Bls12377.Fq) = 0 := congrArg QuadraticAlgebra.re hz
      have hd := (Ipp.Bls12377.fq_natCast_eq_zero_iff 2).mp hc0
      norm_num [Ipp.Bls12377.baseModulus] at hd
    exact hy ((mul_eq_zero.mp htwo).resolve_left htwo_ne)
  exact (WeierstrassCurve.Affine.nonsingular_add
    (WeierstrassCurve.Affine.equation_iff_nonsingular.mp hp)
    (WeierstrassCurve.Affine.equation_iff_nonsingular.mp hp)
    (fun h => hyneg h.2)).1

/-- Executed G2 doubling is valid for every represented branch. -/
theorem valid_g2_double (a output : G2ProjLimbTriple) (point : G2AffinePoint)
    (ha : ValidG2LoopState a point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok output) :
    ValidG2LoopState output (point + point) := by
  cases hdecode : decodeG2 a with
  | none =>
      have hz : isZeroFq2Mont a.z = true := by
        by_contra hz
        simp [decodeG2, hz] at hdecode
      have hpoint : point = 0 := by
        simpa [hdecode, RepresentsDecodedG2] using ha.represents
      subst point
      exact ⟨canonical_g2_double_identity a output ha.canonical hz hexec,
        executed_g2_double_identity_refines_mathlib a output hz hexec⟩
  | some p =>
      obtain ⟨hp, hpoint⟩ := show RepresentsDecodedG2 (some p) point by
        simpa [hdecode] using ha.represents
      subst point
      by_cases hy : p.2 = 0
      · have hd := executed_g2_double_order2_refines_mathlib a output ha.canonical p
          hdecode hy hp hexec
        exact ⟨hd.1, by simpa using hd.2⟩
      · have hd := executed_g2_double_generic_refines_mathlib a output ha.canonical p
          hdecode hy hp (g2_tangent_on_curve p hp hy) hexec
        exact ⟨hd.1, by simpa using hd.2⟩

theorem g2_same_x_squares (p q : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hp : DecodedG2OnCurve (some p)) (hq : DecodedG2OnCurve (some q))
    (hx : p.1 = q.1) : p.2 ^ 2 = q.2 ^ 2 := by
  have hp' := (Ipp.Bls12377.g2Curve.toAffine.equation_iff p.1 p.2).mp hp
  have hq' := (Ipp.Bls12377.g2Curve.toAffine.equation_iff q.1 q.2).mp hq
  simp only [Ipp.Bls12377.g2Curve, zero_mul, zero_add, add_zero] at hp' hq'
  exact hp'.trans (by rw [hx]; exact hq'.symm)

end Ipp.Extracted.ArkworksScalarMul
