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

end Shieldd.GnarkFormal.ChoiceFreeBinary
