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
  extracted_adc_general_spec limbAt)
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

/-! ### `sum_of_products2`: fused two-product Montgomery kernel (M = 2) -/

/-- Telescoped value equation for one six-step carry-chained MAC pass. -/
private theorem mac_chain_telescope
    (A0 A1 A2 A3 A4 A5 M0 M1 M2 M3 M4 M5
      L0 L1 L2 L3 L4 L5 C0 C1 C2 C3 C4 C5 : Nat)
    (h0 : A0 + M0 = C0 * wordBase + L0)
    (h1 : A1 + M1 + C0 = C1 * wordBase + L1)
    (h2 : A2 + M2 + C1 = C2 * wordBase + L2)
    (h3 : A3 + M3 + C2 = C3 * wordBase + L3)
    (h4 : A4 + M4 + C3 = C4 * wordBase + L4)
    (h5 : A5 + M5 + C4 = C5 * wordBase + L5) :
    (A0 + A1 * wordBase + A2 * wordBase ^ 2 + A3 * wordBase ^ 3 +
        A4 * wordBase ^ 4 + A5 * wordBase ^ 5) +
      (M0 + M1 * wordBase + M2 * wordBase ^ 2 + M3 * wordBase ^ 3 +
        M4 * wordBase ^ 4 + M5 * wordBase ^ 5) =
      (L0 + L1 * wordBase + L2 * wordBase ^ 2 + L3 * wordBase ^ 3 +
        L4 * wordBase ^ 4 + L5 * wordBase ^ 5) + C5 * wordBase ^ 6 := by
  norm_num [wordBase] at h0 h1 h2 h3 h4 h5 ⊢
  omega

set_option maxHeartbeats 4000000 in
/-- One executed round of the fused kernel: the exact value equation
`⟦result'⟧ * β = ⟦result⟧ + a0[j] * ⟦b0⟧ + a1[j] * ⟦b1⟧ + k * q`, with the
dual carry words proved discard-free from the chain carry bounds. -/
private theorem sop_body_ok (a0 b0 a1 b1 result : LimbArray) (j : Nat)
    (hj : j < 6)
    (hb0 : limbsToNat b0 < Ipp.Bls12377.baseModulus)
    (hb1 : limbsToNat b1 < Ipp.Bls12377.baseModulus)
    (flow : ControlFlow
      (core.ops.range.Range × LimbArray × LimbArray × LimbArray ×
        LimbArray × LimbArray) LimbArray)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sum_of_products2_loop.body
        { start := Usize.ofNat j, «end» := Usize.ofNat 6 } a0 b0 a1 b1 result =
      .ok flow) :
    ∃ (result' : LimbArray) (k : Nat),
      flow = ControlFlow.cont
        ({ start := Usize.ofNat (j + 1), «end» := Usize.ofNat 6 },
          a0, b0, a1, b1, result') ∧
      k < wordBase ∧
      limbsToNat result' * wordBase =
        limbsToNat result + limbAt a0 j * limbsToNat b0 +
          limbAt a1 j * limbsToNat b1 + k * Ipp.Bls12377.baseModulus := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.sum_of_products2_loop.body
    at hexec
  simp only [core.iter.range.IteratorRange.next, Usize.ofNat_val, hj,
    if_true, ↓reduceIte, Result.bind_ok] at hexec
  -- p-chain
  obtain ⟨rw0, hrw0raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index result 0#usize (by decide)] at hrw0raw
  obtain ⟨a0jw, ha0raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index a0 (Usize.ofNat j) (by simpa using hj)] at ha0raw
  obtain ⟨b0w0, hb0w0raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b0 0#usize (by decide)] at hb0w0raw
  obtain ⟨p0, hp0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨rw1, hrw1raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index result 1#usize (by decide)] at hrw1raw
  obtain ⟨b0w1, hb0w1raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b0 1#usize (by decide)] at hb0w1raw
  obtain ⟨p1, hp1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨rw2, hrw2raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index result 2#usize (by decide)] at hrw2raw
  obtain ⟨b0w2, hb0w2raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b0 2#usize (by decide)] at hb0w2raw
  obtain ⟨p2, hp2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨rw3, hrw3raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index result 3#usize (by decide)] at hrw3raw
  obtain ⟨b0w3, hb0w3raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b0 3#usize (by decide)] at hb0w3raw
  obtain ⟨p3, hp3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨rw4, hrw4raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index result 4#usize (by decide)] at hrw4raw
  obtain ⟨b0w4, hb0w4raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b0 4#usize (by decide)] at hb0w4raw
  obtain ⟨p4, hp4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨rw5, hrw5raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index result 5#usize (by decide)] at hrw5raw
  obtain ⟨b0w5, hb0w5raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b0 5#usize (by decide)] at hb0w5raw
  obtain ⟨p5, hp5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s0, hs0, hexec⟩ := bind_eq_ok hexec
  -- q-chain
  obtain ⟨a1jw, ha1raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index a1 (Usize.ofNat j) (by simpa using hj)] at ha1raw
  obtain ⟨b1w0, hb1w0raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b1 0#usize (by decide)] at hb1w0raw
  obtain ⟨q0, hq0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨b1w1, hb1w1raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b1 1#usize (by decide)] at hb1w1raw
  obtain ⟨q1, hq1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨b1w2, hb1w2raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b1 2#usize (by decide)] at hb1w2raw
  obtain ⟨q2, hq2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨b1w3, hb1w3raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b1 3#usize (by decide)] at hb1w3raw
  obtain ⟨q3, hq3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨b1w4, hb1w4raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b1 4#usize (by decide)] at hb1w4raw
  obtain ⟨q4, hq4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨b1w5, hb1w5raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index b1 5#usize (by decide)] at hb1w5raw
  obtain ⟨q5, hq5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨s1, hs1, hexec⟩ := bind_eq_ok hexec
  -- reduction chain
  obtain ⟨kv, hkraw, hexec⟩ := bind_eq_ok hexec
  have hkveq : ark_ip_proofs.core.num.U64.wrapping_mul q0.low
      ark_ip_proofs.s3_07_arkworks_fq_spike.INV = kv := Result.ok.inj hkraw
  obtain ⟨m0, hm0raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS 0#usize
    (by decide)] at hm0raw
  obtain ⟨r0, hr0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m1, hm1raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS 1#usize
    (by decide)] at hm1raw
  obtain ⟨r1, hr1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m2, hm2raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS 2#usize
    (by decide)] at hm2raw
  obtain ⟨r2, hr2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m3, hm3raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS 3#usize
    (by decide)] at hm3raw
  obtain ⟨r3, hr3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m4, hm4raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS 4#usize
    (by decide)] at hm4raw
  obtain ⟨r4, hr4, hexec⟩ := bind_eq_ok hexec
  obtain ⟨m5, hm5raw, hexec⟩ := bind_eq_ok hexec
  rw [limb_index ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS 5#usize
    (by decide)] at hm5raw
  obtain ⟨r5, hr5, hexec⟩ := bind_eq_ok hexec
  obtain ⟨top, htop, hexec⟩ := bind_eq_ok hexec
  have hflow : flow = ControlFlow.cont
      ({ start := Usize.ofNat (j + 1), «end» := Usize.ofNat 6 },
        a0, b0, a1, b1,
        MacCampaign.Array.make 6#usize
          [r1.low, r2.low, r3.low, r4.low, r5.low, top.low]) :=
    (Result.ok.inj hexec).symm
  -- MacSpec equations for the three chains
  have h0val : (MacCampaign.U64.ofNat 0).val = 0 := rfl
  have sp0 := extracted_mac_result_spec rw0 a0jw b0w0
    (MacCampaign.U64.ofNat 0) p0 hp0
  have sp1 := extracted_mac_result_spec rw1 a0jw b0w1 p0.carry p1 hp1
  have sp2 := extracted_mac_result_spec rw2 a0jw b0w2 p1.carry p2 hp2
  have sp3 := extracted_mac_result_spec rw3 a0jw b0w3 p2.carry p3 hp3
  have sp4 := extracted_mac_result_spec rw4 a0jw b0w4 p3.carry p4 hp4
  have sp5 := extracted_mac_result_spec rw5 a0jw b0w5 p4.carry p5 hp5
  have sq0 := extracted_mac_result_spec p0.low a1jw b1w0
    (MacCampaign.U64.ofNat 0) q0 hq0
  have sq1 := extracted_mac_result_spec p1.low a1jw b1w1 q0.carry q1 hq1
  have sq2 := extracted_mac_result_spec p2.low a1jw b1w2 q1.carry q2 hq2
  have sq3 := extracted_mac_result_spec p3.low a1jw b1w3 q2.carry q3 hq3
  have sq4 := extracted_mac_result_spec p4.low a1jw b1w4 q3.carry q4 hq4
  have sq5 := extracted_mac_result_spec p5.low a1jw b1w5 q4.carry q5 hq5
  have sr0 := extracted_mac_result_spec q0.low kv m0
    (MacCampaign.U64.ofNat 0) r0 hr0
  have sr1 := extracted_mac_result_spec q1.low kv m1 r0.carry r1 hr1
  have sr2 := extracted_mac_result_spec q2.low kv m2 r1.carry r2 hr2
  have sr3 := extracted_mac_result_spec q3.low kv m3 r2.carry r3 hr3
  have sr4 := extracted_mac_result_spec q4.low kv m4 r3.carry r4 hr4
  have sr5 := extracted_mac_result_spec q5.low kv m5 r4.carry r5 hr5
  have sadc0 := (extracted_adc_general_spec (MacCampaign.U64.ofNat 0)
    (MacCampaign.U64.ofNat 0) p5.carry s0 hs0).2
  have sadc1 := (extracted_adc_general_spec s0.low s0.carry q5.carry
    s1 hs1).2
  have sadc2 := (extracted_adc_general_spec s1.low s1.carry r5.carry
    top htop).2
  simp only [h0val] at sadc0
  -- first reduction low is zero by the INV choice
  have hkvval : kv.val =
      q0.low.val * ark_ip_proofs.s3_07_arkworks_fq_spike.INV.val %
        wordBase := by
    rw [← hkveq]
    rfl
  have hm0v : limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨0, by decide⟩ = m0.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hm0raw)
  have hr0spec : MacSpec q0.low.val kv.val
      (limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS ⟨0, by decide⟩) 0
      { low := r0.low.val, carry := r0.carry.val } := by
    rw [hm0v]
    simpa [h0val] using sr0
  have hr0low : r0.low.val = 0 := by
    have := firstReductionLow_eq_zero
      { low := q0.low.val, carry := q0.carry.val }
      { low := r0.low.val, carry := r0.carry.val } kv.val hkvval hr0spec
    simpa using this
  -- telescoped chain equations
  have eP := mac_chain_telescope rw0.val rw1.val rw2.val rw3.val rw4.val
    rw5.val (a0jw.val * b0w0.val) (a0jw.val * b0w1.val)
    (a0jw.val * b0w2.val) (a0jw.val * b0w3.val) (a0jw.val * b0w4.val)
    (a0jw.val * b0w5.val) p0.low.val p1.low.val p2.low.val p3.low.val
    p4.low.val p5.low.val p0.carry.val p1.carry.val p2.carry.val
    p3.carry.val p4.carry.val p5.carry.val
    (by simpa [h0val] using sp0.equation) sp1.equation sp2.equation
    sp3.equation sp4.equation sp5.equation
  have eQ := mac_chain_telescope p0.low.val p1.low.val p2.low.val
    p3.low.val p4.low.val p5.low.val (a1jw.val * b1w0.val)
    (a1jw.val * b1w1.val) (a1jw.val * b1w2.val) (a1jw.val * b1w3.val)
    (a1jw.val * b1w4.val) (a1jw.val * b1w5.val) q0.low.val q1.low.val
    q2.low.val q3.low.val q4.low.val q5.low.val q0.carry.val q1.carry.val
    q2.carry.val q3.carry.val q4.carry.val q5.carry.val
    (by simpa [h0val] using sq0.equation) sq1.equation sq2.equation
    sq3.equation sq4.equation sq5.equation
  have eR := mac_chain_telescope q0.low.val q1.low.val q2.low.val
    q3.low.val q4.low.val q5.low.val (kv.val * m0.val) (kv.val * m1.val)
    (kv.val * m2.val) (kv.val * m3.val) (kv.val * m4.val)
    (kv.val * m5.val) r0.low.val r1.low.val r2.low.val r3.low.val
    r4.low.val r5.low.val r0.carry.val r1.carry.val r2.carry.val
    r3.carry.val r4.carry.val r5.carry.val
    (by simpa [h0val] using sr0.equation) sr1.equation sr2.equation
    sr3.equation sr4.equation sr5.equation
  -- bridge the accumulator and multiplicand sums to array values
  have hv0 : limb result ⟨0, by decide⟩ = rw0.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hrw0raw)
  have hv1 : limb result ⟨1, by decide⟩ = rw1.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hrw1raw)
  have hv2 : limb result ⟨2, by decide⟩ = rw2.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hrw2raw)
  have hv3 : limb result ⟨3, by decide⟩ = rw3.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hrw3raw)
  have hv4 : limb result ⟨4, by decide⟩ = rw4.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hrw4raw)
  have hv5 : limb result ⟨5, by decide⟩ = rw5.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hrw5raw)
  have hA : limbsToNat result =
      rw0.val + rw1.val * wordBase + rw2.val * wordBase ^ 2 +
      rw3.val * wordBase ^ 3 + rw4.val * wordBase ^ 4 +
      rw5.val * wordBase ^ 5 := by
    rw [limbsToNat_six result, hv0, hv1, hv2, hv3, hv4, hv5]
  have hb0v0 : limb b0 ⟨0, by decide⟩ = b0w0.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb0w0raw)
  have hb0v1 : limb b0 ⟨1, by decide⟩ = b0w1.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb0w1raw)
  have hb0v2 : limb b0 ⟨2, by decide⟩ = b0w2.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb0w2raw)
  have hb0v3 : limb b0 ⟨3, by decide⟩ = b0w3.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb0w3raw)
  have hb0v4 : limb b0 ⟨4, by decide⟩ = b0w4.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb0w4raw)
  have hb0v5 : limb b0 ⟨5, by decide⟩ = b0w5.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb0w5raw)
  have hxb0 : a0jw.val * limbsToNat b0 =
      a0jw.val * b0w0.val + a0jw.val * b0w1.val * wordBase +
      a0jw.val * b0w2.val * wordBase ^ 2 +
      a0jw.val * b0w3.val * wordBase ^ 3 +
      a0jw.val * b0w4.val * wordBase ^ 4 +
      a0jw.val * b0w5.val * wordBase ^ 5 := by
    rw [limbsToNat_six b0, hb0v0, hb0v1, hb0v2, hb0v3, hb0v4, hb0v5]
    ring
  have hb1v0 : limb b1 ⟨0, by decide⟩ = b1w0.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb1w0raw)
  have hb1v1 : limb b1 ⟨1, by decide⟩ = b1w1.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb1w1raw)
  have hb1v2 : limb b1 ⟨2, by decide⟩ = b1w2.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb1w2raw)
  have hb1v3 : limb b1 ⟨3, by decide⟩ = b1w3.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb1w3raw)
  have hb1v4 : limb b1 ⟨4, by decide⟩ = b1w4.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb1w4raw)
  have hb1v5 : limb b1 ⟨5, by decide⟩ = b1w5.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hb1w5raw)
  have hxb1 : a1jw.val * limbsToNat b1 =
      a1jw.val * b1w0.val + a1jw.val * b1w1.val * wordBase +
      a1jw.val * b1w2.val * wordBase ^ 2 +
      a1jw.val * b1w3.val * wordBase ^ 3 +
      a1jw.val * b1w4.val * wordBase ^ 4 +
      a1jw.val * b1w5.val * wordBase ^ 5 := by
    rw [limbsToNat_six b1, hb1v0, hb1v1, hb1v2, hb1v3, hb1v4, hb1v5]
    ring
  have hm1v : limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨1, by decide⟩ = m1.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hm1raw)
  have hm2v : limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨2, by decide⟩ = m2.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hm2raw)
  have hm3v : limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨3, by decide⟩ = m3.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hm3raw)
  have hm4v : limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨4, by decide⟩ = m4.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hm4raw)
  have hm5v : limb ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS
      ⟨5, by decide⟩ = m5.val :=
    congrArg MacCampaign.U64.val (Result.ok.inj hm5raw)
  have hxq : kv.val *
      limbsToNat ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS =
      kv.val * m0.val + kv.val * m1.val * wordBase +
      kv.val * m2.val * wordBase ^ 2 + kv.val * m3.val * wordBase ^ 3 +
      kv.val * m4.val * wordBase ^ 4 + kv.val * m5.val * wordBase ^ 5 := by
    rw [limbsToNat_six ark_ip_proofs.s3_07_arkworks_fq_spike.MODULUS,
      hm0v, hm1v, hm2v, hm3v, hm4v, hm5v]
    ring
  rw [← hA, ← hxb0] at eP
  rw [← hxb1] at eQ
  rw [← hxq, modulus_limbsToNat] at eR
  -- the j-th multiplier bridges
  have ha0v : limbAt a0 j = a0jw.val := by
    simp only [limbAt, dif_pos hj]
    exact congrArg MacCampaign.U64.val (Result.ok.inj ha0raw)
  have ha1v : limbAt a1 j = a1jw.val := by
    simp only [limbAt, dif_pos hj]
    exact congrArg MacCampaign.U64.val (Result.ok.inj ha1raw)
  refine ⟨MacCampaign.Array.make 6#usize
      [r1.low, r2.low, r3.low, r4.low, r5.low, top.low], kv.val, hflow,
    by simpa [MacCampaign.u64Base, wordBase] using kv.isLt, ?_⟩
  rw [limbsToNat_make_six, ha0v, ha1v]
  have hkb : kv.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using kv.isLt
  have ha0b : a0jw.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using a0jw.isLt
  have ha1b : a1jw.val < wordBase := by
    simpa [MacCampaign.u64Base, wordBase] using a1jw.isLt
  have hT0 : a0jw.val * limbsToNat b0 ≤
      (wordBase - 1) * (Ipp.Bls12377.baseModulus - 1) :=
    Nat.mul_le_mul (by omega) (by omega)
  have hT1 : a1jw.val * limbsToNat b1 ≤
      (wordBase - 1) * (Ipp.Bls12377.baseModulus - 1) :=
    Nat.mul_le_mul (by omega) (by omega)
  obtain ⟨T0, hgT0⟩ : ∃ T0, a0jw.val * limbsToNat b0 = T0 := ⟨_, rfl⟩
  obtain ⟨T1, hgT1⟩ : ∃ T1, a1jw.val * limbsToNat b1 = T1 := ⟨_, rfl⟩
  rw [hgT0] at eP hT0 ⊢
  rw [hgT1] at eQ hT1 ⊢
  have hres : limbsToNat result < wordBase ^ 6 := limbsToNat_lt_radix result
  have hbp0 : p0.low.val < 2 ^ 64 := p0.low.isLt
  have hbp1 : p1.low.val < 2 ^ 64 := p1.low.isLt
  have hbp2 : p2.low.val < 2 ^ 64 := p2.low.isLt
  have hbp3 : p3.low.val < 2 ^ 64 := p3.low.isLt
  have hbp4 : p4.low.val < 2 ^ 64 := p4.low.isLt
  have hbp5 : p5.low.val < 2 ^ 64 := p5.low.isLt
  have hcp5 : p5.carry.val < 2 ^ 64 := p5.carry.isLt
  have hbq0 : q0.low.val < 2 ^ 64 := q0.low.isLt
  have hbq1 : q1.low.val < 2 ^ 64 := q1.low.isLt
  have hbq2 : q2.low.val < 2 ^ 64 := q2.low.isLt
  have hbq3 : q3.low.val < 2 ^ 64 := q3.low.isLt
  have hbq4 : q4.low.val < 2 ^ 64 := q4.low.isLt
  have hbq5 : q5.low.val < 2 ^ 64 := q5.low.isLt
  have hcq5 : q5.carry.val < 2 ^ 64 := q5.carry.isLt
  have hbr1 : r1.low.val < 2 ^ 64 := r1.low.isLt
  have hbr2 : r2.low.val < 2 ^ 64 := r2.low.isLt
  have hbr3 : r3.low.val < 2 ^ 64 := r3.low.isLt
  have hbr4 : r4.low.val < 2 ^ 64 := r4.low.isLt
  have hbr5 : r5.low.val < 2 ^ 64 := r5.low.isLt
  have hcr5 : r5.carry.val < 2 ^ 64 := r5.carry.isLt
  have hbs0l : s0.low.val < 2 ^ 64 := s0.low.isLt
  have hbs0c : s0.carry.val < 2 ^ 64 := s0.carry.isLt
  have hbs1l : s1.low.val < 2 ^ 64 := s1.low.isLt
  have hbs1c : s1.carry.val < 2 ^ 64 := s1.carry.isLt
  have hbtl : top.low.val < 2 ^ 64 := top.low.isLt
  have hbtc : top.carry.val < 2 ^ 64 := top.carry.isLt
  rw [hr0low] at eR
  norm_num [wordBase, Ipp.Bls12377.baseModulus] at eP
  norm_num [wordBase, Ipp.Bls12377.baseModulus] at eQ
  norm_num [wordBase, Ipp.Bls12377.baseModulus] at eR
  norm_num [wordBase] at sadc0
  norm_num [wordBase] at sadc1
  norm_num [wordBase] at sadc2
  norm_num [wordBase] at hres
  norm_num [wordBase] at hkb
  norm_num [wordBase, Ipp.Bls12377.baseModulus] at hT0
  norm_num [wordBase, Ipp.Bls12377.baseModulus] at hT1
  norm_num [wordBase, Ipp.Bls12377.baseModulus]
  omega

/-- The loop body as the tuple-state function iterated by the Rust loop. -/
private def sopLoopBody :
    (core.ops.range.Range × LimbArray × LimbArray × LimbArray × LimbArray ×
      LimbArray) →
    Result (ControlFlow
      (core.ops.range.Range × LimbArray × LimbArray × LimbArray × LimbArray ×
        LimbArray) LimbArray) :=
  fun (iter, a0, b0, a1, b1, result) =>
    ark_ip_proofs.s3_07_arkworks_fq_spike.sum_of_products2_loop.body
      iter a0 b0 a1 b1 result

private theorem sop_loop_body_done (a0 b0 a1 b1 result : LimbArray) :
    sopLoopBody ({ start := Usize.ofNat 6, «end» := Usize.ofNat 6 },
      a0, b0, a1, b1, result) = .ok (ControlFlow.done result) := rfl

private theorem sop_loop_peel (a0 b0 a1 b1 : LimbArray)
    (hb0 : limbsToNat b0 < Ipp.Bls12377.baseModulus)
    (hb1 : limbsToNat b1 < Ipp.Bls12377.baseModulus)
    (result : LimbArray) (j : Nat) (hj : j < 6) {value : LimbArray}
    (hlr : LoopResult sopLoopBody
      ({ start := Usize.ofNat j, «end» := Usize.ofNat 6 },
        a0, b0, a1, b1, result) (.ok value)) :
    ∃ (result' : LimbArray) (k : Nat),
      LoopResult sopLoopBody
        ({ start := Usize.ofNat (j + 1), «end» := Usize.ofNat 6 },
          a0, b0, a1, b1, result') (.ok value) ∧
      k < wordBase ∧
      limbsToNat result' * wordBase =
        limbsToNat result + limbAt a0 j * limbsToNat b0 +
          limbAt a1 j * limbsToNat b1 + k * Ipp.Bls12377.baseModulus := by
  cases hlr with
  | done hbody =>
      obtain ⟨result', k, habs, -, -⟩ :=
        sop_body_ok a0 b0 a1 b1 result j hj hb0 hb1 _ hbody
      exact absurd habs (by simp)
  | next hbody hrest =>
      obtain ⟨result', k, hflow, hk, he⟩ :=
        sop_body_ok a0 b0 a1 b1 result j hj hb0 hb1 _ hbody
      injection hflow with hflow
      subst hflow
      exact ⟨result', k, hrest, hk, he⟩

set_option maxHeartbeats 4000000 in
theorem extracted_sop2_spec (a0 b0 a1 b1 output : LimbArray)
    (ha0 : limbsToNat a0 < Ipp.Bls12377.baseModulus)
    (hb0 : limbsToNat b0 < Ipp.Bls12377.baseModulus)
    (ha1 : limbsToNat a1 < Ipp.Bls12377.baseModulus)
    (hb1 : limbsToNat b1 < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sum_of_products2
        a0 b0 a1 b1 = .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
    Nat.ModEq Ipp.Bls12377.baseModulus
      (limbsToNat output * wordBase ^ 6)
      (limbsToNat a0 * limbsToNat b0 + limbsToNat a1 * limbsToNat b1) := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.sum_of_products2 at hexec
  obtain ⟨looped, hloop, hexec⟩ := bind_eq_ok hexec
  obtain ⟨final, hsub, hret⟩ := bind_eq_ok hexec
  have hret' : final = output := Result.ok.inj hret
  rw [hret'] at hsub
  have hlr : LoopResult sopLoopBody
      ({ start := Usize.ofNat 0, «end» := Usize.ofNat 6 }, a0, b0, a1, b1,
        MacCampaign.Array.replicate 6#usize (MacCampaign.U64.ofNat 0))
      (.ok looped) := by
    apply loopResult_of_eq (by simp)
    exact hloop
  obtain ⟨r1', k0, hlr1, hk0, he0⟩ :=
    sop_loop_peel a0 b0 a1 b1 hb0 hb1 _ 0 (by decide) hlr
  obtain ⟨r2', k1, hlr2, hk1, he1⟩ :=
    sop_loop_peel a0 b0 a1 b1 hb0 hb1 _ 1 (by decide) hlr1
  obtain ⟨r3', k2, hlr3, hk2, he2⟩ :=
    sop_loop_peel a0 b0 a1 b1 hb0 hb1 _ 2 (by decide) hlr2
  obtain ⟨r4', k3, hlr4, hk3, he3⟩ :=
    sop_loop_peel a0 b0 a1 b1 hb0 hb1 _ 3 (by decide) hlr3
  obtain ⟨r5', k4, hlr5, hk4, he4⟩ :=
    sop_loop_peel a0 b0 a1 b1 hb0 hb1 _ 4 (by decide) hlr4
  obtain ⟨r6', k5, hlr6, hk5, he5⟩ :=
    sop_loop_peel a0 b0 a1 b1 hb0 hb1 _ 5 (by decide) hlr5
  have hlr6' : LoopResult sopLoopBody
      ({ start := Usize.ofNat 6, «end» := Usize.ofNat 6 }, a0, b0, a1, b1,
        r6') (.ok looped) := hlr6
  have hlooped : looped = r6' := by
    cases hlr6' with
    | done hbody =>
        rw [sop_loop_body_done] at hbody
        have hdone := Result.ok.inj hbody
        injection hdone with hdone
        exact hdone.symm
    | next hbody hrest =>
        rw [sop_loop_body_done] at hbody
        simp at hbody
  rw [hlooped] at hsub
  have hz : limbsToNat (MacCampaign.Array.replicate 6#usize
      (MacCampaign.U64.ofNat 0)) = 0 := by
    simp [limbsToNat, prefixToNat, limb, limbWord,
      MacCampaign.Array.replicate, limbCount, MacCampaign.U64.ofNat]
  rw [hz] at he0
  have ha0sum : limbsToNat a0 =
      limbAt a0 0 + limbAt a0 1 * wordBase + limbAt a0 2 * wordBase ^ 2 +
      limbAt a0 3 * wordBase ^ 3 + limbAt a0 4 * wordBase ^ 4 +
      limbAt a0 5 * wordBase ^ 5 := by
    rw [limbsToNat_six a0]
    simp [limbAt, limb]
  have ha1sum : limbsToNat a1 =
      limbAt a1 0 + limbAt a1 1 * wordBase + limbAt a1 2 * wordBase ^ 2 +
      limbAt a1 3 * wordBase ^ 3 + limbAt a1 4 * wordBase ^ 4 +
      limbAt a1 5 * wordBase ^ 5 := by
    rw [limbsToNat_six a1]
    simp [limbAt, limb]
  have hfinal : limbsToNat r6' * wordBase ^ 6 =
      limbsToNat a0 * limbsToNat b0 + limbsToNat a1 * limbsToNat b1 +
      (k0 + k1 * wordBase + k2 * wordBase ^ 2 + k3 * wordBase ^ 3 +
        k4 * wordBase ^ 4 + k5 * wordBase ^ 5) *
        Ipp.Bls12377.baseModulus := by
    calc limbsToNat r6' * wordBase ^ 6
        = limbsToNat r6' * wordBase * wordBase ^ 5 := by ring
      _ = (limbsToNat r5' + limbAt a0 5 * limbsToNat b0 +
            limbAt a1 5 * limbsToNat b1 + k5 * Ipp.Bls12377.baseModulus) *
            wordBase ^ 5 := by rw [he5]
      _ = limbsToNat r5' * wordBase * wordBase ^ 4 +
            limbAt a0 5 * wordBase ^ 5 * limbsToNat b0 +
            limbAt a1 5 * wordBase ^ 5 * limbsToNat b1 +
            k5 * wordBase ^ 5 * Ipp.Bls12377.baseModulus := by ring
      _ = (limbsToNat r4' + limbAt a0 4 * limbsToNat b0 +
            limbAt a1 4 * limbsToNat b1 + k4 * Ipp.Bls12377.baseModulus) *
            wordBase ^ 4 +
            limbAt a0 5 * wordBase ^ 5 * limbsToNat b0 +
            limbAt a1 5 * wordBase ^ 5 * limbsToNat b1 +
            k5 * wordBase ^ 5 * Ipp.Bls12377.baseModulus := by rw [he4]
      _ = limbsToNat r4' * wordBase * wordBase ^ 3 +
            (limbAt a0 4 * wordBase ^ 4 + limbAt a0 5 * wordBase ^ 5) *
              limbsToNat b0 +
            (limbAt a1 4 * wordBase ^ 4 + limbAt a1 5 * wordBase ^ 5) *
              limbsToNat b1 +
            (k4 * wordBase ^ 4 + k5 * wordBase ^ 5) *
              Ipp.Bls12377.baseModulus := by ring
      _ = (limbsToNat r3' + limbAt a0 3 * limbsToNat b0 +
            limbAt a1 3 * limbsToNat b1 + k3 * Ipp.Bls12377.baseModulus) *
            wordBase ^ 3 +
            (limbAt a0 4 * wordBase ^ 4 + limbAt a0 5 * wordBase ^ 5) *
              limbsToNat b0 +
            (limbAt a1 4 * wordBase ^ 4 + limbAt a1 5 * wordBase ^ 5) *
              limbsToNat b1 +
            (k4 * wordBase ^ 4 + k5 * wordBase ^ 5) *
              Ipp.Bls12377.baseModulus := by rw [he3]
      _ = limbsToNat r3' * wordBase * wordBase ^ 2 +
            (limbAt a0 3 * wordBase ^ 3 + limbAt a0 4 * wordBase ^ 4 +
              limbAt a0 5 * wordBase ^ 5) * limbsToNat b0 +
            (limbAt a1 3 * wordBase ^ 3 + limbAt a1 4 * wordBase ^ 4 +
              limbAt a1 5 * wordBase ^ 5) * limbsToNat b1 +
            (k3 * wordBase ^ 3 + k4 * wordBase ^ 4 + k5 * wordBase ^ 5) *
              Ipp.Bls12377.baseModulus := by ring
      _ = (limbsToNat r2' + limbAt a0 2 * limbsToNat b0 +
            limbAt a1 2 * limbsToNat b1 + k2 * Ipp.Bls12377.baseModulus) *
            wordBase ^ 2 +
            (limbAt a0 3 * wordBase ^ 3 + limbAt a0 4 * wordBase ^ 4 +
              limbAt a0 5 * wordBase ^ 5) * limbsToNat b0 +
            (limbAt a1 3 * wordBase ^ 3 + limbAt a1 4 * wordBase ^ 4 +
              limbAt a1 5 * wordBase ^ 5) * limbsToNat b1 +
            (k3 * wordBase ^ 3 + k4 * wordBase ^ 4 + k5 * wordBase ^ 5) *
              Ipp.Bls12377.baseModulus := by rw [he2]
      _ = limbsToNat r2' * wordBase * wordBase +
            (limbAt a0 2 * wordBase ^ 2 + limbAt a0 3 * wordBase ^ 3 +
              limbAt a0 4 * wordBase ^ 4 + limbAt a0 5 * wordBase ^ 5) *
              limbsToNat b0 +
            (limbAt a1 2 * wordBase ^ 2 + limbAt a1 3 * wordBase ^ 3 +
              limbAt a1 4 * wordBase ^ 4 + limbAt a1 5 * wordBase ^ 5) *
              limbsToNat b1 +
            (k2 * wordBase ^ 2 + k3 * wordBase ^ 3 + k4 * wordBase ^ 4 +
              k5 * wordBase ^ 5) * Ipp.Bls12377.baseModulus := by ring
      _ = (limbsToNat r1' + limbAt a0 1 * limbsToNat b0 +
            limbAt a1 1 * limbsToNat b1 + k1 * Ipp.Bls12377.baseModulus) *
            wordBase +
            (limbAt a0 2 * wordBase ^ 2 + limbAt a0 3 * wordBase ^ 3 +
              limbAt a0 4 * wordBase ^ 4 + limbAt a0 5 * wordBase ^ 5) *
              limbsToNat b0 +
            (limbAt a1 2 * wordBase ^ 2 + limbAt a1 3 * wordBase ^ 3 +
              limbAt a1 4 * wordBase ^ 4 + limbAt a1 5 * wordBase ^ 5) *
              limbsToNat b1 +
            (k2 * wordBase ^ 2 + k3 * wordBase ^ 3 + k4 * wordBase ^ 4 +
              k5 * wordBase ^ 5) * Ipp.Bls12377.baseModulus := by rw [he1]
      _ = limbsToNat r1' * wordBase +
            (limbAt a0 1 * wordBase + limbAt a0 2 * wordBase ^ 2 +
              limbAt a0 3 * wordBase ^ 3 + limbAt a0 4 * wordBase ^ 4 +
              limbAt a0 5 * wordBase ^ 5) * limbsToNat b0 +
            (limbAt a1 1 * wordBase + limbAt a1 2 * wordBase ^ 2 +
              limbAt a1 3 * wordBase ^ 3 + limbAt a1 4 * wordBase ^ 4 +
              limbAt a1 5 * wordBase ^ 5) * limbsToNat b1 +
            (k1 * wordBase + k2 * wordBase ^ 2 + k3 * wordBase ^ 3 +
              k4 * wordBase ^ 4 + k5 * wordBase ^ 5) *
              Ipp.Bls12377.baseModulus := by ring
      _ = (0 + limbAt a0 0 * limbsToNat b0 + limbAt a1 0 * limbsToNat b1 +
            k0 * Ipp.Bls12377.baseModulus) +
            (limbAt a0 1 * wordBase + limbAt a0 2 * wordBase ^ 2 +
              limbAt a0 3 * wordBase ^ 3 + limbAt a0 4 * wordBase ^ 4 +
              limbAt a0 5 * wordBase ^ 5) * limbsToNat b0 +
            (limbAt a1 1 * wordBase + limbAt a1 2 * wordBase ^ 2 +
              limbAt a1 3 * wordBase ^ 3 + limbAt a1 4 * wordBase ^ 4 +
              limbAt a1 5 * wordBase ^ 5) * limbsToNat b1 +
            (k1 * wordBase + k2 * wordBase ^ 2 + k3 * wordBase ^ 3 +
              k4 * wordBase ^ 4 + k5 * wordBase ^ 5) *
              Ipp.Bls12377.baseModulus := by rw [he0]
      _ = limbsToNat a0 * limbsToNat b0 + limbsToNat a1 * limbsToNat b1 +
            (k0 + k1 * wordBase + k2 * wordBase ^ 2 + k3 * wordBase ^ 3 +
              k4 * wordBase ^ 4 + k5 * wordBase ^ 5) *
              Ipp.Bls12377.baseModulus := by
          rw [ha0sum, ha1sum]
          ring
  obtain ⟨P0, hP0⟩ : ∃ P0, limbsToNat a0 * limbsToNat b0 = P0 := ⟨_, rfl⟩
  obtain ⟨P1, hP1⟩ : ∃ P1, limbsToNat a1 * limbsToNat b1 = P1 := ⟨_, rfl⟩
  have hP0b : P0 ≤ (Ipp.Bls12377.baseModulus - 1) *
      (Ipp.Bls12377.baseModulus - 1) := by
    rw [← hP0]
    exact Nat.mul_le_mul (by omega) (by omega)
  have hP1b : P1 ≤ (Ipp.Bls12377.baseModulus - 1) *
      (Ipp.Bls12377.baseModulus - 1) := by
    rw [← hP1]
    exact Nat.mul_le_mul (by omega) (by omega)
  rw [hP0, hP1] at hfinal
  have hbound : limbsToNat r6' < 2 * Ipp.Bls12377.baseModulus := by
    have hr6 : limbsToNat r6' < wordBase ^ 6 := limbsToNat_lt_radix r6'
    norm_num [wordBase, Ipp.Bls12377.baseModulus] at hfinal
    norm_num [wordBase] at hk0
    norm_num [wordBase] at hk1
    norm_num [wordBase] at hk2
    norm_num [wordBase] at hk3
    norm_num [wordBase] at hk4
    norm_num [wordBase] at hk5
    norm_num [Ipp.Bls12377.baseModulus] at hP0b
    norm_num [Ipp.Bls12377.baseModulus] at hP1b
    norm_num [wordBase] at hr6
    norm_num [Ipp.Bls12377.baseModulus]
    omega
  have hsubspec := extracted_subtract_modulus_spec r6' output hbound hsub
  refine ⟨hsubspec.1, ?_⟩
  have hmodfinal : Nat.ModEq Ipp.Bls12377.baseModulus
      (limbsToNat r6' * wordBase ^ 6) (P0 + P1) := by
    unfold Nat.ModEq
    rw [hfinal]
    simp [Nat.add_mul_mod_self_right]
  have hscaled := hsubspec.2.1.mul_right (wordBase ^ 6)
  have hchain := hscaled.trans hmodfinal
  rw [← hP0, ← hP1] at hchain
  exact hchain

private theorem radix_coprime :
    Nat.Coprime Ipp.Bls12377.baseMontgomeryRadix Ipp.Bls12377.baseModulus := by
  rw [Ipp.Bls12377.baseMontgomeryRadix,
    Nat.coprime_pow_left_iff (by decide : 0 < 384)]
  norm_num [Ipp.Bls12377.baseModulus]

private theorem decode_sop_of_mul_radix
    (output l0 r0 l1 r1 radix : Ipp.Bls12377.Fq)
    (hequation : output * radix = l0 * r0 + l1 * r1)
    (hcancel : radix * radix⁻¹ = 1) :
    output * radix⁻¹ =
      l0 * radix⁻¹ * (r0 * radix⁻¹) + l1 * radix⁻¹ * (r1 * radix⁻¹) := by
  calc
    output * radix⁻¹ = output * radix⁻¹ * (radix * radix⁻¹) := by
      rw [hcancel, mul_one]
    _ = output * radix * (radix⁻¹ * radix⁻¹) := by ring
    _ = (l0 * r0 + l1 * r1) * (radix⁻¹ * radix⁻¹) := by rw [hequation]
    _ = l0 * radix⁻¹ * (r0 * radix⁻¹) + l1 * radix⁻¹ * (r1 * radix⁻¹) := by
      ring

theorem decode_extracted_sop2 (a0 b0 a1 b1 output : LimbArray)
    (ha0 : limbsToNat a0 < Ipp.Bls12377.baseModulus)
    (hb0 : limbsToNat b0 < Ipp.Bls12377.baseModulus)
    (ha1 : limbsToNat a1 < Ipp.Bls12377.baseModulus)
    (hb1 : limbsToNat b1 < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sum_of_products2
        a0 b0 a1 b1 = .ok output) :
    decode output = decode a0 * decode b0 + decode a1 * decode b1 := by
  have hspec := (extracted_sop2_spec a0 b0 a1 b1 output ha0 hb0 ha1 hb1
    hexec).2
  have hpow : wordBase ^ 6 = Ipp.Bls12377.baseMontgomeryRadix :=
    wordRadix_eq_baseMontgomeryRadix
  rw [hpow] at hspec
  have hcastNat :
      ((limbsToNat output * Ipp.Bls12377.baseMontgomeryRadix : Nat) :
          Ipp.Bls12377.Fq) =
        ((limbsToNat a0 * limbsToNat b0 + limbsToNat a1 * limbsToNat b1 :
          Nat) : Ipp.Bls12377.Fq) :=
    (ZMod.natCast_eq_natCast_iff _ _ _).2 hspec
  have hcast :
      (limbsToNat output : Ipp.Bls12377.Fq) *
          (Ipp.Bls12377.baseMontgomeryRadix : Ipp.Bls12377.Fq) =
        (limbsToNat a0 : Ipp.Bls12377.Fq) *
            (limbsToNat b0 : Ipp.Bls12377.Fq) +
          (limbsToNat a1 : Ipp.Bls12377.Fq) *
            (limbsToNat b1 : Ipp.Bls12377.Fq) := by
    simpa only [Nat.cast_mul, Nat.cast_add] using hcastNat
  rw [decode_eq_cast_mul_inv, decode_eq_cast_mul_inv,
    decode_eq_cast_mul_inv, decode_eq_cast_mul_inv, decode_eq_cast_mul_inv]
  exact decode_sop_of_mul_radix _ _ _ _ _ _ hcast
    (ZMod.coe_mul_inv_eq_one Ipp.Bls12377.baseMontgomeryRadix radix_coprime)

/-! ### Pinned nonresidue helpers (β = −5) and the Fq2 mul/square laws -/

/-- `mul_fp_by_nonresidue_in_place`: `x → −5·x` via neg + two doubles + add. -/
theorem extracted_mul_by_nonresidue_spec (a output : LimbArray)
    (ha : limbsToNat a < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.mul_by_nonresidue a =
      .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
    decode output = -5 * decode a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.mul_by_nonresidue at hexec
  obtain ⟨negated, hneg, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hdbl1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hdbl2, hexec⟩ := bind_eq_ok hexec
  have hnegs := extracted_neg_spec a negated ha hneg
  have hd1 := extracted_double_spec negated fm hnegs.1 hdbl1
  have hd2 := extracted_double_spec fm fm1 hd1.1 hdbl2
  have hadds := extracted_add_spec negated fm1 output hnegs.1 hd2.1 hexec
  refine ⟨hadds.1, ?_⟩
  have e1 := decode_extracted_neg a negated ha hneg
  have e2 := decode_extracted_double negated fm hnegs.1 hdbl1
  have e3 := decode_extracted_double fm fm1 hd1.1 hdbl2
  have e4 := decode_extracted_add negated fm1 output hnegs.1 hd2.1 hexec
  rw [e4, e3, e2, e1]
  ring

/-- `sub_and_mul_fp_by_nonresidue`: `(y, x) → x + 5·y`. -/
theorem extracted_sub_and_mul_by_nonresidue_spec (y x output : LimbArray)
    (hy : limbsToNat y < Ipp.Bls12377.baseModulus)
    (hx : limbsToNat x < Ipp.Bls12377.baseModulus)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.sub_and_mul_by_nonresidue
        y x = .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
    decode output = decode x + 5 * decode y := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.sub_and_mul_by_nonresidue
    at hexec
  obtain ⟨original, hadd0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hdbl1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hdbl2, hexec⟩ := bind_eq_ok hexec
  have horig := extracted_add_spec y x original hy hx hadd0
  have hd1 := extracted_double_spec y fm hy hdbl1
  have hd2 := extracted_double_spec fm fm1 hd1.1 hdbl2
  have hadds := extracted_add_spec fm1 original output hd2.1 horig.1 hexec
  refine ⟨hadds.1, ?_⟩
  have e0 := decode_extracted_add y x original hy hx hadd0
  have e1 := decode_extracted_double y fm hy hdbl1
  have e2 := decode_extracted_double fm fm1 hd1.1 hdbl2
  have e3 := decode_extracted_add fm1 original output hd2.1 horig.1 hexec
  rw [e3, e2, e1, e0]
  ring

/-- `mul_fp_by_nonresidue_plus_one_and_add`: `(y, x) → x − 4·y`. -/
theorem extracted_nonresidue_plus_one_and_add_spec (y x output : LimbArray)
    (hy : limbsToNat y < Ipp.Bls12377.baseModulus)
    (hx : limbsToNat x < Ipp.Bls12377.baseModulus)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.mul_by_nonresidue_plus_one_and_add
        y x = .ok output) :
    limbsToNat output < Ipp.Bls12377.baseModulus ∧
    decode output = decode x - 4 * decode y := by
  unfold
    ark_ip_proofs.s3_07_arkworks_fq_spike.mul_by_nonresidue_plus_one_and_add
    at hexec
  obtain ⟨fm, hdbl1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hdbl2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm2, hneg, hexec⟩ := bind_eq_ok hexec
  have hd1 := extracted_double_spec y fm hy hdbl1
  have hd2 := extracted_double_spec fm fm1 hd1.1 hdbl2
  have hnegs := extracted_neg_spec fm1 fm2 hd2.1 hneg
  have hadds := extracted_add_spec fm2 x output hnegs.1 hx hexec
  refine ⟨hadds.1, ?_⟩
  have e1 := decode_extracted_double y fm hy hdbl1
  have e2 := decode_extracted_double fm fm1 hd1.1 hdbl2
  have e3 := decode_extracted_neg fm1 fm2 hd2.1 hneg
  have e4 := decode_extracted_add fm2 x output hnegs.1 hx hexec
  rw [e4, e3, e2, e1]
  ring

/-- Executed degree-2 multiplication refines `QuadraticAlgebra Fq (-5) 0`. -/
theorem extracted_fq2_mul_spec (a b output : Fq2LimbPair)
    (ha : Canonical2 a) (hb : Canonical2 b)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul a b = .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a * decodeFq2 b := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_mul at hexec
  obtain ⟨c1_nr, hnr, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hs1, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hs2, hexec⟩ := bind_eq_ok hexec
  have hret : ({ c0 := fm, c1 := fm1 } :
      ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont) = output :=
    Result.ok.inj hexec
  subst hret
  have hnrs := extracted_mul_by_nonresidue_spec a.c1 c1_nr ha.2 hnr
  have hs1spec := extracted_sop2_spec a.c0 b.c0 c1_nr b.c1 fm
    ha.1 hb.1 hnrs.1 hb.2 hs1
  have hs2spec := extracted_sop2_spec a.c0 b.c1 a.c1 b.c0 fm1
    ha.1 hb.2 ha.2 hb.1 hs2
  refine ⟨⟨hs1spec.1, hs2spec.1⟩, ?_⟩
  have d1 := decode_extracted_sop2 a.c0 b.c0 c1_nr b.c1 fm
    ha.1 hb.1 hnrs.1 hb.2 hs1
  have d2 := decode_extracted_sop2 a.c0 b.c1 a.c1 b.c0 fm1
    ha.1 hb.2 ha.2 hb.1 hs2
  apply QuadraticAlgebra.ext <;>
    simp only [decodeFq2, QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      d1, d2, hnrs.2] <;> ring

/-- Executed general-branch square refines squaring in the model. -/
theorem extracted_fq2_square_spec (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square a =
      .ok output) :
    Canonical2 output ∧ decodeFq2 output = decodeFq2 a * decodeFq2 a := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_square at hexec
  obtain ⟨v0, hv0, hexec⟩ := bind_eq_ok hexec
  obtain ⟨v3, hv3, hexec⟩ := bind_eq_ok hexec
  obtain ⟨v2, hv2, hexec⟩ := bind_eq_ok hexec
  obtain ⟨v01, hv01, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm, hfm, hexec⟩ := bind_eq_ok hexec
  obtain ⟨fm1, hfm1, hexec⟩ := bind_eq_ok hexec
  have hret : ({ c0 := fm, c1 := fm1 } :
      ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont) = output :=
    Result.ok.inj hexec
  subst hret
  have hv0s := extracted_sub_spec a.c0 a.c1 v0 ha.1 ha.2 hv0
  have hv3s := extracted_sub_and_mul_by_nonresidue_spec a.c1 a.c0 v3
    ha.2 ha.1 hv3
  have hv2s := extracted_mul_spec a.c0 a.c1 v2 ha.1 ha.2 hv2
  have hv01s := extracted_mul_spec v0 v3 v01 hv0s.1 hv3s.1 hv01
  have hfms := extracted_nonresidue_plus_one_and_add_spec v2 v01 fm
    hv2s.1 hv01s.1 hfm
  have hfm1s := extracted_double_spec v2 fm1 hv2s.1 hfm1
  refine ⟨⟨hfms.1, hfm1s.1⟩, ?_⟩
  have d0 := decode_extracted_sub a.c0 a.c1 v0 ha.1 ha.2 hv0
  have d3 := hv3s.2
  have d2 := decode_extracted_mul a.c0 a.c1 v2 ha.1 ha.2 hv2
  have d01 := decode_extracted_mul v0 v3 v01 hv0s.1 hv3s.1 hv01
  have dfm := hfms.2
  have dfm1 := decode_extracted_double v2 fm1 hv2s.1 hfm1
  apply QuadraticAlgebra.ext <;>
    simp only [decodeFq2, QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      dfm, dfm1, d01, d0, d3, d2] <;> ring

/-! ### `fq2_inv`: norm-route inverse, some-branch law
The none-direction (totality: nonzero input → `some`) needs the GKP-inverse
totality theorem, which `ArkworksFqInv` does not yet provide; it is owned by
S3-17 together with the rest of the inverse. -/

private theorem fq2_inv_norm_route (a : Fq2LimbPair)
    (v1 fmc0 v0 norm_inv fm1 fm2 fm3 : LimbArray)
    (ha : Canonical2 a)
    (hv1 : ark_ip_proofs.s3_07_arkworks_fq_spike.square a.c1 = .ok v1)
    (hfmc0 : ark_ip_proofs.s3_07_arkworks_fq_spike.square a.c0 = .ok fmc0)
    (hv0 : ark_ip_proofs.s3_07_arkworks_fq_spike.sub_and_mul_by_nonresidue
      v1 fmc0 = .ok v0)
    (hinv : ark_ip_proofs.s3_07_arkworks_fq_spike.inv v0 =
      .ok (some norm_inv))
    (hm1 : ark_ip_proofs.s3_07_arkworks_fq_spike.mul a.c0 norm_inv = .ok fm1)
    (hm2 : ark_ip_proofs.s3_07_arkworks_fq_spike.mul a.c1 norm_inv = .ok fm2)
    (hn : ark_ip_proofs.s3_07_arkworks_fq_spike.neg fm2 = .ok fm3) :
    Canonical2 ⟨fm1, fm3⟩ ∧
    decodeFq2 ⟨fm1, fm3⟩ * decodeFq2 a = 1 := by
  have hv1s := extracted_square_spec a.c1 v1 ha.2 hv1
  have hc0s := extracted_square_spec a.c0 fmc0 ha.1 hfmc0
  have hv0s := extracted_sub_and_mul_by_nonresidue_spec v1 fmc0 v0
    hv1s.1 hc0s.1 hv0
  have hne : v0 ≠ Ipp.Extracted.ArkworksFqInv.zeroArray := by
    intro hcontra
    rw [hcontra, Ipp.Extracted.ArkworksFqInv.extracted_inv_zero] at hinv
    simp at hinv
  have hninv_lt : limbsToNat norm_inv < Ipp.Bls12377.baseModulus :=
    (Ipp.Extracted.ArkworksFqInv.extracted_inv_spec v0 norm_inv
      hv0s.1 hne hinv).coefficient_lt
  have hm1s := extracted_mul_spec a.c0 norm_inv fm1 ha.1 hninv_lt hm1
  have hm2s := extracted_mul_spec a.c1 norm_inv fm2 ha.2 hninv_lt hm2
  have hns := extracted_neg_spec fm2 fm3 hm2s.1 hn
  refine ⟨⟨hm1s.1, hns.1⟩, ?_⟩
  have dinv := Ipp.Extracted.ArkworksFqInv.decode_extracted_inv v0 norm_inv
    hv0s.1 hne hinv
  have dv1 := decode_extracted_square a.c1 v1 ha.2 hv1
  have dc0 := decode_extracted_square a.c0 fmc0 ha.1 hfmc0
  have dm1 := decode_extracted_mul a.c0 norm_inv fm1 ha.1 hninv_lt hm1
  have dm2 := decode_extracted_mul a.c1 norm_inv fm2 ha.2 hninv_lt hm2
  have dn := decode_extracted_neg fm2 fm3 hm2s.1 hn
  rw [hv0s.2, dc0, dv1] at dinv
  apply QuadraticAlgebra.ext
  · simp only [decodeFq2, QuadraticAlgebra.re_mul, QuadraticAlgebra.re_one,
      dm1, dn, dm2]
    linear_combination dinv
  · simp only [decodeFq2, QuadraticAlgebra.im_mul, QuadraticAlgebra.im_one,
      dm1, dn, dm2]
    ring

theorem extracted_fq2_inv_some_spec (a output : Fq2LimbPair)
    (ha : Canonical2 a)
    (hexec : ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv a =
      .ok (some output)) :
    Canonical2 output ∧ decodeFq2 output * decodeFq2 a = 1 := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.fq2_inv at hexec
  obtain ⟨c0IsZero, hc0z, hexec⟩ := bind_eq_ok hexec
  split at hexec
  · obtain ⟨c1IsZero, hc1z, hexec⟩ := bind_eq_ok hexec
    split at hexec
    · simp at hexec
    · obtain ⟨v1, hv1, hexec⟩ := bind_eq_ok hexec
      obtain ⟨fmc0, hfmc0, hexec⟩ := bind_eq_ok hexec
      obtain ⟨v0, hv0, hexec⟩ := bind_eq_ok hexec
      obtain ⟨o, ho, hexec⟩ := bind_eq_ok hexec
      cases o with
      | none => simp at hexec
      | some norm_inv =>
          obtain ⟨fm1, hm1, hexec⟩ := bind_eq_ok hexec
          obtain ⟨fm2, hm2, hexec⟩ := bind_eq_ok hexec
          obtain ⟨fm3, hn, hexec⟩ := bind_eq_ok hexec
          have hret : some ({ c0 := fm1, c1 := fm3 } :
              ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont) = some output :=
            Result.ok.inj hexec
          have hout := Option.some.inj hret
          subst hout
          exact fq2_inv_norm_route a v1 fmc0 v0 norm_inv fm1 fm2 fm3 ha
            hv1 hfmc0 hv0 ho hm1 hm2 hn
  · obtain ⟨v1, hv1, hexec⟩ := bind_eq_ok hexec
    obtain ⟨fmc0, hfmc0, hexec⟩ := bind_eq_ok hexec
    obtain ⟨v0, hv0, hexec⟩ := bind_eq_ok hexec
    obtain ⟨o, ho, hexec⟩ := bind_eq_ok hexec
    cases o with
    | none => simp at hexec
    | some norm_inv =>
        obtain ⟨fm1, hm1, hexec⟩ := bind_eq_ok hexec
        obtain ⟨fm2, hm2, hexec⟩ := bind_eq_ok hexec
        obtain ⟨fm3, hn, hexec⟩ := bind_eq_ok hexec
        have hret : some ({ c0 := fm1, c1 := fm3 } :
            ark_ip_proofs.s3_07_arkworks_fq_spike.Fq2Mont) = some output :=
          Result.ok.inj hexec
        have hout := Option.some.inj hret
        subst hout
        exact fq2_inv_norm_route a v1 fmc0 v0 norm_inv fm1 fm2 fm3 ha
          hv1 hfmc0 hv0 ho hm1 hm2 hn

end Ipp.Extracted.ArkworksFq2

#print axioms Ipp.Extracted.ArkworksFq2.decode_extracted_double
#print axioms Ipp.Extracted.ArkworksFq2.extracted_sop2_spec
#print axioms Ipp.Extracted.ArkworksFq2.decode_extracted_sop2
#print axioms Ipp.Extracted.ArkworksFq2.extracted_fq2_mul_spec
#print axioms Ipp.Extracted.ArkworksFq2.extracted_fq2_square_spec
#print axioms Ipp.Extracted.ArkworksFq2.extracted_fq2_inv_some_spec
