import Ipp.Extracted.ArkworksG2Generated
import Ipp.Extracted.ArkworksFq2
import Ipp.Bls12377
import Mathlib.Tactic

/-! S3-27 part 1: represented-class decoding and exceptional identity laws. -/

namespace Ipp.Extracted.ArkworksG2

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFq2

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

abbrev G2ProjLimbTriple := ark_ip_proofs.s3_07_arkworks_fq_spike.G2ProjMont
abbrev G2AffineLimbPair := ark_ip_proofs.s3_07_arkworks_fq_spike.G2AffineMont

/-- Each Jacobian Fq2 coordinate is a reduced Montgomery representative. -/
def CanonicalG2 (a : G2ProjLimbTriple) : Prop :=
  Canonical2 a.x ∧ Canonical2 a.y ∧ Canonical2 a.z

/-- The executed componentwise test for the Fq2 zero representative. -/
def isZeroFq2Mont (a : Fq2LimbPair) : Bool :=
  decide (a.c0.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val) &&
  decide (a.c1.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)

private theorem fq2_eq_zero (a : Fq2LimbPair) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
      a ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO =
      .ok (isZeroFq2Mont a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
    ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_eq isZeroFq2Mont
  by_cases h : a.c0.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val <;>
    simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO,
      ark_ip_proofs.core.array.equality.PartialEqArray.eq, h]

/--
Decode a Jacobian representative to its affine Fq2-coordinate class. Any
executed `Z = 0` is infinity; otherwise the class is `(X/Z², Y/Z³)`.
-/
noncomputable def decodeG2 (a : G2ProjLimbTriple) :
    Option (Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2) :=
  if isZeroFq2Mont a.z then none
  else
    let z := decodeFq2 a.z
    some (decodeFq2 a.x / z ^ 2, decodeFq2 a.y / z ^ 3)

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- Executed projective negation negates the represented affine Fq2 Y coordinate. -/
theorem decode_g2_neg (a output : G2ProjLimbTriple)
    (ha : CanonicalG2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_neg a = .ok output) :
    decodeG2 output = Option.map (fun p => (p.1, -p.2)) (decodeG2 a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_neg at hexec
  obtain ⟨y, hy, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have ey := decode_fq2_neg a.y y ha.2.1 hy
  by_cases hz : isZeroFq2Mont a.z = true
  · simp [decodeG2, hz]
  · simp [decodeG2, hz, ey, neg_div]

/-- Projective addition returns the right representative when the left Z is zero. -/
theorem decode_g2_add_left_identity (a b output : G2ProjLimbTriple)
    (hz : isZeroFq2Mont a.z = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    decodeG2 output = decodeG2 b := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add at hexec
  simp [fq2_eq_zero, hz] at hexec
  subst output
  rfl

/-- Projective addition returns the left class when the right Z is zero. -/
theorem decode_g2_add_right_identity (a b output : G2ProjLimbTriple)
    (hz : isZeroFq2Mont b.z = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    decodeG2 output = decodeG2 a := by
  by_cases haz : isZeroFq2Mont a.z = true
  · have hleft := decode_g2_add_left_identity a b output haz hexec
    rw [hleft]
    simp [decodeG2, haz, hz]
  · unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add at hexec
    simp [fq2_eq_zero, haz, hz] at hexec
    subst output
    rfl

/-- Mixed addition leaves a projective representative unchanged at affine infinity. -/
theorem decode_g2_add_mixed_identity (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (hinfinity : b.infinity = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    decodeG2 output = decodeG2 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed at hexec
  simp [hinfinity] at hexec
  subst output
  rfl

/-- Doubling any zero-Z representative preserves the represented identity class. -/
theorem decode_g2_double_identity (a output : G2ProjLimbTriple)
    (hz : isZeroFq2Mont a.z = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok output) :
    decodeG2 output = none := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double at hexec
  simp [fq2_eq_zero, hz] at hexec
  subst output
  simp [decodeG2, hz]

#print axioms decode_g2_neg
#print axioms decode_g2_add_left_identity
#print axioms decode_g2_add_right_identity
#print axioms decode_g2_add_mixed_identity
#print axioms decode_g2_double_identity

end Ipp.Extracted.ArkworksG2
