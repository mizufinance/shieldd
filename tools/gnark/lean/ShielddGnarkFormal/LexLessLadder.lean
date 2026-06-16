import ProvenZk.Binary

/-!
Strict lexicographic `<` kernel for the `lexLess253` comparator.

The shipped `lexLess253` gadget threads a `(prefixEqual, isLess)` accumulator
MSB-first: at each rung `isLess += prefixEqual·(1-aᵢ)·bᵢ` and
`prefixEqual ·= xnor(aᵢ,bᵢ)`. This file proves the reusable Bool core: the
accumulator's final `isLess` equals `decide (A < B)` for the recovered naturals.
Mirrors `RangeCheckLadder.lean` (the `≤` kernel) for the strict case.
-/

namespace Shieldd.GnarkFormal.LexLess

open List (Vector)

/-- MSB-first strict-less accumulator over Bool vectors. `pe` = running
prefix-equality flag, `il` = accumulated `isLess`. At most one rung sets a fresh
less-bit (after which `pe` is false), so `il` stays a single bit. -/
def ltAccum : {d : ℕ} → Bool → Bool → List.Vector Bool d → List.Vector Bool d → Bool
  | 0, _, il, _, _ => il
  | _ + 1, pe, il, a, b =>
      let lessAtI := pe && !a.head && b.head
      ltAccum (pe && (!(xor a.head b.head))) (il || lessAtI) a.tail b.tail

/-- Once the prefix-equality flag drops, the accumulated `isLess` is frozen. -/
theorem ltAccum_pe_false : ∀ {d : ℕ} (il : Bool) (a b : List.Vector Bool d),
    ltAccum false il a b = il := by
  intro d
  induction d with
  | zero => intro il a b; rfl
  | succ d ih =>
    intro il a b
    simp only [ltAccum, Bool.false_and, Bool.or_false]
    exact ih il a.tail b.tail

/-- The accumulator computes strict `<` on the MSB-first recovered naturals. -/
theorem ltAccum_eq_decide {d : ℕ} (a b : List.Vector Bool d) :
    ltAccum true false a b = decide ((Fin.ofBitsBE a).val < (Fin.ofBitsBE b).val) := by
  induction d with
  | zero => simp [ltAccum, Fin.ofBitsBE]
  | succ d ih =>
    cases a using List.Vector.casesOn with | cons ah ta =>
    cases b using List.Vector.casesOn with | cons bh tb =>
    have hat : (Fin.ofBitsBE ta).val < 2 ^ d := (Fin.ofBitsBE ta).isLt
    have hbt : (Fin.ofBitsBE tb).val < 2 ^ d := (Fin.ofBitsBE tb).isLt
    simp only [ltAccum, Fin.ofBitsBE, List.Vector.head_cons, List.Vector.tail_cons]
    cases ah <;> cases bh <;>
      simp only [Bool.true_and, Bool.not_true, Bool.not_false, Bool.and_false,
        Bool.and_true, Bool.false_and, Bool.false_or, Bool.or_false, Bool.or_true,
        Bool.xor_false, Bool.xor_true, Bool.xor_self, ltAccum_pe_false,
        Bool.toNat_false, Bool.toNat_true]
    · rw [ih, decide_eq_decide]; omega
    · rw [eq_comm, decide_eq_true_iff]; omega
    · rw [eq_comm, decide_eq_false_iff_not]; omega
    · rw [ih, decide_eq_decide]; omega

/-- Little-endian corollary for the LE canonical decompositions the gadget consumes. -/
theorem ltAccum_reverse_eq_decide {d : ℕ} (a b : List.Vector Bool d) :
    ltAccum true false a.reverse b.reverse =
      decide ((Fin.ofBitsLE a).val < (Fin.ofBitsLE b).val) := by
  simpa [Fin.ofBitsLE] using ltAccum_eq_decide a.reverse b.reverse

end Shieldd.GnarkFormal.LexLess
