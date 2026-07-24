import Ipp.Extracted.ArkworksMsmG1Reverse

/-! Executed G1 affine negation used by point-to-bucket accumulation. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksScalarMul

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

/-- Executed affine G1 negation preserves validity and negates the point. -/
theorem valid_g1_affine_neg (base output :
    ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont)
    (point : G1AffinePoint) (hbase : ValidG1AffineLoopBase base point)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_affine_neg base =
        .ok output) :
    ValidG1AffineLoopBase output (-point) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_affine_neg at hexec
  obtain ⟨y, hy, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have hySpec :=
    Ipp.Extracted.ArkworksFqOps.extracted_neg_spec base.y y
      hbase.canonicalY hy
  have hyDecode :=
    Ipp.Extracted.ArkworksFqOps.decode_extracted_neg base.y y
      hbase.canonicalY hy
  refine ⟨hbase.canonicalX, hySpec.1, ?_⟩
  by_cases hinfinity : base.infinity = true
  · have hpoint : point = 0 := by
      simpa [hinfinity, RepresentsDecodedG1] using hbase.represents
    subst point
    simp [hinfinity, RepresentsDecodedG1]
  · have hinfinityFalse : base.infinity = false := by
      cases h : base.infinity with
      | false => rfl
      | true => exact (hinfinity h).elim
    obtain ⟨honCurve, hpoint⟩ := show
        RepresentsDecodedG1 (some
          (Ipp.Extracted.ArkworksFqMul.decode base.x,
            Ipp.Extracted.ArkworksFqMul.decode base.y)) point by
      simpa [hinfinityFalse] using hbase.represents
    have hnegOnCurve : DecodedG1OnCurve (some
        (Ipp.Extracted.ArkworksFqMul.decode base.x,
          -Ipp.Extracted.ArkworksFqMul.decode base.y)) := by
      have hneg := (Ipp.Bls12377.g1Curve.toAffine.equation_neg
        (Ipp.Extracted.ArkworksFqMul.decode base.x)
        (Ipp.Extracted.ArkworksFqMul.decode base.y)).mpr honCurve
      simpa [DecodedG1OnCurve, WeierstrassCurve.Affine.negY,
        Ipp.Bls12377.g1Curve] using hneg
    simp only [RepresentsDecodedG1, hinfinityFalse, Bool.false_eq_true,
      if_false]
    rw [hyDecode]
    refine ⟨hnegOnCurve, ?_⟩
    rw [hpoint]
    exact (lift_neg
      (Ipp.Extracted.ArkworksFqMul.decode base.x)
      (Ipp.Extracted.ArkworksFqMul.decode base.y)
      honCurve hnegOnCurve).symm

#print axioms valid_g1_affine_neg

end Ipp.Extracted.ArkworksMsm
