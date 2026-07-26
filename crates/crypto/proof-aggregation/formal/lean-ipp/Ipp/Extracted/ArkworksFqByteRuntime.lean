import Ipp.Extracted.AeneasRuntime
import Mathlib.Data.Nat.Bitwise
import Mathlib.Tactic

/-! Bounded helpers for the extracted Fq byte conversion routines. -/

namespace Ipp.Extracted.ArkworksFqByteRuntime

open Aeneas Aeneas.Std Result

theorem u64_eq_of_val_eq (left right : MacCampaign.U64)
    (h : left.val = right.val) : left = right := by
  cases left
  cases right
  simp_all

theorem shr64_usize_spec (value output : MacCampaign.U64)
    (shift : Usize)
    (hexec : (value >>> shift : Result MacCampaign.U64) = .ok output) :
    output.val = value.val / 2 ^ shift.val := by
  change MacCampaign.shr64ByUsize value shift = .ok output at hexec
  by_cases hshift : shift.val < 64
  · rw [MacCampaign.shr64ByUsize, if_pos hshift] at hexec
    have heq := Result.ok.inj hexec
    subst output
    simp only [MacCampaign.U64.ofNat]
    rw [Nat.mod_eq_of_lt]
    exact lt_of_le_of_lt (Nat.div_le_self _ _) value.isLt
  · rw [MacCampaign.shr64ByUsize, if_neg hshift] at hexec
    cases hexec

theorem u64_and_one_val (value : MacCampaign.U64) :
    (value &&& MacCampaign.U64.ofNat 1).val = value.val % 2 := by
  change
    ((value.val &&& (1 % MacCampaign.u64Base)) %
      MacCampaign.u64Base) = value.val % 2
  have hone : 1 % MacCampaign.u64Base = 1 := by
    norm_num [MacCampaign.u64Base]
  rw [hone, Nat.and_one_is_mod]
  apply Nat.mod_eq_of_lt
  exact lt_trans (Nat.mod_lt _ (by decide))
    (by norm_num [MacCampaign.u64Base])

theorem u64_and_one_eq_one (value : MacCampaign.U64) :
    value &&& MacCampaign.U64.ofNat 1 = MacCampaign.U64.ofNat 1 ↔
      value.val % 2 = 1 := by
  constructor
  · intro heq
    have hval := congrArg MacCampaign.U64.val heq
    rw [u64_and_one_val] at hval
    simpa [MacCampaign.U64.ofNat, MacCampaign.u64Base] using hval
  · intro hmod
    apply u64_eq_of_val_eq
    rw [u64_and_one_val]
    simpa [MacCampaign.U64.ofNat, MacCampaign.u64Base] using hmod

theorem lor_shifted_eq_add {low high bits : Nat}
    (hlow : low < 2 ^ bits) :
    low ||| high * 2 ^ bits = low + high * 2 ^ bits := by
  induction bits generalizing low with
  | zero =>
      have : low = 0 := by simpa using hlow
      subst low
      simp
  | succ bits ih =>
      have hhalf : low / 2 < 2 ^ bits := by
        rw [Nat.div_lt_iff_lt_mul (by decide)]
        simpa [pow_succ, Nat.mul_comm] using hlow
      calc
        low ||| high * 2 ^ (bits + 1) =
            Nat.bit low.bodd low.div2 |||
              Nat.bit false (high * 2 ^ bits) := by
          rw [Nat.bit_bodd_div2]
          congr 1
          simp [Nat.bit, pow_succ, Nat.mul_assoc, Nat.mul_comm,
            Nat.mul_left_comm]
        _ = Nat.bit low.bodd (low.div2 ||| high * 2 ^ bits) := by
          simp only [Nat.lor_bit, Bool.or_false]
        _ = Nat.bit low.bodd (low.div2 + high * 2 ^ bits) := by
          rw [ih (by simpa [Nat.div2] using hhalf)]
        _ = low + high * 2 ^ (bits + 1) := by
          rw [Nat.bit_val]
          have hdecomp := Nat.bodd_add_div2 low
          simp only [pow_succ]
          have hmul :
              high * (2 ^ bits * 2) = 2 * (high * 2 ^ bits) := by ring
          rw [hmul]
          omega

theorem u64_or_shifted (low : MacCampaign.U64) (high bits : Nat)
    (hlow : low.val < 2 ^ bits)
    (hsum : low.val + high * 2 ^ bits < MacCampaign.u64Base) :
    low ||| MacCampaign.U64.ofNat (high * 2 ^ bits) =
      MacCampaign.U64.ofNat (low.val + high * 2 ^ bits) := by
  apply u64_eq_of_val_eq
  change
    (low.val ||| (high * 2 ^ bits) % MacCampaign.u64Base) %
        MacCampaign.u64Base =
      (low.val + high * 2 ^ bits) % MacCampaign.u64Base
  have hshift : high * 2 ^ bits < MacCampaign.u64Base :=
    lt_of_le_of_lt (Nat.le_add_left _ _) hsum
  rw [Nat.mod_eq_of_lt hshift, lor_shifted_eq_add hlow,
    Nat.mod_eq_of_lt hsum]

def appendByte (low : MacCampaign.U64) (byte : UInt8)
    (bits : Nat) : MacCampaign.U64 :=
  low ||| MacCampaign.U64.ofNat (byte.toNat * 2 ^ bits)

theorem appendByte_spec (low : MacCampaign.U64) (byte : UInt8)
    (bits : Nat) (hlow : low.val < 2 ^ bits)
    (hbase : 2 ^ (bits + 8) ≤ MacCampaign.u64Base) :
    (appendByte low byte bits).val =
        low.val + byte.toNat * 2 ^ bits ∧
      (appendByte low byte bits).val < 2 ^ (bits + 8) := by
  have hbyte : byte.toNat < 2 ^ 8 := by
    simpa using byte.toNat_lt
  have hnext : low.val + byte.toNat * 2 ^ bits < 2 ^ (bits + 8) := by
    calc
      low.val + byte.toNat * 2 ^ bits <
          2 ^ bits + byte.toNat * 2 ^ bits :=
        Nat.add_lt_add_right hlow _
      _ = (byte.toNat + 1) * 2 ^ bits := by ring
      _ ≤ 2 ^ 8 * 2 ^ bits := by
        exact Nat.mul_le_mul_right _ (by omega)
      _ = 2 ^ (bits + 8) := by
        rw [pow_add]
        ring
  have hsum : low.val + byte.toNat * 2 ^ bits < MacCampaign.u64Base :=
    lt_of_lt_of_le hnext hbase
  have heq := u64_or_shifted low byte.toNat bits hlow hsum
  constructor
  · rw [appendByte, heq]
    simp [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hsum]
  · rw [appendByte, heq]
    simpa [MacCampaign.U64.ofNat, Nat.mod_eq_of_lt hsum] using hnext

def packedWord
    (b0 b1 b2 b3 b4 b5 b6 b7 : UInt8) : MacCampaign.U64 :=
  let p0 := MacCampaign.castU64 b0
  let p1 := appendByte p0 b1 8
  let p2 := appendByte p1 b2 16
  let p3 := appendByte p2 b3 24
  let p4 := appendByte p3 b4 32
  let p5 := appendByte p4 b5 40
  let p6 := appendByte p5 b6 48
  appendByte p6 b7 56

theorem packedWord_val
    (b0 b1 b2 b3 b4 b5 b6 b7 : UInt8) :
    (packedWord b0 b1 b2 b3 b4 b5 b6 b7).val =
      b0.toNat + b1.toNat * 2 ^ 8 + b2.toNat * 2 ^ 16 +
      b3.toNat * 2 ^ 24 + b4.toNat * 2 ^ 32 +
      b5.toNat * 2 ^ 40 + b6.toNat * 2 ^ 48 +
      b7.toNat * 2 ^ 56 := by
  let p0 := MacCampaign.castU64 b0
  let p1 := appendByte p0 b1 8
  let p2 := appendByte p1 b2 16
  let p3 := appendByte p2 b3 24
  let p4 := appendByte p3 b4 32
  let p5 := appendByte p4 b5 40
  let p6 := appendByte p5 b6 48
  let p7 := appendByte p6 b7 56
  change p7.val = _
  have h0 : p0.val < 2 ^ 8 := by
    simpa [p0, MacCampaign.castU64, MacCampaign.U64.ofNat,
      MacCampaign.u64Base] using b0.toNat_lt
  have h1 : p1.val = p0.val + b1.toNat * 2 ^ 8 ∧ p1.val < 2 ^ 16 := by
    simpa [p1] using appendByte_spec p0 b1 8 h0 (by
      norm_num [MacCampaign.u64Base])
  have h2 : p2.val = p1.val + b2.toNat * 2 ^ 16 ∧ p2.val < 2 ^ 24 := by
    simpa [p2] using appendByte_spec p1 b2 16 h1.2 (by
      norm_num [MacCampaign.u64Base])
  have h3 : p3.val = p2.val + b3.toNat * 2 ^ 24 ∧ p3.val < 2 ^ 32 := by
    simpa [p3] using appendByte_spec p2 b3 24 h2.2 (by
      norm_num [MacCampaign.u64Base])
  have h4 : p4.val = p3.val + b4.toNat * 2 ^ 32 ∧ p4.val < 2 ^ 40 := by
    simpa [p4] using appendByte_spec p3 b4 32 h3.2 (by
      norm_num [MacCampaign.u64Base])
  have h5 : p5.val = p4.val + b5.toNat * 2 ^ 40 ∧ p5.val < 2 ^ 48 := by
    simpa [p5] using appendByte_spec p4 b5 40 h4.2 (by
      norm_num [MacCampaign.u64Base])
  have h6 : p6.val = p5.val + b6.toNat * 2 ^ 48 ∧ p6.val < 2 ^ 56 := by
    simpa [p6] using appendByte_spec p5 b6 48 h5.2 (by
      norm_num [MacCampaign.u64Base])
  have h7 : p7.val = p6.val + b7.toNat * 2 ^ 56 ∧ p7.val < 2 ^ 64 := by
    simpa [p7] using appendByte_spec p6 b7 56 h6.2 (by
      norm_num [MacCampaign.u64Base])
  rw [h7.1, h6.1, h5.1, h4.1, h3.1, h2.1, h1.1]
  simp [p0, MacCampaign.castU64, MacCampaign.U64.ofNat,
    MacCampaign.u64Base]

@[simp] theorem shl64_cast_byte (byte : UInt8) (bits : Nat)
    (hbits : bits < 64) :
    (MacCampaign.castU64 byte <<< MacCampaign.I32.ofNat bits :
      Result MacCampaign.U64) =
      .ok (MacCampaign.U64.ofNat (byte.toNat * 2 ^ bits)) := by
  change MacCampaign.shl64 (MacCampaign.castU64 byte)
    (MacCampaign.I32.ofNat bits) = _
  have hbitsBase : bits < MacCampaign.i32Base := by
    exact lt_trans hbits (by norm_num [MacCampaign.i32Base])
  have hi32 : (MacCampaign.I32.ofNat bits).val = bits := by
    exact Nat.mod_eq_of_lt hbitsBase
  have hcast : (MacCampaign.castU64 byte).val = byte.toNat := by
    simp only [MacCampaign.castU64, MacCampaign.castU64Source_u8,
      MacCampaign.U64.ofNat]
    rw [Nat.mod_eq_of_lt]
    exact lt_trans byte.toNat_lt (by norm_num [MacCampaign.u64Base])
  rw [MacCampaign.shl64, if_pos (by simpa [hi32] using hbits),
    hcast, hi32]

@[simp] theorem shr64_i32_ofNat (word : MacCampaign.U64) (bits : Nat)
    (hbits : bits < 64) :
    (word >>> MacCampaign.I32.ofNat bits : Result MacCampaign.U64) =
      .ok (MacCampaign.U64.ofNat (word.val / 2 ^ bits)) := by
  change MacCampaign.shr64 word (MacCampaign.I32.ofNat bits) = _
  have hbitsBase : bits < MacCampaign.i32Base := by
    exact lt_trans hbits (by norm_num [MacCampaign.i32Base])
  have hi32 : (MacCampaign.I32.ofNat bits).val = bits := by
    exact Nat.mod_eq_of_lt hbitsBase
  rw [MacCampaign.shr64, if_pos (by simpa [hi32] using hbits), hi32]

@[simp] theorem u64_ofNat_div_val
    (word : MacCampaign.U64) (divisor : Nat) :
    (MacCampaign.U64.ofNat (word.val / divisor)).val =
      word.val / divisor := by
  simp only [MacCampaign.U64.ofNat]
  rw [Nat.mod_eq_of_lt]
  exact lt_of_le_of_lt (Nat.div_le_self _ _) word.isLt

end Ipp.Extracted.ArkworksFqByteRuntime
