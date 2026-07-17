import Ipp.Extracted.ArkworksFq2Generated
import Ipp.Extracted.ArkworksFqMul
import Ipp.Extracted.ArkworksFqOps
import Ipp.Extracted.ArkworksFqSquare
import Ipp.Extracted.ArkworksFqInv
import Ipp.Bls12377Core
import Ipp.Bls12377
import Mathlib.Tactic

/-! S3-16: the executed BLS12-377 Fq2 layer refines
`Fq2 = QuadraticAlgebra Fq (-5) 0`, composing the certified Fq operation
theorems. New limb-level content: the `double` shift telescope and the
fused two-product `sum_of_products2` kernel (exact K-accumulator
invariant plus the REDC global bound). -/

namespace Ipp.Extracted.ArkworksFq2

set_option maxRecDepth 8192
set_option exponentiation.threshold 1000

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksFqMul
open Ipp.Extracted.ArkworksFqOps (extracted_add_spec decode_extracted_add
  decode_extracted_sub decode_extracted_neg extracted_sub_spec
  extracted_neg_spec limb_index adcModel extracted_adc_spec
  extracted_adc_general_spec)
open Ipp.Extracted.ArkworksFqSquare (decode_extracted_square
  extracted_square_spec)
open Ipp.Extracted.ArkworksFqInv (decode_extracted_inv extracted_inv_zero)

abbrev Fq2LimbPair := ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- Montgomery decode of an executed Fq2 pair into the concrete model. -/
def decodeFq2 (a : Fq2LimbPair) : Ipp.Bls12377.Fq2 :=
  ⟨Ipp.Extracted.ArkworksFqMul.decode a.c0,
   Ipp.Extracted.ArkworksFqMul.decode a.c1⟩

/-- Canonicity of an executed Fq2 pair. -/
def Canonical2 (a : Fq2LimbPair) : Prop :=
  limbsToNat a.c0 < Ipp.Bls12377.baseModulus ∧
  limbsToNat a.c1 < Ipp.Bls12377.baseModulus

@[simp] theorem decodeFq2_mk (x y : LimbArray) :
    decodeFq2 ⟨x, y⟩ =
      ⟨Ipp.Extracted.ArkworksFqMul.decode x,
       Ipp.Extracted.ArkworksFqMul.decode y⟩ := rfl

/-! ### Componentwise operations -/

theorem decode_fq2_add (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add a b = .ok output) :
    decodeFq2 output = decodeFq2 a + decodeFq2 b := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_add at hexec
  obtain ⟨fm, h0, hrest⟩ := bind_eq_ok hexec
  obtain ⟨fm1, h1, hreturn⟩ := bind_eq_ok hrest
  simp only [Result.ok.injEq] at hreturn
  subst output
  have hc0 := decode_extracted_add a.c0 b.c0 fm ha.1 hb.1 h0
  have hc1 := decode_extracted_add a.c1 b.c1 fm1 ha.2 hb.2 h1
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, hc0, hc1]

theorem decode_fq2_sub (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub a b = .ok output) :
    decodeFq2 output = decodeFq2 a - decodeFq2 b := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_sub at hexec
  obtain ⟨fm, h0, hrest⟩ := bind_eq_ok hexec
  obtain ⟨fm1, h1, hreturn⟩ := bind_eq_ok hrest
  simp only [Result.ok.injEq] at hreturn
  subst output
  have hc0 := decode_extracted_sub a.c0 b.c0 fm ha.1 hb.1 h0
  have hc1 := decode_extracted_sub a.c1 b.c1 fm1 ha.2 hb.2 h1
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, hc0, hc1]

theorem decode_fq2_neg (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg a = .ok output) :
    decodeFq2 output = -decodeFq2 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_neg at hexec
  obtain ⟨fm, h0, hrest⟩ := bind_eq_ok hexec
  obtain ⟨fm1, h1, hreturn⟩ := bind_eq_ok hrest
  simp only [Result.ok.injEq] at hreturn
  subst output
  have hc0 := decode_extracted_neg a.c0 fm ha.1 h0
  have hc1 := decode_extracted_neg a.c1 fm1 ha.2 h1
  apply QuadraticAlgebra.ext <;> simp [decodeFq2, hc0, hc1]

/-! ### `double`: `BigInt::mul2` limb shift plus conditional subtraction -/

private theorem limbsToNat_make_six
    (x0 x1 x2 x3 x4 x5 : MacCampaign.U64) :
    limbsToNat (MacCampaign.Array.make 6#usize
      [x0, x1, x2, x3, x4, x5]) =
      x0.val + x1.val * wordBase + x2.val * wordBase ^ 2 +
      x3.val * wordBase ^ 3 + x4.val * wordBase ^ 4 +
      x5.val * wordBase ^ 5 := by
  simp [limbsToNat, prefixToNat, limb, limbWord,
    MacCampaign.Array.make, limbCount]

private theorem even_lor_one {value : Nat} (heven : value % 2 = 0) :
    value ||| 1 = value + 1 := by
  have hbodd : value.bodd = false := by
    have hmod := Nat.mod_two_of_bodd value
    cases h : value.bodd
    · rfl
    · rw [h] at hmod
      simp at hmod
      omega
  have hdecomp := Nat.bodd_add_div2 value
  rw [hbodd] at hdecomp
  simp at hdecomp
  calc
    value ||| 1 = Nat.bit value.bodd value.div2 ||| Nat.bit true 0 := by
      rw [Nat.bit_bodd_div2]
      congr 1
    _ = Nat.bit (value.bodd || true) (value.div2 ||| 0) := by
      simp only [Nat.lor_bit]
    _ = value + 1 := by
      rw [hbodd]
      simp only [Bool.false_or, Nat.or_zero, Nat.bit_val, Bool.toNat_true]
      omega

/-- `shl_join high low = (high << 1) | (low >> 63)`, joined exactly. -/
private theorem u64_shl_join_eq (high low : MacCampaign.U64) :
    ark_ip_proofs.s3_07_arkworks_fq_spike.shl_join high low =
      .ok (MacCampaign.U64.ofNat
        (high.val * 2 % wordBase + low.val / 2 ^ 63)) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.shl_join
  simp only [MacCampaign.shl64_one, MacCampaign.shr64_sixtyThree,
    Result.bind_ok, Result.ok.injEq]
  have hhigh : high.val < 2 ^ 64 := by
    have := high.isLt
    simpa [MacCampaign.u64Base] using this
  have hlow : low.val < 2 ^ 64 := by
    have := low.isLt
    simpa [MacCampaign.u64Base] using this
  have heven : (high.val * 2 % 2 ^ 64) % 2 = 0 := by omega
  have hjoin :
      (high.val * 2 % 2 ^ 64) ||| (low.val / 2 ^ 63) =
        high.val * 2 % 2 ^ 64 + low.val / 2 ^ 63 := by
    have hcase : low.val / 2 ^ 63 = 0 ∨ low.val / 2 ^ 63 = 1 := by omega
    rcases hcase with hcase | hcase
    · rw [hcase, Nat.or_zero, Nat.add_zero]
    · rw [hcase, even_lor_one heven]
  show MacCampaign.or64 (MacCampaign.U64.ofNat (high.val * 2))
      (MacCampaign.U64.ofNat (low.val / 2 ^ 63)) =
    MacCampaign.U64.ofNat (high.val * 2 % wordBase + low.val / 2 ^ 63)
  simp only [MacCampaign.or64, MacCampaign.U64.ofNat, MacCampaign.u64Base,
    wordBase, MacCampaign.U64.mk.injEq]
  rw [Nat.mod_eq_of_lt (show low.val / 2 ^ 63 < 2 ^ 64 by omega), hjoin]

set_option maxHeartbeats 1000000 in
theorem extracted_double_spec (a output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.double a = .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
    Nat.ModEq Ipp.Bls12377.baseModulus
      (limbsToNat output) (2 * limbsToNat a) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.double at hexec
  obtain ⟨w0, hw0, hexec⟩ := bind_eq_ok hexec
  rw [limb_index a 0#usize (by decide)] at hw0
  have hw0' : limbWord a ⟨0, by decide⟩ = w0 := Result.ok.inj hw0
  obtain ⟨d0, hd0, hexec⟩ := bind_eq_ok hexec
  rw [MacCampaign.shl64_one] at hd0
  have hd0' : MacCampaign.U64.ofNat (w0.val * 2) = d0 := Result.ok.inj hd0
  obtain ⟨w1, hw1, hexec⟩ := bind_eq_ok hexec
  rw [limb_index a 1#usize (by decide)] at hw1
  have hw1' : limbWord a ⟨1, by decide⟩ = w1 := Result.ok.inj hw1
  obtain ⟨j1, hj1, hexec⟩ := bind_eq_ok hexec
  rw [u64_shl_join_eq] at hj1
  have hj1' : MacCampaign.U64.ofNat
      (w1.val * 2 % wordBase + w0.val / 2 ^ 63) = j1 := Result.ok.inj hj1
  obtain ⟨w2, hw2, hexec⟩ := bind_eq_ok hexec
  rw [limb_index a 2#usize (by decide)] at hw2
  have hw2' : limbWord a ⟨2, by decide⟩ = w2 := Result.ok.inj hw2
  obtain ⟨j2, hj2, hexec⟩ := bind_eq_ok hexec
  rw [u64_shl_join_eq] at hj2
  have hj2' : MacCampaign.U64.ofNat
      (w2.val * 2 % wordBase + w1.val / 2 ^ 63) = j2 := Result.ok.inj hj2
  obtain ⟨w3, hw3, hexec⟩ := bind_eq_ok hexec
  rw [limb_index a 3#usize (by decide)] at hw3
  have hw3' : limbWord a ⟨3, by decide⟩ = w3 := Result.ok.inj hw3
  obtain ⟨j3, hj3, hexec⟩ := bind_eq_ok hexec
  rw [u64_shl_join_eq] at hj3
  have hj3' : MacCampaign.U64.ofNat
      (w3.val * 2 % wordBase + w2.val / 2 ^ 63) = j3 := Result.ok.inj hj3
  obtain ⟨w4, hw4, hexec⟩ := bind_eq_ok hexec
  rw [limb_index a 4#usize (by decide)] at hw4
  have hw4' : limbWord a ⟨4, by decide⟩ = w4 := Result.ok.inj hw4
  obtain ⟨j4, hj4, hexec⟩ := bind_eq_ok hexec
  rw [u64_shl_join_eq] at hj4
  have hj4' : MacCampaign.U64.ofNat
      (w4.val * 2 % wordBase + w3.val / 2 ^ 63) = j4 := Result.ok.inj hj4
  obtain ⟨w5, hw5, hexec⟩ := bind_eq_ok hexec
  rw [limb_index a 5#usize (by decide)] at hw5
  have hw5' : limbWord a ⟨5, by decide⟩ = w5 := Result.ok.inj hw5
  obtain ⟨j5, hj5, hexec⟩ := bind_eq_ok hexec
  rw [u64_shl_join_eq] at hj5
  have hj5' : MacCampaign.U64.ofNat
      (w5.val * 2 % wordBase + w4.val / 2 ^ 63) = j5 := Result.ok.inj hj5
  obtain ⟨final, hsub, hret⟩ := bind_eq_ok hexec
  have hret' : final = output := Result.ok.inj hret
  rw [hret'] at hsub
  have hv0 : limb a ⟨0, by decide⟩ = w0.val :=
    congrArg MacCampaign.U64.val hw0'
  have hv1 : limb a ⟨1, by decide⟩ = w1.val :=
    congrArg MacCampaign.U64.val hw1'
  have hv2 : limb a ⟨2, by decide⟩ = w2.val :=
    congrArg MacCampaign.U64.val hw2'
  have hv3 : limb a ⟨3, by decide⟩ = w3.val :=
    congrArg MacCampaign.U64.val hw3'
  have hv4 : limb a ⟨4, by decide⟩ = w4.val :=
    congrArg MacCampaign.U64.val hw4'
  have hv5 : limb a ⟨5, by decide⟩ = w5.val :=
    congrArg MacCampaign.U64.val hw5'
  have hb0 := w0.isLt
  have hb1 := w1.isLt
  have hb2 := w2.isLt
  have hb3 := w3.isLt
  have hb4 := w4.isLt
  have hb5 := w5.isLt
  have ha6 : limbsToNat a < Ipp.Bls12377.baseModulus := ha
  rw [limbsToNat_six a, hv0, hv1, hv2, hv3, hv4, hv5] at ha6
  have hval : limbsToNat (MacCampaign.Array.make 6#usize
      [d0, j1, j2, j3, j4, j5]) = 2 * limbsToNat a := by
    rw [limbsToNat_make_six, ← hd0', ← hj1', ← hj2', ← hj3', ← hj4',
      ← hj5', limbsToNat_six a, hv0, hv1, hv2, hv3, hv4, hv5]
    norm_num [MacCampaign.U64.ofNat, MacCampaign.u64Base, wordBase,
      Ipp.Bls12377.baseModulus] at ha6 hb0 hb1 hb2 hb3 hb4 hb5 ⊢
    omega
  have hlt : limbsToNat (MacCampaign.Array.make 6#usize
      [d0, j1, j2, j3, j4, j5]) < 2 * Ipp.Bls12377.baseModulus := by
    rw [hval]
    omega
  have hspec := extracted_subtract_modulus_spec _ output hlt hsub
  refine ⟨hspec.1, ?_⟩
  have hmod := hspec.2.1
  rw [hval] at hmod
  exact hmod

theorem decode_extracted_double (a output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.double a = .ok output) :
    decode output = decode a + decode a := by
  have hspec := extracted_double_spec a output ha hexec
  have hcast : (limbsToNat output : Ipp.Bls12377.Fq) =
      2 * (limbsToNat a : Ipp.Bls12377.Fq) := by
    have hmod := (ZMod.natCast_eq_natCast_iff _ _ _).2 hspec.2
    simpa [Nat.cast_mul] using hmod
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv, hcast]
  ring

end Ipp.Extracted.ArkworksFq2
