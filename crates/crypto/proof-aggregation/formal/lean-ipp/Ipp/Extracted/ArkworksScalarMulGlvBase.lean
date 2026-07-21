import Ipp.Extracted.ArkworksScalarMulG1Neg
import Ipp.Extracted.ArkworksScalarMulGlvDecomposition
import Ipp.Extracted.ArkworksScalarMulGlvEndomorphism
import Ipp.Extracted.ArkworksScalarMulGlvLoop
import Ipp.Extracted.ArkworksScalarMulGlvScheduleValue

/-! Signed-base preparation and signed-magnitude refinement of the GLV wrapper. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG1

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

/-- Select a point or its group inverse from an extracted sign bit. -/
def signedPoint (positive : Bool) (P : G1AffinePoint) : G1AffinePoint :=
  if positive then P else -P

private theorem bind_eq_ok {alpha beta : Type} {action : Result alpha}
    {next : alpha → Result beta} {output : beta}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

private theorem if_bind_eq_ok {alpha beta : Type} {positive : Bool}
    {positiveValue : alpha} {negativeAction : Result alpha}
    {next : alpha → Result beta} {output : beta}
    (hexec :
      (if positive then (.ok positiveValue >>= next)
        else (negativeAction >>= next)) = .ok output) :
    ∃ value,
      (if positive then .ok positiveValue else negativeAction) = .ok value ∧
      next value = .ok output := by
  cases positive with
  | false =>
      simp only [Bool.false_eq_true, if_false] at hexec ⊢
      exact bind_eq_ok hexec
  | true =>
      simp only [if_true, Result.bind_ok] at hexec ⊢
      exact ⟨positiveValue, rfl, hexec⟩

/-- The actual extracted wrapper prepares the two signed bases and their sum,
then invokes the joint loop with those representatives. -/
theorem valid_g1_glv_base_preparation
    (base output : G1ProjLimbTriple) (scalar : ScalarArray) (P : G1AffinePoint)
    (hbase : ValidG1LoopState base P)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_mul_projective
      base scalar = .ok output) :
    ∃ (decomposition : ark_ip_proofs.s3_07_arkworks_fq_spike.GlvDecomposition)
        (phiBase b1 b2 b1b2 : G1ProjLimbTriple),
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_decomposition scalar =
          .ok decomposition ∧
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_endomorphism base =
          .ok phiBase ∧
      (if decomposition.k1_positive then .ok base
        else ark_ip_proofs.s3_07_arkworks_fq_spike.g1_neg base) = .ok b1 ∧
      (if decomposition.k2_positive then .ok phiBase
        else ark_ip_proofs.s3_07_arkworks_fq_spike.g1_neg phiBase) = .ok b2 ∧
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add b1 b2 = .ok b1b2 ∧
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_joint_loop
          b1 b2 b1b2 decomposition.k1 decomposition.k2 = .ok output ∧
      ValidG1LoopState b1 (signedPoint decomposition.k1_positive P) ∧
      ValidG1LoopState b2
        (signedPoint decomposition.k2_positive (glvPhi P)) ∧
      ValidG1LoopState b1b2
        (signedPoint decomposition.k1_positive P +
          signedPoint decomposition.k2_positive (glvPhi P)) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_mul_projective at hexec
  obtain ⟨decomposition, hdecomposition, hexec⟩ := bind_eq_ok hexec
  obtain ⟨phiBase, hphiBase, hexec⟩ := bind_eq_ok hexec
  obtain ⟨b1, hb1, hexec⟩ := if_bind_eq_ok hexec
  obtain ⟨b2, hb2, hexec⟩ := if_bind_eq_ok hexec
  obtain ⟨b1b2, hb1b2, hloop⟩ := bind_eq_ok hexec
  have hphiValid := valid_g1_glv_endomorphism
    base phiBase P hbase hphiBase
  have hb1Valid :
      ValidG1LoopState b1 (signedPoint decomposition.k1_positive P) := by
    cases hpositive : decomposition.k1_positive with
    | false =>
        simp only [hpositive, Bool.false_eq_true, if_false] at hb1
        simpa [signedPoint, hpositive] using
          valid_g1_neg base b1 P hbase hb1
    | true =>
        simp only [hpositive, if_true, Result.ok.injEq] at hb1
        subst b1
        simpa [signedPoint, hpositive] using hbase
  have hb2Valid : ValidG1LoopState b2
      (signedPoint decomposition.k2_positive (glvPhi P)) := by
    cases hpositive : decomposition.k2_positive with
    | false =>
        simp only [hpositive, Bool.false_eq_true, if_false] at hb2
        simpa [signedPoint, hpositive] using
          valid_g1_neg phiBase b2 (glvPhi P) hphiValid hb2
    | true =>
        simp only [hpositive, if_true, Result.ok.injEq] at hb2
        subst b2
        simpa [signedPoint, hpositive] using hphiValid
  have hb1b2Valid := valid_g1_add b1 b2 b1b2
    (signedPoint decomposition.k1_positive P)
    (signedPoint decomposition.k2_positive (glvPhi P))
    hb1Valid hb2Valid hb1b2
  exact ⟨decomposition, phiBase, b1, b2, b1b2,
    hdecomposition, hphiBase, hb1, hb2, hb1b2, hloop,
    hb1Valid, hb2Valid, hb1b2Valid⟩

/-- Successful wrapper execution refines to the two signed-magnitude actions. -/
theorem valid_g1_glv_wrapper_signed
    (base output : G1ProjLimbTriple) (scalar : ScalarArray) (P : G1AffinePoint)
    (hbase : ValidG1LoopState base P)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_mul_projective
      base scalar = .ok output) :
    ∃ decomposition,
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_scalar_decomposition scalar =
          .ok decomposition ∧
      ValidG1LoopState output
        (scalarToNat decomposition.k1 •
            signedPoint decomposition.k1_positive P +
          scalarToNat decomposition.k2 •
            signedPoint decomposition.k2_positive (glvPhi P)) := by
  rcases valid_g1_glv_base_preparation base output scalar P hbase hexec with
    ⟨decomposition, phiBase, b1, b2, b1b2,
      hdecomposition, hphiBase, hb1, hb2, hb1b2, hloop,
      hb1Valid, hb2Valid, hb1b2Valid⟩
  have hspec := GlvDecomposition.extracted_decomposition_spec
    scalar decomposition hdecomposition
  have hvalid := valid_g1_glv_joint_loop_value
    b1 b2 b1b2 decomposition.k1 decomposition.k2
    (signedPoint decomposition.k1_positive P)
    (signedPoint decomposition.k2_positive (glvPhi P)) output
    hb1Valid hb2Valid hb1b2Valid hspec.2.1 hspec.2.2 hloop
  change ValidG1LoopState output
    ((jointValue 255 (glvPairs decomposition.k1 decomposition.k2 255)).1 •
        signedPoint decomposition.k1_positive P +
      (jointValue 255 (glvPairs decomposition.k1 decomposition.k2 255)).2 •
        signedPoint decomposition.k2_positive (glvPhi P)) at hvalid
  rw [jointValue_glvPairs_255 decomposition.k1 decomposition.k2
    hspec.2.1 hspec.2.2] at hvalid
  exact ⟨decomposition, hdecomposition, hvalid⟩

#print axioms valid_g1_glv_base_preparation
#print axioms valid_g1_glv_wrapper_signed

end Ipp.Extracted.ArkworksScalarMul
