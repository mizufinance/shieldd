import ShielddGnarkFormal.ChoiceFreeBinary

/-!
Arithmetic bridge for little-endian circuit bit packing.

Splitting a Boolean vector after its low `n` bits realizes natural-number
remainder and quotient by `2^n`. This is the reusable semantic step behind
the transfer address packing rows.
-/

namespace Shieldd.GnarkFormal.BinaryPacking

def littleEndianValue : List Bool → Nat
  | [] => 0
  | head :: tail => head.toNat + 2 * littleEndianValue tail

private theorem ofBitsLE_cons_val {n : ℕ}
    (head : Bool) (tail : List.Vector Bool n) :
    (Fin.ofBitsLE (head ::ᵥ tail)).val =
      head.toNat + 2 * (Fin.ofBitsLE tail).val := by
  simp [Fin.ofBitsLE, List.Vector.reverse_cons,
    ChoiceFreeBinary.ofBitsBE_snoc_val]

theorem ofBitsLE_val_eq_littleEndianValue {n : ℕ}
    (bits : List.Vector Bool n) :
    (Fin.ofBitsLE bits).val = littleEndianValue bits.toList := by
  induction n with
  | zero =>
      cases bits using List.Vector.casesOn
      rfl
  | succ n ih =>
      cases bits using List.Vector.casesOn with
      | cons head tail =>
          rw [ofBitsLE_cons_val, ih]
          rfl

theorem littleEndianValue_append (low high : List Bool) :
    littleEndianValue (low ++ high) =
      littleEndianValue low + 2 ^ low.length * littleEndianValue high := by
  induction low with
  | nil => simp [littleEndianValue]
  | cons head tail ih =>
      simp only [List.cons_append, littleEndianValue, List.length_cons]
      have ih' :
          littleEndianValue (tail.append high) =
            littleEndianValue tail +
              2 ^ tail.length * littleEndianValue high := by
        simpa using ih
      rw [ih']
      cases head <;> simp [Bool.toNat, Nat.pow_succ] <;> ring

/-- A little-endian append places the second vector above the first. -/
theorem ofBitsLE_append_val {n m : ℕ}
    (low : List.Vector Bool n) (high : List.Vector Bool m) :
    (Fin.ofBitsLE (low.append high)).val =
      (Fin.ofBitsLE low).val +
        2 ^ n * (Fin.ofBitsLE high).val := by
  rw [
    ofBitsLE_val_eq_littleEndianValue,
    ofBitsLE_val_eq_littleEndianValue,
    ofBitsLE_val_eq_littleEndianValue,
    List.Vector.toList_append,
    littleEndianValue_append,
    List.Vector.toList_length
  ]

/-- The low vector is the remainder of the combined decode. -/
theorem ofBitsLE_append_mod {n m : ℕ}
    (low : List.Vector Bool n) (high : List.Vector Bool m) :
    (Fin.ofBitsLE (low.append high)).val % 2 ^ n =
      (Fin.ofBitsLE low).val := by
  rw [ofBitsLE_append_val, Nat.add_mul_mod_self_left]
  exact Nat.mod_eq_of_lt (Fin.ofBitsLE low).isLt

/-- The high vector is the quotient of the combined decode. -/
theorem ofBitsLE_append_div {n m : ℕ}
    (low : List.Vector Bool n) (high : List.Vector Bool m) :
    (Fin.ofBitsLE (low.append high)).val / 2 ^ n =
      (Fin.ofBitsLE high).val := by
  rw [ofBitsLE_append_val, Nat.add_mul_div_left]
  · rw [Nat.div_eq_of_lt (Fin.ofBitsLE low).isLt, Nat.zero_add]
  · exact Nat.two_pow_pos n

end Shieldd.GnarkFormal.BinaryPacking
