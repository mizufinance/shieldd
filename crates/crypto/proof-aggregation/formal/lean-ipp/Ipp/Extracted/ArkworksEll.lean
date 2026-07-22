import Ipp.Extracted.ArkworksEllGenerated
import Ipp.Extracted.ArkworksFq12
import Mathlib.Tactic

/-! S3-35 finite-G1 line-evaluation coefficient-placement conformance. -/

namespace Ipp.Extracted.ArkworksEll

open Aeneas Aeneas.Std Result
open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFqMul

abbrev Fq12Limb := Fq12LimbPair
abbrev G2EllCoeffLimb := Fq2LimbPair × Fq2LimbPair × Fq2LimbPair
abbrev G1AffineLimb := ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont

/-- All three extracted line coefficients have canonical Montgomery limbs. -/
def CanonicalEllCoeff (coeffs : G2EllCoeffLimb) : Prop :=
  Canonical2 coeffs.1 ∧ Canonical2 coeffs.2.1 ∧ Canonical2 coeffs.2.2

/-- The finite G1 input boundary consumed by line evaluation. -/
def CanonicalFiniteG1 (p : G1AffineLimb) : Prop :=
  limbsToNat p.x < baseModulus ∧ limbsToNat p.y < baseModulus ∧
    p.infinity = false

/-- The already-proved sparse `(0,3,4)` multiplication model. -/
def mulBy034Model (f : Fq12Model) (c0 c3 c4 : Fq2) : Fq12Model :=
  fq12Mul f (sparse034 c0 c3 c4)

/-- Coefficient-placement model for finite-G1 D-twist line evaluation. -/
def ellModel (f : Fq12Model) (c0 c1 c2 : Fq2) (x y : Fq) : Fq12Model :=
  mulBy034Model f (c0 * algebraMap Fq Fq2 y)
    (c1 * algebraMap Fq Fq2 x) c2

private theorem bind_eq_ok {alpha beta : Type} {action : Result alpha}
    {next : alpha → Result beta} {output : beta}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- Executed Fq2-by-Fq scaling is canonical and decodes componentwise. -/
theorem fq2_mul_fp_ell_spec (a : Fq2LimbPair) (b : LimbArray)
    (output : Fq2LimbPair) (ha : Canonical2 a)
    (hb : limbsToNat b < baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul_fp_ell a b =
      .ok output) :
    Canonical2 output ∧
      decodeFq2 output = decodeFq2 a * algebraMap Fq Fq2 (decode b) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul_fp_ell at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have c0s := extracted_mul_spec a.c0 b c0 ha.1 hb h0
  have c1s := extracted_mul_spec a.c1 b c1 ha.2 hb h1
  have e0 := decode_extracted_mul a.c0 b c0 ha.1 hb h0
  have e1 := decode_extracted_mul a.c1 b c1 ha.2 hb h1
  refine ⟨⟨c0s.1, c1s.1⟩, ?_⟩
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, e0, e1]

/-- The extracted finite-G1 line evaluator scales coefficients in D-twist
positions `(0,3,4)` and applies the conformant sparse Fq12 multiplication. -/
theorem g1_ell_spec (f : Fq12Limb) (coeffs : G2EllCoeffLimb)
    (p : G1AffineLimb) (c0 c1 c2 : Fq2LimbPair) (out : Fq12Limb)
    (hf : Canonical12 f) (hc : CanonicalEllCoeff coeffs)
    (hp : CanonicalFiniteG1 p)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_ell f coeffs p =
      .ok (c0, c1, c2, out)) :
    Canonical2 c0 ∧ Canonical2 c1 ∧ Canonical2 c2 ∧ Canonical12 out ∧
    decodeFq2 c0 = decodeFq2 coeffs.1 * algebraMap Fq Fq2 (decode p.y) ∧
    decodeFq2 c1 = decodeFq2 coeffs.2.1 * algebraMap Fq Fq2 (decode p.x) ∧
    decodeFq2 c2 = decodeFq2 coeffs.2.2 ∧
    decodeFq12 out = ellModel (decodeFq12 f) (decodeFq2 coeffs.1)
      (decodeFq2 coeffs.2.1) (decodeFq2 coeffs.2.2) (decode p.x) (decode p.y) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_ell at hexec
  obtain ⟨scaled0, hscaled0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨scaled1, hscaled1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨output, houtput, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq, Prod.mk.injEq] at hret
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hret
  have s0 := fq2_mul_fp_ell_spec coeffs.1 p.y scaled0 hc.1 hp.2.1 hscaled0
  have s1 := fq2_mul_fp_ell_spec coeffs.2.1 p.x scaled1 hc.2.1 hp.1 hscaled1
  have soutCan := canonical12_mul_by_034 f scaled0 scaled1 coeffs.2.2 output
    hf s0.1 s1.1 hc.2.2 houtput
  have sout := decode_fq12_mul_by_034 f scaled0 scaled1 coeffs.2.2 output
    hf s0.1 s1.1 hc.2.2 houtput
  refine ⟨s0.1, s1.1, hc.2.2, soutCan, s0.2, s1.2, rfl, ?_⟩
  simpa [ellModel, mulBy034Model, s0.2, s1.2] using sout

#print axioms fq2_mul_fp_ell_spec
#print axioms g1_ell_spec

end Ipp.Extracted.ArkworksEll
