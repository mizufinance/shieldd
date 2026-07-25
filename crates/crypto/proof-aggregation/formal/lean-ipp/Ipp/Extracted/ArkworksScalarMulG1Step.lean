import Ipp.Extracted.ArkworksScalarMulG1Base

/-! Branch-complete G1 executed scalar-step refinement. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Result
open Ipp.Extracted.ArkworksFqMul (decode limbsToNat)
open Ipp.Extracted.ArkworksG1

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

set_option maxHeartbeats 8000000

private theorem bind_eq_ok_g1 {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

/-- Executed G1 mixed addition is valid for every represented branch. -/
theorem valid_g1_add_mixed (a output : G1ProjLimbTriple) (b : G1AffineLimbPair)
    (aPoint bPoint : G1AffinePoint) (ha : ValidG1LoopState a aPoint)
    (hb : ValidG1AffineLoopBase b bPoint)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    ValidG1LoopState output (aPoint + bPoint) := by
  by_cases hinf : b.infinity = true
  · have hbp : bPoint = 0 := by
      simpa [hinf, RepresentsDecodedG1] using hb.represents
    subst bPoint
    exact ⟨canonical_g1_add_mixed_identity a output b ha.canonical hinf hexec,
      executed_g1_add_mixed_identity_refines_mathlib a output b hinf aPoint
        ha.represents hexec⟩
  · have hinfinity : b.infinity = false := Bool.eq_false_iff.mpr hinf
    let q : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq := (decode b.x, decode b.y)
    obtain ⟨hq, hbp⟩ := show RepresentsDecodedG1 (some q) bPoint by
      simpa [hinfinity, q] using hb.represents
    subst bPoint
    cases hpa : decodeG1 a with
    | none =>
        have hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
          by_contra hz
          simp [decodeG1, hz] at hpa
        have hap : aPoint = 0 := by
          simpa [hpa, RepresentsDecodedG1] using ha.represents
        subst aPoint
        refine ⟨canonical_g1_add_mixed_left_identity a output b hb.canonicalX
            hb.canonicalY hinfinity hz hexec, ?_⟩
        rw [decode_g1_add_mixed_left_identity a output b hinfinity hz hexec]
        exact ⟨by simpa [q] using hq, rfl⟩
    | some p =>
        obtain ⟨hp, hap⟩ := show RepresentsDecodedG1 (some p) aPoint by
          simpa [hpa] using ha.represents
        subst aPoint
        by_cases hx : p.1 = q.1
        · by_cases hy : p.2 = q.2
          · have hpq : p = q := Prod.ext hx hy
            subst p
            have hd := executed_g1_add_mixed_equal_refines_mathlib a output b
              ha.canonical hb.canonicalX hb.canonicalY hinfinity (by simpa [q] using hpa)
              (by simpa [q] using hq)
              (fun h => by simpa [q] using g1_tangent_on_curve q hq (by simpa [q] using h))
              hexec
            exact ⟨hd.1, by simpa [q] using hd.2⟩
          · have hnegp : p.2 = -q.2 :=
              (sq_eq_sq_iff_eq_or_eq_neg.mp
                (g1_same_x_squares p q hp hq hx)).resolve_left hy
            have hqneg : q.2 = -p.2 := by linear_combination hnegp
            have hyp : p.2 ≠ 0 := by
              intro hzero
              apply hy
              calc
                p.2 = 0 := hzero
                _ = -p.2 := by rw [hzero]; simp
                _ = q.2 := hqneg.symm
            have hqeq : q = (p.1, -p.2) := Prod.ext hx.symm hqneg
            have hnegCurve : DecodedG1OnCurve (some (p.1, -p.2)) := by
              rw [hqeq] at hq
              exact hq
            have hbxdecode : decode b.x = p.1 := by
              change q.1 = p.1
              exact hx.symm
            have hbydecode : decode b.y = -p.2 := by
              change q.2 = -p.2
              exact hqneg
            have hd := executed_g1_add_mixed_opposite_refines_mathlib a output b
              ha.canonical hb.canonicalX hb.canonicalY p.1 p.2 hyp hinfinity hpa
              hbxdecode hbydecode hp hnegCurve hexec
            have hpoint : WeierstrassCurve.Affine.Point.mk hq =
                WeierstrassCurve.Affine.Point.mk hnegCurve := by
              unfold WeierstrassCurve.Affine.Point.mk
              rw [WeierstrassCurve.Affine.Point.some.injEq]
              exact Prod.ext_iff.mp hqeq
            refine ⟨canonical_g1_add_mixed_opposite a output b ha.canonical
                hb.canonicalX hb.canonicalY p.1 p.2 hyp hinfinity hpa
                hbxdecode hbydecode hexec, ?_⟩
            rw [hpoint]
            simpa only [liftDecodedG1_some] using hd
        · have hd := executed_g1_add_mixed_generic_refines_mathlib a output b
            ha.canonical hb.canonicalX hb.canonicalY p hinfinity hpa
            (by simpa [q] using hx) hp (by simpa [q] using hq)
            (by simpa [q] using g1_chord_on_curve p q hp hq hx) hexec
          exact ⟨hd.1, by simpa [q] using hd.2⟩

/-- One executed G1 affine-base bit step preserves validity and algebraic meaning. -/
theorem valid_g1_mul_affine_step (accumulator output : G1ProjLimbTriple)
    (base : G1AffineLimbPair) (accumulatorPoint basePoint : G1AffinePoint) (bit : Bool)
    (ha : ValidG1LoopState accumulator accumulatorPoint)
    (hb : ValidG1AffineLoopBase base basePoint)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_mul_affine_step
      accumulator base bit = .ok output) :
    ValidG1LoopState output
      (accumulatorPoint + accumulatorPoint + if bit then basePoint else 0) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_mul_affine_step at hexec
  obtain ⟨doubled, hdoubled, hexec⟩ := bind_eq_ok_g1 hexec
  have hd := valid_g1_double accumulator doubled accumulatorPoint ha hdoubled
  cases bit with
  | false =>
      simp only [Bool.false_eq_true, ↓reduceIte, Result.ok.injEq] at hexec ⊢
      subst output
      simpa using hd
  | true =>
      simp only [↓reduceIte] at hexec ⊢
      exact valid_g1_add_mixed doubled output base
        (accumulatorPoint + accumulatorPoint) basePoint hd hb hexec

#print axioms valid_g1_add_mixed
#print axioms valid_g1_mul_affine_step

end Ipp.Extracted.ArkworksScalarMul
