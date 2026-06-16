import ShielddGnarkFormal.Extracted.CanonicalFqBits
import ShielddGnarkFormal.RangeCheckLadder
import ProvenZk.Ext.GetElem

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
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

/-! ### Lemma B: the unrolled extracted chain reduces to a recursive counter form

The extracted `canonicalFqBitsGadget` is a 253-deep nested term of literal
`reducedStep{One,Zero}` calls. `chainK` is the recursive counter form it
collapses to: step `n+1` processes bit index `n` (MSB-first from `253`), choosing
the One/Zero rung by `pmBit n = (p-1).testBit n` — exactly the bound the gnark
generator baked into the unrolled structure. The reduction is `simp only`
(`_uncps`) followed by `rfl`: the literal One/Zero pattern is definitionally the
`if pmBit n` branch, and `gate_0[i]` is definitionally `bits[i]!`. -/

/-- Bound bit `i` of `p-1`, little-endian. Equals the generator's `cb[i]`. -/
def pmBit (i : ℕ) : Bool := (Order - 1).testBit i

/-- Recursive counter form of the extracted ladder, carrying the continuation `k`.
`chainK bits k 253 1` is what the unrolled gadget reduces to. -/
def chainK (bits : List.Vector F 253) (k : List.Vector F 253 → Prop) : ℕ → F → Prop
  | 0, _ => k bits
  | (n + 1), pe =>
      if pmBit n then chainK bits k n (pe * bits[n]!)
      else (pe * bits[n]! = 0) ∧ chainK bits k n (pe * (1 - bits[n]!))

/-- Lemma B: the extracted gadget is exactly the recursive counter chain. -/
theorem canonicalFqBitsGadget_eq_chainK (In : F) (k : List.Vector F 253 → Prop) :
    canonicalFqBitsGadget In k ↔
      ∃ bits, Gates.to_binary In 253 bits ∧ chainK bits k 253 (1 : F) := by
  unfold canonicalFqBitsGadget
  simp (config := { maxSteps := 10000000 }) only [reducedStepOne_uncps, reducedStepZero_uncps]
  rfl

/-! ### Connector: the counter chain implies the reduced field chain + continuation

`chainK` (index/counter form, from Lemma B) is glued to `FieldChain`
(head/tail form, feeding the proven `< Order` capstone) by an induction that
peels the high bit from both simultaneously — they process indices `252,251,…,0`
in the same order. The low-`n` prefixes are materialised by `snoc` so that
`reverse` exposes the next index at the head. -/

/-- Low-`n` prefix (indices `0..n-1`) of a bit-indexed function, as a vector. -/
def boolLow (f : ℕ → Bool) : (n : ℕ) → List.Vector Bool n
  | 0 => List.Vector.nil
  | n + 1 => (boolLow f n).snoc (f n)

theorem boolLow_get (f : ℕ → Bool) {n : ℕ} (i : Fin n) :
    (boolLow f n).get i = f i.val := by
  induction n with
  | zero => exact i.elim0
  | succ n ih =>
    refine Fin.lastCases ?_ ?_ i
    · simp only [boolLow, List.Vector.get_snoc_last, Fin.val_last]
    · intro j
      simp only [boolLow, List.Vector.snoc_get_castSucc, ih, Fin.coe_castSucc]

theorem boolLow_full (x : List.Vector Bool 253) :
    boolLow (fun i => x[i]!) 253 = x := by
  apply List.Vector.ext
  intro i
  rw [boolLow_get, getElem!_pos x i.val i.isLt]
  rfl

/-- The counter chain over a binary value vector forces the head/tail reduced
chain over the matching low-`n` reversed prefixes. High bit peeled from both. -/
theorem chainK_imp_fieldChain (x : List.Vector Bool 253) (k : List.Vector F 253 → Prop) :
    ∀ (n : ℕ), n ≤ 253 → ∀ (b : Bool),
      chainK (x.map toZMod) k n (toZMod b) →
        FieldChain (boolLow pmBit n).reverse
          ((boolLow (fun i => x[i]!) n).reverse.map toZMod) (toZMod b)
          ∧ k (x.map toZMod) := by
  intro n
  induction n with
  | zero => intro _ b h; exact ⟨trivial, h⟩
  | succ n ih =>
    intro hn b h
    have hnlt : n < 253 := Nat.lt_of_succ_le hn
    have hbit : ((x.map toZMod)[n]! : F) = toZMod x[n]! := by
      rw [getElem!_pos (x.map toZMod) n hnlt, getElem!_pos x n hnlt, List.Vector.getElem_map]
    rw [chainK] at h
    simp only [boolLow, List.Vector.reverse_snoc, List.Vector.map_cons]
    cases hb : pmBit n with
    | true =>
      rw [hb] at h
      simp only [FieldChain, hb, List.Vector.head_cons, List.Vector.tail_cons]
      rw [tz_mul]
      rw [hbit, tz_mul] at h
      exact ih (Nat.le_of_succ_le hn) (b && x[n]!) h
    | false =>
      rw [hb] at h
      obtain ⟨hz, htl⟩ := h
      rw [hbit, tz_mul] at hz
      rw [hbit, tz_one_sub, tz_mul] at htl
      simp only [FieldChain, hb, List.Vector.head_cons, List.Vector.tail_cons]
      rw [tz_mul, tz_one_sub, tz_mul]
      obtain ⟨hfc, hk⟩ := ih (Nat.le_of_succ_le hn) (b && !x[n]!) htl
      exact ⟨⟨hz, hfc⟩, hk⟩

/-- **B1 canonical pin (whole gadget).** Any satisfying assignment of the extracted
`canonicalFqBitsGadget` exhibits binary bits that recover `In` and whose
little-endian decode is `< Order`, and fires the continuation. -/
theorem canonicalFqBitsGadget_canonical (In : F) (k : List.Vector F 253 → Prop)
    (h : canonicalFqBitsGadget In k) :
    ∃ (x : List.Vector Bool 253),
      Gates.to_binary In 253 (x.map toZMod) ∧
      (Fin.ofBitsLE x).val < Order ∧
      k (x.map toZMod) := by
  obtain ⟨bits, hbin, hchain⟩ := (canonicalFqBitsGadget_eq_chainK In k).mp h
  obtain ⟨x, rfl⟩ := is_vector_binary_iff_exists_bool_vec.mp hbin.2
  obtain ⟨hfc, hk⟩ :=
    chainK_imp_fieldChain x k 253 le_rfl true (by simpa [Bool.toZMod_one] using hchain)
  refine ⟨x, hbin, ?_, hk⟩
  have hb : boolLow pmBit 253 = cBits := by
    apply List.Vector.eq; simp only [cBits, boolLow]; decide +kernel
  rw [hb, boolLow_full x, List.Vector.map_reverse] at hfc
  exact fieldChain_value_lt_order x hfc

end Shieldd.GnarkFormal.Extracted.CanonicalFqBits
