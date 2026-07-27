import Ipp.Extracted.ArkworksG1Generated
import Ipp.Extracted.ArkworksFqMul
import Ipp.Extracted.ArkworksFqOps
import Ipp.Extracted.ArkworksFqSquare
import Ipp.Extracted.ArkworksFq2
import Ipp.Bls12377
import Mathlib.Tactic

/-! S3-26 part 1: represented-class decoding and exceptional identity laws. -/

namespace Ipp.Extracted.ArkworksG1

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqOps (decode_extracted_neg extracted_neg_spec)
open Ipp.Extracted.ArkworksFqSquare (decode_extracted_square extracted_square_spec)
open Ipp.Extracted.ArkworksFq2 (decode_extracted_double extracted_double_spec)

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

/-- The affine chord rule, kept independent of the later on-curve model. -/
def chordAdd (p q : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq) :
    Ipp.Bls12377.Fq × Ipp.Bls12377.Fq :=
  let slope := (q.2 - p.2) / (q.1 - p.1)
  let x := slope ^ 2 - p.1 - q.1
  (x, slope * (p.1 - x) - p.2)

/-- The affine tangent rule for the BLS12-377 G1 coefficient `a = 0`. -/
def tangentDouble (p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq) :
    Ipp.Bls12377.Fq × Ipp.Bls12377.Fq :=
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

private theorem decode_fq_zero :
    decode ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO = 0 := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO]
  rw [decode_eq_cast_mul_inv]
  change (0 : Ipp.Bls12377.Fq) *
    (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq)⁻¹ = 0
  ring

private theorem array_eq_of_val_eq {a b : ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont}
    (h : a.val = b.val) : a = b := by
  apply MacCampaign.Array.ext
  exact h

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

/-- Canonical Montgomery representatives compare equal exactly when they decode equally. -/
theorem canonical_fq_val_eq_iff_decode_eq (x y : LimbArray)
    (hx : limbsToNat x < Ipp.Bls12377.baseModulus)
    (hy : limbsToNat y < Ipp.Bls12377.baseModulus) :
    x.val = y.val ↔ decode x = decode y := by
  constructor
  · intro h
    rw [array_eq_of_val_eq h]
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

private theorem div_sq_eq_iff_cross_eq (X₁ X₂ Z₁ Z₂ : Ipp.Bls12377.Fq)
    (hZ₁ : Z₁ ≠ 0) (hZ₂ : Z₂ ≠ 0) :
    X₁ / Z₁ ^ 2 = X₂ / Z₂ ^ 2 ↔ X₁ * Z₂ ^ 2 = X₂ * Z₁ ^ 2 := by
  field_simp [hZ₁, hZ₂]

private theorem div_cube_eq_iff_cross_eq (Y₁ Y₂ Z₁ Z₂ : Ipp.Bls12377.Fq)
    (hZ₁ : Z₁ ≠ 0) (hZ₂ : Z₂ ≠ 0) :
    Y₁ / Z₁ ^ 3 = Y₂ / Z₂ ^ 3 ↔
      (Y₁ * Z₂) * Z₂ ^ 2 = (Y₂ * Z₁) * Z₁ ^ 2 := by
  field_simp [hZ₁, hZ₂]

set_option maxHeartbeats 1000000
set_option maxRecDepth 4096

/-- Jacobian `U1 = U2` is equivalent to decoded affine x equality. -/
theorem decode_g1_x_cross_eq_iff (a b : G1ProjLimbTriple)
    (_ha : CanonicalG1 a) (_hb : CanonicalG1 b)
    (haz : decode a.z ≠ 0) (hbz : decode b.z ≠ 0) :
    decode a.x * decode b.z ^ 2 = decode b.x * decode a.z ^ 2 ↔
      decode a.x / decode a.z ^ 2 = decode b.x / decode b.z ^ 2 :=
  (div_sq_eq_iff_cross_eq _ _ _ _ haz hbz).symm

/-- Jacobian `S1 = S2` is equivalent to decoded affine y equality. -/
theorem decode_g1_y_cross_eq_iff (a b : G1ProjLimbTriple)
    (_ha : CanonicalG1 a) (_hb : CanonicalG1 b)
    (haz : decode a.z ≠ 0) (hbz : decode b.z ≠ 0) :
    (decode a.y * decode b.z) * decode b.z ^ 2 =
        (decode b.y * decode a.z) * decode a.z ^ 2 ↔
      decode a.y / decode a.z ^ 3 = decode b.y / decode b.z ^ 3 :=
  (div_cube_eq_iff_cross_eq _ _ _ _ haz hbz).symm

private theorem fq_two_ne_zero : (2 : Ipp.Bls12377.Fq) ≠ 0 := by
  intro h
  have hval := congrArg ZMod.val h
  simp only [ZMod.val_zero] at hval
  change 2 % Ipp.Bls12377.baseModulus = 0 at hval
  norm_num [Ipp.Bls12377.baseModulus] at hval

private theorem tangent_decode_identity (X Y Z : Ipp.Bls12377.Fq)
    (hY : Y ≠ 0) (hZ : Z ≠ 0) :
    let d := 4 * X * Y ^ 2
    let e := 3 * X ^ 2
    let x := e ^ 2 - 2 * d
    ((x / (2 * Z * Y) ^ 2),
      (e * (d - x) - 8 * Y ^ 4) / (2 * Z * Y) ^ 3) =
      tangentDouble (X / Z ^ 2, Y / Z ^ 3) := by
  dsimp only
  have h2 : (2 : Ipp.Bls12377.Fq) ≠ 0 := fq_two_ne_zero
  have h4 : (4 : Ipp.Bls12377.Fq) ≠ 0 := by
    convert mul_ne_zero h2 h2 using 1 <;> norm_num
  have h8 : (8 : Ipp.Bls12377.Fq) ≠ 0 := by
    convert mul_ne_zero h4 h2 using 1 <;> norm_num
  apply Prod.ext <;> simp only [Prod.fst, Prod.snd, tangentDouble]
  · field_simp [h2, h4, h8, hY, hZ]
    <;> ring
  · field_simp [h2, h4, h8, hY, hZ]
    <;> ring

private theorem chord_affine_identity
    (x₁ y₁ x₂ y₂ : Ipp.Bls12377.Fq) (hx : x₁ ≠ x₂) :
    let h := x₂ - x₁
    let i := (2 * h) ^ 2
    let j := -h * i
    let r := 2 * (y₂ - y₁)
    let v := x₁ * i
    let x := r ^ 2 + j - 2 * v
    let y := r * (v - x) + (2 * y₁) * j
    (x / (2 * h) ^ 2, y / (2 * h) ^ 3) = chordAdd (x₁, y₁) (x₂, y₂) := by
  dsimp only
  have hh : x₂ - x₁ ≠ 0 := sub_ne_zero.mpr (Ne.symm hx)
  have h2 : (2 : Ipp.Bls12377.Fq) ≠ 0 := fq_two_ne_zero
  apply Prod.ext <;> simp only [Prod.fst, Prod.snd, chordAdd]
  · field_simp [h2, hh]
    <;> ring
  · field_simp [h2, hh]
    <;> ring

private theorem decode_scale_square
    (X Z D : Ipp.Bls12377.Fq) (hZ : Z ≠ 0) :
    X * D ^ 2 = (Z * D) ^ 2 * (X / Z ^ 2) := by
  field_simp [hZ]
  <;> ring

private theorem decode_scale_cube
    (Y Z D : Ipp.Bls12377.Fq) (hZ : Z ≠ 0) :
    Y * D ^ 3 = (Z * D) ^ 3 * (Y / Z ^ 3) := by
  field_simp [hZ]
  <;> ring

private theorem chord_x_factor
    (c r j v R J V X : Ipp.Bls12377.Fq)
    (hr : r = c ^ 3 * R) (hj : j = c ^ 6 * J) (hv : v = c ^ 6 * V)
    (hX : X = R ^ 2 + J - 2 * V) :
    r ^ 2 + j - 2 * v = c ^ 6 * X := by
  subst r
  subst j
  subst v
  subst X
  ring

private theorem chord_y_factor
    (c r v x s j R V X b J Y : Ipp.Bls12377.Fq)
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

private theorem chord_h_factor
    (c u₁ u₂ a₁ a₂ H : Ipp.Bls12377.Fq)
    (hu₁ : u₁ = c ^ 2 * a₁) (hu₂ : u₂ = c ^ 2 * a₂)
    (hH : H = a₂ - a₁) :
    u₂ - u₁ = c ^ 2 * H := by
  subst u₁
  subst u₂
  subst H
  ring

private theorem chord_i_factor
    (c h H I : Ipp.Bls12377.Fq) (hh : h = c ^ 2 * H) (hI : I = (2 * H) ^ 2) :
    (2 * h) ^ 2 = c ^ 4 * I := by
  subst h
  subst I
  ring

private theorem chord_j_factor
    (c h i H I J : Ipp.Bls12377.Fq)
    (hh : h = c ^ 2 * H) (hi : i = c ^ 4 * I) (hJ : J = -H * I) :
    -h * i = c ^ 6 * J := by
  subst h
  subst i
  subst J
  ring

private theorem chord_r_factor
    (c s₁ s₂ b₁ b₂ R : Ipp.Bls12377.Fq)
    (hs₁ : s₁ = c ^ 3 * b₁) (hs₂ : s₂ = c ^ 3 * b₂)
    (hR : R = 2 * (b₂ - b₁)) :
    2 * (s₂ - s₁) = c ^ 3 * R := by
  subst s₁
  subst s₂
  subst R
  ring

private theorem chord_v_factor
    (c u i a I V : Ipp.Bls12377.Fq)
    (hu : u = c ^ 2 * a) (hi : i = c ^ 4 * I) (hV : V = a * I) :
    u * i = c ^ 6 * V := by
  subst u
  subst i
  subst V
  ring

private theorem chord_z_factor
    (c z h H : Ipp.Bls12377.Fq) (hz : z = 2 * c * h) (hh : h = c ^ 2 * H) :
    z ^ 2 = c ^ 6 * (2 * H) ^ 2 ∧ z ^ 3 = c ^ 9 * (2 * H) ^ 3 := by
  subst z
  subst h
  constructor <;> ring

private theorem chord_coordinates_of_factors
    (c x y z X Y d₂ d₃ : Ipp.Bls12377.Fq)
    (result : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hc : c ≠ 0)
    (hx : x = c ^ 6 * X) (hy : y = c ^ 9 * Y)
    (hz2 : z ^ 2 = c ^ 6 * d₂) (hz3 : z ^ 3 = c ^ 9 * d₃)
    (hbase : (X / d₂, Y / d₃) = result) :
    (x / z ^ 2, y / z ^ 3) = result := by
  apply Prod.ext <;> simp only [Prod.fst, Prod.snd]
  · rw [hx, hz2, mul_div_mul_left _ _ (pow_ne_zero 6 hc)]
    exact congrArg (fun p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq => p.1) hbase
  · rw [hy, hz3, mul_div_mul_left _ _ (pow_ne_zero 9 hc)]
    exact congrArg (fun p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq => p.2) hbase

private theorem chord_affine_components
    (a₁ b₁ a₂ b₂ H I J R V X Y : Ipp.Bls12377.Fq)
    (hH : H = a₂ - a₁) (hI : I = (2 * H) ^ 2) (hJ : J = -H * I)
    (hR : R = 2 * (b₂ - b₁)) (hV : V = a₁ * I)
    (hX : X = R ^ 2 + J - 2 * V) (hY : Y = R * (V - X) + (2 * b₁) * J)
    (hne : a₁ ≠ a₂) :
    (X / (2 * H) ^ 2, Y / (2 * H) ^ 3) = chordAdd (a₁, b₁) (a₂, b₂) := by
  subst H
  subst I
  subst J
  subst R
  subst V
  subst X
  subst Y
  exact chord_affine_identity a₁ b₁ a₂ b₂ hne

private theorem chord_decode_core
    (a₁ b₁ a₂ b₂ c u₁ u₂ s₁ s₂ h i j r v x y z
      H I J R V X Y : Ipp.Bls12377.Fq)
    (hu₁ : u₁ = c ^ 2 * a₁) (hu₂ : u₂ = c ^ 2 * a₂)
    (hs₁ : s₁ = c ^ 3 * b₁) (hs₂ : s₂ = c ^ 3 * b₂)
    (dh : h = u₂ - u₁) (di : i = (2 * h) ^ 2) (dj : j = -h * i)
    (dr : r = 2 * (s₂ - s₁)) (dv : v = u₁ * i)
    (dx : x = r ^ 2 + j - 2 * v) (dy : y = r * (v - x) + (2 * s₁) * j)
    (dz : z = 2 * c * h)
    (hH : H = a₂ - a₁) (hI : I = (2 * H) ^ 2) (hJ : J = -H * I)
    (hR : R = 2 * (b₂ - b₁)) (hV : V = a₁ * I)
    (hX : X = R ^ 2 + J - 2 * V) (hY : Y = R * (V - X) + (2 * b₁) * J)
    (hc : c ≠ 0) (hne : a₁ ≠ a₂) :
    (x / z ^ 2, y / z ^ 3) = chordAdd (a₁, b₁) (a₂, b₂) := by
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
    hH hI hJ hR hV hX hY hne
  exact chord_coordinates_of_factors c x y z X Y ((2 * H) ^ 2) ((2 * H) ^ 3)
    (chordAdd (a₁, b₁) (a₂, b₂)) hc hx hy hz.1 hz.2 hbase

set_option maxHeartbeats 8000000 in
private theorem chord_decode_identity
    (X₁ Y₁ Z₁ X₂ Y₂ Z₂ : Ipp.Bls12377.Fq)
    (hZ₁ : Z₁ ≠ 0) (hZ₂ : Z₂ ≠ 0)
    (hx : X₁ / Z₁ ^ 2 ≠ X₂ / Z₂ ^ 2) :
    let a₁ := X₁ / Z₁ ^ 2
    let b₁ := Y₁ / Z₁ ^ 3
    let a₂ := X₂ / Z₂ ^ 2
    let b₂ := Y₂ / Z₂ ^ 3
    let H := a₂ - a₁
    let I := (2 * H) ^ 2
    let J := -H * I
    let R := 2 * (b₂ - b₁)
    let V := a₁ * I
    let X := R ^ 2 + J - 2 * V
    let Y := R * (V - X) + (2 * b₁) * J
    let u₁ := X₁ * Z₂ ^ 2
    let u₂ := X₂ * Z₁ ^ 2
    let s₁ := Y₁ * Z₂ ^ 3
    let s₂ := Y₂ * Z₁ ^ 3
    let h := u₂ - u₁
    let i := (2 * h) ^ 2
    let j := -h * i
    let r := 2 * (s₂ - s₁)
    let v := u₁ * i
    let x := r ^ 2 + j - 2 * v
    let y := r * (v - x) + (2 * s₁) * j
    let z := 2 * (Z₁ * Z₂) * h
    (x / z ^ 2, y / z ^ 3) = chordAdd (a₁, b₁) (a₂, b₂) := by
  intro a₁ b₁ a₂ b₂ H I J R V X Y u₁ u₂ s₁ s₂ h i j r v x y z
  have dh : h = u₂ - u₁ := rfl
  have di : i = (2 * h) ^ 2 := rfl
  have dj : j = -h * i := rfl
  have dr : r = 2 * (s₂ - s₁) := rfl
  have dv : v = u₁ * i := rfl
  have dx : x = r ^ 2 + j - 2 * v := rfl
  have dy : y = r * (v - x) + (2 * s₁) * j := rfl
  have dz : z = 2 * (Z₁ * Z₂) * h := rfl
  have hH : H = a₂ - a₁ := rfl
  have hI : I = (2 * H) ^ 2 := rfl
  have hJ : J = -H * I := rfl
  have hR : R = 2 * (b₂ - b₁) := rfl
  have hV : V = a₁ * I := rfl
  have hX : X = R ^ 2 + J - 2 * V := rfl
  have hY : Y = R * (V - X) + (2 * b₁) * J := rfl
  -- Capture the scale facts as hypotheses while `u₁`/`a₁` are still transparent
  -- (so `decode_scale_*` typechecks against them), then make the deep let-locals
  -- opaque with `clear_value` so the final `exact` unifies syntactically instead
  -- of transitively unfolding `x`/`y`/`z` into the full nested term (which OOMs).
  have hu₁ : u₁ = (Z₁ * Z₂) ^ 2 * a₁ := decode_scale_square X₁ Z₁ Z₂ hZ₁
  have hu₂ : u₂ = (Z₁ * Z₂) ^ 2 * a₂ := by
    change X₂ * Z₁ ^ 2 = (Z₁ * Z₂) ^ 2 * (X₂ / Z₂ ^ 2)
    rw [mul_comm Z₁ Z₂]
    exact decode_scale_square X₂ Z₂ Z₁ hZ₂
  have hs₁ : s₁ = (Z₁ * Z₂) ^ 3 * b₁ := decode_scale_cube Y₁ Z₁ Z₂ hZ₁
  have hs₂ : s₂ = (Z₁ * Z₂) ^ 3 * b₂ := by
    change Y₂ * Z₁ ^ 3 = (Z₁ * Z₂) ^ 3 * (Y₂ / Z₂ ^ 3)
    rw [mul_comm Z₁ Z₂]
    exact decode_scale_cube Y₂ Z₂ Z₁ hZ₂
  clear_value z y x v r j i h s₂ s₁ u₂ u₁ Y X V R J I H
  exact chord_decode_core a₁ b₁ a₂ b₂ (Z₁ * Z₂)
    u₁ u₂ s₁ s₂ h i j r v x y z H I J R V X Y
    hu₁ hu₂ hs₁ hs₂
    dh di dj dr dv dx dy dz hH hI hJ hR hV hX hY (mul_ne_zero hZ₁ hZ₂) hx
private theorem fq_zero_canonical :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO <
      Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO, limbsToNat_six]
  norm_num [limb, limbWord, MacCampaign.Array.replicate,
    MacCampaign.U64.ofNat, MacCampaign.u64Base, Ipp.Bls12377.baseModulus]

private theorem canonical_val_ne_zero_of_decode_ne_zero (x : LimbArray)
    (hx : limbsToNat x < Ipp.Bls12377.baseModulus) (hdecode : decode x ≠ 0) :
    x.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
  intro hval
  have := (canonical_fq_val_eq_iff_decode_eq x
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO hx fq_zero_canonical).1 hval
  exact hdecode (this.trans decode_fq_zero)

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

private theorem fq_one_canonical :
    limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE <
      Ipp.Bls12377.baseModulus := by
  rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE]
  exact Ipp.Extracted.ArkworksFqSqrtBytes.canonical_ONE

/-- The fixed projective identity returned by the extracted code is canonical. -/
theorem canonical_g1_zero (output : G1ProjLimbTriple)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_zero = .ok output) :
    CanonicalG1 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_zero at hexec
  simp only [Result.ok.injEq] at hexec
  subst output
  exact ⟨fq_one_canonical, fq_one_canonical, fq_zero_canonical⟩

/-- The executed left-identity add preserves canonicity from its returned operand. -/
theorem canonical_g1_add_left_identity (a b output : G1ProjLimbTriple)
    (hb : CanonicalG1 b)
    (hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    CanonicalG1 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add at hexec
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    hz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
  subst output
  exact hb

/-- The executed right-identity add preserves canonicity from its returned operand. -/
theorem canonical_g1_add_right_identity (a b output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (hb : CanonicalG1 b)
    (hz : b.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    CanonicalG1 output := by
  by_cases haz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val
  · exact canonical_g1_add_left_identity a b output hb haz hexec
  · unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add at hexec
    simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
      haz, hz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
    subst output
    exact ha

/-- The executed affine-identity mixed add preserves accumulator canonicity. -/
theorem canonical_g1_add_mixed_identity (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (ha : CanonicalG1 a) (hinfinity : b.infinity = true)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    CanonicalG1 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed at hexec
  simp [hinfinity] at hexec
  subst output
  exact ha

/-- A zero-Z mixed accumulator returns the finite affine base class. -/
theorem decode_g1_add_mixed_left_identity (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (hinfinity : b.infinity = false)
    (hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    decodeG1 output = some (decode b.x, decode b.y) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed at hexec
  simp [hinfinity,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    hz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
  subst output
  have honezero : ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE.val ≠
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    apply canonical_val_ne_zero_of_decode_ne_zero
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ONE fq_one_canonical
    rw [decode_fq_one]
    exact one_ne_zero
  simp [decodeG1, honezero, decode_fq_one]

/-- A zero-Z mixed accumulator returns a canonical projective affine base. -/
theorem canonical_g1_add_mixed_left_identity (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair)
    (hbx : limbsToNat b.x < Ipp.Bls12377.baseModulus)
    (hby : limbsToNat b.y < Ipp.Bls12377.baseModulus)
    (hinfinity : b.infinity = false)
    (hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    CanonicalG1 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed at hexec
  simp [hinfinity,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    hz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
  subst output
  exact ⟨hbx, hby, fq_one_canonical⟩

/-- The executed zero-Z double preserves accumulator canonicity. -/
theorem canonical_g1_double_identity (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a)
    (hz : a.z.val = ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok output) :
    CanonicalG1 output := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double at hexec
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    hz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
  subst output
  exact ha

set_option maxRecDepth 4096
set_option maxHeartbeats 1000000

/-- Executed `a = 0` Jacobian doubling decodes to the affine tangent formula. -/
theorem decode_g1_double_generic (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hdecode : decodeG1 a = some p) (hy : p.2 ≠ 0)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok output) :
    CanonicalG1 output ∧ decodeG1 output = some (tangentDouble p) := by
  have haz : a.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    intro hz
    simp [decodeG1, hz] at hdecode
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double at hexec
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    haz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
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
  have caa := extracted_square_spec a.x aa ha.1 haa
  have cb := extracted_square_spec a.y b ha.2.1 hb
  have cc := extracted_square_spec b c cb.1 hc
  have cd0 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec a.x b d0 ha.1 cb.1 hd0
  have cd1 := extracted_double_spec d0 d1 cd0.1 hd1
  have cd := extracted_double_spec d1 d cd1.1 hd
  have ctwoAa := extracted_double_spec aa twoAa caa.1 htwoAa
  have ce := Ipp.Extracted.ArkworksFqOps.extracted_add_spec aa twoAa e caa.1 ctwoAa.1 he
  have czy := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec a.z a.y zy ha.2.2 ha.2.1 hzy
  have cz := extracted_double_spec zy z czy.1 hz
  have ce2 := extracted_square_spec e e2 ce.1 he2
  have ctwoD := extracted_double_spec d twoD cd.1 htwoD
  have cx := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec e2 twoD x ce2.1 ctwoD.1 hx
  have cc2 := extracted_double_spec c c2 cc.1 hc2
  have cc4 := extracted_double_spec c2 c4 cc2.1 hc4
  have cc8 := extracted_double_spec c4 c8 cc4.1 hc8
  have cdx := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec d x dx cd.1 cx.1 hdx
  have cedx := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec dx e edx cdx.1 ce.1 hedx
  have cy := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec edx c8 y cedx.1 cc8.1 hyexec
  refine ⟨⟨cx.1, cy.1, cz.1⟩, ?_⟩
  have eaa := decode_extracted_square a.x aa ha.1 haa
  have eb := decode_extracted_square a.y b ha.2.1 hb
  have ec := decode_extracted_square b c cb.1 hc
  have ed0 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul a.x b d0 ha.1 cb.1 hd0
  have ed1 := decode_extracted_double d0 d1 cd0.1 hd1
  have ed := decode_extracted_double d1 d cd1.1 hd
  have etwoAa := decode_extracted_double aa twoAa caa.1 htwoAa
  have ee := Ipp.Extracted.ArkworksFqOps.decode_extracted_add aa twoAa e caa.1 ctwoAa.1 he
  have ezy := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul a.z a.y zy ha.2.2 ha.2.1 hzy
  have ez := decode_extracted_double zy z czy.1 hz
  have ee2 := decode_extracted_square e e2 ce.1 he2
  have etwoD := decode_extracted_double d twoD cd.1 htwoD
  have ex := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub e2 twoD x ce2.1 ctwoD.1 hx
  have ec2 := decode_extracted_double c c2 cc.1 hc2
  have ec4 := decode_extracted_double c2 c4 cc2.1 hc4
  have ec8 := decode_extracted_double c4 c8 cc4.1 hc8
  have edxeq := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub d x dx cd.1 cx.1 hdx
  have eedx := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul dx e edx cdx.1 ce.1 hedx
  have ey := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub edx c8 y cedx.1 cc8.1 hyexec
  have hcoords : p = (decode a.x / decode a.z ^ 2,
      decode a.y / decode a.z ^ 3) := by
    simpa [decodeG1, haz] using hdecode.symm
  have hyraw : decode a.y ≠ 0 := by
    rw [hcoords] at hy
    exact fun h => hy (by simp [h])
  have hzraw : decode a.z ≠ 0 := by
    rw [hcoords] at hy
    exact fun h => hy (by simp [h])
  have hzout : z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    intro hzv
    have hza := array_eq_of_val_eq hzv
    have : decode z = 0 := by rw [hza, decode_fq_zero]
    rw [ez, ezy] at this
    have htwo : (1 + 1 : Ipp.Bls12377.Fq) ≠ 0 := by
      simpa only [one_add_one_eq_two] using
        fq_two_ne_zero
    have this' : decode a.z * decode a.y * (1 + 1) = 0 := by
      calc
        decode a.z * decode a.y * (1 + 1) =
            decode a.z * decode a.y + decode a.z * decode a.y := by ring
        _ = 0 := this
    have hzyzero : decode a.z * decode a.y = 0 := by
      calc
        decode a.z * decode a.y =
            (decode a.z * decode a.y * (1 + 1)) * (1 + 1)⁻¹ := by
              field_simp [htwo]
        _ = 0 := by rw [this']; simp
    apply hyraw
    calc
      decode a.y = (decode a.z)⁻¹ * (decode a.z * decode a.y) := by
        field_simp [hzraw]
      _ = 0 := by rw [hzyzero]; simp
  simp [decodeG1, hzout]
  rw [hcoords]
  have ex' : decode x = (3 * decode a.x ^ 2) ^ 2 -
      2 * (4 * decode a.x * decode a.y ^ 2) := by
    simp only [ex, ee2, ee, etwoAa, eaa, etwoD, ed, ed1, ed0, eb]
    ring
  have ey' : decode y = 3 * decode a.x ^ 2 *
        (4 * decode a.x * decode a.y ^ 2 - decode x) -
      8 * decode a.y ^ 4 := by
    simp only [ey, eedx, edxeq, ed, ed1, ed0, eb, ee, etwoAa, eaa,
      ec8, ec4, ec2, ec]
    ring
  have ez' : decode z = 2 * decode a.z * decode a.y := by
    simp only [ez, ezy]
    ring
  rw [ex', ey', ex', ez']
  exact tangent_decode_identity (decode a.x) (decode a.y) (decode a.z) hyraw hzraw

/-- Doubling a decoded point with affine y zero produces the zero-Z class. -/
theorem decode_g1_double_order2 (a output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hdecode : decodeG1 a = some p) (hy : p.2 = 0)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok output) :
    CanonicalG1 output ∧ decodeG1 output = none := by
  have haz : a.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    intro hz
    simp [decodeG1, hz] at hdecode
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double at hexec
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    haz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
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
  have caa := extracted_square_spec a.x aa ha.1 haa
  have cb := extracted_square_spec a.y b ha.2.1 hb
  have cc := extracted_square_spec b c cb.1 hc
  have cd0 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec a.x b d0 ha.1 cb.1 hd0
  have cd1 := extracted_double_spec d0 d1 cd0.1 hd1
  have cd := extracted_double_spec d1 d cd1.1 hd
  have ctwoAa := extracted_double_spec aa twoAa caa.1 htwoAa
  have ce := Ipp.Extracted.ArkworksFqOps.extracted_add_spec aa twoAa e caa.1 ctwoAa.1 he
  have czy := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec a.z a.y zy ha.2.2 ha.2.1 hzy
  have cz := extracted_double_spec zy z czy.1 hz
  have ce2 := extracted_square_spec e e2 ce.1 he2
  have ctwoD := extracted_double_spec d twoD cd.1 htwoD
  have cx := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec e2 twoD x ce2.1 ctwoD.1 hx
  have cc2 := extracted_double_spec c c2 cc.1 hc2
  have cc4 := extracted_double_spec c2 c4 cc2.1 hc4
  have cc8 := extracted_double_spec c4 c8 cc4.1 hc8
  have cdx := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec d x dx cd.1 cx.1 hdx
  have cedx := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec dx e edx cdx.1 ce.1 hedx
  have cy := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec edx c8 y cedx.1 cc8.1 hyexec
  refine ⟨⟨cx.1, cy.1, cz.1⟩, ?_⟩
  have hzeroNat : limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO = 0 := by
    rw [ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO, limbsToNat_six]
    norm_num [limb, limbWord, MacCampaign.Array.replicate,
      MacCampaign.U64.ofNat, MacCampaign.u64Base]
  have hzeroCanon : limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO <
      Ipp.Bls12377.baseModulus := by
    rw [hzeroNat]
    norm_num [Ipp.Bls12377.baseModulus]
  have hzraw : decode a.z ≠ 0 := by
    intro hzero
    have hv := (canonical_fq_val_eq_iff_decode_eq a.z
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO ha.2.2 hzeroCanon).2
      (by rw [hzero, decode_fq_zero])
    exact haz hv
  have hcoords : p = (decode a.x / decode a.z ^ 2,
      decode a.y / decode a.z ^ 3) := by
    simpa [decodeG1, haz] using hdecode.symm
  have hyraw : decode a.y = 0 := by
    rw [hcoords] at hy
    simpa [hzraw] using hy
  have ezy := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    a.z a.y zy ha.2.2 ha.2.1 hzy
  have ez := decode_extracted_double zy z czy.1 hz
  have hzdecode : decode z = 0 := by simp [ez, ezy, hyraw]
  have hzval := (canonical_fq_val_eq_iff_decode_eq z
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO cz.1 hzeroCanon).2
    (hzdecode.trans decode_fq_zero.symm)
  simp [decodeG1, hzval]

set_option maxRecDepth 4096
set_option maxHeartbeats 8000000

/-- Executed generic Jacobian addition decodes to the affine chord formula. -/
theorem decode_g1_add_generic (a b output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (hb : CanonicalG1 b)
    (p q : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hpa : decodeG1 a = some p) (hqb : decodeG1 b = some q)
    (hx : p.1 ≠ q.1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    CanonicalG1 output ∧ decodeG1 output = some (chordAdd p q) := by
  have haz : a.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    intro hz
    simp [decodeG1, hz] at hpa
  have hbz : b.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    intro hz
    simp [decodeG1, hz] at hqb
  have hZa : decode a.z ≠ 0 := by
    intro hz
    exact haz ((canonical_fq_val_eq_iff_decode_eq a.z
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO ha.2.2 fq_zero_canonical).2
      (hz.trans decode_fq_zero.symm))
  have hZb : decode b.z ≠ 0 := by
    intro hz
    exact hbz ((canonical_fq_val_eq_iff_decode_eq b.z
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO hb.2.2 fq_zero_canonical).2
      (hz.trans decode_fq_zero.symm))
  have hpcoords : p = (decode a.x / decode a.z ^ 2,
      decode a.y / decode a.z ^ 3) := by
    simpa [decodeG1, haz] using hpa.symm
  have hqcoords : q = (decode b.x / decode b.z ^ 2,
      decode b.y / decode b.z ^ 3) := by
    simpa [decodeG1, hbz] using hqb.symm
  have hxraw : decode a.x / decode a.z ^ 2 ≠
      decode b.x / decode b.z ^ 2 := by
    simpa [hpcoords, hqcoords] using hx
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add at hexec
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    haz, hbz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
  obtain ⟨z1z1, hz1z1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z2z2, hz2z2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u1, hu1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u2, hu2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨ayz, hayz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s1, hs1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨bya, hbya, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  have cz1z1 := extracted_square_spec a.z z1z1 ha.2.2 hz1z1
  have cz2z2 := extracted_square_spec b.z z2z2 hb.2.2 hz2z2
  have cu1 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    a.x z2z2 u1 ha.1 cz2z2.1 hu1
  have cu2 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    b.x z1z1 u2 hb.1 cz1z1.1 hu2
  have cayz := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    a.y b.z ayz ha.2.1 hb.2.2 hayz
  have cs1 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    ayz z2z2 s1 cayz.1 cz2z2.1 hs1
  have cbya := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    b.y a.z bya hb.2.1 ha.2.2 hbya
  have cs2 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    bya z1z1 s2 cbya.1 cz1z1.1 hs2
  have ez1z1 := decode_extracted_square a.z z1z1 ha.2.2 hz1z1
  have ez2z2 := decode_extracted_square b.z z2z2 hb.2.2 hz2z2
  have eu1 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    a.x z2z2 u1 ha.1 cz2z2.1 hu1
  have eu2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    b.x z1z1 u2 hb.1 cz1z1.1 hu2
  have eayz := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    a.y b.z ayz ha.2.1 hb.2.2 hayz
  have es1 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    ayz z2z2 s1 cayz.1 cz2z2.1 hs1
  have ebya := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    b.y a.z bya hb.2.1 ha.2.2 hbya
  have es2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    bya z1z1 s2 cbya.1 cz1z1.1 hs2
  have eu1' : decode u1 = decode a.x * decode b.z ^ 2 := by
    simp only [eu1, ez2z2]
    ring
  have eu2' : decode u2 = decode b.x * decode a.z ^ 2 := by
    simp only [eu2, ez1z1]
    ring
  have huDecode : decode u1 ≠ decode u2 := by
    rw [eu1', eu2']
    intro hcross
    exact hxraw ((decode_g1_x_cross_eq_iff a b ha hb hZa hZb).1 hcross)
  have huVal : u1.val ≠ u2.val := by
    intro hval
    exact huDecode ((canonical_fq_val_eq_iff_decode_eq u1 u2
      cu1.1 cu2.1).1 hval)
  simp [huVal] at hexec
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
  obtain ⟨twoS1, htwoS1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y, hyexec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨zz, hzz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨twoZz, htwoZz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z, hzexec, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have ch := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec u2 u1 h cu2.1 cu1.1 hh
  have ctwoH := extracted_double_spec h twoH ch.1 htwoH
  have ci := extracted_square_spec twoH i ctwoH.1 hi
  have cnh := extracted_neg_spec h nh ch.1 hnh
  have cj := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec nh i j cnh.1 ci.1 hj
  have cds := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec s2 s1 ds cs2.1 cs1.1 hds
  have cr := extracted_double_spec ds r cds.1 hr
  have cv := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec u1 i v cu1.1 ci.1 hv
  have cr2 := extracted_square_spec r r2 cr.1 hr2
  have cr2j := Ipp.Extracted.ArkworksFqOps.extracted_add_spec r2 j r2j cr2.1 cj.1 hr2j
  have ctwoV := extracted_double_spec v twoV cv.1 htwoV
  have cx := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec r2j twoV x cr2j.1 ctwoV.1 hxexec
  have cvx := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec v x vx cv.1 cx.1 hvx
  have ctwoS1 := extracted_double_spec s1 twoS1 cs1.1 htwoS1
  have cy := Ipp.Extracted.ArkworksFq2.extracted_sop2_spec
    r vx twoS1 j y cr.1 cvx.1 ctwoS1.1 cj.1 hyexec
  have czz := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    a.z b.z zz ha.2.2 hb.2.2 hzz
  have ctwoZz := extracted_double_spec zz twoZz czz.1 htwoZz
  have cz := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    twoZz h z ctwoZz.1 ch.1 hzexec
  refine ⟨⟨cx.1, cy.1, cz.1⟩, ?_⟩
  have eh := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub u2 u1 h cu2.1 cu1.1 hh
  have etwoH := decode_extracted_double h twoH ch.1 htwoH
  have ei := decode_extracted_square twoH i ctwoH.1 hi
  have enh := decode_extracted_neg h nh ch.1 hnh
  have ej := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul nh i j cnh.1 ci.1 hj
  have eds := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub s2 s1 ds cs2.1 cs1.1 hds
  have er := decode_extracted_double ds r cds.1 hr
  have ev := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul u1 i v cu1.1 ci.1 hv
  have er2 := decode_extracted_square r r2 cr.1 hr2
  have er2j := Ipp.Extracted.ArkworksFqOps.decode_extracted_add r2 j r2j cr2.1 cj.1 hr2j
  have etwoV := decode_extracted_double v twoV cv.1 htwoV
  have ex := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub r2j twoV x cr2j.1 ctwoV.1 hxexec
  have evx := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub v x vx cv.1 cx.1 hvx
  have etwoS1 := decode_extracted_double s1 twoS1 cs1.1 htwoS1
  have ey := Ipp.Extracted.ArkworksFq2.decode_extracted_sop2
    r vx twoS1 j y cr.1 cvx.1 ctwoS1.1 cj.1 hyexec
  have ezz := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    a.z b.z zz ha.2.2 hb.2.2 hzz
  have etwoZz := decode_extracted_double zz twoZz czz.1 htwoZz
  have ez := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    twoZz h z ctwoZz.1 ch.1 hzexec
  have es1' : decode s1 = decode a.y * decode b.z ^ 3 := by
    simp only [es1, eayz, ez2z2]
    ring
  have es2' : decode s2 = decode b.y * decode a.z ^ 3 := by
    simp only [es2, ebya, ez1z1]
    ring
  have ez' : decode z = 2 * (decode a.z * decode b.z) * decode h := by
    simp only [ez, etwoZz, ezz]
    ring
  have hhdecode : decode h ≠ 0 := by
    rw [eh]
    exact sub_ne_zero.mpr (Ne.symm huDecode)
  have hzdecode : decode z ≠ 0 := by
    rw [ez']
    exact mul_ne_zero (mul_ne_zero fq_two_ne_zero (mul_ne_zero hZa hZb)) hhdecode
  have hzval := canonical_val_ne_zero_of_decode_ne_zero z cz.1 hzdecode
  simp [decodeG1, hzval]
  rw [hpcoords, hqcoords]
  let a₁ := decode a.x / decode a.z ^ 2
  let b₁ := decode a.y / decode a.z ^ 3
  let a₂ := decode b.x / decode b.z ^ 2
  let b₂ := decode b.y / decode b.z ^ 3
  let c := decode a.z * decode b.z
  let H := a₂ - a₁
  let I := (2 * H) ^ 2
  let J := -H * I
  let R := 2 * (b₂ - b₁)
  let V := a₁ * I
  let X := R ^ 2 + J - 2 * V
  let Y := R * (V - X) + (2 * b₁) * J
  change (decode x / decode z ^ 2, decode y / decode z ^ 3) =
    chordAdd (a₁, b₁) (a₂, b₂)
  have hu₁' : decode u1 = c ^ 2 * a₁ := by
    rw [eu1']
    exact decode_scale_square (decode a.x) (decode a.z) (decode b.z) hZa
  have hu₂' : decode u2 = c ^ 2 * a₂ := by
    rw [eu2']
    change decode b.x * decode a.z ^ 2 =
      (decode a.z * decode b.z) ^ 2 * (decode b.x / decode b.z ^ 2)
    rw [mul_comm (decode a.z) (decode b.z)]
    exact decode_scale_square (decode b.x) (decode b.z) (decode a.z) hZb
  have hs₁' : decode s1 = c ^ 3 * b₁ := by
    rw [es1']
    exact decode_scale_cube (decode a.y) (decode a.z) (decode b.z) hZa
  have hs₂' : decode s2 = c ^ 3 * b₂ := by
    rw [es2']
    change decode b.y * decode a.z ^ 3 =
      (decode a.z * decode b.z) ^ 3 * (decode b.y / decode b.z ^ 3)
    rw [mul_comm (decode a.z) (decode b.z)]
    exact decode_scale_cube (decode b.y) (decode b.z) (decode a.z) hZb
  have dh : decode h = decode u2 - decode u1 := eh
  have di : decode i = (2 * decode h) ^ 2 := by
    simp only [ei, etwoH]
    ring
  have dj : decode j = -decode h * decode i := by rw [ej, enh]
  have dr : decode r = 2 * (decode s2 - decode s1) := by
    simp only [er, eds]
    ring
  have dv : decode v = decode u1 * decode i := ev
  have dx : decode x = decode r ^ 2 + decode j - 2 * decode v := by
    simp only [ex, er2j, er2, etwoV]
    ring
  have dy : decode y =
      decode r * (decode v - decode x) + (2 * decode s1) * decode j := by
    simp only [ey, evx, etwoS1]
    ring
  have dz : decode z = 2 * c * decode h := by
    simp only [ez, etwoZz, ezz]
    ring
  have hH : H = a₂ - a₁ := rfl
  have hI : I = (2 * H) ^ 2 := rfl
  have hJ : J = -H * I := rfl
  have hR : R = 2 * (b₂ - b₁) := rfl
  have hV : V = a₁ * I := rfl
  have hX : X = R ^ 2 + J - 2 * V := rfl
  have hY : Y = R * (V - X) + (2 * b₁) * J := rfl
  have hc : c ≠ 0 := mul_ne_zero hZa hZb
  have hne : a₁ ≠ a₂ := hxraw
  clear_value Y X V R J I H c b₂ a₂ b₁ a₁
  exact chord_decode_core a₁ b₁ a₂ b₂ c
    (decode u1) (decode u2) (decode s1) (decode s2) (decode h) (decode i)
    (decode j) (decode r) (decode v) (decode x) (decode y) (decode z)
    H I J R V X Y hu₁' hu₂' hs₁' hs₂'
    dh di dj dr dv dx dy dz hH hI hJ hR hV hX hY hc hne

private theorem g1_add_branch_of_same_x (a b output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (hb : CanonicalG1 b)
    (p q : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hpa : decodeG1 a = some p) (hqb : decodeG1 b = some q)
    (hx : p.1 = q.1)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    (p.2 = q.2 ∧ ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok output) ∨
      (p.2 ≠ q.2 ∧ ark_ip_proofs.s3_07_arkworks_fq_spike.g1_zero = .ok output) := by
  have haz : a.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    intro hz
    simp [decodeG1, hz] at hpa
  have hbz : b.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    intro hz
    simp [decodeG1, hz] at hqb
  have hZa : decode a.z ≠ 0 := by
    intro hz
    exact haz ((canonical_fq_val_eq_iff_decode_eq a.z
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO ha.2.2 fq_zero_canonical).2
      (hz.trans decode_fq_zero.symm))
  have hZb : decode b.z ≠ 0 := by
    intro hz
    exact hbz ((canonical_fq_val_eq_iff_decode_eq b.z
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO hb.2.2 fq_zero_canonical).2
      (hz.trans decode_fq_zero.symm))
  have hpcoords : p = (decode a.x / decode a.z ^ 2,
      decode a.y / decode a.z ^ 3) := by
    simpa [decodeG1, haz] using hpa.symm
  have hqcoords : q = (decode b.x / decode b.z ^ 2,
      decode b.y / decode b.z ^ 3) := by
    simpa [decodeG1, hbz] using hqb.symm
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add at hexec
  simp [ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    haz, hbz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
  obtain ⟨z1z1, hz1z1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z2z2, hz2z2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u1, hu1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u2, hu2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨ayz, hayz, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s1, hs1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨bya, hbya, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  have cz1z1 := extracted_square_spec a.z z1z1 ha.2.2 hz1z1
  have cz2z2 := extracted_square_spec b.z z2z2 hb.2.2 hz2z2
  have cu1 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    a.x z2z2 u1 ha.1 cz2z2.1 hu1
  have cu2 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    b.x z1z1 u2 hb.1 cz1z1.1 hu2
  have cayz := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    a.y b.z ayz ha.2.1 hb.2.2 hayz
  have cs1 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    ayz z2z2 s1 cayz.1 cz2z2.1 hs1
  have cbya := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    b.y a.z bya hb.2.1 ha.2.2 hbya
  have cs2 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    bya z1z1 s2 cbya.1 cz1z1.1 hs2
  have ez1z1 := decode_extracted_square a.z z1z1 ha.2.2 hz1z1
  have ez2z2 := decode_extracted_square b.z z2z2 hb.2.2 hz2z2
  have eu1 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    a.x z2z2 u1 ha.1 cz2z2.1 hu1
  have eu2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    b.x z1z1 u2 hb.1 cz1z1.1 hu2
  have eayz := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    a.y b.z ayz ha.2.1 hb.2.2 hayz
  have es1 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    ayz z2z2 s1 cayz.1 cz2z2.1 hs1
  have ebya := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    b.y a.z bya hb.2.1 ha.2.2 hbya
  have es2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    bya z1z1 s2 cbya.1 cz1z1.1 hs2
  have eu1' : decode u1 = decode a.x * decode b.z ^ 2 := by
    simp only [eu1, ez2z2]
    ring
  have eu2' : decode u2 = decode b.x * decode a.z ^ 2 := by
    simp only [eu2, ez1z1]
    ring
  have es1' : decode s1 = (decode a.y * decode b.z) * decode b.z ^ 2 := by
    simp only [es1, eayz, ez2z2]
    ring
  have es2' : decode s2 = (decode b.y * decode a.z) * decode a.z ^ 2 := by
    simp only [es2, ebya, ez1z1]
    ring
  have hxraw : decode a.x / decode a.z ^ 2 =
      decode b.x / decode b.z ^ 2 := by
    simpa [hpcoords, hqcoords] using hx
  have hucross := (decode_g1_x_cross_eq_iff a b ha hb hZa hZb).2 hxraw
  have huDecode : decode u1 = decode u2 := by
    rw [eu1', eu2']
    exact hucross
  have huVal := (canonical_fq_val_eq_iff_decode_eq u1 u2 cu1.1 cu2.1).2 huDecode
  by_cases hy : p.2 = q.2
  · have hyraw : decode a.y / decode a.z ^ 3 =
        decode b.y / decode b.z ^ 3 := by
      simpa [hpcoords, hqcoords] using hy
    have hscross := (decode_g1_y_cross_eq_iff a b ha hb hZa hZb).2 hyraw
    have hsDecode : decode s1 = decode s2 := by
      rw [es1', es2']
      exact hscross
    have hsVal := (canonical_fq_val_eq_iff_decode_eq s1 s2 cs1.1 cs2.1).2 hsDecode
    left
    refine ⟨hy, ?_⟩
    simpa [huVal, hsVal] using hexec
  · have hyraw : decode a.y / decode a.z ^ 3 ≠
        decode b.y / decode b.z ^ 3 := by
      simpa [hpcoords, hqcoords] using hy
    have hsDecode : decode s1 ≠ decode s2 := by
      rw [es1', es2']
      intro hcross
      exact hyraw ((decode_g1_y_cross_eq_iff a b ha hb hZa hZb).1 hcross)
    have hsVal : s1.val ≠ s2.val := by
      intro hval
      exact hsDecode ((canonical_fq_val_eq_iff_decode_eq s1 s2 cs1.1 cs2.1).1 hval)
    right
    refine ⟨hy, ?_⟩
    simpa [huVal, hsVal] using hexec

/-- Equal decoded inputs take the executed doubling branch. -/
theorem decode_g1_add_equal_delegates (a b output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (hb : CanonicalG1 b)
    (p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hpa : decodeG1 a = some p) (hpb : decodeG1 b = some p)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    CanonicalG1 output ∧
      ∃ doubled, ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok doubled ∧
        decodeG1 output = decodeG1 doubled := by
  have hbranch := g1_add_branch_of_same_x a b output ha hb p p hpa hpb rfl hexec
  rcases hbranch with hbranch | hbranch
  · have hdouble := hbranch.2
    by_cases hy : p.2 = 0
    · have hd := decode_g1_double_order2 a output ha p hpa hy hdouble
      exact ⟨hd.1, output, hdouble, rfl⟩
    · have hd := decode_g1_double_generic a output ha p hpa hy hdouble
      exact ⟨hd.1, output, hdouble, rfl⟩
  · exact (hbranch.1 rfl).elim

/-- Opposite decoded inputs take the executed zero branch. -/
theorem decode_g1_add_opposite (a b output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (hb : CanonicalG1 b)
    (x y : Ipp.Bls12377.Fq) (hy : y ≠ 0)
    (hpa : decodeG1 a = some (x, y)) (hpb : decodeG1 b = some (x, -y))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    decodeG1 output = none := by
  have hyneg : y ≠ -y := by
    intro h
    have htwoY : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) h
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwoY).resolve_left fq_two_ne_zero)
  have hbranch := g1_add_branch_of_same_x a b output ha hb
    (x, y) (x, -y) hpa hpb rfl hexec
  rcases hbranch with hbranch | hbranch
  · exact (hyneg hbranch.1).elim
  · have hzero := hbranch.2
    unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_zero at hzero
    simp only [Result.ok.injEq] at hzero
    subst output
    simp [decodeG1]

/-- The executed opposite-input branch returns a canonical identity. -/
theorem canonical_g1_add_opposite (a b output : G1ProjLimbTriple)
    (ha : CanonicalG1 a) (hb : CanonicalG1 b)
    (x y : Ipp.Bls12377.Fq) (hy : y ≠ 0)
    (hpa : decodeG1 a = some (x, y)) (hpb : decodeG1 b = some (x, -y))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add a b = .ok output) :
    CanonicalG1 output := by
  have hyneg : y ≠ -y := by
    intro h
    have htwoY : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) h
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwoY).resolve_left fq_two_ne_zero)
  have hbranch := g1_add_branch_of_same_x a b output ha hb
    (x, y) (x, -y) hpa hpb rfl hexec
  rcases hbranch with hbranch | hbranch
  · exact (hyneg hbranch.1).elim
  · exact canonical_g1_zero output hbranch.2

private theorem g1_add_mixed_branch_of_same_x (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (ha : CanonicalG1 a)
    (hbx : limbsToNat b.x < Ipp.Bls12377.baseModulus)
    (hby : limbsToNat b.y < Ipp.Bls12377.baseModulus)
    (p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hinfinity : b.infinity = false) (hpa : decodeG1 a = some p)
    (hx : p.1 = decode b.x)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    (p.2 = decode b.y ∧
        ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok output) ∨
      (p.2 ≠ decode b.y ∧
        ark_ip_proofs.s3_07_arkworks_fq_spike.g1_zero = .ok output) := by
  have haz : a.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    intro hz
    simp [decodeG1, hz] at hpa
  have hZa : decode a.z ≠ 0 := by
    intro hz
    exact haz ((canonical_fq_val_eq_iff_decode_eq a.z
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO ha.2.2 fq_zero_canonical).2
      (hz.trans decode_fq_zero.symm))
  have hpcoords : p = (decode a.x / decode a.z ^ 2,
      decode a.y / decode a.z ^ 3) := by
    simpa [decodeG1, haz] using hpa.symm
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed at hexec
  simp [hinfinity,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    haz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
  obtain ⟨z1z1, hz1z1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u2, hu2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨zby, hzby, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  have cz1z1 := extracted_square_spec a.z z1z1 ha.2.2 hz1z1
  have cu2 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    b.x z1z1 u2 hbx cz1z1.1 hu2
  have czby := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    a.z b.y zby ha.2.2 hby hzby
  have cs2 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    zby z1z1 s2 czby.1 cz1z1.1 hs2
  have ez1z1 := decode_extracted_square a.z z1z1 ha.2.2 hz1z1
  have eu2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    b.x z1z1 u2 hbx cz1z1.1 hu2
  have ezby := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    a.z b.y zby ha.2.2 hby hzby
  have es2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    zby z1z1 s2 czby.1 cz1z1.1 hs2
  have eu2' : decode u2 = decode b.x * decode a.z ^ 2 := by
    simp only [eu2, ez1z1]
    ring
  have es2' : decode s2 = (decode b.y * decode a.z) * decode a.z ^ 2 := by
    simp only [es2, ezby, ez1z1]
    ring
  have hxraw : decode a.x / decode a.z ^ 2 = decode b.x := by
    simpa [hpcoords] using hx
  have hxscaled : decode a.x = decode b.x * decode a.z ^ 2 := by
    exact (div_eq_iff (pow_ne_zero 2 hZa)).mp hxraw
  have hxDecode : decode a.x = decode u2 := by rw [eu2', hxscaled]
  have hxVal := (canonical_fq_val_eq_iff_decode_eq a.x u2 ha.1 cu2.1).2 hxDecode
  by_cases hy : p.2 = decode b.y
  · have hyraw : decode a.y / decode a.z ^ 3 = decode b.y := by
      simpa [hpcoords] using hy
    have hyscaled : decode a.y = (decode b.y * decode a.z) * decode a.z ^ 2 := by
      calc
        decode a.y = decode b.y * decode a.z ^ 3 :=
          (div_eq_iff (pow_ne_zero 3 hZa)).mp hyraw
        _ = (decode b.y * decode a.z) * decode a.z ^ 2 := by ring
    have hyDecode : decode a.y = decode s2 := by rw [es2', hyscaled]
    have hyVal := (canonical_fq_val_eq_iff_decode_eq a.y s2 ha.2.1 cs2.1).2 hyDecode
    left
    refine ⟨hy, ?_⟩
    simpa [hxVal, hyVal] using hexec
  · have hyraw : decode a.y / decode a.z ^ 3 ≠ decode b.y := by
      simpa [hpcoords] using hy
    have hyDecode : decode a.y ≠ decode s2 := by
      rw [es2']
      intro hscaled
      apply hyraw
      apply (div_eq_iff (pow_ne_zero 3 hZa)).mpr
      calc
        decode a.y = (decode b.y * decode a.z) * decode a.z ^ 2 := hscaled
        _ = decode b.y * decode a.z ^ 3 := by ring
    have hyVal : a.y.val ≠ s2.val := by
      intro hval
      exact hyDecode ((canonical_fq_val_eq_iff_decode_eq a.y s2 ha.2.1 cs2.1).1 hval)
    right
    refine ⟨hy, ?_⟩
    simpa [hxVal, hyVal] using hexec

/-- Equal projective/affine inputs take the mixed executed doubling branch. -/
theorem decode_g1_add_mixed_equal_delegates (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (ha : CanonicalG1 a)
    (hbx : limbsToNat b.x < Ipp.Bls12377.baseModulus)
    (hby : limbsToNat b.y < Ipp.Bls12377.baseModulus)
    (hinfinity : b.infinity = false)
    (hpa : decodeG1 a = some (decode b.x, decode b.y))
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    CanonicalG1 output ∧
      ∃ doubled, ark_ip_proofs.s3_07_arkworks_fq_spike.g1_double a = .ok doubled ∧
        decodeG1 output = decodeG1 doubled := by
  have hbranch := g1_add_mixed_branch_of_same_x a output b ha hbx hby
    (decode b.x, decode b.y) hinfinity hpa rfl hexec
  rcases hbranch with hbranch | hbranch
  · have hdouble := hbranch.2
    by_cases hy : decode b.y = 0
    · have hd := decode_g1_double_order2 a output ha
        (decode b.x, decode b.y) hpa hy hdouble
      exact ⟨hd.1, output, hdouble, rfl⟩
    · have hd := decode_g1_double_generic a output ha
        (decode b.x, decode b.y) hpa hy hdouble
      exact ⟨hd.1, output, hdouble, rfl⟩
  · exact (hbranch.1 rfl).elim

/-- Opposite projective/affine inputs take the mixed executed zero branch. -/
theorem decode_g1_add_mixed_opposite (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (ha : CanonicalG1 a)
    (hbx : limbsToNat b.x < Ipp.Bls12377.baseModulus)
    (hby : limbsToNat b.y < Ipp.Bls12377.baseModulus)
    (x y : Ipp.Bls12377.Fq) (hy : y ≠ 0)
    (hinfinity : b.infinity = false) (hpa : decodeG1 a = some (x, y))
    (hbxdecode : decode b.x = x) (hbydecode : decode b.y = -y)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    decodeG1 output = none := by
  have hyneg : y ≠ -y := by
    intro h
    have htwoY : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) h
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwoY).resolve_left fq_two_ne_zero)
  have hbranch := g1_add_mixed_branch_of_same_x a output b ha hbx hby
    (x, y) hinfinity hpa hbxdecode.symm hexec
  rcases hbranch with hbranch | hbranch
  · exact (hyneg (hbranch.1.trans hbydecode)).elim
  · have hzero := hbranch.2
    unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_zero at hzero
    simp only [Result.ok.injEq] at hzero
    subst output
    simp [decodeG1]

/-- The executed mixed opposite-input branch returns a canonical identity. -/
theorem canonical_g1_add_mixed_opposite (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (ha : CanonicalG1 a)
    (hbx : limbsToNat b.x < Ipp.Bls12377.baseModulus)
    (hby : limbsToNat b.y < Ipp.Bls12377.baseModulus)
    (x y : Ipp.Bls12377.Fq) (hy : y ≠ 0)
    (hinfinity : b.infinity = false) (hpa : decodeG1 a = some (x, y))
    (hbxdecode : decode b.x = x) (hbydecode : decode b.y = -y)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    CanonicalG1 output := by
  have hyneg : y ≠ -y := by
    intro h
    have htwoY : 2 * y = 0 := by
      calc
        2 * y = y + y := two_mul y
        _ = -y + y := congrArg (fun z => z + y) h
        _ = 0 := neg_add_cancel y
    exact hy ((mul_eq_zero.mp htwoY).resolve_left fq_two_ne_zero)
  have hbranch := g1_add_mixed_branch_of_same_x a output b ha hbx hby
    (x, y) hinfinity hpa hbxdecode.symm hexec
  rcases hbranch with hbranch | hbranch
  · exact (hyneg (hbranch.1.trans hbydecode)).elim
  · exact canonical_g1_zero output hbranch.2

/-- Executed generic mixed addition decodes to the affine chord formula. -/
theorem decode_g1_add_mixed_generic (a output : G1ProjLimbTriple)
    (b : G1AffineLimbPair) (ha : CanonicalG1 a)
    (hbx : limbsToNat b.x < Ipp.Bls12377.baseModulus)
    (hby : limbsToNat b.y < Ipp.Bls12377.baseModulus)
    (p : Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)
    (hinfinity : b.infinity = false) (hpa : decodeG1 a = some p)
    (hx : p.1 ≠ decode b.x)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed a b = .ok output) :
    CanonicalG1 output ∧
      decodeG1 output = some (chordAdd p (decode b.x, decode b.y)) := by
  have haz : a.z.val ≠ ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val := by
    intro hz
    simp [decodeG1, hz] at hpa
  have hZa : decode a.z ≠ 0 := by
    intro hz
    exact haz ((canonical_fq_val_eq_iff_decode_eq a.z
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO ha.2.2 fq_zero_canonical).2
      (hz.trans decode_fq_zero.symm))
  have hpcoords : p = (decode a.x / decode a.z ^ 2,
      decode a.y / decode a.z ^ 3) := by
    simpa [decodeG1, haz] using hpa.symm
  have hxraw : decode a.x / decode a.z ^ 2 ≠ decode b.x := by
    simpa [hpcoords] using hx
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.g1_add_mixed at hexec
  simp [hinfinity,
    ark_ip_proofs.s3_07_arkworks_fq_spike.FqMont.Insts.CoreCmpPartialEqFqMont.eq,
    haz, ark_ip_proofs.core.array.equality.PartialEqArray.eq] at hexec
  obtain ⟨z1z1, hz1z1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨u2, hu2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨zby, hzby, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s2, hs2, hexec⟩ := bind_eq_ok hexec
  have cz1z1 := extracted_square_spec a.z z1z1 ha.2.2 hz1z1
  have cu2 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    b.x z1z1 u2 hbx cz1z1.1 hu2
  have czby := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    a.z b.y zby ha.2.2 hby hzby
  have cs2 := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    zby z1z1 s2 czby.1 cz1z1.1 hs2
  have ez1z1 := decode_extracted_square a.z z1z1 ha.2.2 hz1z1
  have eu2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    b.x z1z1 u2 hbx cz1z1.1 hu2
  have ezby := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    a.z b.y zby ha.2.2 hby hzby
  have es2 := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    zby z1z1 s2 czby.1 cz1z1.1 hs2
  have eu2' : decode u2 = decode b.x * decode a.z ^ 2 := by
    simp only [eu2, ez1z1]
    ring
  have es2' : decode s2 = decode b.y * decode a.z ^ 3 := by
    simp only [es2, ezby, ez1z1]
    ring
  have hxDecode : decode a.x ≠ decode u2 := by
    rw [eu2']
    intro hscaled
    exact hxraw ((div_eq_iff (pow_ne_zero 2 hZa)).mpr hscaled)
  have hxVal : a.x.val ≠ u2.val := by
    intro hval
    exact hxDecode ((canonical_fq_val_eq_iff_decode_eq a.x u2 ha.1 cu2.1).1 hval)
  simp [hxVal] at hexec
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
  obtain ⟨twoY, htwoY, hexec⟩ := bind_eq_ok hexec
  obtain ⟨y, hyexec, hexec⟩ := bind_eq_ok hexec
  obtain ⟨zh, hzh, hexec⟩ := bind_eq_ok hexec
  obtain ⟨z, hzexec, hret⟩ := bind_eq_ok hexec
  simp only [Result.ok.injEq] at hret
  subst output
  have ch := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec u2 a.x h cu2.1 ha.1 hh
  have chh := extracted_square_spec h hh0 ch.1 hhh0
  have ctwoHh := extracted_double_spec hh0 twoHh chh.1 htwoHh
  have ci := extracted_double_spec twoHh i ctwoHh.1 hi
  have cnh := extracted_neg_spec h nh ch.1 hnh
  have cj := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec nh i j cnh.1 ci.1 hj
  have cds := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec s2 a.y ds cs2.1 ha.2.1 hds
  have cr := extracted_double_spec ds r cds.1 hr
  have cv := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec a.x i v ha.1 ci.1 hv
  have cr2 := extracted_square_spec r r2 cr.1 hr2
  have cr2j := Ipp.Extracted.ArkworksFqOps.extracted_add_spec r2 j r2j cr2.1 cj.1 hr2j
  have ctwoV := extracted_double_spec v twoV cv.1 htwoV
  have cx := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec r2j twoV x cr2j.1 ctwoV.1 hxexec
  have cvx := Ipp.Extracted.ArkworksFqOps.extracted_sub_spec v x vx cv.1 cx.1 hvx
  have ctwoY := extracted_double_spec a.y twoY ha.2.1 htwoY
  have cy := Ipp.Extracted.ArkworksFq2.extracted_sop2_spec
    r vx twoY j y cr.1 cvx.1 ctwoY.1 cj.1 hyexec
  have czh := Ipp.Extracted.ArkworksFqMul.extracted_mul_spec
    a.z h zh ha.2.2 ch.1 hzh
  have cz := extracted_double_spec zh z czh.1 hzexec
  refine ⟨⟨cx.1, cy.1, cz.1⟩, ?_⟩
  have eh := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub u2 a.x h cu2.1 ha.1 hh
  have ehh := decode_extracted_square h hh0 ch.1 hhh0
  have etwoHh := decode_extracted_double hh0 twoHh chh.1 htwoHh
  have ei := decode_extracted_double twoHh i ctwoHh.1 hi
  have enh := decode_extracted_neg h nh ch.1 hnh
  have ej := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul nh i j cnh.1 ci.1 hj
  have eds := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub s2 a.y ds cs2.1 ha.2.1 hds
  have er := decode_extracted_double ds r cds.1 hr
  have ev := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul a.x i v ha.1 ci.1 hv
  have er2 := decode_extracted_square r r2 cr.1 hr2
  have er2j := Ipp.Extracted.ArkworksFqOps.decode_extracted_add r2 j r2j cr2.1 cj.1 hr2j
  have etwoV := decode_extracted_double v twoV cv.1 htwoV
  have ex := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub r2j twoV x cr2j.1 ctwoV.1 hxexec
  have evx := Ipp.Extracted.ArkworksFqOps.decode_extracted_sub v x vx cv.1 cx.1 hvx
  have etwoY := decode_extracted_double a.y twoY ha.2.1 htwoY
  have ey := Ipp.Extracted.ArkworksFq2.decode_extracted_sop2
    r vx twoY j y cr.1 cvx.1 ctwoY.1 cj.1 hyexec
  have ezh := Ipp.Extracted.ArkworksFqMul.decode_extracted_mul
    a.z h zh ha.2.2 ch.1 hzh
  have ez := decode_extracted_double zh z czh.1 hzexec
  have ez' : decode z = 2 * decode a.z * decode h := by
    simp only [ez, ezh]
    ring
  have hhdecode : decode h ≠ 0 := by
    rw [eh]
    exact sub_ne_zero.mpr (Ne.symm hxDecode)
  have hzdecode : decode z ≠ 0 := by
    rw [ez']
    exact mul_ne_zero (mul_ne_zero fq_two_ne_zero hZa) hhdecode
  have hzval := canonical_val_ne_zero_of_decode_ne_zero z cz.1 hzdecode
  simp [decodeG1, hzval]
  rw [hpcoords]
  let u₁d := decode a.x
  let u₂d := decode u2
  let s₁d := decode a.y
  let s₂d := decode s2
  let hd := decode h
  let id := decode i
  let jd := decode j
  let rd := decode r
  let vd := decode v
  let xd := decode x
  let yd := decode y
  let zd := decode z
  let c := decode a.z
  let a₁ := u₁d / c ^ 2
  let b₁ := s₁d / c ^ 3
  let a₂ := decode b.x
  let b₂ := decode b.y
  let H := a₂ - a₁
  let I := (2 * H) ^ 2
  let J := -H * I
  let R := 2 * (b₂ - b₁)
  let V := a₁ * I
  let X := R ^ 2 + J - 2 * V
  let Y := R * (V - X) + (2 * b₁) * J
  change (xd / zd ^ 2, yd / zd ^ 3) =
    chordAdd (a₁, b₁) (a₂, b₂)
  have hu₁' : u₁d = c ^ 2 * a₁ := by
    change decode a.x = decode a.z ^ 2 *
      (decode a.x / decode a.z ^ 2)
    simpa using decode_scale_square (decode a.x) (decode a.z) 1 hZa
  have hu₂' : u₂d = c ^ 2 * a₂ := by
    change decode u2 = decode a.z ^ 2 * decode b.x
    rw [eu2']
    ring
  have hs₁' : s₁d = c ^ 3 * b₁ := by
    change decode a.y = decode a.z ^ 3 *
      (decode a.y / decode a.z ^ 3)
    simpa using decode_scale_cube (decode a.y) (decode a.z) 1 hZa
  have hs₂' : s₂d = c ^ 3 * b₂ := by
    change decode s2 = decode a.z ^ 3 * decode b.y
    rw [es2']
    ring
  have dh : hd = u₂d - u₁d := by
    change decode h = decode u2 - decode a.x
    exact eh
  have di : id = (2 * hd) ^ 2 := by
    change decode i = (2 * decode h) ^ 2
    simp only [ei, etwoHh, ehh]
    ring
  have dj : jd = -hd * id := by
    change decode j = -decode h * decode i
    rw [ej, enh]
  have dr : rd = 2 * (s₂d - s₁d) := by
    change decode r = 2 * (decode s2 - decode a.y)
    simp only [er, eds]
    ring
  have dv : vd = u₁d * id := by
    change decode v = decode a.x * decode i
    exact ev
  have dx : xd = rd ^ 2 + jd - 2 * vd := by
    change decode x = decode r ^ 2 + decode j - 2 * decode v
    simp only [ex, er2j, er2, etwoV]
    ring
  have dy : yd = rd * (vd - xd) + (2 * s₁d) * jd := by
    change decode y =
      decode r * (decode v - decode x) + (2 * decode a.y) * decode j
    simp only [ey, evx, etwoY]
    ring
  have dz : zd = 2 * c * hd := by
    change decode z = 2 * decode a.z * decode h
    simp only [ez, ezh]
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
  clear_value Y X V R J I H b₂ a₂ b₁ a₁ c zd yd xd vd rd jd id hd s₂d s₁d u₂d u₁d
  exact chord_decode_core a₁ b₁ a₂ b₂ c
    u₁d u₂d s₁d s₂d hd id jd rd vd xd yd zd
    H I J R V X Y hu₁' hu₂' hs₁' hs₂'
    dh di dj dr dv dx dy dz hH hI hJ hR hV hX hY hc hne

#print axioms decode_g1_neg
#print axioms decode_g1_add_left_identity
#print axioms decode_g1_add_right_identity
#print axioms decode_g1_add_mixed_identity
#print axioms decode_g1_double_identity
#print axioms decode_g1_double_generic
#print axioms canonical_fq_val_eq_iff_decode_eq
#print axioms decode_g1_x_cross_eq_iff
#print axioms decode_g1_y_cross_eq_iff
#print axioms decode_g1_double_order2
#print axioms decode_g1_add_generic
#print axioms decode_g1_add_mixed_generic
#print axioms canonical_g1_zero
#print axioms canonical_g1_add_left_identity
#print axioms canonical_g1_add_right_identity
#print axioms canonical_g1_add_mixed_identity
#print axioms decode_g1_add_mixed_left_identity
#print axioms canonical_g1_add_mixed_left_identity
#print axioms canonical_g1_double_identity
#print axioms canonical_g1_add_opposite
#print axioms canonical_g1_add_mixed_opposite

end Ipp.Extracted.ArkworksG1
