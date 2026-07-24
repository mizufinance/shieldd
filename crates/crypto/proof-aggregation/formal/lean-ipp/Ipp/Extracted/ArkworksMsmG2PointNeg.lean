import Ipp.Extracted.ArkworksMsmG2Reverse

/-! Executed G2 affine negation used by point-to-bucket accumulation. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksScalarMul
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqOps

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

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

private theorem canonical_fq2_neg
    (input output : ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont)
    (hinput : Canonical2 input)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg input = .ok output) :
    Canonical2 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hreturn⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hreturn
  subst output
  exact ⟨(extracted_neg_spec input.c0 c0 hinput.1 h0).1,
    (extracted_neg_spec input.c1 c1 hinput.2 h1).1⟩

/-- Executed affine G2 negation preserves validity and negates the point. -/
theorem valid_g2_affine_neg (base output :
    ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont)
    (point : G2AffinePoint) (hbase : ValidG2AffineLoopBase base point)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g2_affine_neg base =
        .ok output) :
    ValidG2AffineLoopBase output (-point) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_affine_neg at hexec
  obtain ⟨y, hy, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have hyCanonical := canonical_fq2_neg base.y y hbase.canonicalY hy
  have hyDecode := decode_fq2_neg base.y y hbase.canonicalY hy
  refine ⟨hbase.canonicalX, hyCanonical, ?_⟩
  by_cases hinfinity : base.infinity = true
  · have hpoint : point = 0 := by
      simpa [hinfinity, RepresentsDecodedG2] using hbase.represents
    subst point
    simp [hinfinity, RepresentsDecodedG2]
  · have hinfinityFalse : base.infinity = false := by
      cases h : base.infinity with
      | false => rfl
      | true => exact (hinfinity h).elim
    obtain ⟨honCurve, hpoint⟩ := show
        RepresentsDecodedG2 (some
          (decodeFq2 base.x, decodeFq2 base.y)) point by
      simpa [hinfinityFalse] using hbase.represents
    have hnegOnCurve : DecodedG2OnCurve (some
        (decodeFq2 base.x, -decodeFq2 base.y)) := by
      have hneg := (Ipp.Bls12377.g2Curve.toAffine.equation_neg
        (decodeFq2 base.x) (decodeFq2 base.y)).mpr honCurve
      simpa [DecodedG2OnCurve, WeierstrassCurve.Affine.negY,
        Ipp.Bls12377.g2Curve] using hneg
    simp only [RepresentsDecodedG2, hinfinityFalse, Bool.false_eq_true,
      if_false]
    rw [hyDecode]
    refine ⟨hnegOnCurve, ?_⟩
    rw [hpoint]
    exact (lift_negG2 (decodeFq2 base.x) (decodeFq2 base.y)
      honCurve hnegOnCurve).symm

#print axioms valid_g2_affine_neg

end Ipp.Extracted.ArkworksMsm
