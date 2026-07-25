import Ipp.Extracted.ArkworksScalarMulGenerated
import Ipp.Extracted.ArkworksFqMul
import Ipp.Extracted.ArkworksFq2
import Ipp.Extracted.ArkworksG1
import Ipp.Extracted.ArkworksG2

/-! S3-28 part 1: decoded scalar-loop states and generic single-bit laws. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Result
open Ipp.Extracted.ArkworksFqMul (decode limbsToNat)
open Ipp.Extracted.ArkworksFq2 (Canonical2 decodeFq2)
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksG2

set_option maxHeartbeats 8000000

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

/-- Semantic accumulator and base classes carried by a scalar loop. -/
structure DecodedLoopState (Point : Type) where
  accumulator : Option Point
  base : Option Point

def decodeG1ProjectiveLoopState (accumulator base : G1ProjLimbTriple) :
    DecodedLoopState (Ipp.Bls12377.Fq × Ipp.Bls12377.Fq) :=
  ⟨decodeG1 accumulator, decodeG1 base⟩

def decodeG1AffineLoopState (accumulator : G1ProjLimbTriple)
    (base : G1AffineLimbPair) :
    DecodedLoopState (Ipp.Bls12377.Fq × Ipp.Bls12377.Fq) :=
  ⟨decodeG1 accumulator,
    if base.infinity then none else some (decode base.x, decode base.y)⟩

noncomputable def decodeG2ProjectiveLoopState (accumulator base : G2ProjLimbTriple) :
    DecodedLoopState (Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2) :=
  ⟨decodeG2 accumulator, decodeG2 base⟩

noncomputable def decodeG2AffineLoopState (accumulator : G2ProjLimbTriple)
    (base : G2AffineLimbPair) :
    DecodedLoopState (Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2) :=
  ⟨decodeG2 accumulator,
    if base.infinity then none else some (decodeFq2 base.x, decodeFq2 base.y)⟩

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | ok value => exact ⟨value, rfl, hexec⟩
  | fail error => simp at hexec
  | div => simp at hexec

/-- One G1 affine-base bit step decodes to double, then optional mixed chord add. -/
theorem decode_g1_mul_affine_step_generic
    (accumulator output : G1ProjLimbTriple) (base : G1AffineLimbPair) (bit : Bool)
    (ha : CanonicalG1 accumulator)
    (hbx : limbsToNat base.x < Ipp.Bls12377.baseModulus)
    (hby : limbsToNat base.y < Ipp.Bls12377.baseModulus)
    (p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hinfinity : base.infinity = false) (hpa : decodeG1 accumulator = some p)
    (hy : p.2 ≠ 0) (hx : (tangentDouble p).1 ≠ decode base.x)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_mul_affine_step
      accumulator base bit = .ok output) :
    CanonicalG1 output ∧ decodeG1 output = if bit then
      some (chordAdd (tangentDouble p) (decode base.x, decode base.y))
      else some (tangentDouble p) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_mul_affine_step at hexec
  obtain ⟨doubled, hdoubled, hexec⟩ := bind_eq_ok hexec
  have hd := decode_g1_double_generic accumulator doubled ha p hpa hy hdoubled
  cases bit with
  | false =>
      simp only [Bool.false_eq_true, ↓reduceIte, Result.ok.injEq] at hexec ⊢
      subst output
      exact hd
  | true =>
      simp only [↓reduceIte] at hexec ⊢
      exact decode_g1_add_mixed_generic doubled output base hd.1 hbx hby
        (tangentDouble p) hinfinity hd.2 hx hexec

/-- One G2 projective-base bit step decodes to double, then optional chord add. -/
theorem decode_g2_mul_projective_step_generic
    (accumulator base output : G2ProjLimbTriple) (bit : Bool)
    (ha : CanonicalG2 accumulator) (hb : CanonicalG2 base)
    (p q : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hpa : decodeG2 accumulator = some p) (hqb : decodeG2 base = some q)
    (hy : p.2 ≠ 0) (hx : (tangentDoubleG2 p).1 ≠ q.1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_step
      accumulator base bit = .ok output) :
    CanonicalG2 output ∧ decodeG2 output =
      if bit then some (chordAddG2 (tangentDoubleG2 p) q)
      else some (tangentDoubleG2 p) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_projective_step at hexec
  obtain ⟨doubled, hdoubled, hexec⟩ := bind_eq_ok hexec
  have hd := decode_g2_double_generic accumulator doubled ha p hpa hy hdoubled
  cases bit with
  | false =>
      simp only [Bool.false_eq_true, ↓reduceIte, Result.ok.injEq] at hexec ⊢
      subst output
      exact hd
  | true =>
      simp only [↓reduceIte] at hexec ⊢
      exact decode_g2_add_generic doubled base output hd.1 hb
        (tangentDoubleG2 p) q hd.2 hqb hx hexec

/-- One G2 affine-base bit step decodes to double, then optional mixed chord add. -/
theorem decode_g2_mul_affine_step_generic
    (accumulator output : G2ProjLimbTriple) (base : G2AffineLimbPair) (bit : Bool)
    (ha : CanonicalG2 accumulator) (hbx : Canonical2 base.x) (hby : Canonical2 base.y)
    (p : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hinfinity : base.infinity = false) (hpa : decodeG2 accumulator = some p)
    (hy : p.2 ≠ 0) (hx : (tangentDoubleG2 p).1 ≠ decodeFq2 base.x)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_step
      accumulator base bit = .ok output) :
    CanonicalG2 output ∧ decodeG2 output = if bit then
      some (chordAddG2 (tangentDoubleG2 p) (decodeFq2 base.x, decodeFq2 base.y))
      else some (tangentDoubleG2 p) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine_step at hexec
  obtain ⟨doubled, hdoubled, hexec⟩ := bind_eq_ok hexec
  have hd := decode_g2_double_generic accumulator doubled ha p hpa hy hdoubled
  cases bit with
  | false =>
      simp only [Bool.false_eq_true, ↓reduceIte, Result.ok.injEq] at hexec ⊢
      subst output
      exact hd
  | true =>
      simp only [↓reduceIte] at hexec ⊢
      exact decode_g2_add_mixed_generic doubled output base hd.1 hbx hby
        (tangentDoubleG2 p) hinfinity hd.2 hx hexec

#print axioms decode_g1_mul_affine_step_generic
#print axioms decode_g2_mul_projective_step_generic
#print axioms decode_g2_mul_affine_step_generic

end Ipp.Extracted.ArkworksScalarMul
