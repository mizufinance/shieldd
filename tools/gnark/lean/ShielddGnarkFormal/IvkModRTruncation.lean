import ShielddGnarkFormal.IvkModRBridge
import ShielddGnarkFormal.ChoiceFreeIvkBinary

/-! Constructive 253-to-251 IVK decomposition truncation. -/

namespace Shieldd.GnarkFormal.Extracted.IvkModR.Truncation

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Extracted.IvkModR
open Bool (toZMod)

private theorem ofBitsLE_snoc_val {d : ℕ} (vs : List.Vector Bool d) (b : Bool) :
    (Fin.ofBitsLE (vs.snoc b)).val = b.toNat * 2 ^ d + (Fin.ofBitsLE vs).val := by
  rw [Fin.ofBitsLE, List.Vector.reverse_snoc, Fin.ofBitsBE]
  simp [Fin.ofBitsLE]

theorem bits251_eq_map_of_top_extension
    (x : List.Vector Bool 253) (t : List.Vector Bool 251) (a b : Bool)
    (hx : x = ((t.reverse).snoc b).snoc a)
    (bits251 : List.Vector F 251)
    (htrunc : ∀ i : Fin 251,
      bits251.get i =
        (x.map toZMod)[(i : ℕ)]'(Nat.lt_of_lt_of_le i.isLt (by decide +kernel))) :
    bits251 = t.reverse.map toZMod := by
  apply List.Vector.ext
  intro i
  have hi2 : (i : ℕ) < 252 := Nat.lt_of_lt_of_le i.isLt (by decide +kernel)
  have hi3 : (i : ℕ) < 253 := Nat.lt_of_lt_of_le i.isLt (by decide +kernel)
  rw [htrunc i]
  rw [List.Vector.getElem_map, List.Vector.get_map]
  have hxel : x[(i : ℕ)]'hi3 = (t.reverse)[(i : ℕ)]'i.isLt := by
    rw [hx]
    rw [Shieldd.GnarkFormal.ChoiceFreeIvkBinary.getElemSnocBeforeLength
        ((t.reverse).snoc b) a hi2,
      Shieldd.GnarkFormal.ChoiceFreeIvkBinary.getElemSnocBeforeLength
        t.reverse b i.isLt]
  rw [hxel]
  rfl

variable [Fact (Nat.Prime Order)]

theorem laddersTail_to_binary_251 (QuotientA IvkReduced : F)
    (bits : List.Vector F 253) (bits251 : List.Vector F 251)
    (hbin : GatesDef.to_binary IvkReduced 253 bits)
    (h : laddersTail QuotientA bits)
    (htrunc : ∀ i : Fin 251,
      bits251.get i = bits[(i : ℕ)]'(Nat.lt_of_lt_of_le i.isLt (by decide +kernel))) :
    GatesDef.to_binary IvkReduced 251 bits251 := by
  obtain ⟨x, hx⟩ := is_vector_binary_iff_exists_bool_vec.mp hbin.2
  subst hx
  unfold laddersTail at h
  have h1 := ltcRec_sound x rBit rBits boolLow_rBit _ h
  rw [rBits_val] at h1
  obtain ⟨hil1, -⟩ := h1
  simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.eq,
    Bool.toZMod_eq_one_iff_eq_true, decide_eq_true_iff] at hil1
  have hr251 : rNat < 2 ^ 251 := by decide +kernel
  have hrOrd : rNat < Order := by decide +kernel
  have hlt251 : (Fin.ofBitsLE x).val < 2 ^ 251 := lt_trans hil1 hr251
  have hredval : IvkReduced.val = (Fin.ofBitsLE x).val :=
    ImtGap.to_binary_val_eq_of_lt IvkReduced x hbin (lt_trans hil1 hrOrd)
  obtain ⟨a, y, hxy⟩ : ∃ a y, x.reverse = a ::ᵥ y :=
    ⟨x.reverse.head, x.reverse.tail, (List.Vector.cons_head_tail _).symm⟩
  obtain ⟨b, t, hyt⟩ : ∃ b t, y = b ::ᵥ t :=
    ⟨y.head, y.tail, (List.Vector.cons_head_tail _).symm⟩
  rw [hyt] at hxy
  have hx : x = ((t.reverse).snoc b).snoc a := by
    rw [List.Vector.reverse_eq.mp hxy, List.Vector.reverse_cons, List.Vector.reverse_cons]
  have hdecomp : (Fin.ofBitsLE x).val =
      a.toNat * 2 ^ 252 + (b.toNat * 2 ^ 251 + (Fin.ofBitsLE t.reverse).val) := by
    rw [hx, ofBitsLE_snoc_val, ofBitsLE_snoc_val]
  have hpow : 2 ^ 251 < 2 ^ 252 := by decide +kernel
  obtain ⟨_, _, hveq⟩ :=
    Shieldd.GnarkFormal.ChoiceFreeIvkBinary.topTwoBitsFalseOfLt
      a b hdecomp hlt251 hpow
  have hbits251 : bits251 = t.reverse.map Bool.toZMod :=
    bits251_eq_map_of_top_extension x t a b hx bits251 htrunc
  rw [hbits251]
  unfold GatesDef.to_binary
  refine ⟨?_, is_vector_binary_iff_exists_bool_vec.mpr ⟨t.reverse, rfl⟩⟩
  rw [Shieldd.GnarkFormal.ChoiceFreeBinary.recover_binary_map_toZMod_eq_ofBitsLE]
  have hcast :
      IvkReduced = (((Fin.ofBitsLE t.reverse).val : ℕ) : F) := by
    have hnat :
        ((IvkReduced.val : ℕ) : F) =
          (((Fin.ofBitsLE t.reverse).val : ℕ) : F) := by
      rw [hredval, hveq]
    rwa [ZMod.natCast_val, ZMod.cast_id] at hnat
  exact hcast.symm

end Shieldd.GnarkFormal.Extracted.IvkModR.Truncation
