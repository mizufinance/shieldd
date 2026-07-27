import Ipp.Extracted.ArkworksScalarMulG2Base

/-! Branch-complete executed G2 projective addition. -/

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

/-- Executed G2 projective addition is valid for every represented branch. -/
theorem valid_g2_add (a b output : G2ProjLimbTriple)
    (aPoint bPoint : G2AffinePoint) (ha : ValidG2LoopState a aPoint)
    (hb : ValidG2LoopState b bPoint)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    ValidG2LoopState output (aPoint + bPoint) := by
  cases hpa : decodeG2 a with
  | none =>
      have hz : isZeroFq2Mont a.z = true := by
        by_contra hz
        simp [decodeG2, hz] at hpa
      have hap : aPoint = 0 := by
        simpa [hpa, RepresentsDecodedG2] using ha.represents
      subst aPoint
      exact ⟨canonical_g2_add_left_identity a b output hb.canonical hz hexec,
        executed_g2_add_left_identity_refines_mathlib a b output hz bPoint
          hb.represents hexec⟩
  | some p =>
      obtain ⟨hp, hap⟩ := show RepresentsDecodedG2 (some p) aPoint by
        simpa [hpa] using ha.represents
      subst aPoint
      cases hqb : decodeG2 b with
      | none =>
          have hz : isZeroFq2Mont b.z = true := by
            by_contra hz
            simp [decodeG2, hz] at hqb
          have hbp : bPoint = 0 := by
            simpa [hqb, RepresentsDecodedG2] using hb.represents
          subst bPoint
          exact ⟨canonical_g2_add_right_identity a b output ha.canonical hb.canonical
              hz hexec,
            executed_g2_add_right_identity_refines_mathlib a b output hz
              (WeierstrassCurve.Affine.Point.mk hp) (by simpa [hpa] using ha.represents)
              hexec⟩
      | some q =>
          obtain ⟨hq, hbp⟩ := show RepresentsDecodedG2 (some q) bPoint by
            simpa [hqb] using hb.represents
          subst bPoint
          by_cases hx : p.1 = q.1
          · by_cases hy : p.2 = q.2
            · have hpq : p = q := Prod.ext hx hy
              subst q
              have hd := executed_g2_add_equal_refines_mathlib a b output
                ha.canonical hb.canonical p hpa hqb hp
                (fun h => g2_tangent_on_curve p hp h) hexec
              exact ⟨hd.1, by simpa using hd.2⟩
            · have hnegp : p.2 = -q.2 :=
                (sq_eq_sq_iff_eq_or_eq_neg.mp
                  (g2_same_x_squares p q hp hq hx)).resolve_left hy
              have hqneg : q.2 = -p.2 := by linear_combination hnegp
              have hqeq : q = (p.1, -p.2) := Prod.ext hx.symm hqneg
              have hyp : p.2 ≠ 0 := by
                intro hzero
                apply hy
                calc
                  p.2 = 0 := hzero
                  _ = -p.2 := by rw [hzero]; simp
                  _ = q.2 := hqneg.symm
              have hqbneg : decodeG2 b = some (p.1, -p.2) := by
                rw [← hqeq]
                exact hqb
              have hnegCurve : DecodedG2OnCurve (some (p.1, -p.2)) := by
                rw [← hqeq]
                exact hq
              have hd := executed_g2_add_opposite_refines_mathlib a b output
                ha.canonical hb.canonical p.1 p.2 hyp hpa hqbneg hp hnegCurve hexec
              have hpoint : WeierstrassCurve.Affine.Point.mk hq =
                  WeierstrassCurve.Affine.Point.mk hnegCurve := by
                unfold WeierstrassCurve.Affine.Point.mk
                rw [WeierstrassCurve.Affine.Point.some.injEq]
                exact Prod.ext_iff.mp hqeq
              refine ⟨canonical_g2_add_opposite a b output ha.canonical hb.canonical
                  p.1 p.2 hyp hpa hqbneg hexec, ?_⟩
              rw [hpoint]
              simpa only [liftDecodedG2_some] using hd
          · have hd := executed_g2_add_generic_refines_mathlib a b output
              ha.canonical hb.canonical p q hpa hqb hx hp hq
              (g2_chord_on_curve p q hp hq hx) hexec
            exact ⟨hd.1, by simpa using hd.2⟩

end Ipp.Extracted.ArkworksScalarMul
