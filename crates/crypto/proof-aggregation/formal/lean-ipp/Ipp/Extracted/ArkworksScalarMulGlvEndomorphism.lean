import Ipp.Extracted.ArkworksG1
import Ipp.Extracted.ArkworksScalarMulG1Base
import Ipp.Extracted.ArkworksScalarMulGlvGenerated
import Mathlib.Tactic

/-! S3-28 finale (items ii-a–ii-c): the executed G1 GLV endomorphism refinement.
The executed `g1_glv_endomorphism` scales the Jacobian X by the pinned
Montgomery coefficient and leaves Y, Z unchanged, so on the decoded affine class
it is the map `(x, y) ↦ (β·x, y)` with `β` the decoded coefficient. -/

namespace Ipp.Extracted.ArkworksScalarMul

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksG1
open Ipp.Extracted.ArkworksFqMul

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

private theorem baseMontgomeryRadix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix
      Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- The pinned G1 GLV endomorphism Montgomery coefficient is a reduced representative. -/
theorem g1_endomorphism_coeff_canonical :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF <
      Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF, limbsToNat_six]
  norm_num [limb, limbWord, MacCampaign.Array.make, MacCampaign.U64.ofNat,
    MacCampaign.u64Base, wordBase, Ipp.Bls12377.baseModulus]

/-- The decoded endomorphism coefficient: the affine scale `β`. -/
noncomputable def glvBeta : Ipp.Bls12377.Fq :=
  decode ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF

/-- Canonical base-field representative of `-glvBeta`. -/
def glvBetaNeg : Nat :=
  80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410946

private def glvRadixRem : Nat :=
  85013442423176922659824578519796707547925331718418265885885478904210582549405549618995257669764901891699128663912

set_option exponentiation.threshold 400 in
private theorem glvRadix_eq : Ipp.Bls12377.baseMontgomeryRadix =
    152 * Ipp.Bls12377.baseModulus + glvRadixRem := by
  decide

private theorem glvRadix_cast :
    (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) =
      (glvRadixRem : Ipp.Bls12377.Fq) := by
  apply (ZMod.natCast_eq_natCast_iff _ _ _).2
  rw [glvRadix_eq]
  norm_num [Nat.ModEq, Ipp.Bls12377.baseModulus, glvRadixRem]

/-- The decoded Montgomery coefficient is the negation of its canonical representative. -/
theorem glvBeta_eq_neg :
    glvBeta = -(glvBetaNeg : Ipp.Bls12377.Fq) := by
  rw [glvBeta, decode_eq_cast_mul_inv]
  have hmont :
      (limbsToNat
          ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF :
          Ipp.Bls12377.Fq) =
        -(glvBetaNeg : Ipp.Bls12377.Fq) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) := by
    have hcoeff :
        limbsToNat
            ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF =
          215970864604984266906411924604428850569319895151156760068079902145929665082666249026438594603231884459977792522023 := by
      rw [ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF,
        limbsToNat_six]
      norm_num [limb, limbWord, MacCampaign.Array.make, MacCampaign.U64.ofNat,
        MacCampaign.u64Base, wordBase]
    rw [hcoeff, glvRadix_cast]
    have hrelation :
        215970864604984266906411924604428850569319895151156760068079902145929665082666249026438594603231884459977792522023 +
            glvBetaNeg * glvRadixRem =
          (26605159310157850377851701419224595493907723104311582327109998719418534871669779289341909763574 + 1) *
            Ipp.Bls12377.baseModulus := by
      norm_num [glvBetaNeg, glvRadixRem, Ipp.Bls12377.baseModulus]
    have hmod : Nat.ModEq Ipp.Bls12377.baseModulus
        (215970864604984266906411924604428850569319895151156760068079902145929665082666249026438594603231884459977792522023 +
          glvBetaNeg * glvRadixRem) 0 := by
      rw [hrelation]
      norm_num [Nat.ModEq, Ipp.Bls12377.baseModulus]
    have hzero :
        (215970864604984266906411924604428850569319895151156760068079902145929665082666249026438594603231884459977792522023 :
            Ipp.Bls12377.Fq) +
          (glvBetaNeg : Ipp.Bls12377.Fq) *
            (glvRadixRem : Ipp.Bls12377.Fq) = 0 := by
      simpa only [Nat.cast_add, Nat.cast_mul, Nat.cast_zero] using
        (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
    linear_combination hzero
  rw [hmont, mul_assoc,
    ZMod.coe_mul_inv_eq_one _ baseMontgomeryRadix_coprime, mul_one]

/-- The decoded concrete GLV coefficient is a cube root of unity. -/
theorem glvBeta_cube : glvBeta ^ 3 = 1 := by
  rw [glvBeta_eq_neg]
  have hsquare :
      (glvBetaNeg : Ipp.Bls12377.Fq) ^ 2 =
        (glvBetaNeg : Ipp.Bls12377.Fq) - 1 := by
    let squareRem : Nat :=
      80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410945
    have hrelation : glvBetaNeg ^ 2 =
        25333385248285111262175617138861575089235342006522738244469524354902492446723 *
            Ipp.Bls12377.baseModulus + squareRem := by
      norm_num [glvBetaNeg, squareRem, Ipp.Bls12377.baseModulus]
    have hmod : Nat.ModEq Ipp.Bls12377.baseModulus
        (glvBetaNeg ^ 2) squareRem := by
      rw [hrelation]
      norm_num [Nat.ModEq, Ipp.Bls12377.baseModulus, squareRem]
    have hcast :
        (glvBetaNeg : Ipp.Bls12377.Fq) ^ 2 =
          (squareRem : Ipp.Bls12377.Fq) := by
      simpa only [Nat.cast_pow] using
        (ZMod.natCast_eq_natCast_iff _ _ _).2 hmod
    have hpredNat : squareRem + 1 = glvBetaNeg := by
      norm_num [squareRem, glvBetaNeg]
    have hpredCast := congrArg
      (fun n : Nat => (n : Ipp.Bls12377.Fq)) hpredNat
    change ((squareRem + 1 : Nat) : Ipp.Bls12377.Fq) =
      (glvBetaNeg : Ipp.Bls12377.Fq) at hpredCast
    rw [Nat.cast_add, Nat.cast_one] at hpredCast
    calc
      (glvBetaNeg : Ipp.Bls12377.Fq) ^ 2 =
          (squareRem : Ipp.Bls12377.Fq) := hcast
      _ = (glvBetaNeg : Ipp.Bls12377.Fq) - 1 := by
        linear_combination hpredCast
  calc
    (-(glvBetaNeg : Ipp.Bls12377.Fq)) ^ 3 =
        -((glvBetaNeg : Ipp.Bls12377.Fq) *
          (glvBetaNeg : Ipp.Bls12377.Fq) ^ 2) := by ring
    _ = -((glvBetaNeg : Ipp.Bls12377.Fq) *
          ((glvBetaNeg : Ipp.Bls12377.Fq) - 1)) := by rw [hsquare]
    _ = -((glvBetaNeg : Ipp.Bls12377.Fq) ^ 2) +
          (glvBetaNeg : Ipp.Bls12377.Fq) := by ring
    _ = -((glvBetaNeg : Ipp.Bls12377.Fq) - 1) +
          (glvBetaNeg : Ipp.Bls12377.Fq) := by rw [hsquare]
    _ = 1 := by ring

/-- The configured cube root is nontrivial. -/
theorem glvBeta_ne_one : glvBeta ≠ 1 := by
  rw [glvBeta_eq_neg]
  intro h
  have ha : (glvBetaNeg : Ipp.Bls12377.Fq) = -1 := by
    simpa using congrArg Neg.neg h
  have hz : ((glvBetaNeg + 1 : Nat) : Ipp.Bls12377.Fq) = 0 := by
    rw [Nat.cast_add, Nat.cast_one, ha]
    ring
  rw [Ipp.Bls12377.fq_natCast_eq_zero_iff] at hz
  norm_num [glvBetaNeg, Ipp.Bls12377.baseModulus] at hz

/-- The configured nontrivial cube root satisfies its quadratic factor. -/
theorem glvBeta_quadratic : glvBeta ^ 2 + glvBeta + 1 = 0 := by
  have hfactor :
      (glvBeta - 1) * (glvBeta ^ 2 + glvBeta + 1) = 0 := by
    calc
      (glvBeta - 1) * (glvBeta ^ 2 + glvBeta + 1) =
          glvBeta ^ 3 - 1 := by ring
      _ = 0 := by rw [glvBeta_cube]; ring
  exact (mul_eq_zero.mp hfactor).resolve_left (sub_ne_zero.mpr glvBeta_ne_one)

/-- Scaling affine X by the concrete GLV coefficient preserves the G1 curve. -/
theorem glv_affine_on_curve (p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hp : DecodedG1OnCurve (some p)) :
    DecodedG1OnCurve (some (glvBeta * p.1, p.2)) := by
  have hp' := (Ipp.Bls12377.g1Curve.toAffine.equation_iff p.1 p.2).mp hp
  apply (Ipp.Bls12377.g1Curve.toAffine.equation_iff
    (glvBeta * p.1) p.2).mpr
  simp only [Ipp.Bls12377.g1Curve, zero_mul, add_zero] at hp' ⊢
  rw [mul_pow, glvBeta_cube, one_mul, hp']

/-- The total G1 GLV endomorphism, including the identity point. -/
noncomputable def glvPhi : G1AffinePoint → G1AffinePoint
  | .zero => 0
  | .some x y h =>
      WeierstrassCurve.Affine.Point.mk
        (glv_affine_on_curve (x, y)
          (WeierstrassCurve.Affine.equation_iff_nonsingular.mpr h))

/-- The executed GLV endomorphism scales the represented affine X by `β` and
preserves the represented Y (the affine `(x, y) ↦ (β·x, y)` map), and preserves
canonicity. -/
theorem decode_g1_glv_endomorphism (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_endomorphism a = .ok output) :
    CanonicalG1 output ∧
      decodeG1 output =
        Option.map (fun p => (glvBeta * p.1, p.2)) (decodeG1 a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_endomorphism at hexec
  obtain ⟨fm, hfm, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have cfm := extracted_mul_spec a.x
    ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF fm ha.1
    g1_endomorphism_coeff_canonical hfm
  have ex := decode_extracted_mul a.x
    ark_ip_proofs.s3_07_arkworks_fq_spike.G1_ENDOMORPHISM_COEFF fm ha.1
    g1_endomorphism_coeff_canonical hfm
  refine ⟨⟨cfm.1, ha.2.1, ha.2.2⟩, ?_⟩
  by_cases hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val
  · simp [decodeG1, hz]
  · simp only [decodeG1, hz, if_false, Option.map_some, Prod.mk.injEq,
      Option.some.injEq]
    refine ⟨?_, trivial⟩
    rw [ex, glvBeta]
    ring

/-- Successful extracted endomorphism execution represents `glvPhi` on every
represented projective class. -/
theorem valid_g1_glv_endomorphism
    (base output : G1ProjLimbTriple) (P : G1AffinePoint)
    (hbase : ValidG1LoopState base P)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_glv_endomorphism base =
      .ok output) :
    ValidG1LoopState output (glvPhi P) := by
  have hdecode := decode_g1_glv_endomorphism base output hbase.canonical hexec
  cases hbaseDecode : decodeG1 base with
  | none =>
      have hP : P = 0 := by
        simpa [hbaseDecode, RepresentsDecodedG1] using hbase.represents
      subst P
      refine ⟨hdecode.1, ?_⟩
      rw [hdecode.2, hbaseDecode]
      simp [glvPhi, RepresentsDecodedG1]
  | some p =>
      obtain ⟨hp, hP⟩ := show RepresentsDecodedG1 (some p) P by
        simpa [hbaseDecode] using hbase.represents
      subst P
      have hphi := glv_affine_on_curve p hp
      refine ⟨hdecode.1, ?_⟩
      rw [hdecode.2, hbaseDecode]
      refine ⟨hphi, ?_⟩
      rcases p with ⟨x, y⟩
      simp [glvPhi, WeierstrassCurve.Affine.Point.mk]

#print axioms g1_endomorphism_coeff_canonical
#print axioms glvBeta_cube
#print axioms glvBeta_ne_one
#print axioms glvBeta_quadratic
#print axioms glv_affine_on_curve
#print axioms decode_g1_glv_endomorphism
#print axioms valid_g1_glv_endomorphism

end Ipp.Extracted.ArkworksScalarMul
