import Ipp.Extracted.ArkworksG2Generated
import Ipp.Extracted.ArkworksG2PreparedGenerated
import Ipp.Extracted.ArkworksFq2
import Ipp.Bls12377
import Mathlib.Tactic

/-! S3-27 part 1: represented-class decoding and exceptional identity laws. -/

namespace Ipp.Extracted.ArkworksG2

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksFqMul

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
    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq
    isZeroFq2Mont
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

/-- The affine chord rule over an arbitrary field. -/
def chordAddG2 {F : Type} [Field F] (p q : F × F) : F × F :=
  let slope := (q.2 - p.2) / (q.1 - p.1)
  let x := slope ^ 2 - p.1 - q.1
  (x, slope * (p.1 - x) - p.2)

/-- The affine tangent rule for a short Weierstrass curve with `a = 0`. -/
def tangentDoubleG2 {F : Type} [Field F] (p : F × F) : F × F :=
  let slope := (3 * p.1 ^ 2) / (2 * p.2)
  let x := slope ^ 2 - 2 * p.1
  (x, slope * (p.1 - x) - p.2)

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

private theorem fq2_eq (a b : Fq2LimbPair) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
      a b = .ok
        (decide (a.c0.val = b.c0.val) && decide (a.c1.val = b.c1.val)) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq
  by_cases h : a.c0.val = b.c0.val <;>
    simp [ark_ip_proofs.core.array.equality.PartialEqArray.eq, h]

private theorem fq2_eq_components (a b : Fq2LimbPair) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
      a b = .ok (decide (a.c0.val = b.c0.val ∧ a.c1.val = b.c1.val)) := by
  rw [fq2_eq]
  by_cases h0 : a.c0.val = b.c0.val <;>
    by_cases h1 : a.c1.val = b.c1.val <;> simp [h0, h1]

private theorem fq2_double_spec (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double a = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a + decodeFq2 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have c0s := Ipp.Extracted.ArkworksFq2.extracted_double_spec a.c0 c0 ha.1 h0
  have c1s := Ipp.Extracted.ArkworksFq2.extracted_double_spec a.c1 c1 ha.2 h1
  refine ⟨⟨c0s.1, c1s.1⟩, ?_⟩
  have e0 := Ipp.Extracted.ArkworksFq2.decode_extracted_double a.c0 c0 ha.1 h0
  have e1 := Ipp.Extracted.ArkworksFq2.decode_extracted_double a.c1 c1 ha.2 h1
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, e0, e1]

private theorem fq2_add_spec (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add a b = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a + decodeFq2 b :=
  ⟨canonical_fq2_add a b output ha hb hexec,
    decode_fq2_add a b output ha hb hexec⟩

private theorem fq2_sub_spec (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub a b = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a - decodeFq2 b :=
  ⟨canonical_fq2_sub a b output ha hb hexec,
    decode_fq2_sub a b output ha hb hexec⟩

private theorem fq2_neg_spec (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg a = .ok output) :
    Canonical2 output ∧ decodeFq2 output = -decodeFq2 a := by
  have edecode := decode_fq2_neg a output ha hexec
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg at hexec
  obtain ⟨c0, h0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c1, h1, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have c0s := Ipp.Extracted.ArkworksFqOps.extracted_neg_spec a.c0 c0 ha.1 h0
  have c1s := Ipp.Extracted.ArkworksFqOps.extracted_neg_spec a.c1 c1 ha.2 h1
  exact ⟨⟨c0s.1, c1s.1⟩, edecode⟩

private theorem limbsToNat_inj {x y : LimbArray}
    (h : limbsToNat x = limbsToNat y) : x = y := by
  have ex := limbsToNat_six x
  have ey := limbsToNat_six y
  have bx0 := limb_lt_wordBase x ⟨0, by decide⟩
  have bx1 := limb_lt_wordBase x ⟨1, by decide⟩
  have bx2 := limb_lt_wordBase x ⟨2, by decide⟩
  have bx3 := limb_lt_wordBase x ⟨3, by decide⟩
  have bx4 := limb_lt_wordBase x ⟨4, by decide⟩
  have bx5 := limb_lt_wordBase x ⟨5, by decide⟩
  have by0 := limb_lt_wordBase y ⟨0, by decide⟩
  have by1 := limb_lt_wordBase y ⟨1, by decide⟩
  have by2 := limb_lt_wordBase y ⟨2, by decide⟩
  have by3 := limb_lt_wordBase y ⟨3, by decide⟩
  have by4 := limb_lt_wordBase y ⟨4, by decide⟩
  have by5 := limb_lt_wordBase y ⟨5, by decide⟩
  simp only [wordBase] at ex ey bx0 bx1 bx2 bx3 bx4 bx5 by0 by1 by2 by3 by4 by5
  rw [ex, ey] at h
  have e0 : limb x ⟨0, by decide⟩ = limb y ⟨0, by decide⟩ := by omega
  have e1 : limb x ⟨1, by decide⟩ = limb y ⟨1, by decide⟩ := by omega
  have e2 : limb x ⟨2, by decide⟩ = limb y ⟨2, by decide⟩ := by omega
  have e3 : limb x ⟨3, by decide⟩ = limb y ⟨3, by decide⟩ := by omega
  have e4 : limb x ⟨4, by decide⟩ = limb y ⟨4, by decide⟩ := by omega
  have e5 : limb x ⟨5, by decide⟩ = limb y ⟨5, by decide⟩ := by omega
  have u64ext : ∀ (p q : MacCampaign.U64), p.val = q.val → p = q := by
    intro p q hpq
    obtain ⟨pv, ph⟩ := p
    obtain ⟨qv, qh⟩ := q
    simp only at hpq
    subst hpq
    rfl
  have key : ∀ (i : Fin limbCount), limbWord x i = limbWord y i := by
    intro i
    apply u64ext
    fin_cases i <;> assumption
  apply MacCampaign.Array.ext
  apply List.ext_get
  · rw [x.hlen, y.hlen]
  · intro n h1 h2
    have hn : n < limbCount := by rw [x.hlen] at h1; simpa [limbCount] using h1
    exact key ⟨n, hn⟩

private theorem baseMontgomeryRadix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

private theorem canonical_fq_val_eq_iff_decode_eq (x y : LimbArray)
    (hx : limbsToNat x < Ipp.Bls12377.baseModulus)
    (hy : limbsToNat y < Ipp.Bls12377.baseModulus) :
    x.val = y.val ↔ decode x = decode y := by
  constructor
  · intro h
    apply congrArg decode
    apply MacCampaign.Array.ext
    exact h
  · intro h
    rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv] at h
    have hRne :
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ ≠ 0 := by
      apply inv_ne_zero
      intro hzero
      have hone := ZMod.coe_mul_inv_eq_one Ipp.Bls12377.baseMontgomeryRadix
        baseMontgomeryRadix_coprime
      rw [hzero, zero_mul] at hone
      exact one_ne_zero hone.symm
    have hcast : (limbsToNat x : Ipp.Bls12377.Fq) =
        (limbsToNat y : Ipp.Bls12377.Fq) := mul_right_cancel₀ hRne h
    have hnat : limbsToNat x = limbsToNat y := by
      have hval := congrArg ZMod.val hcast
      simpa [ZMod.val_natCast_of_lt hx, ZMod.val_natCast_of_lt hy] using hval
    exact congrArg MacCampaign.Array.val (limbsToNat_inj hnat)

/-- Canonical executed Fq2 pairs compare componentwise exactly when they decode equally. -/
theorem canonical_fq2_val_eq_iff_decode_eq (x y : Fq2LimbPair)
    (hx : Canonical2 x) (hy : Canonical2 y) :
    (x.c0.val = y.c0.val ∧ x.c1.val = y.c1.val) ↔
      decodeFq2 x = decodeFq2 y := by
  constructor
  · rintro ⟨h0, h1⟩
    apply QuadraticAlgebra.ext
    · exact (canonical_fq_val_eq_iff_decode_eq x.c0 y.c0 hx.1 hy.1).1 h0
    · exact (canonical_fq_val_eq_iff_decode_eq x.c1 y.c1 hx.2 hy.2).1 h1
  · intro h
    have h0 : decode x.c0 = decode y.c0 := by
      simpa [decodeFq2] using congrArg QuadraticAlgebra.re h
    have h1 : decode x.c1 = decode y.c1 := by
      simpa [decodeFq2] using congrArg QuadraticAlgebra.im h
    exact ⟨(canonical_fq_val_eq_iff_decode_eq x.c0 y.c0 hx.1 hy.1).2 h0,
      (canonical_fq_val_eq_iff_decode_eq x.c1 y.c1 hx.2 hy.2).2 h1⟩

private theorem decode_fq_zero :
    decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO = 0 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]
  rw [decode_eq_cast_mul_inv]
  change (0 : Ipp.Bls12377.Fq) *
    (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ = 0
  ring

private theorem decode_fq2_zero :
    decodeFq2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO = 0 := by
  apply QuadraticAlgebra.ext <;>
    simp [decodeFq2, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO, decode_fq_zero]

private theorem fq_zero_canonical :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO <
      Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO, limbsToNat_six]
  norm_num [limb, limbWord, MacCampaign.Array.replicate,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, Ipp.Bls12377.baseModulus]

private theorem fq2_zero_canonical :
    Canonical2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO := by
  simp [Canonical2, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO,
    fq_zero_canonical]

private theorem fq_one_canonical :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE <
      Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE]
  exact Ipp.Extracted.ArkworksFqSqrtBytes.canonical_ONE

set_option exponentiation.threshold 1000 in
private theorem decode_fq_one :
    decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE = 1 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE, decode_eq_cast_mul_inv]
  have hmod :
      (limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.ONE : Ipp.Bls12377.Fq) =
        (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) := by
    apply (ZMod.natCast_eq_natCast_iff _ _ _).2
    norm_num [Nat.ModEq, limbsToNat, prefixToNat, limbCount, limb, limbWord,
      ark_ip_proofs.s3_07_arkworks_fq_spike.ONE, MacCampaign.Array.make,
      MacCampaign.U64.ofNat, MacCampaign.u64Base, wordBase,
      Ipp.Bls12377.baseModulus, Ipp.Bls12377.baseMontgomeryRadix]
  rw [hmod]
  exact ZMod.coe_mul_inv_eq_one _ baseMontgomeryRadix_coprime

private theorem decode_fq2_one :
    decodeFq2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE = 1 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE]
  apply QuadraticAlgebra.ext
  · change decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE =
      (1 : Ipp.Bls12377.Fq)
    exact decode_fq_one
  · change decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO =
      (0 : Ipp.Bls12377.Fq)
    exact decode_fq_zero

private theorem fq2_one_canonical :
    Canonical2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE := by
  simp [Canonical2, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE,
    fq_one_canonical, fq_zero_canonical]

/-- The fixed Fq2 projective identity returned by the extracted code is canonical. -/
theorem canonical_g2_zero (output : G2ProjLimbTriple)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero = .ok output) :
    CanonicalG2 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero at hexec
  simp only [Result.ok.injEq] at hexec
  subst output
  exact ⟨fq2_one_canonical, fq2_one_canonical, fq2_zero_canonical⟩

private theorem isZeroFq2Mont_eq_true_iff (a : Fq2LimbPair) (ha : Canonical2 a) :
    isZeroFq2Mont a = true ↔ decodeFq2 a = 0 := by
  rw [show (0 : Ipp.Bls12377.Fq2) =
    decodeFq2 ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO by
      exact decode_fq2_zero.symm]
  rw [← canonical_fq2_val_eq_iff_decode_eq a
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO ha fq2_zero_canonical]
  simp [isZeroFq2Mont, ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO]

private theorem isZeroFq2Mont_eq_false_of_decode_ne_zero (a : Fq2LimbPair)
    (ha : Canonical2 a) (hdecode : decodeFq2 a ≠ 0) :
    isZeroFq2Mont a = false := by
  apply Bool.eq_false_iff.mpr
  intro h
  exact hdecode ((isZeroFq2Mont_eq_true_iff a ha).1 h)

private theorem fq_two_ne_zero : (2 : Ipp.Bls12377.Fq) ≠ 0 := by
  intro h
  have hval := congrArg ZMod.val h
  simp only [ZMod.val_zero] at hval
  change 2 % Ipp.Bls12377.baseModulus = 0 at hval
  norm_num [Ipp.Bls12377.baseModulus] at hval

private theorem fq2_two_ne_zero : (2 : Ipp.Bls12377.Fq2) ≠ 0 := by
  intro h
  have hre := congrArg QuadraticAlgebra.re h
  exact fq_two_ne_zero (by simpa using hre)

private theorem div_sq_eq_iff_cross_eq {F : Type} [Field F]
    (X₁ X₂ Z₁ Z₂ : F) (hZ₁ : Z₁ ≠ 0) (hZ₂ : Z₂ ≠ 0) :
    X₁ / Z₁ ^ 2 = X₂ / Z₂ ^ 2 ↔ X₁ * Z₂ ^ 2 = X₂ * Z₁ ^ 2 := by
  field_simp [hZ₁, hZ₂]

private theorem div_cube_eq_iff_cross_eq {F : Type} [Field F]
    (Y₁ Y₂ Z₁ Z₂ : F) (hZ₁ : Z₁ ≠ 0) (hZ₂ : Z₂ ≠ 0) :
    Y₁ / Z₁ ^ 3 = Y₂ / Z₂ ^ 3 ↔
      (Y₁ * Z₂) * Z₂ ^ 2 = (Y₂ * Z₁) * Z₁ ^ 2 := by
  field_simp [hZ₁, hZ₂]

/-- Jacobian `U1 = U2` is equivalent to decoded Fq2 affine x equality. -/
theorem decode_g2_x_cross_eq_iff (a b : G2ProjLimbTriple)
    (_ha : CanonicalG2 a) (_hb : CanonicalG2 b)
    (haz : decodeFq2 a.z ≠ 0) (hbz : decodeFq2 b.z ≠ 0) :
    decodeFq2 a.x * decodeFq2 b.z ^ 2 =
        decodeFq2 b.x * decodeFq2 a.z ^ 2 ↔
      decodeFq2 a.x / decodeFq2 a.z ^ 2 =
        decodeFq2 b.x / decodeFq2 b.z ^ 2 :=
  (div_sq_eq_iff_cross_eq _ _ _ _ haz hbz).symm

/-- Jacobian `S1 = S2` is equivalent to decoded Fq2 affine y equality. -/
theorem decode_g2_y_cross_eq_iff (a b : G2ProjLimbTriple)
    (_ha : CanonicalG2 a) (_hb : CanonicalG2 b)
    (haz : decodeFq2 a.z ≠ 0) (hbz : decodeFq2 b.z ≠ 0) :
    (decodeFq2 a.y * decodeFq2 b.z) * decodeFq2 b.z ^ 2 =
        (decodeFq2 b.y * decodeFq2 a.z) * decodeFq2 a.z ^ 2 ↔
      decodeFq2 a.y / decodeFq2 a.z ^ 3 =
        decodeFq2 b.y / decodeFq2 b.z ^ 3 :=
  (div_cube_eq_iff_cross_eq _ _ _ _ haz hbz).symm

private theorem tangent_decode_identity {F : Type} [Field F]
    (X Y Z : F) (h2 : (2 : F) ≠ 0) (hY : Y ≠ 0) (hZ : Z ≠ 0) :
    let d := 4 * X * Y ^ 2
    let e := 3 * X ^ 2
    let x := e ^ 2 - 2 * d
    ((x / (2 * Z * Y) ^ 2),
      (e * (d - x) - 8 * Y ^ 4) / (2 * Z * Y) ^ 3) =
      tangentDoubleG2 (X / Z ^ 2, Y / Z ^ 3) := by
  dsimp only
  have h4 : (4 : F) ≠ 0 := by
    convert mul_ne_zero h2 h2 using 1 <;> norm_num
  have h8 : (8 : F) ≠ 0 := by
    convert mul_ne_zero h4 h2 using 1 <;> norm_num
  apply Prod.ext <;> simp only [Prod.fst, Prod.snd, tangentDoubleG2]
  · field_simp [h2, h4, h8, hY, hZ]
    <;> ring
  · field_simp [h2, h4, h8, hY, hZ]
    <;> ring

private theorem chord_affine_identity {F : Type} [Field F]
    (x₁ y₁ x₂ y₂ : F) (h2 : (2 : F) ≠ 0) (hx : x₁ ≠ x₂) :
    let h := x₂ - x₁
    let i := (2 * h) ^ 2
    let j := -h * i
    let r := 2 * (y₂ - y₁)
    let v := x₁ * i
    let x := r ^ 2 + j - 2 * v
    let y := r * (v - x) + (2 * y₁) * j
    (x / (2 * h) ^ 2, y / (2 * h) ^ 3) =
      chordAddG2 (x₁, y₁) (x₂, y₂) := by
  dsimp only
  have hh : x₂ - x₁ ≠ 0 := sub_ne_zero.mpr (Ne.symm hx)
  apply Prod.ext <;> simp only [Prod.fst, Prod.snd, chordAddG2]
  · field_simp [h2, hh]
    <;> ring
  · field_simp [h2, hh]
    <;> ring

private theorem decode_scale_square {F : Type} [Field F]
    (X Z D : F) (hZ : Z ≠ 0) :
    X * D ^ 2 = (Z * D) ^ 2 * (X / Z ^ 2) := by
  field_simp [hZ]
  <;> ring

private theorem decode_scale_cube {F : Type} [Field F]
    (Y Z D : F) (hZ : Z ≠ 0) :
    Y * D ^ 3 = (Z * D) ^ 3 * (Y / Z ^ 3) := by
  field_simp [hZ]
  <;> ring

private theorem chord_x_factor {F : Type} [Field F]
    (c r j v R J V X : F)
    (hr : r = c ^ 3 * R) (hj : j = c ^ 6 * J) (hv : v = c ^ 6 * V)
    (hX : X = R ^ 2 + J - 2 * V) :
    r ^ 2 + j - 2 * v = c ^ 6 * X := by
  subst r
  subst j
  subst v
  subst X
  ring

private theorem chord_y_factor {F : Type} [Field F]
    (c r v x s j R V X b J Y : F)
    (hr : r = c ^ 3 * R) (hv : v = c ^ 6 * V) (hx : x = c ^ 6 * X)
    (hs : s = c ^ 3 * b) (hj : j = c ^ 6 * J)
    (hY : Y = R * (V - X) + (2 * b) * J) :
    r * (v - x) + (2 * s) * j = c ^ 9 * Y := by
  subst r
  subst v
  subst x
  subst s
  subst j
  subst Y
  ring

private theorem chord_h_factor {F : Type} [Field F]
    (c u₁ u₂ a₁ a₂ H : F)
    (hu₁ : u₁ = c ^ 2 * a₁) (hu₂ : u₂ = c ^ 2 * a₂)
    (hH : H = a₂ - a₁) :
    u₂ - u₁ = c ^ 2 * H := by
  subst u₁
  subst u₂
  subst H
  ring

private theorem chord_i_factor {F : Type} [Field F]
    (c h H I : F) (hh : h = c ^ 2 * H) (hI : I = (2 * H) ^ 2) :
    (2 * h) ^ 2 = c ^ 4 * I := by
  subst h
  subst I
  ring

private theorem chord_j_factor {F : Type} [Field F]
    (c h i H I J : F)
    (hh : h = c ^ 2 * H) (hi : i = c ^ 4 * I) (hJ : J = -H * I) :
    -h * i = c ^ 6 * J := by
  subst h
  subst i
  subst J
  ring

private theorem chord_r_factor {F : Type} [Field F]
    (c s₁ s₂ b₁ b₂ R : F)
    (hs₁ : s₁ = c ^ 3 * b₁) (hs₂ : s₂ = c ^ 3 * b₂)
    (hR : R = 2 * (b₂ - b₁)) :
    2 * (s₂ - s₁) = c ^ 3 * R := by
  subst s₁
  subst s₂
  subst R
  ring

private theorem chord_v_factor {F : Type} [Field F]
    (c u i a I V : F)
    (hu : u = c ^ 2 * a) (hi : i = c ^ 4 * I) (hV : V = a * I) :
    u * i = c ^ 6 * V := by
  subst u
  subst i
  subst V
  ring

private theorem chord_z_factor {F : Type} [Field F]
    (c z h H : F) (hz : z = 2 * c * h) (hh : h = c ^ 2 * H) :
    z ^ 2 = c ^ 6 * (2 * H) ^ 2 ∧ z ^ 3 = c ^ 9 * (2 * H) ^ 3 := by
  subst z
  subst h
  constructor <;> ring

private theorem chord_coordinates_of_factors {F : Type} [Field F]
    (c x y z X Y d₂ d₃ : F) (result : F × F)
    (hc : c ≠ 0)
    (hx : x = c ^ 6 * X) (hy : y = c ^ 9 * Y)
    (hz2 : z ^ 2 = c ^ 6 * d₂) (hz3 : z ^ 3 = c ^ 9 * d₃)
    (hbase : (X / d₂, Y / d₃) = result) :
    (x / z ^ 2, y / z ^ 3) = result := by
  apply Prod.ext <;> simp only [Prod.fst, Prod.snd]
  · rw [hx, hz2, mul_div_mul_left _ _ (pow_ne_zero 6 hc)]
    exact congrArg (fun p : F × F => p.1) hbase
  · rw [hy, hz3, mul_div_mul_left _ _ (pow_ne_zero 9 hc)]
    exact congrArg (fun p : F × F => p.2) hbase

private theorem chord_affine_components {F : Type} [Field F]
    (a₁ b₁ a₂ b₂ H I J R V X Y : F)
    (hH : H = a₂ - a₁) (hI : I = (2 * H) ^ 2) (hJ : J = -H * I)
    (hR : R = 2 * (b₂ - b₁)) (hV : V = a₁ * I)
    (hX : X = R ^ 2 + J - 2 * V) (hY : Y = R * (V - X) + (2 * b₁) * J)
    (h2 : (2 : F) ≠ 0) (hne : a₁ ≠ a₂) :
    (X / (2 * H) ^ 2, Y / (2 * H) ^ 3) =
      chordAddG2 (a₁, b₁) (a₂, b₂) := by
  subst H
  subst I
  subst J
  subst R
  subst V
  subst X
  subst Y
  exact chord_affine_identity a₁ b₁ a₂ b₂ h2 hne

private theorem chord_decode_core {F : Type} [Field F]
    (a₁ b₁ a₂ b₂ c u₁ u₂ s₁ s₂ h i j r v x y z H I J R V X Y : F)
    (hu₁ : u₁ = c ^ 2 * a₁) (hu₂ : u₂ = c ^ 2 * a₂)
    (hs₁ : s₁ = c ^ 3 * b₁) (hs₂ : s₂ = c ^ 3 * b₂)
    (dh : h = u₂ - u₁) (di : i = (2 * h) ^ 2) (dj : j = -h * i)
    (dr : r = 2 * (s₂ - s₁)) (dv : v = u₁ * i)
    (dx : x = r ^ 2 + j - 2 * v) (dy : y = r * (v - x) + (2 * s₁) * j)
    (dz : z = 2 * c * h)
    (hH : H = a₂ - a₁) (hI : I = (2 * H) ^ 2) (hJ : J = -H * I)
    (hR : R = 2 * (b₂ - b₁)) (hV : V = a₁ * I)
    (hX : X = R ^ 2 + J - 2 * V) (hY : Y = R * (V - X) + (2 * b₁) * J)
    (h2 : (2 : F) ≠ 0) (hc : c ≠ 0) (hne : a₁ ≠ a₂) :
    (x / z ^ 2, y / z ^ 3) = chordAddG2 (a₁, b₁) (a₂, b₂) := by
  have hh0 := chord_h_factor c u₁ u₂ a₁ a₂ H hu₁ hu₂ hH
  have hh : h = c ^ 2 * H := dh.trans hh0
  have hi0 := chord_i_factor c h H I hh hI
  have hi : i = c ^ 4 * I := di.trans hi0
  have hj0 := chord_j_factor c h i H I J hh hi hJ
  have hj : j = c ^ 6 * J := dj.trans hj0
  have hr0 := chord_r_factor c s₁ s₂ b₁ b₂ R hs₁ hs₂ hR
  have hr : r = c ^ 3 * R := dr.trans hr0
  have hv0 := chord_v_factor c u₁ i a₁ I V hu₁ hi hV
  have hv : v = c ^ 6 * V := dv.trans hv0
  have hx0 := chord_x_factor c r j v R J V X hr hj hv hX
  have hx : x = c ^ 6 * X := dx.trans hx0
  have hy0 := chord_y_factor c r v x s₁ j R V X b₁ J Y hr hv hx hs₁ hj hY
  have hy : y = c ^ 9 * Y := dy.trans hy0
  have hz := chord_z_factor c z h H dz hh
  have hbase := chord_affine_components a₁ b₁ a₂ b₂ H I J R V X Y
    hH hI hJ hR hV hX hY h2 hne
  exact chord_coordinates_of_factors c x y z X Y ((2 * H) ^ 2) ((2 * H) ^ 3)
    (chordAddG2 (a₁, b₁) (a₂, b₂)) hc hx hy hz.1 hz.2 hbase

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

/-- The executed left-identity Fq2 add preserves canonicity from its returned operand. -/
theorem canonical_g2_add_left_identity (a b output : G2ProjLimbTriple)
    (hb : CanonicalG2 b) (hz : isZeroFq2Mont a.z = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    CanonicalG2 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add at hexec
  simp [fq2_eq_zero, hz] at hexec
  subst output
  exact hb

/-- The executed right-identity Fq2 add preserves canonicity from its returned operand. -/
theorem canonical_g2_add_right_identity (a b output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hb : CanonicalG2 b) (hz : isZeroFq2Mont b.z = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    CanonicalG2 output := by
  by_cases haz : isZeroFq2Mont a.z = true
  · exact canonical_g2_add_left_identity a b output hb haz hexec
  · unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add at hexec
    simp [fq2_eq_zero, haz, hz] at hexec
    subst output
    exact ha

/-- The executed affine-identity Fq2 mixed add preserves accumulator canonicity. -/
theorem canonical_g2_add_mixed_identity (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (ha : CanonicalG2 a) (hinfinity : b.infinity = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    CanonicalG2 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed at hexec
  simp [hinfinity] at hexec
  subst output
  exact ha

/-- A zero-Z Fq2 mixed accumulator returns the finite affine base class. -/
theorem decode_g2_add_mixed_left_identity (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (hinfinity : b.infinity = false)
    (hz : isZeroFq2Mont a.z = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    decodeG2 output = some (decodeFq2 b.x, decodeFq2 b.y) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed at hexec
  simp [hinfinity, fq2_eq_zero, hz] at hexec
  subst output
  have honezero : ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    intro hval
    have hdecode := (canonical_fq_val_eq_iff_decode_eq
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO
      fq_one_canonical fq_zero_canonical).1 hval
    rw [decode_fq_one, decode_fq_zero] at hdecode
    exact one_ne_zero hdecode
  have hone : isZeroFq2Mont
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE = false := by
    simp [isZeroFq2Mont,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ONE,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO, honezero]
  simp [decodeG2, hone, decode_fq2_one]

/-- A zero-Z Fq2 mixed accumulator returns a canonical projective affine base. -/
theorem canonical_g2_add_mixed_left_identity (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (hbx : Canonical2 b.x) (hby : Canonical2 b.y)
    (hinfinity : b.infinity = false) (hz : isZeroFq2Mont a.z = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    CanonicalG2 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed at hexec
  simp [hinfinity, fq2_eq_zero, hz] at hexec
  subst output
  exact ⟨hbx, hby, fq2_one_canonical⟩

/-- The executed zero-Z Fq2 double preserves accumulator canonicity. -/
theorem canonical_g2_double_identity (a output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hz : isZeroFq2Mont a.z = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok output) :
    CanonicalG2 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double at hexec
  simp [fq2_eq_zero, hz] at hexec
  subst output
  exact ha

set_option maxRecDepth 4096
set_option maxHeartbeats 2000000

/-- Executed `a = 0` Jacobian doubling over Fq2 decodes to the affine tangent formula. -/
theorem decode_g2_double_generic (a output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (p : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hdecode : decodeG2 a = some p) (hy : p.2 ≠ 0)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok output) :
    CanonicalG2 output ∧ decodeG2 output = some (tangentDoubleG2 p) := by
  have haz : isZeroFq2Mont a.z ≠ true := by
    intro hz
    simp [decodeG2, hz] at hdecode
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double at hexec
  simp [fq2_eq_zero, haz] at hexec
  obtain ⟨aa, haa, hexec⟩ := bind_eq_ok hexec
  obtain ⟨b, hb, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c, hc, hexec⟩ := bind_eq_ok hexec
  obtain ⟨d0, hd0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨d1, hd1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨d, hd, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoAa, htwoAa, hexec⟩ := bind_eq_ok hexec
  obtain ⟨e, he, hexec⟩ := bind_eq_ok hexec
  obtain ⟨zy, hzy, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z, hz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨e2, he2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoD, htwoD, hexec⟩ := bind_eq_ok hexec
  obtain ⟨x, hx, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, hc2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c4, hc4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c8, hc8, hexec⟩ := bind_eq_ok hexec
  obtain ⟨dx, hdx, hexec⟩ := bind_eq_ok hexec
  obtain ⟨edx, hedx, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y, hyexec, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have caa := extracted_fq2_square_spec a.x aa ha.1 haa
  have cb := extracted_fq2_square_spec a.y b ha.2.1 hb
  have cc := extracted_fq2_square_spec b c cb.1 hc
  have cd0 := extracted_fq2_mul_spec a.x b d0 ha.1 cb.1 hd0
  have cd1 := fq2_double_spec d0 d1 cd0.1 hd1
  have cd := fq2_double_spec d1 d cd1.1 hd
  have ctwoAa := fq2_double_spec aa twoAa caa.1 htwoAa
  have ce := fq2_add_spec aa twoAa e caa.1 ctwoAa.1 he
  have czy := extracted_fq2_mul_spec a.z a.y zy ha.2.2 ha.2.1 hzy
  have cz := fq2_double_spec zy z czy.1 hz
  have ce2 := extracted_fq2_square_spec e e2 ce.1 he2
  have ctwoD := fq2_double_spec d twoD cd.1 htwoD
  have cx := fq2_sub_spec e2 twoD x ce2.1 ctwoD.1 hx
  have cc2 := fq2_double_spec c c2 cc.1 hc2
  have cc4 := fq2_double_spec c2 c4 cc2.1 hc4
  have cc8 := fq2_double_spec c4 c8 cc4.1 hc8
  have cdx := fq2_sub_spec d x dx cd.1 cx.1 hdx
  have cedx := extracted_fq2_mul_spec dx e edx cdx.1 ce.1 hedx
  have cy := fq2_sub_spec edx c8 y cedx.1 cc8.1 hyexec
  refine ⟨⟨cx.1, cy.1, cz.1⟩, ?_⟩
  have hcoords : p = (decodeFq2 a.x / decodeFq2 a.z ^ 2,
      decodeFq2 a.y / decodeFq2 a.z ^ 3) := by
    simpa [decodeG2, haz] using hdecode.symm
  have hyraw : decodeFq2 a.y ≠ 0 := by
    rw [hcoords] at hy
    exact fun h => hy (by simp [h])
  have hzraw : decodeFq2 a.z ≠ 0 := by
    rw [hcoords] at hy
    exact fun h => hy (by simp [h])
  have hzdecode : decodeFq2 z ≠ 0 := by
    rw [cz.2, czy.2]
    have hprod := mul_ne_zero hzraw hyraw
    intro hzero
    have htwoProd : (2 : Ipp.Bls12377.Fq2) *
        (decodeFq2 a.z * decodeFq2 a.y) = 0 := by
      simpa [two_mul] using hzero
    exact (mul_ne_zero fq2_two_ne_zero hprod) htwoProd
  have hzout := isZeroFq2Mont_eq_false_of_decode_ne_zero z cz.1 hzdecode
  simp [decodeG2, hzout]
  rw [hcoords]
  have ex' : decodeFq2 x = (3 * decodeFq2 a.x ^ 2) ^ 2 -
      2 * (4 * decodeFq2 a.x * decodeFq2 a.y ^ 2) := by
    simp only [cx.2, ce2.2, ce.2, ctwoAa.2, caa.2, ctwoD.2, cd.2, cd1.2,
      cd0.2, cb.2]
    ring
  have ey' : decodeFq2 y = 3 * decodeFq2 a.x ^ 2 *
        (4 * decodeFq2 a.x * decodeFq2 a.y ^ 2 - decodeFq2 x) -
      8 * decodeFq2 a.y ^ 4 := by
    simp only [cy.2, cedx.2, cdx.2, cd.2, cd1.2, cd0.2, cb.2, ce.2,
      ctwoAa.2, caa.2, cc8.2, cc4.2, cc2.2, cc.2]
    ring
  have ez' : decodeFq2 z = 2 * decodeFq2 a.z * decodeFq2 a.y := by
    simp only [cz.2, czy.2]
    ring
  rw [ex', ey', ex', ez']
  exact tangent_decode_identity (decodeFq2 a.x) (decodeFq2 a.y) (decodeFq2 a.z)
    fq2_two_ne_zero hyraw hzraw

/-- Doubling a decoded Fq2 point with affine y zero produces the zero-Z class. -/
theorem decode_g2_double_order2 (a output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (p : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hdecode : decodeG2 a = some p) (hy : p.2 = 0)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok output) :
    CanonicalG2 output ∧ decodeG2 output = none := by
  have haz : isZeroFq2Mont a.z ≠ true := by
    intro hz
    simp [decodeG2, hz] at hdecode
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double at hexec
  simp [fq2_eq_zero, haz] at hexec
  obtain ⟨aa, haa, hexec⟩ := bind_eq_ok hexec
  obtain ⟨b, hb, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c, hc, hexec⟩ := bind_eq_ok hexec
  obtain ⟨d0, hd0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨d1, hd1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨d, hd, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoAa, htwoAa, hexec⟩ := bind_eq_ok hexec
  obtain ⟨e, he, hexec⟩ := bind_eq_ok hexec
  obtain ⟨zy, hzy, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z, hz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨e2, he2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoD, htwoD, hexec⟩ := bind_eq_ok hexec
  obtain ⟨x, hx, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c2, hc2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c4, hc4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨c8, hc8, hexec⟩ := bind_eq_ok hexec
  obtain ⟨dx, hdx, hexec⟩ := bind_eq_ok hexec
  obtain ⟨edx, hedx, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y, hyexec, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have caa := extracted_fq2_square_spec a.x aa ha.1 haa
  have cb := extracted_fq2_square_spec a.y b ha.2.1 hb
  have cc := extracted_fq2_square_spec b c cb.1 hc
  have cd0 := extracted_fq2_mul_spec a.x b d0 ha.1 cb.1 hd0
  have cd1 := fq2_double_spec d0 d1 cd0.1 hd1
  have cd := fq2_double_spec d1 d cd1.1 hd
  have ctwoAa := fq2_double_spec aa twoAa caa.1 htwoAa
  have ce := fq2_add_spec aa twoAa e caa.1 ctwoAa.1 he
  have czy := extracted_fq2_mul_spec a.z a.y zy ha.2.2 ha.2.1 hzy
  have cz := fq2_double_spec zy z czy.1 hz
  have ce2 := extracted_fq2_square_spec e e2 ce.1 he2
  have ctwoD := fq2_double_spec d twoD cd.1 htwoD
  have cx := fq2_sub_spec e2 twoD x ce2.1 ctwoD.1 hx
  have cc2 := fq2_double_spec c c2 cc.1 hc2
  have cc4 := fq2_double_spec c2 c4 cc2.1 hc4
  have cc8 := fq2_double_spec c4 c8 cc4.1 hc8
  have cdx := fq2_sub_spec d x dx cd.1 cx.1 hdx
  have cedx := extracted_fq2_mul_spec dx e edx cdx.1 ce.1 hedx
  have cy := fq2_sub_spec edx c8 y cedx.1 cc8.1 hyexec
  refine ⟨⟨cx.1, cy.1, cz.1⟩, ?_⟩
  have hzraw : decodeFq2 a.z ≠ 0 := by
    intro hzero
    have hztrue := (isZeroFq2Mont_eq_true_iff a.z ha.2.2).2 hzero
    exact haz hztrue
  have hcoords : p = (decodeFq2 a.x / decodeFq2 a.z ^ 2,
      decodeFq2 a.y / decodeFq2 a.z ^ 3) := by
    simpa [decodeG2, haz] using hdecode.symm
  have hyraw : decodeFq2 a.y = 0 := by
    rw [hcoords] at hy
    simpa [hzraw] using hy
  have hzdecode : decodeFq2 z = 0 := by simp [cz.2, czy.2, hyraw]
  have hztrue := (isZeroFq2Mont_eq_true_iff z cz.1).2 hzdecode
  simp [decodeG2, hztrue]

set_option maxHeartbeats 8000000

/-- Executed generic Jacobian addition over Fq2 decodes to the affine chord formula. -/
theorem decode_g2_add_generic (a b output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hb : CanonicalG2 b)
    (p q : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hpa : decodeG2 a = some p) (hqb : decodeG2 b = some q)
    (hx : p.1 ≠ q.1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    CanonicalG2 output ∧ decodeG2 output = some (chordAddG2 p q) := by
  have haz : isZeroFq2Mont a.z ≠ true := by
    intro hz
    simp [decodeG2, hz] at hpa
  have hbz : isZeroFq2Mont b.z ≠ true := by
    intro hz
    simp [decodeG2, hz] at hqb
  have hZa : decodeFq2 a.z ≠ 0 := by
    intro hz
    exact haz ((isZeroFq2Mont_eq_true_iff a.z ha.2.2).2 hz)
  have hZb : decodeFq2 b.z ≠ 0 := by
    intro hz
    exact hbz ((isZeroFq2Mont_eq_true_iff b.z hb.2.2).2 hz)
  have hpcoords : p = (decodeFq2 a.x / decodeFq2 a.z ^ 2,
      decodeFq2 a.y / decodeFq2 a.z ^ 3) := by
    simpa [decodeG2, haz] using hpa.symm
  have hqcoords : q = (decodeFq2 b.x / decodeFq2 b.z ^ 2,
      decodeFq2 b.y / decodeFq2 b.z ^ 3) := by
    simpa [decodeG2, hbz] using hqb.symm
  have hxraw : decodeFq2 a.x / decodeFq2 a.z ^ 2 ≠
      decodeFq2 b.x / decodeFq2 b.z ^ 2 := by
    simpa [hpcoords, hqcoords] using hx
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add at hexec
  simp [fq2_eq_zero, haz, hbz] at hexec
  obtain ⟨z1z1, hz1z1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z2z2, hz2z2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u1, hu1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u2, hu2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨ayz, hayz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s1, hs1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨bya, hbya, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  have cz1z1 := extracted_fq2_square_spec a.z z1z1 ha.2.2 hz1z1
  have cz2z2 := extracted_fq2_square_spec b.z z2z2 hb.2.2 hz2z2
  have cu1 := extracted_fq2_mul_spec a.x z2z2 u1 ha.1 cz2z2.1 hu1
  have cu2 := extracted_fq2_mul_spec b.x z1z1 u2 hb.1 cz1z1.1 hu2
  have cayz := extracted_fq2_mul_spec a.y b.z ayz ha.2.1 hb.2.2 hayz
  have cs1 := extracted_fq2_mul_spec ayz z2z2 s1 cayz.1 cz2z2.1 hs1
  have cbya := extracted_fq2_mul_spec b.y a.z bya hb.2.1 ha.2.2 hbya
  have cs2 := extracted_fq2_mul_spec bya z1z1 s2 cbya.1 cz1z1.1 hs2
  have eu1' : decodeFq2 u1 = decodeFq2 a.x * decodeFq2 b.z ^ 2 := by
    simp only [cu1.2, cz2z2.2]
    ring
  have eu2' : decodeFq2 u2 = decodeFq2 b.x * decodeFq2 a.z ^ 2 := by
    simp only [cu2.2, cz1z1.2]
    ring
  have huDecode : decodeFq2 u1 ≠ decodeFq2 u2 := by
    rw [eu1', eu2']
    intro hcross
    exact hxraw ((decode_g2_x_cross_eq_iff a b ha hb hZa hZb).1 hcross)
  have huComponentsNe : ¬(u1.c0.val = u2.c0.val ∧ u1.c1.val = u2.c1.val) := by
    intro hval
    exact huDecode ((canonical_fq2_val_eq_iff_decode_eq u1 u2 cu1.1 cu2.1).1 hval)
  simp [fq2_eq, huComponentsNe] at hexec
  obtain ⟨h, hh, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoH, htwoH, hexec⟩ := bind_eq_ok hexec
  obtain ⟨i, hi, hexec⟩ := bind_eq_ok hexec
  obtain ⟨nh, hnh, hexec⟩ := bind_eq_ok hexec
  obtain ⟨j, hj, hexec⟩ := bind_eq_ok hexec
  obtain ⟨ds, hds, hexec⟩ := bind_eq_ok hexec
  obtain ⟨r, hr, hexec⟩ := bind_eq_ok hexec
  obtain ⟨v, hv, hexec⟩ := bind_eq_ok hexec
  obtain ⟨r2, hr2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨r2j, hr2j, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoV, htwoV, hexec⟩ := bind_eq_ok hexec
  obtain ⟨x, hxexec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨vx, hvx, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y0, hy0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoS1, htwoS1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y1, hy1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y, hyexec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨zz, hzz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoZz, htwoZz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z, hzexec, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have ch := fq2_sub_spec u2 u1 h cu2.1 cu1.1 hh
  have ctwoH := fq2_double_spec h twoH ch.1 htwoH
  have ci := extracted_fq2_square_spec twoH i ctwoH.1 hi
  have cnh := fq2_neg_spec h nh ch.1 hnh
  have cj := extracted_fq2_mul_spec nh i j cnh.1 ci.1 hj
  have cds := fq2_sub_spec s2 s1 ds cs2.1 cs1.1 hds
  have cr := fq2_double_spec ds r cds.1 hr
  have cv := extracted_fq2_mul_spec u1 i v cu1.1 ci.1 hv
  have cr2 := extracted_fq2_square_spec r r2 cr.1 hr2
  have cr2j := fq2_add_spec r2 j r2j cr2.1 cj.1 hr2j
  have ctwoV := fq2_double_spec v twoV cv.1 htwoV
  have cx := fq2_sub_spec r2j twoV x cr2j.1 ctwoV.1 hxexec
  have cvx := fq2_sub_spec v x vx cv.1 cx.1 hvx
  have cy0 := extracted_fq2_mul_spec r vx y0 cr.1 cvx.1 hy0
  have ctwoS1 := fq2_double_spec s1 twoS1 cs1.1 htwoS1
  have cy1 := extracted_fq2_mul_spec twoS1 j y1 ctwoS1.1 cj.1 hy1
  have cy := fq2_add_spec y0 y1 y cy0.1 cy1.1 hyexec
  have czz := extracted_fq2_mul_spec a.z b.z zz ha.2.2 hb.2.2 hzz
  have ctwoZz := fq2_double_spec zz twoZz czz.1 htwoZz
  have cz := extracted_fq2_mul_spec twoZz h z ctwoZz.1 ch.1 hzexec
  refine ⟨⟨cx.1, cy.1, cz.1⟩, ?_⟩
  have es1' : decodeFq2 s1 = decodeFq2 a.y * decodeFq2 b.z ^ 3 := by
    simp only [cs1.2, cayz.2, cz2z2.2]
    ring
  have es2' : decodeFq2 s2 = decodeFq2 b.y * decodeFq2 a.z ^ 3 := by
    simp only [cs2.2, cbya.2, cz1z1.2]
    ring
  have eh : decodeFq2 h = decodeFq2 u2 - decodeFq2 u1 := ch.2
  have hhdecode : decodeFq2 h ≠ 0 := by
    rw [eh]
    exact sub_ne_zero.mpr (Ne.symm huDecode)
  have ez' : decodeFq2 z =
      2 * (decodeFq2 a.z * decodeFq2 b.z) * decodeFq2 h := by
    simp only [cz.2, ctwoZz.2, czz.2]
    ring
  have hzdecode : decodeFq2 z ≠ 0 := by
    rw [ez']
    exact mul_ne_zero (mul_ne_zero fq2_two_ne_zero (mul_ne_zero hZa hZb)) hhdecode
  have hzout := isZeroFq2Mont_eq_false_of_decode_ne_zero z cz.1 hzdecode
  simp [decodeG2, hzout]
  rw [hpcoords, hqcoords]
  let a₁ := decodeFq2 a.x / decodeFq2 a.z ^ 2
  let b₁ := decodeFq2 a.y / decodeFq2 a.z ^ 3
  let a₂ := decodeFq2 b.x / decodeFq2 b.z ^ 2
  let b₂ := decodeFq2 b.y / decodeFq2 b.z ^ 3
  let cscale := decodeFq2 a.z * decodeFq2 b.z
  let H := a₂ - a₁
  let I := (2 * H) ^ 2
  let J := -H * I
  let R := 2 * (b₂ - b₁)
  let V := a₁ * I
  let X := R ^ 2 + J - 2 * V
  let Y := R * (V - X) + (2 * b₁) * J
  change (decodeFq2 x / decodeFq2 z ^ 2, decodeFq2 y / decodeFq2 z ^ 3) =
    chordAddG2 (a₁, b₁) (a₂, b₂)
  have hu₁' : decodeFq2 u1 = cscale ^ 2 * a₁ := by
    rw [eu1']
    exact decode_scale_square (decodeFq2 a.x) (decodeFq2 a.z) (decodeFq2 b.z) hZa
  have hu₂' : decodeFq2 u2 = cscale ^ 2 * a₂ := by
    rw [eu2']
    change decodeFq2 b.x * decodeFq2 a.z ^ 2 =
      (decodeFq2 a.z * decodeFq2 b.z) ^ 2 *
        (decodeFq2 b.x / decodeFq2 b.z ^ 2)
    rw [mul_comm (decodeFq2 a.z) (decodeFq2 b.z)]
    exact decode_scale_square (decodeFq2 b.x) (decodeFq2 b.z) (decodeFq2 a.z) hZb
  have hs₁' : decodeFq2 s1 = cscale ^ 3 * b₁ := by
    rw [es1']
    exact decode_scale_cube (decodeFq2 a.y) (decodeFq2 a.z) (decodeFq2 b.z) hZa
  have hs₂' : decodeFq2 s2 = cscale ^ 3 * b₂ := by
    rw [es2']
    change decodeFq2 b.y * decodeFq2 a.z ^ 3 =
      (decodeFq2 a.z * decodeFq2 b.z) ^ 3 *
        (decodeFq2 b.y / decodeFq2 b.z ^ 3)
    rw [mul_comm (decodeFq2 a.z) (decodeFq2 b.z)]
    exact decode_scale_cube (decodeFq2 b.y) (decodeFq2 b.z) (decodeFq2 a.z) hZb
  have di : decodeFq2 i = (2 * decodeFq2 h) ^ 2 := by
    simp only [ci.2, ctwoH.2]
    ring
  have dj : decodeFq2 j = -decodeFq2 h * decodeFq2 i := by
    rw [cj.2, cnh.2]
  have dr : decodeFq2 r = 2 * (decodeFq2 s2 - decodeFq2 s1) := by
    simp only [cr.2, cds.2]
    ring
  have dv : decodeFq2 v = decodeFq2 u1 * decodeFq2 i := cv.2
  have dx : decodeFq2 x =
      decodeFq2 r ^ 2 + decodeFq2 j - 2 * decodeFq2 v := by
    simp only [cx.2, cr2j.2, cr2.2, ctwoV.2]
    ring
  have dy : decodeFq2 y = decodeFq2 r * (decodeFq2 v - decodeFq2 x) +
      (2 * decodeFq2 s1) * decodeFq2 j := by
    simp only [cy.2, cy0.2, cvx.2, cy1.2, ctwoS1.2]
    ring
  have dz : decodeFq2 z = 2 * cscale * decodeFq2 h := by
    simp only [cz.2, ctwoZz.2, czz.2]
    ring
  have hH : H = a₂ - a₁ := rfl
  have hI : I = (2 * H) ^ 2 := rfl
  have hJ : J = -H * I := rfl
  have hR : R = 2 * (b₂ - b₁) := rfl
  have hV : V = a₁ * I := rfl
  have hX : X = R ^ 2 + J - 2 * V := rfl
  have hY : Y = R * (V - X) + (2 * b₁) * J := rfl
  have hcscale : cscale ≠ 0 := mul_ne_zero hZa hZb
  have hne : a₁ ≠ a₂ := hxraw
  clear_value Y X V R J I H cscale b₂ a₂ b₁ a₁
  exact chord_decode_core a₁ b₁ a₂ b₂ cscale
    (decodeFq2 u1) (decodeFq2 u2) (decodeFq2 s1) (decodeFq2 s2)
    (decodeFq2 h) (decodeFq2 i) (decodeFq2 j) (decodeFq2 r) (decodeFq2 v)
    (decodeFq2 x) (decodeFq2 y) (decodeFq2 z) H I J R V X Y
    hu₁' hu₂' hs₁' hs₂' eh di dj dr dv dx dy dz
    hH hI hJ hR hV hX hY fq2_two_ne_zero hcscale hne

private theorem g2_add_branch_of_same_x (a b output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hb : CanonicalG2 b)
    (p q : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hpa : decodeG2 a = some p) (hqb : decodeG2 b = some q)
    (hx : p.1 = q.1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    (p.2 = q.2 ∧ ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok output) ∨
      (p.2 ≠ q.2 ∧ ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero = .ok output) := by
  have haz : isZeroFq2Mont a.z ≠ true := by
    intro hz
    simp [decodeG2, hz] at hpa
  have hbz : isZeroFq2Mont b.z ≠ true := by
    intro hz
    simp [decodeG2, hz] at hqb
  have hZa : decodeFq2 a.z ≠ 0 := by
    intro hz
    exact haz ((isZeroFq2Mont_eq_true_iff a.z ha.2.2).2 hz)
  have hZb : decodeFq2 b.z ≠ 0 := by
    intro hz
    exact hbz ((isZeroFq2Mont_eq_true_iff b.z hb.2.2).2 hz)
  have hpcoords : p = (decodeFq2 a.x / decodeFq2 a.z ^ 2,
      decodeFq2 a.y / decodeFq2 a.z ^ 3) := by
    simpa [decodeG2, haz] using hpa.symm
  have hqcoords : q = (decodeFq2 b.x / decodeFq2 b.z ^ 2,
      decodeFq2 b.y / decodeFq2 b.z ^ 3) := by
    simpa [decodeG2, hbz] using hqb.symm
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add at hexec
  simp [fq2_eq_zero, haz, hbz] at hexec
  obtain ⟨z1z1, hz1z1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z2z2, hz2z2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u1, hu1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u2, hu2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨ayz, hayz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s1, hs1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨bya, hbya, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  have cz1z1 := extracted_fq2_square_spec a.z z1z1 ha.2.2 hz1z1
  have cz2z2 := extracted_fq2_square_spec b.z z2z2 hb.2.2 hz2z2
  have cu1 := extracted_fq2_mul_spec a.x z2z2 u1 ha.1 cz2z2.1 hu1
  have cu2 := extracted_fq2_mul_spec b.x z1z1 u2 hb.1 cz1z1.1 hu2
  have cayz := extracted_fq2_mul_spec a.y b.z ayz ha.2.1 hb.2.2 hayz
  have cs1 := extracted_fq2_mul_spec ayz z2z2 s1 cayz.1 cz2z2.1 hs1
  have cbya := extracted_fq2_mul_spec b.y a.z bya hb.2.1 ha.2.2 hbya
  have cs2 := extracted_fq2_mul_spec bya z1z1 s2 cbya.1 cz1z1.1 hs2
  have eu1' : decodeFq2 u1 = decodeFq2 a.x * decodeFq2 b.z ^ 2 := by
    simp only [cu1.2, cz2z2.2]
    ring
  have eu2' : decodeFq2 u2 = decodeFq2 b.x * decodeFq2 a.z ^ 2 := by
    simp only [cu2.2, cz1z1.2]
    ring
  have es1' : decodeFq2 s1 =
      (decodeFq2 a.y * decodeFq2 b.z) * decodeFq2 b.z ^ 2 := by
    simp only [cs1.2, cayz.2, cz2z2.2]
    ring
  have es2' : decodeFq2 s2 =
      (decodeFq2 b.y * decodeFq2 a.z) * decodeFq2 a.z ^ 2 := by
    simp only [cs2.2, cbya.2, cz1z1.2]
    ring
  have hxraw : decodeFq2 a.x / decodeFq2 a.z ^ 2 =
      decodeFq2 b.x / decodeFq2 b.z ^ 2 := by
    simpa [hpcoords, hqcoords] using hx
  have hucross := (decode_g2_x_cross_eq_iff a b ha hb hZa hZb).2 hxraw
  have huDecode : decodeFq2 u1 = decodeFq2 u2 := by
    rw [eu1', eu2']
    exact hucross
  have huVal :=
    (canonical_fq2_val_eq_iff_decode_eq u1 u2 cu1.1 cu2.1).2 huDecode
  have huExec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
        u1 u2 = .ok true := by
    rw [fq2_eq_components]
    simpa [huVal]
  obtain ⟨uEq, huEq, hexec⟩ := bind_eq_ok hexec
  rw [huExec] at huEq
  simp only [Result.ok.injEq] at huEq
  subst uEq
  change (do
    let sEq ←
      ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
        s1 s2
    if sEq = true then ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a
    else ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero) = .ok output at hexec
  obtain ⟨sEq, hsEq, hexec⟩ := bind_eq_ok hexec
  by_cases hy : p.2 = q.2
  · have hyraw : decodeFq2 a.y / decodeFq2 a.z ^ 3 =
        decodeFq2 b.y / decodeFq2 b.z ^ 3 := by
      simpa [hpcoords, hqcoords] using hy
    have hscross := (decode_g2_y_cross_eq_iff a b ha hb hZa hZb).2 hyraw
    have hsDecode : decodeFq2 s1 = decodeFq2 s2 := by
      rw [es1', es2']
      exact hscross
    have hsVal :=
      (canonical_fq2_val_eq_iff_decode_eq s1 s2 cs1.1 cs2.1).2 hsDecode
    have hsExec :
        ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
          s1 s2 = .ok true := by
      rw [fq2_eq_components]
      simpa [hsVal]
    left
    refine ⟨hy, ?_⟩
    rw [hsExec] at hsEq
    simp only [Result.ok.injEq] at hsEq
    subst sEq
    exact hexec
  · have hyraw : decodeFq2 a.y / decodeFq2 a.z ^ 3 ≠
        decodeFq2 b.y / decodeFq2 b.z ^ 3 := by
      simpa [hpcoords, hqcoords] using hy
    have hsDecode : decodeFq2 s1 ≠ decodeFq2 s2 := by
      rw [es1', es2']
      intro hcross
      exact hyraw ((decode_g2_y_cross_eq_iff a b ha hb hZa hZb).1 hcross)
    have hsVal : ¬(s1.c0.val = s2.c0.val ∧ s1.c1.val = s2.c1.val) := by
      intro hval
      exact hsDecode
        ((canonical_fq2_val_eq_iff_decode_eq s1 s2 cs1.1 cs2.1).1 hval)
    have hsExec :
        ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
          s1 s2 = .ok false := by
      rw [fq2_eq_components]
      simpa [hsVal]
    right
    refine ⟨hy, ?_⟩
    rw [hsExec] at hsEq
    simp only [Result.ok.injEq] at hsEq
    subst sEq
    exact hexec

/-- Equal decoded inputs take the executed Fq2 doubling branch. -/
theorem decode_g2_add_equal_delegates (a b output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hb : CanonicalG2 b)
    (p : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hpa : decodeG2 a = some p) (hpb : decodeG2 b = some p)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    CanonicalG2 output ∧
      ∃ doubled, ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok doubled ∧
        decodeG2 output = decodeG2 doubled := by
  have hbranch := g2_add_branch_of_same_x a b output ha hb p p hpa hpb rfl hexec
  rcases hbranch with hbranch | hbranch
  · have hdouble := hbranch.2
    by_cases hy : p.2 = 0
    · have hd := decode_g2_double_order2 a output ha p hpa hy hdouble
      exact ⟨hd.1, output, hdouble, rfl⟩
    · have hd := decode_g2_double_generic a output ha p hpa hy hdouble
      exact ⟨hd.1, output, hdouble, rfl⟩
  · exact (hbranch.1 rfl).elim

/-- Opposite decoded inputs take the executed Fq2 zero branch. -/
theorem decode_g2_add_opposite (a b output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hb : CanonicalG2 b)
    (x y : Ipp.Bls12377.Fq2) (hy : y ≠ 0)
    (hpa : decodeG2 a = some (x, y)) (hpb : decodeG2 b = some (x, -y))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    decodeG2 output = none := by
  have hyneg : y ≠ -y := by
    intro h
    have htwoY : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) h
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwoY).resolve_left fq2_two_ne_zero)
  have hbranch := g2_add_branch_of_same_x a b output ha hb
    (x, y) (x, -y) hpa hpb rfl hexec
  rcases hbranch with hbranch | hbranch
  · exact (hyneg hbranch.1).elim
  · have hzero := hbranch.2
    unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero at hzero
    simp only [Result.ok.injEq] at hzero
    subst output
    simp [decodeG2, isZeroFq2Mont,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO]

/-- The executed opposite-input Fq2 branch returns a canonical identity. -/
theorem canonical_g2_add_opposite (a b output : G2ProjLimbTriple)
    (ha : CanonicalG2 a) (hb : CanonicalG2 b)
    (x y : Ipp.Bls12377.Fq2) (hy : y ≠ 0)
    (hpa : decodeG2 a = some (x, y)) (hpb : decodeG2 b = some (x, -y))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add a b = .ok output) :
    CanonicalG2 output := by
  have hyneg : y ≠ -y := by
    intro h
    have htwoY : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) h
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwoY).resolve_left fq2_two_ne_zero)
  have hbranch := g2_add_branch_of_same_x a b output ha hb
    (x, y) (x, -y) hpa hpb rfl hexec
  rcases hbranch with hbranch | hbranch
  · exact (hyneg hbranch.1).elim
  · exact canonical_g2_zero output hbranch.2

private theorem g2_add_mixed_branch_of_same_x (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (ha : CanonicalG2 a)
    (hbx : Canonical2 b.x) (hby : Canonical2 b.y)
    (p : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hinfinity : b.infinity = false) (hpa : decodeG2 a = some p)
    (hx : p.1 = decodeFq2 b.x)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    (p.2 = decodeFq2 b.y ∧
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok output) ∨
      (p.2 ≠ decodeFq2 b.y ∧
        ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero = .ok output) := by
  have haz : isZeroFq2Mont a.z ≠ true := by
    intro hz
    simp [decodeG2, hz] at hpa
  have hZa : decodeFq2 a.z ≠ 0 := by
    intro hz
    exact haz ((isZeroFq2Mont_eq_true_iff a.z ha.2.2).2 hz)
  have hpcoords : p = (decodeFq2 a.x / decodeFq2 a.z ^ 2,
      decodeFq2 a.y / decodeFq2 a.z ^ 3) := by
    simpa [decodeG2, haz] using hpa.symm
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed at hexec
  simp [hinfinity, fq2_eq_zero, haz] at hexec
  obtain ⟨z1z1, hz1z1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u2, hu2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨zby, hzby, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  have cz1z1 := extracted_fq2_square_spec a.z z1z1 ha.2.2 hz1z1
  have cu2 := extracted_fq2_mul_spec b.x z1z1 u2 hbx cz1z1.1 hu2
  have czby := extracted_fq2_mul_spec a.z b.y zby ha.2.2 hby hzby
  have cs2 := extracted_fq2_mul_spec zby z1z1 s2 czby.1 cz1z1.1 hs2
  have eu2' : decodeFq2 u2 = decodeFq2 b.x * decodeFq2 a.z ^ 2 := by
    simp only [cu2.2, cz1z1.2]
    ring
  have es2' : decodeFq2 s2 =
      (decodeFq2 b.y * decodeFq2 a.z) * decodeFq2 a.z ^ 2 := by
    simp only [cs2.2, czby.2, cz1z1.2]
    ring
  have hxraw : decodeFq2 a.x / decodeFq2 a.z ^ 2 = decodeFq2 b.x := by
    simpa [hpcoords] using hx
  have hxscaled : decodeFq2 a.x = decodeFq2 b.x * decodeFq2 a.z ^ 2 :=
    (div_eq_iff (pow_ne_zero 2 hZa)).mp hxraw
  have hxDecode : decodeFq2 a.x = decodeFq2 u2 := by rw [eu2', hxscaled]
  have hxVal :=
    (canonical_fq2_val_eq_iff_decode_eq a.x u2 ha.1 cu2.1).2 hxDecode
  have hxExec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
        a.x u2 = .ok true := by
    rw [fq2_eq_components]
    simpa [hxVal]
  obtain ⟨xEq, hxEq, hexec⟩ := bind_eq_ok hexec
  rw [hxExec] at hxEq
  simp only [Result.ok.injEq] at hxEq
  subst xEq
  change (do
    let yEq ←
      ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
        a.y s2
    if yEq = true then ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a
    else ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero) = .ok output at hexec
  obtain ⟨yEq, hyEq, hexec⟩ := bind_eq_ok hexec
  by_cases hy : p.2 = decodeFq2 b.y
  · have hyraw : decodeFq2 a.y / decodeFq2 a.z ^ 3 = decodeFq2 b.y := by
      simpa [hpcoords] using hy
    have hyscaled : decodeFq2 a.y =
        (decodeFq2 b.y * decodeFq2 a.z) * decodeFq2 a.z ^ 2 := by
      calc
        decodeFq2 a.y = decodeFq2 b.y * decodeFq2 a.z ^ 3 :=
          (div_eq_iff (pow_ne_zero 3 hZa)).mp hyraw
        _ = (decodeFq2 b.y * decodeFq2 a.z) * decodeFq2 a.z ^ 2 := by ring
    have hyDecode : decodeFq2 a.y = decodeFq2 s2 := by rw [es2', hyscaled]
    have hyVal :=
      (canonical_fq2_val_eq_iff_decode_eq a.y s2 ha.2.1 cs2.1).2 hyDecode
    have hyExec :
        ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
          a.y s2 = .ok true := by
      rw [fq2_eq_components]
      simpa [hyVal]
    left
    refine ⟨hy, ?_⟩
    rw [hyExec] at hyEq
    simp only [Result.ok.injEq] at hyEq
    subst yEq
    exact hexec
  · have hyraw : decodeFq2 a.y / decodeFq2 a.z ^ 3 ≠ decodeFq2 b.y := by
      simpa [hpcoords] using hy
    have hyDecode : decodeFq2 a.y ≠ decodeFq2 s2 := by
      rw [es2']
      intro hscaled
      apply hyraw
      apply (div_eq_iff (pow_ne_zero 3 hZa)).mpr
      calc
        decodeFq2 a.y =
            (decodeFq2 b.y * decodeFq2 a.z) * decodeFq2 a.z ^ 2 := hscaled
        _ = decodeFq2 b.y * decodeFq2 a.z ^ 3 := by ring
    have hyVal :
        ¬(a.y.c0.val = s2.c0.val ∧ a.y.c1.val = s2.c1.val) := by
      intro hval
      exact hyDecode
        ((canonical_fq2_val_eq_iff_decode_eq a.y s2 ha.2.1 cs2.1).1 hval)
    have hyExec :
        ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
          a.y s2 = .ok false := by
      rw [fq2_eq_components]
      simpa [hyVal]
    right
    refine ⟨hy, ?_⟩
    rw [hyExec] at hyEq
    simp only [Result.ok.injEq] at hyEq
    subst yEq
    exact hexec

/-- Equal projective/affine Fq2 inputs take the mixed doubling branch. -/
theorem decode_g2_add_mixed_equal_delegates (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (ha : CanonicalG2 a)
    (hbx : Canonical2 b.x) (hby : Canonical2 b.y)
    (hinfinity : b.infinity = false)
    (hpa : decodeG2 a = some (decodeFq2 b.x, decodeFq2 b.y))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    CanonicalG2 output ∧
      ∃ doubled, ark_ip_proofs.s3_07_arkworks_fq_spike.g2_double a = .ok doubled ∧
        decodeG2 output = decodeG2 doubled := by
  have hbranch := g2_add_mixed_branch_of_same_x a output b ha hbx hby
    (decodeFq2 b.x, decodeFq2 b.y) hinfinity hpa rfl hexec
  rcases hbranch with hbranch | hbranch
  · have hdouble := hbranch.2
    by_cases hy : decodeFq2 b.y = 0
    · have hd := decode_g2_double_order2 a output ha
        (decodeFq2 b.x, decodeFq2 b.y) hpa hy hdouble
      exact ⟨hd.1, output, hdouble, rfl⟩
    · have hd := decode_g2_double_generic a output ha
        (decodeFq2 b.x, decodeFq2 b.y) hpa hy hdouble
      exact ⟨hd.1, output, hdouble, rfl⟩
  · exact (hbranch.1 rfl).elim

/-- Opposite projective/affine Fq2 inputs take the mixed zero branch. -/
theorem decode_g2_add_mixed_opposite (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (ha : CanonicalG2 a)
    (hbx : Canonical2 b.x) (hby : Canonical2 b.y)
    (x y : Ipp.Bls12377.Fq2) (hy : y ≠ 0)
    (hinfinity : b.infinity = false) (hpa : decodeG2 a = some (x, y))
    (hbxdecode : decodeFq2 b.x = x) (hbydecode : decodeFq2 b.y = -y)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    decodeG2 output = none := by
  have hyneg : y ≠ -y := by
    intro h
    have htwoY : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) h
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwoY).resolve_left fq2_two_ne_zero)
  have hbranch := g2_add_mixed_branch_of_same_x a output b ha hbx hby
    (x, y) hinfinity hpa hbxdecode.symm hexec
  rcases hbranch with hbranch | hbranch
  · exact (hyneg (hbranch.1.trans hbydecode)).elim
  · have hzero := hbranch.2
    unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_zero at hzero
    simp only [Result.ok.injEq] at hzero
    subst output
    simp [decodeG2, isZeroFq2Mont,
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ2_ZERO]

/-- The executed mixed opposite-input Fq2 branch returns a canonical identity. -/
theorem canonical_g2_add_mixed_opposite (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (ha : CanonicalG2 a)
    (hbx : Canonical2 b.x) (hby : Canonical2 b.y)
    (x y : Ipp.Bls12377.Fq2) (hy : y ≠ 0)
    (hinfinity : b.infinity = false) (hpa : decodeG2 a = some (x, y))
    (hbxdecode : decodeFq2 b.x = x) (hbydecode : decodeFq2 b.y = -y)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    CanonicalG2 output := by
  have hyneg : y ≠ -y := by
    intro h
    have htwoY : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) h
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwoY).resolve_left fq2_two_ne_zero)
  have hbranch := g2_add_mixed_branch_of_same_x a output b ha hbx hby
    (x, y) hinfinity hpa hbxdecode.symm hexec
  rcases hbranch with hbranch | hbranch
  · exact (hyneg (hbranch.1.trans hbydecode)).elim
  · exact canonical_g2_zero output hbranch.2

/-- Executed generic mixed Fq2 addition decodes to the affine chord formula. -/
theorem decode_g2_add_mixed_generic (a output : G2ProjLimbTriple)
    (b : G2AffineLimbPair) (ha : CanonicalG2 a)
    (hbx : Canonical2 b.x) (hby : Canonical2 b.y)
    (p : Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)
    (hinfinity : b.infinity = false) (hpa : decodeG2 a = some p)
    (hx : p.1 ≠ decodeFq2 b.x)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed a b = .ok output) :
    CanonicalG2 output ∧
      decodeG2 output = some (chordAddG2 p (decodeFq2 b.x, decodeFq2 b.y)) := by
  have haz : isZeroFq2Mont a.z ≠ true := by
    intro hz
    simp [decodeG2, hz] at hpa
  have hZa : decodeFq2 a.z ≠ 0 := by
    intro hz
    exact haz ((isZeroFq2Mont_eq_true_iff a.z ha.2.2).2 hz)
  have hpcoords : p = (decodeFq2 a.x / decodeFq2 a.z ^ 2,
      decodeFq2 a.y / decodeFq2 a.z ^ 3) := by
    simpa [decodeG2, haz] using hpa.symm
  have hxraw : decodeFq2 a.x / decodeFq2 a.z ^ 2 ≠ decodeFq2 b.x := by
    simpa [hpcoords] using hx
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g2_add_mixed at hexec
  simp [hinfinity, fq2_eq_zero, haz] at hexec
  obtain ⟨z1z1, hz1z1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u2, hu2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨zby, hzby, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  have cz1z1 := extracted_fq2_square_spec a.z z1z1 ha.2.2 hz1z1
  have cu2 := extracted_fq2_mul_spec b.x z1z1 u2 hbx cz1z1.1 hu2
  have czby := extracted_fq2_mul_spec a.z b.y zby ha.2.2 hby hzby
  have cs2 := extracted_fq2_mul_spec zby z1z1 s2 czby.1 cz1z1.1 hs2
  have eu2' : decodeFq2 u2 = decodeFq2 b.x * decodeFq2 a.z ^ 2 := by
    simp only [cu2.2, cz1z1.2]
    ring
  have es2' : decodeFq2 s2 = decodeFq2 b.y * decodeFq2 a.z ^ 3 := by
    simp only [cs2.2, czby.2, cz1z1.2]
    ring
  have hxDecode : decodeFq2 a.x ≠ decodeFq2 u2 := by
    rw [eu2']
    intro hscaled
    exact hxraw ((div_eq_iff (pow_ne_zero 2 hZa)).mpr hscaled)
  have hxVal :
      ¬(a.x.c0.val = u2.c0.val ∧ a.x.c1.val = u2.c1.val) := by
    intro hval
    exact hxDecode
      ((canonical_fq2_val_eq_iff_decode_eq a.x u2 ha.1 cu2.1).1 hval)
  have hxExec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont.Insts.CoreCmpPartialEqFq2Mont.eq
        a.x u2 = .ok false := by
    rw [fq2_eq_components]
    simpa [hxVal]
  obtain ⟨xEq, hxEq, hexec⟩ := bind_eq_ok hexec
  rw [hxExec] at hxEq
  simp only [Result.ok.injEq] at hxEq
  subst xEq
  change (do
    let h ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub u2 a.x
    let hh ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square h
    let twoHh ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double hh
    let i ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double twoHh
    let nh ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg h
    let j ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul nh i
    let ds ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub s2 a.y
    let r ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double ds
    let v ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul a.x i
    let r2 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square r
    let r2j ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add r2 j
    let twoV ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double v
    let x ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub r2j twoV
    let vx ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub v x
    let y0 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul r vx
    let twoY ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double a.y
    let y1 ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul twoY j
    let y ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add y0 y1
    let zh ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul a.z h
    let z ← ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_double zh
    ok ({ x := x, y := y, z := z } : G2ProjLimbTriple)) = .ok output at hexec
  obtain ⟨h, hh, hexec⟩ := bind_eq_ok hexec
  obtain ⟨hh0, hhh0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoHh, htwoHh, hexec⟩ := bind_eq_ok hexec
  obtain ⟨i, hi, hexec⟩ := bind_eq_ok hexec
  obtain ⟨nh, hnh, hexec⟩ := bind_eq_ok hexec
  obtain ⟨j, hj, hexec⟩ := bind_eq_ok hexec
  obtain ⟨ds, hds, hexec⟩ := bind_eq_ok hexec
  obtain ⟨r, hr, hexec⟩ := bind_eq_ok hexec
  obtain ⟨v, hv, hexec⟩ := bind_eq_ok hexec
  obtain ⟨r2, hr2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨r2j, hr2j, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoV, htwoV, hexec⟩ := bind_eq_ok hexec
  obtain ⟨x, hxexec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨vx, hvx, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y0, hy0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoY, htwoY, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y1, hy1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y, hyexec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨zh, hzh, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z, hzexec, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have ch := fq2_sub_spec u2 a.x h cu2.1 ha.1 hh
  have chh := extracted_fq2_square_spec h hh0 ch.1 hhh0
  have ctwoHh := fq2_double_spec hh0 twoHh chh.1 htwoHh
  have ci := fq2_double_spec twoHh i ctwoHh.1 hi
  have cnh := fq2_neg_spec h nh ch.1 hnh
  have cj := extracted_fq2_mul_spec nh i j cnh.1 ci.1 hj
  have cds := fq2_sub_spec s2 a.y ds cs2.1 ha.2.1 hds
  have cr := fq2_double_spec ds r cds.1 hr
  have cv := extracted_fq2_mul_spec a.x i v ha.1 ci.1 hv
  have cr2 := extracted_fq2_square_spec r r2 cr.1 hr2
  have cr2j := fq2_add_spec r2 j r2j cr2.1 cj.1 hr2j
  have ctwoV := fq2_double_spec v twoV cv.1 htwoV
  have cx := fq2_sub_spec r2j twoV x cr2j.1 ctwoV.1 hxexec
  have cvx := fq2_sub_spec v x vx cv.1 cx.1 hvx
  have cy0 := extracted_fq2_mul_spec r vx y0 cr.1 cvx.1 hy0
  have ctwoY := fq2_double_spec a.y twoY ha.2.1 htwoY
  have cy1 := extracted_fq2_mul_spec twoY j y1 ctwoY.1 cj.1 hy1
  have cy := fq2_add_spec y0 y1 y cy0.1 cy1.1 hyexec
  have czh := extracted_fq2_mul_spec a.z h zh ha.2.2 ch.1 hzh
  have cz := fq2_double_spec zh z czh.1 hzexec
  refine ⟨⟨cx.1, cy.1, cz.1⟩, ?_⟩
  have hhdecode : decodeFq2 h ≠ 0 := by
    rw [ch.2]
    exact sub_ne_zero.mpr (Ne.symm hxDecode)
  have ez' : decodeFq2 z = 2 * decodeFq2 a.z * decodeFq2 h := by
    simp only [cz.2, czh.2]
    ring
  have hzdecode : decodeFq2 z ≠ 0 := by
    rw [ez']
    exact mul_ne_zero (mul_ne_zero fq2_two_ne_zero hZa) hhdecode
  have hzout := isZeroFq2Mont_eq_false_of_decode_ne_zero z cz.1 hzdecode
  simp [decodeG2, hzout]
  rw [hpcoords]
  let u₁d := decodeFq2 a.x
  let u₂d := decodeFq2 u2
  let s₁d := decodeFq2 a.y
  let s₂d := decodeFq2 s2
  let hd := decodeFq2 h
  let id := decodeFq2 i
  let jd := decodeFq2 j
  let rd := decodeFq2 r
  let vd := decodeFq2 v
  let xd := decodeFq2 x
  let yd := decodeFq2 y
  let zd := decodeFq2 z
  let c := decodeFq2 a.z
  let a₁ := u₁d / c ^ 2
  let b₁ := s₁d / c ^ 3
  let a₂ := decodeFq2 b.x
  let b₂ := decodeFq2 b.y
  let H := a₂ - a₁
  let I := (2 * H) ^ 2
  let J := -H * I
  let R := 2 * (b₂ - b₁)
  let V := a₁ * I
  let X := R ^ 2 + J - 2 * V
  let Y := R * (V - X) + (2 * b₁) * J
  change (xd / zd ^ 2, yd / zd ^ 3) =
    chordAddG2 (a₁, b₁) (a₂, b₂)
  have hu₁' : u₁d = c ^ 2 * a₁ := by
    change decodeFq2 a.x = decodeFq2 a.z ^ 2 *
      (decodeFq2 a.x / decodeFq2 a.z ^ 2)
    simpa using decode_scale_square (decodeFq2 a.x) (decodeFq2 a.z) 1 hZa
  have hu₂' : u₂d = c ^ 2 * a₂ := by
    change decodeFq2 u2 = decodeFq2 a.z ^ 2 * decodeFq2 b.x
    rw [eu2']
    ring
  have hs₁' : s₁d = c ^ 3 * b₁ := by
    change decodeFq2 a.y = decodeFq2 a.z ^ 3 *
      (decodeFq2 a.y / decodeFq2 a.z ^ 3)
    simpa using decode_scale_cube (decodeFq2 a.y) (decodeFq2 a.z) 1 hZa
  have hs₂' : s₂d = c ^ 3 * b₂ := by
    change decodeFq2 s2 = decodeFq2 a.z ^ 3 * decodeFq2 b.y
    rw [es2']
    ring
  have dh : hd = u₂d - u₁d := by
    change decodeFq2 h = decodeFq2 u2 - decodeFq2 a.x
    exact ch.2
  have di : id = (2 * hd) ^ 2 := by
    change decodeFq2 i = (2 * decodeFq2 h) ^ 2
    simp only [ci.2, ctwoHh.2, chh.2]
    ring
  have dj : jd = -hd * id := by
    change decodeFq2 j = -decodeFq2 h * decodeFq2 i
    rw [cj.2, cnh.2]
  have dr : rd = 2 * (s₂d - s₁d) := by
    change decodeFq2 r = 2 * (decodeFq2 s2 - decodeFq2 a.y)
    simp only [cr.2, cds.2]
    ring
  have dv : vd = u₁d * id := by
    change decodeFq2 v = decodeFq2 a.x * decodeFq2 i
    exact cv.2
  have dx : xd = rd ^ 2 + jd - 2 * vd := by
    change decodeFq2 x = decodeFq2 r ^ 2 + decodeFq2 j - 2 * decodeFq2 v
    simp only [cx.2, cr2j.2, cr2.2, ctwoV.2]
    ring
  have dy : yd = rd * (vd - xd) + (2 * s₁d) * jd := by
    change decodeFq2 y = decodeFq2 r * (decodeFq2 v - decodeFq2 x) +
      (2 * decodeFq2 a.y) * decodeFq2 j
    simp only [cy.2, cy0.2, cvx.2, cy1.2, ctwoY.2]
    ring
  have dz : zd = 2 * c * hd := by
    change decodeFq2 z = 2 * decodeFq2 a.z * decodeFq2 h
    simp only [cz.2, czh.2]
    ring
  have hH : H = a₂ - a₁ := rfl
  have hI : I = (2 * H) ^ 2 := rfl
  have hJ : J = -H * I := rfl
  have hR : R = 2 * (b₂ - b₁) := rfl
  have hV : V = a₁ * I := rfl
  have hX : X = R ^ 2 + J - 2 * V := rfl
  have hY : Y = R * (V - X) + (2 * b₁) * J := rfl
  have hc : c ≠ 0 := hZa
  have hne : a₁ ≠ a₂ := hxraw
  clear_value Y X V R J I H b₂ a₂ b₁ a₁ c zd yd xd vd rd jd id hd
    s₂d s₁d u₂d u₁d
  exact chord_decode_core a₁ b₁ a₂ b₂ c
    u₁d u₂d s₁d s₂d hd id jd rd vd xd yd zd
    H I J R V X Y hu₁' hu₂' hs₁' hs₂'
    dh di dj dr dv dx dy dz hH hI hJ hR hV hX hY fq2_two_ne_zero hc hne

#print axioms decode_g2_neg
#print axioms decode_g2_add_left_identity
#print axioms decode_g2_add_right_identity
#print axioms decode_g2_add_mixed_identity
#print axioms decode_g2_double_identity
#print axioms canonical_fq2_val_eq_iff_decode_eq
#print axioms decode_g2_x_cross_eq_iff
#print axioms decode_g2_y_cross_eq_iff
#print axioms decode_g2_double_generic
#print axioms decode_g2_double_order2
#print axioms decode_g2_add_generic
#print axioms decode_g2_add_equal_delegates
#print axioms decode_g2_add_opposite
#print axioms decode_g2_add_mixed_equal_delegates
#print axioms decode_g2_add_mixed_opposite
#print axioms decode_g2_add_mixed_generic
#print axioms canonical_g2_zero
#print axioms canonical_g2_add_left_identity
#print axioms canonical_g2_add_right_identity
#print axioms canonical_g2_add_mixed_identity
#print axioms decode_g2_add_mixed_left_identity
#print axioms canonical_g2_add_mixed_left_identity
#print axioms canonical_g2_double_identity
#print axioms canonical_g2_add_opposite
#print axioms canonical_g2_add_mixed_opposite

end Ipp.Extracted.ArkworksG2
