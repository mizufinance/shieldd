import ShielddGnarkFormal.Extracted.IvkModR
import ShielddGnarkFormal.LexLessLadder
import ShielddGnarkFormal.ImtGapBridge

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSectionVars false

/-!
Bridge: the extracted `IvkModR` gadget (value equation + degree-5 vanishing
poly + decompose-once strict ladders against `r` and `q - 4r`) pins the exact
Euclidean division of `IvkModQ` by the companion scalar order `r`:
`IvkModQ.val = r * QuotientA.val + IvkReduced.val` with `IvkReduced.val < r`.

The strict ladders are collapsed per-rung (`ltConstStep{One,Zero}_uncps`) and
discharged by the proven `ltAccum` kernel in `LexLessLadder.lean` with the
bound's bits as a constant vector.
-/

namespace Shieldd.GnarkFormal.Extracted.IvkModR

open Shieldd.GnarkFormal.LexLess
open Bool (toZMod)

variable [Fact (Nat.Prime Order)]

instance : Fact (Order > 1) := ⟨(Fact.out (p := Nat.Prime Order)).one_lt⟩

/-- The namespaces emit defeq `Order` copies; reuse this file's primality fact. -/
instance : Fact (Nat.Prime ImtGap.Order) := ‹Fact (Nat.Prime Order)›

/-- Companion curve scalar order `r` (the field constant baked into the gadget). -/
def rNat : ℕ := 2111115437357092606062206234695386632838870926408408195193685246394721360383

/-- `q - 4r`: the no-wrap headroom bound used when `QuotientA = 4`. -/
def q4Nat : ℕ := Order - 4 * rNat

@[simp] theorem ltConstStepOne_uncps (pe il bit : F) (k : List.Vector F 2 → Prop) :
    ltConstStepOne pe il bit k ↔
      k vec![pe * bit, il + pe * (1 - bit) - il * (pe * (1 - bit))] := by
  simp only [ltConstStepOne, Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.sub,
    GatesDef.add, exists_eq_left]

@[simp] theorem ltConstStepZero_uncps (pe bit : F) (k : F → Prop) :
    ltConstStepZero pe bit k ↔ k (pe * (1 - bit)) := by
  simp only [ltConstStepZero, Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.sub,
    exists_eq_left]

/-- Recursive counter form of one unrolled constant ladder, keeping the rungs
**folded** so the flat→recursive cast is cheap. Step `n+1` processes bit index
`n` (MSB-first from `253`); `cb` is the bound's bit function. -/
def ltcRec (A : List.Vector F 253) (cb : ℕ → Bool) (k : F → Prop) : ℕ → F → F → Prop
  | 0, _, il => k il
  | (n + 1), pe, il =>
      if cb n then ltConstStepOne pe il A[n]! fun g => ltcRec A cb k n g[0] g[1]
      else ltConstStepZero pe A[n]! fun pe' => ltcRec A cb k n pe' il

/-- Bound-bit functions for the two baked-in ladders. -/
def rBit (i : ℕ) : Bool := rNat.testBit i
def q4Bit (i : ℕ) : Bool := q4Nat.testBit i

/-- The tail of the circuit after `to_binary`: ladder vs `r` asserted `= 1`,
then ladder vs `q - 4r` consumed by the `QuotientA = 4` guard. -/
def laddersTail (QuotientA : F) (bits : List.Vector F 253) : Prop :=
  ltcRec bits rBit (fun il1 =>
    Gates.eq il1 (1 : F) ∧
    ltcRec bits q4Bit (fun il2 =>
      ∃gate_520, gate_520 = Gates.sub QuotientA (4 : F) ∧
      ∃gate_521, Gates.is_zero gate_520 gate_521 ∧
      ∃gate_522, gate_522 = Gates.sub (1 : F) il2 ∧
      ∃gate_523, gate_523 = Gates.mul gate_521 gate_522 ∧
      Gates.eq gate_523 (0 : F) ∧
      True) 253 (1 : F) (0 : F)) 253 (1 : F) (0 : F)

/-- Lemma B: the extracted circuit is exactly the prefix gates plus the two
recursive constant ladders. With the rungs folded this is a structural
re-association (`rfl`). -/
theorem circuit_eq_recursive (IvkModQ QuotientA IvkReduced : F) :
    circuit IvkModQ QuotientA IvkReduced ↔
      (∃gate_0, gate_0 = Gates.mul (2111115437357092606062206234695386632838870926408408195193685246394721360383:F) QuotientA ∧
      ∃gate_1, gate_1 = Gates.add gate_0 IvkReduced ∧
      Gates.eq IvkModQ gate_1 ∧
      ∃gate_3, gate_3 = Gates.sub QuotientA (1:F) ∧
      ∃gate_4, gate_4 = Gates.mul QuotientA gate_3 ∧
      ∃gate_5, gate_5 = Gates.sub QuotientA (2:F) ∧
      ∃gate_6, gate_6 = Gates.mul gate_4 gate_5 ∧
      ∃gate_7, gate_7 = Gates.sub QuotientA (3:F) ∧
      ∃gate_8, gate_8 = Gates.mul gate_6 gate_7 ∧
      ∃gate_9, gate_9 = Gates.sub QuotientA (4:F) ∧
      ∃gate_10, gate_10 = Gates.mul gate_8 gate_9 ∧
      Gates.eq gate_10 (0:F) ∧
      ∃gate_12, Gates.to_binary IvkReduced 253 gate_12 ∧
      laddersTail QuotientA gate_12) := by
  unfold circuit laddersTail
  rfl

private theorem tz_mul (a b : Bool) : (toZMod a : F) * toZMod b = toZMod (a && b) := by
  cases a <;> cases b <;> simp [Bool.toZMod_zero, Bool.toZMod_one]

private theorem tz_one_sub (a : Bool) : (1 : F) - toZMod a = toZMod (!a) := by
  cases a <;> simp [Bool.toZMod_zero, Bool.toZMod_one]

/-- `il + l - il*l` is Bool-or in the field, with no accumulator invariant needed. -/
private theorem tz_or_form (il l : Bool) :
    (toZMod il : F) + toZMod l - toZMod il * toZMod l = toZMod (il || l) := by
  cases il <;> cases l <;> simp [Bool.toZMod_zero, Bool.toZMod_one] <;> ring

open Shieldd.GnarkFormal.Extracted.ImtGap (boolLow boolLow_get boolLow_full)

/-- The folded counter ladder computes the Bool `ltAccum` against the constant
bound bits over the matching reversed low-`n` prefixes. -/
theorem ltcRec_boolLow (A : List.Vector Bool 253) (cb : ℕ → Bool) (k : F → Prop) :
    ∀ (n : ℕ), n ≤ 253 → ∀ (pe il : Bool),
      ltcRec (A.map toZMod) cb k n (toZMod pe) (toZMod il) →
        k (toZMod (ltAccum pe il
          (boolLow (fun i => A[i]!) n).reverse
          (boolLow cb n).reverse)) := by
  intro n
  induction n with
  | zero =>
    intro _ pe il h
    simpa [ltcRec, boolLow, ltAccum] using h
  | succ n ih =>
    intro hn pe il h
    have hnlt : n < 253 := Nat.lt_of_succ_le hn
    have hA : ((A.map toZMod)[n]! : F) = toZMod A[n]! := by
      rw [getElem!_pos (A.map toZMod) n hnlt, getElem!_pos A n hnlt, List.Vector.getElem_map]
    rw [ltcRec] at h
    cases hc : cb n with
    | true =>
      rw [hc, if_pos rfl] at h
      rw [ltConstStepOne_uncps] at h
      rw [hA, tz_mul, tz_one_sub, tz_mul, tz_or_form] at h
      have hk := ih (Nat.le_of_succ_le hn) (pe && A[n]!) (il || (pe && !A[n]!)) h
      simp only [boolLow, List.Vector.reverse_snoc, hc] at hk ⊢
      simpa [ltAccum, Bool.and_true, Bool.and_assoc] using hk
    | false =>
      rw [hc, if_neg (by simp)] at h
      rw [ltConstStepZero_uncps] at h
      rw [hA, tz_one_sub, tz_mul] at h
      have hk := ih (Nat.le_of_succ_le hn) (pe && !A[n]!) il h
      simp only [boolLow, List.Vector.reverse_snoc, hc] at hk ⊢
      simpa [ltAccum, Bool.and_false, Bool.or_false] using hk

/-- Bound bits of `r` as a constant vector. -/
def rBits : List.Vector Bool 253 := Fin.toBitsLE (⟨rNat, by decide⟩ : Fin (2 ^ 253))

/-- Bound bits of `q - 4r` as a constant vector. -/
def q4Bits : List.Vector Bool 253 := Fin.toBitsLE (⟨q4Nat, by decide⟩ : Fin (2 ^ 253))

theorem rBits_val : (Fin.ofBitsLE rBits).val = rNat := by
  simp only [rBits, Fin.ofBitsLE_toBitsLE_eq_self]

theorem q4Bits_val : (Fin.ofBitsLE q4Bits).val = q4Nat := by
  simp only [q4Bits, Fin.ofBitsLE_toBitsLE_eq_self]

theorem boolLow_rBit : boolLow rBit 253 = rBits := by
  apply List.Vector.eq; simp only [rBits, boolLow]; decide +kernel

theorem boolLow_q4Bit : boolLow q4Bit 253 = q4Bits := by
  apply List.Vector.eq; simp only [q4Bits, boolLow]; decide +kernel

/-- One full ladder run computes `decide (value < bound)` in the field. -/
theorem ltcRec_sound (A : List.Vector Bool 253) (cb : ℕ → Bool)
    (cBits : List.Vector Bool 253) (hcb : boolLow cb 253 = cBits) (k : F → Prop)
    (h : ltcRec (A.map toZMod) cb k 253 (1 : F) (0 : F)) :
    k (toZMod (decide ((Fin.ofBitsLE A).val < (Fin.ofBitsLE cBits).val))) := by
  have hk := ltcRec_boolLow A cb k 253 le_rfl true false
    (by simpa [Bool.toZMod_one, Bool.toZMod_zero] using h)
  rw [boolLow_full A, hcb] at hk
  simpa [ltAccum_reverse_eq_decide] using hk

/-! ### Capstone: the gadget pins exact Euclidean division by `r` -/

private theorem vanish_cases (a : F)
    (h : a * (a - 1) * (a - 2) * (a - 3) * (a - 4) = 0) :
    ∃ j : ℕ, j ≤ 4 ∧ a = ((j : ℕ) : F) := by
  rcases mul_eq_zero.mp h with h4 | h4
  rcases mul_eq_zero.mp h4 with h3 | h3
  rcases mul_eq_zero.mp h3 with h2 | h2
  rcases mul_eq_zero.mp h2 with h1 | h1
  · exact ⟨0, by omega, by rw [h1, Nat.cast_zero]⟩
  · exact ⟨1, by omega, by rw [sub_eq_zero.mp h1, Nat.cast_one]⟩
  · exact ⟨2, by omega, by rw [sub_eq_zero.mp h2, Nat.cast_ofNat]⟩
  · exact ⟨3, by omega, by rw [sub_eq_zero.mp h3, Nat.cast_ofNat]⟩
  · exact ⟨4, by omega, by rw [sub_eq_zero.mp h4, Nat.cast_ofNat]⟩

/-- **IVK mod-r soundness.** Any satisfying assignment of the extracted gadget
is the exact Euclidean division of `IvkModQ` by the companion scalar order:
`IvkReduced` is the remainder and `QuotientA` the quotient, as naturals. -/
theorem circuit_sound (IvkModQ QuotientA IvkReduced : F)
    (h : circuit IvkModQ QuotientA IvkReduced) :
    IvkReduced.val = IvkModQ.val % rNat ∧ QuotientA.val = IvkModQ.val / rNat := by
  rw [circuit_eq_recursive] at h
  obtain ⟨g0, hg0, g1, hg1, hval, g3, hg3, g4, hg4, g5, hg5, g6, hg6, g7, hg7,
    g8, hg8, g9, hg9, g10, hg10, hvanish, bits, hbin, hladders⟩ := h
  simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub,
    GatesDef.eq] at hg0 hg1 hval hg3 hg4 hg5 hg6 hg7 hg8 hg9 hg10 hvanish
  subst hg0 hg1 hg3 hg4 hg5 hg6 hg7 hg8 hg9 hg10
  -- Bits are binary: move to a Bool vector.
  obtain ⟨x, rfl⟩ := is_vector_binary_iff_exists_bool_vec.mp hbin.2
  -- Ladder 1: IvkReduced's recovered value is < r, hence canonical.
  have h1 := ltcRec_sound x rBit rBits boolLow_rBit _ hladders
  rw [rBits_val] at h1
  obtain ⟨hil1, hladder2⟩ := h1
  simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.eq,
    Bool.toZMod_eq_one_iff_eq_true, decide_eq_true_iff] at hil1
  have hrOrd : rNat < Order := by decide +kernel
  have hredval : IvkReduced.val = (Fin.ofBitsLE x).val :=
    ImtGap.to_binary_val_eq_of_lt IvkReduced x hbin (lt_trans hil1 hrOrd)
  have hredlt : IvkReduced.val < rNat := hredval ▸ hil1
  -- Ladder 2 + guard: when QuotientA = 4 the remainder also fits below q - 4r.
  have h2 := ltcRec_sound x q4Bit q4Bits boolLow_q4Bit _ hladder2
  rw [q4Bits_val] at h2
  obtain ⟨g520, hg520, g521, hz, g522, hg522, g523, hg523, htail, -⟩ := h2
  simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.sub, GatesDef.eq,
    GatesDef.is_zero] at hg520 hg522 hg523 hz htail
  subst hg520 hg522 hg523
  -- QuotientA is one of 0..4, as a Nat cast.
  obtain ⟨j, hj4, hQ⟩ := vanish_cases QuotientA hvanish
  have hr4 : 4 * rNat + q4Nat = Order := by decide +kernel
  have hlt4 : 4 * rNat < Order := by decide +kernel
  have h5lt : 5 < Order := by decide +kernel
  have hQval : QuotientA.val = j := by
    rw [hQ]; exact ZMod.val_natCast_of_lt (by omega)
  -- When QuotientA = 4 the guard forces the remainder below q - 4r.
  have hguard : j = 4 → (Fin.ofBitsLE x).val < q4Nat := by
    intro hj
    rcases hz with ⟨hne, hg521⟩ | ⟨_, hg521⟩
    · refine absurd ?_ hne
      rw [hQ, hj, Nat.cast_ofNat, sub_self]
    · rw [hg521, one_mul] at htail
      by_contra hb
      rw [decide_eq_false_iff_not.mpr hb] at htail
      simp [Bool.toZMod_zero] at htail
  -- In every case the Nat sum stays below Order: no wrap.
  have hsum_lt : rNat * j + IvkReduced.val < Order := by
    rcases Nat.lt_or_ge j 4 with h3 | h4'
    · have hmul : rNat * j ≤ rNat * 3 := Nat.mul_le_mul_left _ (by omega)
      omega
    · have hj : j = 4 := by omega
      have hb := hguard hj
      subst hj
      omega
  -- The field equation lifts to exact Nat arithmetic below Order.
  have hrcast : ((rNat : ℕ) : F) =
      (2111115437357092606062206234695386632838870926408408195193685246394721360383 : F) := by
    simp only [rNat]; exact Nat.cast_ofNat
  have hcast : IvkModQ = ((rNat * j + IvkReduced.val : ℕ) : F) := by
    rw [hval, hQ]
    push_cast
    rw [hrcast, ZMod.natCast_val, ZMod.cast_id]
  have hvq : IvkModQ.val = rNat * j + IvkReduced.val := by
    rw [hcast, ZMod.val_natCast_of_lt hsum_lt]
  have hrpos : 0 < rNat := by decide +kernel
  refine ⟨?_, ?_⟩
  · rw [hvq, Nat.mul_comm, Nat.add_comm, Nat.add_mul_mod_self_right]
    exact (Nat.mod_eq_of_lt hredlt).symm
  · rw [hvq, hQval, Nat.mul_comm, Nat.add_comm, Nat.add_mul_div_right _ _ hrpos,
      Nat.div_eq_of_lt hredlt, Nat.zero_add]

/-! ### Deployed-adapter helper: 251-bit truncation of the 253-bit decomposition

The deployed circuit (T1-h) drops the ladder's own 251-bit `to_binary` and
reuses the first 251 bits of the mod-`r` decomposition. Soundness: the `r`
ladder pins the decomposition's value below `r < 2^251`, so bits 251/252 are
zero and the truncation is itself a valid 251-bit decomposition. -/

private theorem ofBitsLE_snoc_val {d : ℕ} (vs : List.Vector Bool d) (b : Bool) :
    (Fin.ofBitsLE (vs.snoc b)).val = b.toNat * 2 ^ d + (Fin.ofBitsLE vs).val := by
  rw [Fin.ofBitsLE, List.Vector.reverse_snoc, Fin.ofBitsBE]
  simp [Fin.ofBitsLE]

theorem laddersTail_to_binary_251 (QuotientA IvkReduced : F)
    (bits : List.Vector F 253) (bits251 : List.Vector F 251)
    (hbin : GatesDef.to_binary IvkReduced 253 bits)
    (h : laddersTail QuotientA bits)
    (htrunc : ∀ i : Fin 251,
      bits251.get i = bits[(i : ℕ)]'(Nat.lt_of_lt_of_le i.isLt (by decide))) :
    GatesDef.to_binary IvkReduced 251 bits251 := by
  obtain ⟨x, hx⟩ := is_vector_binary_iff_exists_bool_vec.mp hbin.2
  subst hx
  -- Ladder vs r pins the recovered value below r < 2^251.
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
  -- Split off the top two bits of x.
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
  -- Top two bits vanish under the 2^251 bound.
  have htlt : (Fin.ofBitsLE t.reverse).val < 2 ^ 251 := (Fin.ofBitsLE t.reverse).isLt
  have ha : a = false := by
    cases a
    · rfl
    · exfalso; simp only [Bool.toNat_true, one_mul] at hdecomp; omega
  have hb : b = false := by
    cases b
    · rfl
    · exfalso; subst ha
      simp only [Bool.toNat_true, Bool.toNat_false, one_mul, zero_mul, zero_add] at hdecomp
      omega
  subst ha hb
  have hveq : (Fin.ofBitsLE x).val = (Fin.ofBitsLE t.reverse).val := by
    simpa using hdecomp
  -- The truncated vector is the bool truncation's field image.
  have hbits251 : bits251 = t.reverse.map Bool.toZMod := by
    apply List.Vector.ext
    intro i
    have hi2 : (i : ℕ) < 252 := Nat.lt_of_lt_of_le i.isLt (by decide)
    have hi3 : (i : ℕ) < 253 := Nat.lt_of_lt_of_le i.isLt (by decide)
    rw [htrunc i]
    rw [List.Vector.getElem_map, List.Vector.get_map]
    have hxel : x[(i : ℕ)]'hi3 = (t.reverse)[(i : ℕ)]'i.isLt := by
      rw [hx]
      rw [List.Vector.getElem_snoc_before_length hi2,
        List.Vector.getElem_snoc_before_length i.isLt]
    rw [hxel]
    rfl
  rw [Gates.to_binary_iff_eq_Fin_ofBitsLE]
  refine ⟨t.reverse, hbits251, ?_⟩
  have : ((IvkReduced.val : ℕ) : F) = (((Fin.ofBitsLE t.reverse).val : ℕ) : F) := by
    rw [hredval, hveq]
  rwa [ZMod.natCast_val, ZMod.cast_id] at this

end Shieldd.GnarkFormal.Extracted.IvkModR
