import Ipp.Extracted.ArkworksMsmDigitsValue
import Mathlib.Tactic

/-! Generic algebra for low-to-high signed-window recombination. -/

namespace Ipp.Extracted.ArkworksMsm

open scoped BigOperators

variable {G : Type} [AddCommGroup G]

/-- Low-to-high positional value of a list of group elements. -/
def windowValue (radix : Nat) : List G → G
  | [] => 0
  | point :: rest => point + radix • windowValue radix rest

@[simp]
theorem windowValue_nil (radix : Nat) :
    windowValue (G := G) radix [] = 0 := rfl

@[simp]
theorem windowValue_cons (radix : Nat) (point : G) (rest : List G) :
    windowValue radix (point :: rest) =
      point + radix • windowValue radix rest := rfl

/-- High-to-low fold used by the executed outer window loop, excluding window zero. -/
def highWindowFold (radix : Nat) (points : List G) (accumulator : G) : G :=
  (points.drop 1).reverse.foldl
    (fun acc point => radix • (acc + point)) accumulator

/-- Peeling the last live window is one high-to-low fold step. -/
theorem highWindowFold_take_succ (radix : Nat) (points : List G)
    (accumulator : G) (index : Nat)
    (hpositive : 0 < index) (hindex : index < points.length) :
    highWindowFold radix (points.take (index + 1)) accumulator =
      highWindowFold radix (points.take index)
        (radix • (accumulator + points[index])) := by
  have htake :
      points.take (index + 1) = points.take index ++ [points[index]] := by
    simpa using (List.take_concat_get' points index hindex).symm
  have htakeLength : (points.take index).length = index := by
    simp [Nat.le_of_lt hindex]
  have hdrop :
      (points.take (index + 1)).drop 1 =
        (points.take index).drop 1 ++ [points[index]] := by
    rw [htake, List.drop_append_of_le_length]
    simpa [htakeLength] using hpositive
  simp [highWindowFold, hdrop, List.foldl_append]

/-- Zero-initialized high-to-low folding is the tail of positional evaluation. -/
theorem highWindowFold_zero (radix : Nat) (point : G) (rest : List G) :
    point + highWindowFold radix (point :: rest) 0 =
      windowValue radix (point :: rest) := by
  change point +
      rest.reverse.foldl (fun acc next => radix • (acc + next)) 0 =
    point + radix • windowValue radix rest
  congr 1
  induction rest with
  | nil => simp
  | cons next tail ih =>
      simp only [List.reverse_cons, List.foldl_append, List.foldl_cons,
        List.foldl_nil, windowValue_cons]
      rw [ih]
      abel

/-- Positional list evaluation is the corresponding finite power sum. -/
theorem windowValue_eq_sum (radix : Nat) (points : List G) :
    windowValue radix points =
      ∑ index : Fin points.length, radix ^ index.val • points[index.val] := by
  induction points with
  | nil => simp
  | cons point rest ih =>
      rw [windowValue_cons, ih]
      change point + radix •
          (∑ index : Fin rest.length,
            radix ^ index.val • rest[index.val]) =
        ∑ index : Fin (Nat.succ rest.length),
          radix ^ index.val • (point :: rest)[index.val]
      rw [Fin.sum_univ_succ]
      congr 1
      · simp
      · rw [Finset.smul_sum]
        apply Finset.sum_congr rfl
        intro index _
        simp [Fin.val_succ, List.getElem_cons_succ, Nat.succ_eq_add_one,
          pow_succ, mul_nsmul, mul_comm]
        rw [← mul_nsmul, ← mul_nsmul, mul_comm]

/-- Signed digit evaluation acts on a point as the matching window power sum. -/
theorem evalDigits_zsmul (radix : Nat) (digits : List WnafDigit)
    (point : G) :
    evalDigits radix digits • point =
      ∑ index : Fin digits.length,
        radix ^ index.val • (digits[index.val].value • point) := by
  induction digits with
  | nil => simp [evalDigits]
  | cons digit rest ih =>
      rw [evalDigits, add_zsmul, mul_zsmul, ih]
      change digit.value • point + Int.ofNat radix •
          (∑ index : Fin rest.length,
            radix ^ index.val • (rest[index.val].value • point)) =
        ∑ index : Fin (Nat.succ rest.length),
          radix ^ index.val • ((digit :: rest)[index.val].value • point)
      rw [Fin.sum_univ_succ]
      congr 1
      · simp
      · rw [Finset.smul_sum]
        apply Finset.sum_congr rfl
        intro index _
        simp [Fin.val_succ, List.getElem_cons_succ, Nat.succ_eq_add_one,
          pow_succ, mul_nsmul, Int.ofNat_eq_natCast,
          natCast_zsmul, mul_comm]
        rw [← mul_nsmul, ← mul_nsmul, mul_comm]

/-- Signed digit evaluation is the corresponding integer power sum. -/
theorem evalDigits_eq_sum (radix : Nat) (digits : List WnafDigit) :
    evalDigits radix digits =
      ∑ index : Fin digits.length,
        Int.ofNat (radix ^ index.val) * digits[index.val].value := by
  have h := evalDigits_zsmul (G := Int) radix digits 1
  simpa [Int.ofNat_eq_natCast, nsmul_eq_mul, zsmul_eq_mul, mul_comm] using h

/-- Exchange the finite point and window sums in a commutative group. -/
theorem window_sum_exchange {pointCount windowCount : Nat}
    (radix : Nat) (digits : Fin pointCount → Fin windowCount → Int)
    (points : Fin pointCount → G) :
    (∑ window : Fin windowCount,
        radix ^ window.val •
          (∑ point : Fin pointCount, digits point window • points point)) =
      ∑ point : Fin pointCount,
        (∑ window : Fin windowCount,
          Int.ofNat (radix ^ window.val) * digits point window) •
            points point := by
  simp_rw [Finset.smul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro point _
  rw [Finset.sum_smul]
  apply Finset.sum_congr rfl
  intro window _
  simp only [mul_zsmul, Int.ofNat_eq_natCast, natCast_zsmul]

/-- A signed digit reconstruction equal to a natural value acts by natural smul. -/
theorem evalDigits_zsmul_eq_nsmul (radix : Nat) (digits : List WnafDigit)
    (scalar : Nat) (point : G)
    (hvalue : evalDigits radix digits = Int.ofNat scalar) :
    evalDigits radix digits • point = scalar • point := by
  rw [hvalue]
  simp

#print axioms windowValue_eq_sum
#print axioms highWindowFold_take_succ
#print axioms highWindowFold_zero
#print axioms evalDigits_zsmul
#print axioms evalDigits_eq_sum
#print axioms window_sum_exchange
#print axioms evalDigits_zsmul_eq_nsmul

end Ipp.Extracted.ArkworksMsm
