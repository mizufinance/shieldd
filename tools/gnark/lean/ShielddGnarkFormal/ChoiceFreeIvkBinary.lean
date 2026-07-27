import ShielddGnarkFormal.ChoiceFreeBinary

/-! Constructive natural/vector kernels specific to IVK bit truncation. -/

namespace Shieldd.GnarkFormal.ChoiceFreeIvkBinary

/-- Looking up an existing vector element is unchanged by `snoc`, with the
extended bound proved using only constructive natural-number order. -/
theorem getElemSnocBeforeLength {α : Type*} {n i : ℕ}
    (vs : List.Vector α n) (v : α) (hi : i < n) :
    (vs.snoc v)[i]'(Nat.lt_of_lt_of_le hi (Nat.le_add_right n 1)) =
      vs[i]'hi := by
  induction n generalizing i with
  | zero =>
    exact (Nat.not_lt_zero i hi).elim
  | succ n ih =>
    cases vs using List.Vector.casesOn with
    | cons head tail =>
      cases i with
      | zero => rfl
      | succ i =>
        exact ih tail (Nat.lt_of_succ_lt_succ hi)

/-- A two-bit high extension cannot fit below the original power-of-two bound
unless both added bits are zero. -/
theorem topTwoBitsFalseOfLt {d value tail : ℕ} (a b : Bool)
    (hdecomp :
      value = a.toNat * 2 ^ (d + 1) + (b.toNat * 2 ^ d + tail))
    (hlt : value < 2 ^ d) (hpow : 2 ^ d < 2 ^ (d + 1)) :
    a = false ∧ b = false ∧ value = tail := by
  have ha : a = false := by
    cases a
    · rfl
    · exfalso
      simp only [Bool.toNat_true, one_mul] at hdecomp
      have hle : 2 ^ (d + 1) ≤ value := by
        rw [hdecomp]
        exact Nat.le_add_right _ _
      exact (Nat.not_lt_of_ge (Nat.le_trans (Nat.le_of_lt hpow) hle)) hlt
  have hb : b = false := by
    cases b
    · rfl
    · exfalso
      simp only [ha, Bool.toNat_true, Bool.toNat_false, one_mul, zero_mul,
        zero_add] at hdecomp
      have hle : 2 ^ d ≤ value := by
        rw [hdecomp]
        exact Nat.le_add_right _ _
      exact (Nat.not_lt_of_ge hle) hlt
  refine ⟨ha, hb, ?_⟩
  simpa [ha, hb] using hdecomp

end Shieldd.GnarkFormal.ChoiceFreeIvkBinary
