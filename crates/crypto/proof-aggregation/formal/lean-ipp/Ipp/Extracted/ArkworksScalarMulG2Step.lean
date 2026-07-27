import Ipp.Extracted.ArkworksScalarMulG2Add

/-! Branch-complete G2 executed scalar-step refinement. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Result
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG2

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

local instance : Ipp.Bls12377.g2Curve.IsElliptic :=
  Ipp.Bls12377.g2_isElliptic

set_option maxHeartbeats 8000000

private theorem bind_eq_ok_g2 {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

/-- Executed G2 mixed addition is valid for every represented branch. -/
theorem valid_g2_add_mixed (a output : G2ProjLimbTriple) (b : G2AffineLimbPair)
    (aPoint bPoint : G2AffinePoint) (ha : ValidG2LoopState a aPoint)
    (hb : ValidG2AffineLoopBase b bPoint)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    ValidG2LoopState output (aPoint + bPoint) := by
  by_cases hinf : b.infinity = true
  · have hbp : bPoint = 0 := by
      simpa [hinf, RepresentsDecodedG2] using hb.represents
    subst bPoint
    exact ⟨canonical_g2_add_mixed_identity a output b ha.canonical hinf hexec,
      executed_g2_add_mixed_identity_refines_mathlib a output b hinf aPoint
        ha.represents hexec⟩
  · have hinfinity : b.infinity = false := Bool.eq_false_iff.mpr hinf
    let q : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2 :=
      (decodeFq2 b.x, decodeFq2 b.y)
    obtain ⟨hq, hbp⟩ := show RepresentsDecodedG2 (some q) bPoint by
      simpa [hinfinity, q] using hb.represents
    subst bPoint
    cases hpa : decodeG2 a with
    | none =>
        have hz : isZeroFq2Mont a.z = true := by
          by_contra hz
          simp [decodeG2, hz] at hpa
        have hap : aPoint = 0 := by
          simpa [hpa, RepresentsDecodedG2] using ha.represents
        subst aPoint
        refine ⟨canonical_g2_add_mixed_left_identity a output b hb.canonicalX
            hb.canonicalY hinfinity hz hexec, ?_⟩
        rw [decode_g2_add_mixed_left_identity a output b hinfinity hz hexec]
        exact ⟨by simpa [q] using hq, rfl⟩
    | some p =>
        obtain ⟨hp, hap⟩ := show RepresentsDecodedG2 (some p) aPoint by
          simpa [hpa] using ha.represents
        subst aPoint
        by_cases hx : p.1 = q.1
        · by_cases hy : p.2 = q.2
          · have hpq : p = q := Prod.ext hx hy
            subst p
            have hd := executed_g2_add_mixed_equal_refines_mathlib a output b
              ha.canonical hb.canonicalX hb.canonicalY hinfinity (by simpa [q] using hpa)
              (by simpa [q] using hq)
              (fun h => by simpa [q] using g2_tangent_on_curve q hq (by simpa [q] using h))
              hexec
            exact ⟨hd.1, by simpa [q] using hd.2⟩
          · have hnegp : p.2 = -q.2 :=
              (sq_eq_sq_iff_eq_or_eq_neg.mp
                (g2_same_x_squares p q hp hq hx)).resolve_left hy
            have hqneg : q.2 = -p.2 := by linear_combination hnegp
            have hyp : p.2 ≠ 0 := by
              intro hzero
              apply hy
              calc
                p.2 = 0 := hzero
                _ = -p.2 := by rw [hzero]; simp
                _ = q.2 := hqneg.symm
            have hqeq : q = (p.1, -p.2) := Prod.ext hx.symm hqneg
            have hnegCurve : DecodedG2OnCurve (some (p.1, -p.2)) := by
              rw [hqeq] at hq
              exact hq
            have hbxdecode : decodeFq2 b.x = p.1 := by
              change q.1 = p.1
              exact hx.symm
            have hbydecode : decodeFq2 b.y = -p.2 := by
              change q.2 = -p.2
              exact hqneg
            have hd := executed_g2_add_mixed_opposite_refines_mathlib a output b
              ha.canonical hb.canonicalX hb.canonicalY p.1 p.2 hyp hinfinity hpa
              hbxdecode hbydecode hp hnegCurve hexec
            have hpoint : WeierstrassCurve.Affine.Point.mk hq =
                WeierstrassCurve.Affine.Point.mk hnegCurve := by
              unfold WeierstrassCurve.Affine.Point.mk
              rw [WeierstrassCurve.Affine.Point.some.injEq]
              exact Prod.ext_iff.mp hqeq
            refine ⟨canonical_g2_add_mixed_opposite a output b ha.canonical
                hb.canonicalX hb.canonicalY p.1 p.2 hyp hinfinity hpa
                hbxdecode hbydecode hexec, ?_⟩
            rw [hpoint]
            simpa only [liftDecodedG2_some] using hd
        · have hd := executed_g2_add_mixed_generic_refines_mathlib a output b
            ha.canonical hb.canonicalX hb.canonicalY p hinfinity hpa
            (by simpa [q] using hx) hp (by simpa [q] using hq)
            (by simpa [q] using g2_chord_on_curve p q hp hq hx) hexec
          exact ⟨hd.1, by simpa [q] using hd.2⟩

/-- One executed G2 projective-base bit step preserves validity and algebraic meaning. -/
theorem valid_g2_mul_projective_step (accumulator base output : G2ProjLimbTriple)
    (accumulatorPoint basePoint : G2AffinePoint) (bit : Bool)
    (ha : ValidG2LoopState accumulator accumulatorPoint)
    (hb : ValidG2LoopState base basePoint)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_step
      accumulator base bit = .ok output) :
    ValidG2LoopState output
      (accumulatorPoint + accumulatorPoint + if bit then basePoint else 0) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_step at hexec
  obtain ⟨doubled, hdoubled, hexec⟩ := bind_eq_ok_g2 hexec
  have hd := valid_g2_double accumulator doubled accumulatorPoint ha hdoubled
  cases bit with
  | false =>
      simp only [Bool.false_eq_true, ↓reduceIte, Result.ok.injEq] at hexec ⊢
      subst output
      simpa using hd
  | true =>
      simp only [↓reduceIte] at hexec ⊢
      exact valid_g2_add doubled base output (accumulatorPoint + accumulatorPoint)
        basePoint hd hb hexec

/-- One executed G2 affine-base bit step preserves validity and algebraic meaning. -/
theorem valid_g2_mul_affine_step (accumulator output : G2ProjLimbTriple)
    (base : G2AffineLimbPair) (accumulatorPoint basePoint : G2AffinePoint) (bit : Bool)
    (ha : ValidG2LoopState accumulator accumulatorPoint)
    (hb : ValidG2AffineLoopBase base basePoint)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_step
      accumulator base bit = .ok output) :
    ValidG2LoopState output
      (accumulatorPoint + accumulatorPoint + if bit then basePoint else 0) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_step at hexec
  obtain ⟨doubled, hdoubled, hexec⟩ := bind_eq_ok_g2 hexec
  have hd := valid_g2_double accumulator doubled accumulatorPoint ha hdoubled
  cases bit with
  | false =>
      simp only [Bool.false_eq_true, ↓reduceIte, Result.ok.injEq] at hexec ⊢
      subst output
      simpa using hd
  | true =>
      simp only [↓reduceIte] at hexec ⊢
      exact valid_g2_add_mixed doubled output base
        (accumulatorPoint + accumulatorPoint) basePoint hd hb hexec

#print axioms valid_g2_add_mixed
#print axioms valid_g2_mul_projective_step
#print axioms valid_g2_mul_affine_step

end Ipp.Extracted.ArkworksScalarMul
