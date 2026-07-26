import Ipp.Extracted.ArkworksScalarMulG1Base

/-! Branch-complete validity for extracted G1 projective negation. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul (limbsToNat)
open Ipp.Extracted.ArkworksFqOps (extracted_neg_spec)
open Ipp.Extracted.ArkworksG1

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

private theorem canonical_g1_neg (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_neg a = .ok output) :
    CanonicalG1 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_neg at hexec
  cases hneg : ark_ip_proofs.s3_07_arkworks_fq_spike.neg a.y with
  | fail error => simp [hneg] at hexec
  | div => simp [hneg] at hexec
  | ok y =>
      rw [hneg] at hexec
      simp only [Result.bind_ok, Result.ok.injEq] at hexec
      subst output
      exact ⟨ha.1, (extracted_neg_spec a.y y ha.2.1 hneg).1, ha.2.2⟩

private theorem g1_neg_on_curve (x y : Ipp.Bls12377.Fq)
    (hp : DecodedG1OnCurve (some (x, y))) :
    DecodedG1OnCurve (some (x, -y)) := by
  have hp' := (Ipp.Bls12377.g1Curve.toAffine.equation_iff x y).mp hp
  apply (Ipp.Bls12377.g1Curve.toAffine.equation_iff x (-y)).mpr
  simp only [Ipp.Bls12377.g1Curve, zero_mul, add_zero] at hp' ⊢
  simpa using hp'

/-- Successful projective negation represents group negation for every
represented projective class. -/
theorem valid_g1_neg (a output : G1ProjLimbTriple) (P : G1AffinePoint)
    (ha : ValidG1LoopState a P)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_neg a = .ok output) :
    ValidG1LoopState output (-P) := by
  have hcanonical := canonical_g1_neg a output ha.canonical hexec
  cases hdecode : decodeG1 a with
  | none =>
      have hP : P = 0 := by
        simpa [hdecode, RepresentsDecodedG1] using ha.represents
      subst P
      refine ⟨hcanonical, ?_⟩
      simpa using executed_g1_neg_identity_refines_mathlib
        a output ha.canonical hdecode hexec
  | some p =>
      obtain ⟨hp, hP⟩ := show RepresentsDecodedG1 (some p) P by
        simpa [hdecode] using ha.represents
      subst P
      rcases p with ⟨x, y⟩
      have hneg := g1_neg_on_curve x y hp
      refine ⟨hcanonical, ?_⟩
      simpa only [liftDecodedG1_some] using
        executed_g1_neg_finite_refines_mathlib
          a output ha.canonical x y hdecode hp hneg hexec

#print axioms valid_g1_neg

end Ipp.Extracted.ArkworksScalarMul
