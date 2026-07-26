import Ipp.Extracted.ArkworksScalarMul
import Ipp.Extracted.ArkworksG1Mathlib

/-! Valid represented G1 states and branch-complete executed arithmetic. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Result
open Ipp.Extracted.ArkworksFqMul (decode limbsToNat)
open Ipp.Extracted.ArkworksG1

set_option maxHeartbeats 8000000

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

/-- A canonical G1 limb triple representing the indexed algebraic point. -/
structure ValidG1LoopState (limbs : G1ProjLimbTriple)
    (point : G1AffinePoint) : Prop where
  canonical : CanonicalG1 limbs
  represents : RepresentsDecodedG1 (decodeG1 limbs) point

/-- A G1 affine loop base has canonical coordinates and represents its indexed point. -/
structure ValidG1AffineLoopBase (limbs : G1AffineLimbPair)
    (point : G1AffinePoint) : Prop where
  canonicalX : limbsToNat limbs.x < Ipp.Bls12377.baseModulus
  canonicalY : limbsToNat limbs.y < Ipp.Bls12377.baseModulus
  represents : RepresentsDecodedG1
    (if limbs.infinity then none else some (decode limbs.x, decode limbs.y)) point

theorem g1_chord_on_curve (p q : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hp : DecodedG1OnCurve (some p)) (hq : DecodedG1OnCurve (some q))
    (hx : p.1 ≠ q.1) : DecodedG1OnCurve (some (chordAdd p q)) := by
  rcases p with ⟨x₁, y₁⟩
  rcases q with ⟨x₂, y₂⟩
  rw [chordAdd_eq_mathlib x₁ y₁ x₂ y₂ hx]
  exact (WeierstrassCurve.Affine.nonsingular_add
    (WeierstrassCurve.Affine.equation_iff_nonsingular.mp hp)
    (WeierstrassCurve.Affine.equation_iff_nonsingular.mp hq)
    (fun h => hx h.1)).1

theorem g1_tangent_on_curve (p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hp : DecodedG1OnCurve (some p)) (hy : p.2 ≠ 0) :
    DecodedG1OnCurve (some (tangentDouble p)) := by
  rcases p with ⟨x, y⟩
  rw [tangentDouble_eq_mathlib x y hy]
  have hyneg : y ≠ Ipp.Bls12377.g1Curve.toAffine.negY x y := by
    simp only [WeierstrassCurve.Affine.negY, Ipp.Bls12377.g1Curve,
      zero_mul, sub_zero]
    intro h
    have htwo : 2 * y = 0 := by linear_combination h
    have htwo_ne : (2 : Ipp.Bls12377.Fq) ≠ 0 := by
      intro hz
      have hd := (Ipp.Bls12377.fq_natCast_eq_zero_iff 2).mp hz
      norm_num [Ipp.Bls12377.baseModulus] at hd
    exact hy ((mul_eq_zero.mp htwo).resolve_left htwo_ne)
  exact (WeierstrassCurve.Affine.nonsingular_add
    (WeierstrassCurve.Affine.equation_iff_nonsingular.mp hp)
    (WeierstrassCurve.Affine.equation_iff_nonsingular.mp hp)
    (fun h => hyneg h.2)).1

/-- Executed G1 doubling is valid for every represented branch. -/
theorem valid_g1_double (a output : G1ProjLimbTriple) (point : G1AffinePoint)
    (ha : ValidG1LoopState a point)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok output) :
    ValidG1LoopState output (point + point) := by
  cases hdecode : decodeG1 a with
  | none =>
      have hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
        by_contra hz
        simp [decodeG1, hz] at hdecode
      have hpoint : point = 0 := by
        simpa [hdecode, RepresentsDecodedG1] using ha.represents
      subst point
      exact ⟨canonical_g1_double_identity a output ha.canonical hz hexec,
        executed_g1_double_identity_refines_mathlib a output hz hexec⟩
  | some p =>
      obtain ⟨hp, hpoint⟩ := show RepresentsDecodedG1 (some p) point by
        simpa [hdecode] using ha.represents
      subst point
      by_cases hy : p.2 = 0
      · have hd := executed_g1_double_order2_refines_mathlib a output ha.canonical p
          hdecode hy hp hexec
        exact ⟨hd.1, by simpa using hd.2⟩
      · have hd := executed_g1_double_generic_refines_mathlib a output ha.canonical p
          hdecode hy hp (g1_tangent_on_curve p hp hy) hexec
        exact ⟨hd.1, by simpa using hd.2⟩

theorem g1_same_x_squares (p q : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hp : DecodedG1OnCurve (some p)) (hq : DecodedG1OnCurve (some q))
    (hx : p.1 = q.1) : p.2 ^ 2 = q.2 ^ 2 := by
  have hp' := (Ipp.Bls12377.g1Curve.toAffine.equation_iff p.1 p.2).mp hp
  have hq' := (Ipp.Bls12377.g1Curve.toAffine.equation_iff q.1 q.2).mp hq
  simp only [Ipp.Bls12377.g1Curve, zero_mul, zero_add, add_zero] at hp' hq'
  exact hp'.trans (by rw [hx]; exact hq'.symm)

/-- Executed G1 projective addition is valid for every represented branch. -/
theorem valid_g1_add (a b output : G1ProjLimbTriple)
    (aPoint bPoint : G1AffinePoint) (ha : ValidG1LoopState a aPoint)
    (hb : ValidG1LoopState b bPoint)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    ValidG1LoopState output (aPoint + bPoint) := by
  cases hpa : decodeG1 a with
  | none =>
      have hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
        by_contra hz
        simp [decodeG1, hz] at hpa
      have hap : aPoint = 0 := by
        simpa [hpa, RepresentsDecodedG1] using ha.represents
      subst aPoint
      exact ⟨canonical_g1_add_left_identity a b output hb.canonical hz hexec,
        executed_g1_add_left_identity_refines_mathlib a b output hz bPoint
          hb.represents hexec⟩
  | some p =>
      obtain ⟨hp, hap⟩ := show RepresentsDecodedG1 (some p) aPoint by
        simpa [hpa] using ha.represents
      subst aPoint
      cases hqb : decodeG1 b with
      | none =>
          have hz : b.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
            by_contra hz
            simp [decodeG1, hz] at hqb
          have hbp : bPoint = 0 := by
            simpa [hqb, RepresentsDecodedG1] using hb.represents
          subst bPoint
          exact ⟨canonical_g1_add_right_identity a b output ha.canonical hb.canonical
              hz hexec,
            executed_g1_add_right_identity_refines_mathlib a b output hz
              (WeierstrassCurve.Affine.Point.mk hp) (by simpa [hpa] using ha.represents)
              hexec⟩
      | some q =>
          obtain ⟨hq, hbp⟩ := show RepresentsDecodedG1 (some q) bPoint by
            simpa [hqb] using hb.represents
          subst bPoint
          by_cases hx : p.1 = q.1
          · by_cases hy : p.2 = q.2
            · have hpq : p = q := Prod.ext hx hy
              subst q
              have hd := executed_g1_add_equal_refines_mathlib a b output
                ha.canonical hb.canonical p hpa hqb hp
                (fun h => g1_tangent_on_curve p hp h) hexec
              exact ⟨hd.1, by simpa using hd.2⟩
            · have hnegp : p.2 = -q.2 :=
                (sq_eq_sq_iff_eq_or_eq_neg.mp
                  (g1_same_x_squares p q hp hq hx)).resolve_left hy
              have hqneg : q.2 = -p.2 := by linear_combination hnegp
              have hqeq : q = (p.1, -p.2) := Prod.ext hx.symm hqneg
              have hyp : p.2 ≠ 0 := by
                intro hzero
                apply hy
                calc
                  p.2 = 0 := hzero
                  _ = -p.2 := by rw [hzero]; simp
                  _ = q.2 := hqneg.symm
              subst q
              have hd := executed_g1_add_opposite_refines_mathlib a b output
                ha.canonical hb.canonical p.1 p.2 hyp hpa hqb hp hq hexec
              exact ⟨canonical_g1_add_opposite a b output ha.canonical hb.canonical
                  p.1 p.2 hyp hpa hqb hexec, by simpa using hd⟩
          · have hd := executed_g1_add_generic_refines_mathlib a b output
              ha.canonical hb.canonical p q hpa hqb hx hp hq
              (g1_chord_on_curve p q hp hq hx) hexec
            exact ⟨hd.1, by simpa using hd.2⟩

end Ipp.Extracted.ArkworksScalarMul

