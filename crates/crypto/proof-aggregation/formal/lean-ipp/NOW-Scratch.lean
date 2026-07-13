import Ipp.CanonicalWire

namespace Test

#print UInt8
#check UInt8.toBitVec_injective
#check UInt8.ofBitVec
#check UInt8.eq_iff_toBitVec_eq

def decodeLE : List UInt8 → Nat
  | [] => 0
  | b :: bs => b.toNat + 256 * decodeLE bs

def encodeLE : Nat → Nat → List UInt8
  | 0, _ => []
  | n + 1, x => UInt8.ofNat x :: encodeLE n (x / 256)

theorem ofNat_add_mul (b : UInt8) (n : Nat) :
    UInt8.ofNat (b.toNat + 256 * n) = b := by
  apply BitVec.eq_of_toNat_eq
  rw [UInt8.toNat_ofNat]
  change (b.toNat + 256 * n) % 256 = b.toNat
  rw [Nat.add_mul_mod_self_left]
  exact Nat.mod_eq_of_lt (by simpa using b.toNat_lt)

theorem add_mul_div (b : UInt8) (n : Nat) :
    (b.toNat + 256 * n) / 256 = n := by
  rw [Nat.add_mul_div_left]
  · simp [Nat.div_eq_of_lt b.toNat_lt]
  · decide

theorem encodeLE_decodeLE (xs : List UInt8) :
    encodeLE xs.length (decodeLE xs) = xs := by
  induction xs with
  | nil => rfl
  | cons b bs ih =>
      simp only [List.length_cons, encodeLE, decodeLE]
      rw [ofNat_add_mul, add_mul_div, ih]

theorem decodeLE_injective_fixed {xs ys : List UInt8}
    (hlen : xs.length = ys.length) (hdecode : decodeLE xs = decodeLE ys) :
    xs = ys := by
  rw [← encodeLE_decodeLE xs, ← encodeLE_decodeLE ys, hlen, hdecode]

end Test
