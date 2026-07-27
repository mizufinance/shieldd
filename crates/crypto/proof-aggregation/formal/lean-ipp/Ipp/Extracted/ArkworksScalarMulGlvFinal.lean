import Ipp.Extracted.ArkworksScalarMulGlvBase

/-! Integer-action closure of the extracted G1 GLV scalar multiplier. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Ipp.Extracted.ArkworksG1

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

/-- Natural action on a sign-selected point is the corresponding integer
signed action. -/
theorem nsmul_ite_neg_eq_signed_zsmul {G : Type} [AddCommGroup G]
    (positive : Bool) (magnitude : Nat) (P : G) :
    magnitude • (if positive then P else -P) =
      GlvDecomposition.signed positive magnitude • P := by
  cases positive <;> simp [GlvDecomposition.signed]

/-- Integer-congruent scalars act equally when the modulus annihilates the
point. -/
theorem zsmul_eq_of_modEq {G : Type} [AddCommGroup G]
    (modulus : Nat) (a b : Int) (P : G)
    (hmod : Int.ModEq (Int.ofNat modulus) a b)
    (horder : modulus • P = 0) :
    a • P = b • P := by
  rcases Int.modEq_iff_dvd.mp hmod with ⟨q, hq⟩
  have horderInt : (Int.ofNat modulus) • P = 0 := by
    simpa using horder
  have hdiff : (b - a) • P = 0 := by
    rw [hq, mul_zsmul', horderInt, smul_zero]
  have hsub : b • P - a • P = 0 := by
    calc
      b • P - a • P = (b - a) • P := by
        simpa only [sub_eq_add_neg] using (sub_zsmul P b a).symm
      _ = 0 := hdiff
  exact (sub_eq_zero.mp hsub).symm

/-- The extracted G1 GLV wrapper computes ordinary scalar multiplication on
prime-subgroup points satisfying the cited GLV eigenvalue precondition. -/
theorem valid_g1_glv_mul_projective
    (base output : G1ProjLimbTriple) (scalar : ScalarArray) (P : G1AffinePoint)
    (hbase : ValidG1LoopState base P)
    (hsubgroup : Ipp.Bls12377.inPrimeSubgroup P)
    (heigen : GlvEigenPrecondition Ipp.Bls12377.inPrimeSubgroup
      glvPhi GlvArithmetic.lambda)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_mul_projective
      base scalar = .ok output) :
    ValidG1LoopState output (scalarToNat scalar • P) := by
  rcases valid_g1_glv_wrapper_signed base output scalar P hbase hexec with
    ⟨decomposition, hdecomposition, hvalid⟩
  have hspec := GlvDecomposition.extracted_decomposition_spec
    scalar decomposition hdecomposition
  have hphi : glvPhi P = GlvArithmetic.lambda • P :=
    heigen P hsubgroup
  have hphiInt :
      glvPhi P = (Int.ofNat GlvArithmetic.lambda) • P :=
    hphi.trans (natCast_zsmul P GlvArithmetic.lambda).symm
  have horder : GlvArithmetic.r • P = 0 := by
    simpa [GlvArithmetic.r, Ipp.Bls12377.inPrimeSubgroup] using hsubgroup
  have hpoint :
      scalarToNat decomposition.k1 •
          signedPoint decomposition.k1_positive P +
        scalarToNat decomposition.k2 •
          signedPoint decomposition.k2_positive (glvPhi P) =
        scalarToNat scalar • P := by
    calc
      scalarToNat decomposition.k1 •
            signedPoint decomposition.k1_positive P +
          scalarToNat decomposition.k2 •
            signedPoint decomposition.k2_positive (glvPhi P) =
          GlvDecomposition.signed decomposition.k1_positive
                (scalarToNat decomposition.k1) • P +
            GlvDecomposition.signed decomposition.k2_positive
                (scalarToNat decomposition.k2) • glvPhi P := by
        rw [signedPoint, signedPoint,
          nsmul_ite_neg_eq_signed_zsmul,
          nsmul_ite_neg_eq_signed_zsmul]
      _ = GlvDecomposition.signed decomposition.k1_positive
                (scalarToNat decomposition.k1) • P +
            GlvDecomposition.signed decomposition.k2_positive
                (scalarToNat decomposition.k2) •
              ((Int.ofNat GlvArithmetic.lambda) • P) := by
        rw [hphiInt]
      _ = (GlvDecomposition.signed decomposition.k1_positive
                (scalarToNat decomposition.k1) +
              GlvDecomposition.signed decomposition.k2_positive
                (scalarToNat decomposition.k2) *
                Int.ofNat GlvArithmetic.lambda) • P := by
        rw [← mul_zsmul, ← add_zsmul]
      _ = (Int.ofNat (scalarToNat scalar)) • P :=
        zsmul_eq_of_modEq GlvArithmetic.r _ _ P hspec.1 horder
      _ = scalarToNat scalar • P :=
        natCast_zsmul P (scalarToNat scalar)
  simpa only [hpoint] using hvalid

#print axioms nsmul_ite_neg_eq_signed_zsmul
#print axioms zsmul_eq_of_modEq
#print axioms valid_g1_glv_mul_projective

end Ipp.Extracted.ArkworksScalarMul
