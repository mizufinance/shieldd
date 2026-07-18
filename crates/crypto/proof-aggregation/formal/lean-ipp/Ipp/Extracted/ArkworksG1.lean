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

end Ipp.Extracted.ArkworksG1
