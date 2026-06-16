import ProvenZk.Binary

/-!
General range-check kernel for the Kestrel-shaped canonical decomposition.

The shipped `CanonicalFqBits253` gadget emits a prefix-product comparison ladder
that pins a 253-bit little-endian decomposition to be *reduced*
(`packbv(bits) ≤ p-1`). This file proves the reusable mathematical core of that
reducedness, independent of any extracted circuit: an MSB-first lexicographic
`≤` ladder over Bool vectors implies the recovered naturals compare the same way.

This is the Lean analog of ACL2's `make-range-check-constraints-correct`,
proven natively (no ACL2 dependency). The extracted Kestrel constraints are
bridged to `LeLadder` separately.
-/

namespace Shieldd.GnarkFormal.RangeCheck

open List (Vector)

/-- MSB-first lexicographic `≤` ladder. At each position the value bit must not
exceed the bound bit, and when they are equal the comparison defers to the
lower bits. This is exactly the obligation the Kestrel a- and pi-constraints encode. -/
def LeLadder : {d : ℕ} → List.Vector Bool d → List.Vector Bool d → Prop
  | 0, _, _ => True
  | _ + 1, c, b =>
      (b.head = true → c.head = true) ∧
      (b.head = c.head → LeLadder c.tail b.tail)

theorem ofBitsBE_le_of_ladder {d : ℕ} (c b : List.Vector Bool d)
    (h : LeLadder c b) : (Fin.ofBitsBE b).val ≤ (Fin.ofBitsBE c).val := by
  induction d with
  | zero => simp [Fin.ofBitsBE]
  | succ d ih =>
    obtain ⟨hhead, htail⟩ := h
    -- ofBitsBE x = x.head.toNat * 2^d + (ofBitsBE x.tail).val
    have hbtail : (Fin.ofBitsBE b.tail).val < 2 ^ d := (Fin.ofBitsBE b.tail).isLt
    simp only [Fin.ofBitsBE]
    cases hb : b.head with
    | false =>
      cases hc : c.head with
      | false =>
        -- heads equal → recurse on tails
        have := ih c.tail b.tail (htail (by simp [hb, hc]))
        simp [hb, hc, Bool.toNat]
        omega
      | true =>
        -- value head 0, bound head 1: value tail < 2^d ≤ bound
        simp [hb, hc, Bool.toNat]
        omega
    | true =>
      have hc : c.head = true := hhead hb
      have := ih c.tail b.tail (htail (by simp [hb, hc]))
      simp [hb, hc, Bool.toNat]
      omega

/-- Little-endian corollary: the values recovered LE compare the same way. -/
theorem ofBitsLE_le_of_ladder {d : ℕ} (c b : List.Vector Bool d)
    (h : LeLadder c.reverse b.reverse) :
    (Fin.ofBitsLE b).val ≤ (Fin.ofBitsLE c).val := by
  simpa [Fin.ofBitsLE] using ofBitsBE_le_of_ladder c.reverse b.reverse h

/-- MSB-first prefix-product ladder, the Bool image of the extracted Kestrel
`<= bound` comparator: `pe` (a running prefix-equality flag) gates each rung.
At a bound one-bit the flag continues iff the value bit is also 1; at a bound
zero-bit the value bit must be 0 while still prefix-equal. -/
def ReducedChain : {d : ℕ} → List.Vector Bool d → List.Vector Bool d → Bool → Prop
  | 0, _, _, _ => True
  | _ + 1, c, v, pe =>
      match c.head with
      | true => ReducedChain c.tail v.tail (pe && v.head)
      | false => ((pe && v.head) = false) ∧ ReducedChain c.tail v.tail (pe && !v.head)

/-- The reduced ladder with the prefix flag still set implies the lex `≤` ladder.
Invariant: once the flag drops to `false` a higher bit already decided `value <
bound`, exactly where `LeLadder`'s deferral becomes vacuous. -/
theorem leLadder_of_reducedChain : ∀ {d : ℕ} (c v : List.Vector Bool d) (pe : Bool),
    ReducedChain c v pe → pe = true → LeLadder c v := by
  intro d
  induction d with
  | zero => intro _ _ _ _ _; trivial
  | succ d ih =>
    intro c v pe h hpe
    subst hpe
    cases hc : c.head with
    | true =>
      simp only [ReducedChain, hc, Bool.true_and] at h
      refine ⟨fun _ => hc, fun heq => ?_⟩
      cases hv : v.head with
      | true => exact ih c.tail v.tail true (by rw [hv] at h; exact h) rfl
      | false => rw [hv, hc] at heq; exact absurd heq (by simp)
    | false =>
      simp only [ReducedChain, hc, Bool.true_and] at h
      obtain ⟨hzero, htail⟩ := h
      have hv : v.head = false := by simpa using hzero
      refine ⟨fun ht => absurd (hv ▸ ht) (by simp), fun _ => ?_⟩
      exact ih c.tail v.tail true (by rw [hv] at htail; simpa using htail) rfl

/-- The reduced ladder bounds the recovered little-endian value by the bound. -/
theorem ofBitsLE_le_of_reducedChain {d : ℕ} (c v : List.Vector Bool d)
    (h : ReducedChain c.reverse v.reverse true) :
    (Fin.ofBitsLE v).val ≤ (Fin.ofBitsLE c).val :=
  ofBitsLE_le_of_ladder c v (leLadder_of_reducedChain c.reverse v.reverse true h rfl)

end Shieldd.GnarkFormal.RangeCheck
