import ShielddGnarkFormal.Extracted.CanonicalFqBits
import ShielddGnarkFormal.RangeCheckLadder

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.constructorNameAsVariable false

/-!
Bridge: the extracted `canonicalFqBitsGadget` (native `ToBinary` + MSB-first
`<= p-1` ladder) implies the Full canonical pin — the output bits are binary,
recover the input field element, and decode (LE) to exactly `In.val < Order`.

The reduced ladder is collapsed per-step (`reducedStep{One,Zero}_uncps`) and its
content is discharged by the proven `LeLadder` kernel in `RangeCheckLadder.lean`.
-/

namespace Shieldd.GnarkFormal.Extracted.CanonicalFqBits

open Shieldd.GnarkFormal.RangeCheck

variable [Fact (Nat.Prime Order)]

/-- `Gates.mul`/`Gates.sub`/`Gates.eq` are plain field ops at this prime. -/
@[simp] theorem reducedStepOne_uncps (pe bit : F) (k : F → Prop) :
    reducedStepOne pe bit k ↔ k (pe * bit) := by
  simp only [reducedStepOne, Gates, GatesGnark9, GatesGnark8, GatesDef.mul, exists_eq_left]

@[simp] theorem reducedStepZero_uncps (pe bit : F) (k : F → Prop) :
    reducedStepZero pe bit k ↔ (pe * bit = 0 ∧ k (pe * (1 - bit))) := by
  simp only [reducedStepZero, Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.sub,
    GatesDef.eq, exists_eq_left]

/-! ### Field-level reduced chain and its bridge to the proven `ReducedChain` kernel -/

/-- `Fact (Order > 1)` from primality — needed for `toZMod` injectivity facts. -/
instance : Fact (Order > 1) := ⟨(Fact.out (p := Nat.Prime Order)).one_lt⟩

open Bool (toZMod)

private theorem tz_mul (a b : Bool) : (toZMod a : F) * toZMod b = toZMod (a && b) := by
  cases a <;> cases b <;> simp [Bool.toZMod_zero, Bool.toZMod_one]

private theorem tz_one_sub (a : Bool) : (1 : F) - toZMod a = toZMod (!a) := by
  cases a <;> simp [Bool.toZMod_zero, Bool.toZMod_one]

/-- The field image of `ReducedChain`: the exact prefix-product shape the extracted
`reducedStep{One,Zero}` chain collapses to under the `_uncps` lemmas, MSB-first
(head-first). `pe` is the running prefix-equality flag as a field element. -/
def FieldChain : {d : ℕ} → List.Vector Bool d → List.Vector F d → F → Prop
  | 0, _, _, _ => True
  | _ + 1, c, v, pe =>
      match c.head with
      | true => FieldChain c.tail v.tail (pe * v.head)
      | false => pe * v.head = 0 ∧ FieldChain c.tail v.tail (pe * (1 - v.head))

/-- The field chain over a binary value vector is exactly the Bool `ReducedChain`.
This is where the field/Bool boundary is crossed; everything above is field, the
proven `< Order` kernel below is Bool. -/
theorem fieldChain_iff_reducedChain :
    ∀ {d : ℕ} (c x : List.Vector Bool d) (b : Bool),
      FieldChain c (x.map toZMod) (toZMod b) ↔ ReducedChain c x b := by
  intro d
  induction d with
  | zero => intro c x b; exact Iff.rfl
  | succ d ih =>
    intro c x b
    cases c using List.Vector.casesOn with | cons chd ct =>
    cases x using List.Vector.casesOn with | cons xhd xt =>
    cases chd with
    | true =>
      simp only [FieldChain, ReducedChain, List.Vector.map_cons, List.Vector.head_cons,
        List.Vector.tail_cons, tz_mul]
      exact ih ct xt (b && xhd)
    | false =>
      simp only [FieldChain, ReducedChain, List.Vector.map_cons, List.Vector.head_cons,
        List.Vector.tail_cons, tz_mul, tz_one_sub, Bool.toZMod_eq_one_iff_eq_false]
      rw [ih ct xt (b && !xhd)]

/-! ### Capstone: the reduced field chain bounds the recovered value below `Order` -/

/-- `p-1` as an element of `Fin (2^253)`. -/
def pMinusOne : Fin (2 ^ 253) := ⟨Order - 1, by decide⟩

/-- The bound vector: little-endian bits of `p-1`. -/
def cBits : List.Vector Bool 253 := Fin.toBitsLE pMinusOne

theorem cBits_val : (Fin.ofBitsLE cBits).val = Order - 1 := by
  simp only [cBits, Fin.ofBitsLE_toBitsLE_eq_self, pMinusOne]

/-- The reduced field chain (head-first over the reversed bits, flag `1`) forces the
recovered little-endian value to be `< Order`. This is the Full canonical pin's
bound, discharged by the proven `LeLadder`/`ReducedChain` kernel. -/
theorem fieldChain_value_lt_order (x : List.Vector Bool 253)
    (h : FieldChain cBits.reverse ((x.map toZMod).reverse) (toZMod true)) :
    (Fin.ofBitsLE x).val < Order := by
  rw [← List.Vector.map_reverse] at h
  have hb : ReducedChain cBits.reverse x.reverse true :=
    (fieldChain_iff_reducedChain cBits.reverse x.reverse true).mp h
  have hle : (Fin.ofBitsLE x).val ≤ (Fin.ofBitsLE cBits).val :=
    ofBitsLE_le_of_reducedChain cBits x hb
  rw [cBits_val] at hle
  have : (0 : ℕ) < Order := (Fact.out (p := Nat.Prime Order)).pos
  omega

end Shieldd.GnarkFormal.Extracted.CanonicalFqBits
