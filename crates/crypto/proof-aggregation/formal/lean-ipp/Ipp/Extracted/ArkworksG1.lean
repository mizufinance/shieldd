import Ipp.Extracted.ArkworksG1Generated
import Ipp.Extracted.ArkworksFqMul
import Ipp.Extracted.ArkworksFqOps
import Ipp.Bls12377
import Mathlib.Tactic

/-! S3-26 part 1: represented-class decoding and exceptional identity laws. -/

namespace Ipp.Extracted.ArkworksG1

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqOps (decode_extracted_neg extracted_neg_spec)

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

abbrev G1ProjLimbTriple := ark_ip_proofs.s3_07_arkworks_fq_spike.G1ProjMont
abbrev G1AffineLimbPair := ark_ip_proofs.s3_07_arkworks_fq_spike.G1AffineMont

/-- Each Jacobian coordinate is a reduced Montgomery representative. -/
def CanonicalG1 (a : G1ProjLimbTriple) : Prop :=
  limbsToNat a.x < Ipp.Bls12377.baseModulus ∧
  limbsToNat a.y < Ipp.Bls12377.baseModulus ∧
  limbsToNat a.z < Ipp.Bls12377.baseModulus

/--
Decode a Jacobian representative to its affine coordinate class. Any `Z = 0`
is infinity (`none`); otherwise the class is `(X/Z², Y/Z³)`. The later full
refinement supplies the curve equation needed to lift the pair to Mathlib G1.
-/
def decodeG1 (a : G1ProjLimbTriple) : Option (Ipp.Bls12377.Fq × Ipp.Bls12377.Fq) :=
  if a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val then none
  else
    let z := decode a.z
    some (decode a.x / z ^ 2, decode a.y / z ^ 3)

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- Executed projective negation negates the represented affine Y coordinate. -/
theorem decode_g1_neg (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_neg a = .ok output) :
    decodeG1 output = Option.map (fun p => (p.1, -p.2)) (decodeG1 a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_neg at hexec
  obtain ⟨y, hy, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have ey := decode_extracted_neg a.y y ha.2.1 hy
  by_cases hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val
  · simp [decodeG1, hz]
  · simp [decodeG1, hz, ey, neg_div]

/-- Projective addition returns the right representative when the left Z is zero. -/
theorem decode_g1_add_left_identity (a b output : G1ProjLimbTriple)
    (hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    decodeG1 output = decodeG1 b := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add at hexec
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    hz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
  subst output
  rfl

/-- Projective addition returns the left representative when the right Z is zero. -/
theorem decode_g1_add_right_identity (a b output : G1ProjLimbTriple)
    (hz : b.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    decodeG1 output = decodeG1 a := by
  by_cases haz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val
  · have hleft := decode_g1_add_left_identity a b output haz hexec
    rw [hleft]
    simp [decodeG1, haz, hz]
  · unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add at hexec
    simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
      haz, hz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
    subst output
    rfl

/-- Mixed addition leaves a projective representative unchanged at affine infinity. -/
theorem decode_g1_add_mixed_identity (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (hinfinity : b.infinity = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    decodeG1 output = decodeG1 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed at hexec
  simp [hinfinity] at hexec
  subst output
  rfl

/-- Doubling any zero-Z representative preserves the represented identity class. -/
theorem decode_g1_double_identity (a output : G1ProjLimbTriple)
    (hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok output) :
    decodeG1 output = none := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double at hexec
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    hz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
  subst output
  simp [decodeG1, hz]

#print axioms decode_g1_neg
#print axioms decode_g1_add_left_identity
#print axioms decode_g1_add_right_identity
#print axioms decode_g1_add_mixed_identity
#print axioms decode_g1_double_identity

end Ipp.Extracted.ArkworksG1
