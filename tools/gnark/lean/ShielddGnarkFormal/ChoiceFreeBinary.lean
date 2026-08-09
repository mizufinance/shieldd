import ProvenZk.Binary
import ProvenZk.Gates

/-!
Constructive binary-recovery lemmas that avoid the ordered-semiring proof terms
carried by ProvenZK's generic `Fin.ofBitsBE_snoc` bound certificate.
-/

namespace Shieldd.GnarkFormal.ChoiceFreeBinary

/-- Appending a low bit has the expected natural value, independent of the
proof certificate stored in the result `Fin`. -/
theorem ofBitsBE_snoc_val {d : ℕ} (b : Bool) (v : List.Vector Bool d) :
    (Fin.ofBitsBE (v.snoc b)).val = b.toNat + 2 * (Fin.ofBitsBE v).val := by
  induction d with
  | zero =>
      cases v using List.Vector.casesOn
      cases b <;> rfl
  | succ d ih =>
      unfold Fin.ofBitsBE
      change
        (v.snoc b).head.toNat * 2 ^ (d + 1) +
            (Fin.ofBitsBE (v.snoc b).tail).val =
          b.toNat +
            2 * (v.head.toNat * 2 ^ d + (Fin.ofBitsBE v.tail).val)
      simp only [List.Vector.head_snoc, List.Vector.tail_snoc, ih, Nat.pow_succ]
      ring

/-- Little-endian Boolean vectors have the expected low-bit projection. -/
theorem ofBitsLE_cons_val {d : ℕ} (head : Bool)
    (tail : List.Vector Bool d) :
    (Fin.ofBitsLE (head ::ᵥ tail)).val =
      Nat.bit head (Fin.ofBitsLE tail).val := by
  simp [Fin.ofBitsLE, List.Vector.reverse_cons, ofBitsBE_snoc_val]
  cases head
  · simp [Nat.bit]
  · simp [Nat.bit, Nat.add_comm]

private theorem vector_get_succ_nat {α : Type} {d i : ℕ} (head : α)
    (tail : List.Vector α d) (h : i.succ < d.succ) :
    (head ::ᵥ tail)[i.succ]'h =
      tail[i]'(Nat.lt_of_succ_lt_succ h) := by
  rfl

/-- `Fin.ofBitsLE` exposes exactly the supplied bit below vector width. -/
theorem ofBitsLE_testBit {d : ℕ} (bits : List.Vector Bool d) :
    ∀ i, i < d →
      (Fin.ofBitsLE bits).val.testBit i = bits[i]! := by
  induction d with
  | zero =>
      intro i hi
      exact (Nat.not_lt_zero i hi).elim
  | succ d ih =>
      intro i hi
      cases bits using List.Vector.casesOn with
      | cons head tail =>
          cases i with
          | zero =>
              rw [ofBitsLE_cons_val]
              rw [Nat.testBit_bit_zero]
              rw [getElem!_pos (head ::ᵥ tail) 0
                (Nat.zero_lt_succ d)]
              simp
          | succ i =>
              have hi' : i < d := Nat.lt_of_succ_lt_succ hi
              rw [ofBitsLE_cons_val]
              rw [Nat.testBit_bit_succ]
              rw [getElem!_pos (head ::ᵥ tail) (i + 1) hi]
              rw [vector_get_succ_nat]
              rw [← getElem!_pos tail i hi']
              exact ih tail i hi'

/-- Boolean little-endian recovery equals `Fin.ofBitsLE`, with a proof closure
containing only ring arithmetic and the quotient soundness of `ZMod`. -/
theorem recover_binary_map_toZMod_eq_ofBitsLE {N d : ℕ}
    (v : List.Vector Bool d) :
    recover_binary_zmod' (v.map (Bool.toZMod (N := N))) =
      ((Fin.ofBitsLE v).val : ZMod N) := by
  induction d with
  | zero =>
      cases v using List.Vector.casesOn
      simp [recover_binary_zmod', Fin.ofBitsLE, Fin.ofBitsBE]
  | succ d ih =>
      cases v using List.Vector.casesOn with
      | cons head tail =>
          simp only [List.Vector.map_cons, recover_binary_zmod', List.Vector.head_cons,
            List.Vector.tail_cons, Fin.ofBitsLE, List.Vector.reverse_cons]
          rw [ih tail]
          rw [ofBitsBE_snoc_val]
          push_cast
          cases head <;> simp [Bool.toZMod, Bool.toNat, Fin.ofBitsLE]

/-- Recover the Boolean witness and its natural value without normalizing it
through `Fin.toBitsLE`, whose generic round-trip theorem uses classical order
instances. -/
theorem exists_bool_vector_of_to_binary {N d : ℕ}
    {a : ZMod N} {v : List.Vector (ZMod N) d}
    (hpow : 2 ^ d < N) (h : GatesDef.to_binary a d v) :
    ∃ bits : List.Vector Bool d,
      v = bits.map (Bool.toZMod (N := N)) ∧
      a.val = (Fin.ofBitsLE bits).val := by
  rcases h with ⟨hrecover, hbinary⟩
  rw [is_vector_binary_iff_exists_bool_vec] at hbinary
  rcases hbinary with ⟨bits, rfl⟩
  refine ⟨bits, rfl, ?_⟩
  rw [recover_binary_map_toZMod_eq_ofBitsLE] at hrecover
  have hfit : (Fin.ofBitsLE bits).val < N :=
    Nat.lt_trans (Fin.ofBitsLE bits).isLt hpow
  have hval := congrArg ZMod.val hrecover
  simpa [ZMod.val_natCast_of_lt hfit] using hval.symm

/-- A valid binary decomposition places the field representative in the
decomposition range, without using the generic classical `Fin` round trip. -/
theorem range_of_to_binary {N d : ℕ}
    {a : ZMod N} {v : List.Vector (ZMod N) d}
    (hpow : 2 ^ d < N) (h : GatesDef.to_binary a d v) :
    a.val < 2 ^ d := by
  obtain ⟨bits, _, hval⟩ := exists_bool_vector_of_to_binary hpow h
  rw [hval]
  exact (Fin.ofBitsLE bits).isLt

/-- Pointwise zero/one facts are the exact binary-vector predicate. -/
theorem is_vector_binary_of_get {N d : ℕ}
    (v : List.Vector (ZMod N) d)
    (h : ∀ (i : Nat) (hi : i < d),
      v[i]'hi = 0 ∨ v[i]'hi = 1) :
    is_vector_binary v := by
  induction d with
  | zero =>
      cases v using List.Vector.casesOn
      simp [is_vector_binary]
  | succ d ih =>
      cases v using List.Vector.casesOn with
      | cons head tail =>
          rw [is_vector_binary_cons]
          constructor
          · simpa using h 0 (Nat.zero_lt_succ d)
          · apply ih tail
            intro i hi
            simpa using h (i + 1) (Nat.succ_lt_succ hi)

/-- Build the exact `to_binary` predicate from recovery and pointwise rows. -/
theorem to_binary_of_get {N d : ℕ}
    (a : ZMod N) (v : List.Vector (ZMod N) d)
    (hRecover : recover_binary_zmod' v = a)
    (hBits : ∀ (i : Nat) (hi : i < d),
      v[i]'hi = 0 ∨ v[i]'hi = 1) :
    GatesDef.to_binary a d v :=
  ⟨hRecover, is_vector_binary_of_get v hBits⟩

end Shieldd.GnarkFormal.ChoiceFreeBinary
