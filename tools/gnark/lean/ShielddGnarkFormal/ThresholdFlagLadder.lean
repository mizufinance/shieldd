import ShielddGnarkFormal.LexLessLadder
import ShielddGnarkFormal.Protocol.Common
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

/-!
Semantic kernel for the 128-bit threshold comparator used by Transfer.

The deployed gadget scans little-endian decompositions from the most
significant bit down. Each rung carries prefix-equality and strict-less flags.
Unlike the older `lexLess253` gadget, its less flag is updated with an explicit
Boolean-or polynomial.
-/

set_option maxRecDepth 8000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.ThresholdFlagLadder

open Bool (toZMod)
open Shieldd.GnarkFormal.LexLess
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev F := Protocol.Common.F

variable [Fact (Nat.Prime Poseidon377.P)]

/-- Exact algebraic shape of one deployed comparator rung. Intermediate
witnesses are retained so a normalized R1CS relation maps to it row-for-row. -/
def Step
    (pe il a b pe' il' : F) : Prop :=
  ∃ prefixWithoutA lessAt overlap doubleAB,
    pe * (1 - a) = prefixWithoutA ∧
    prefixWithoutA * b = lessAt ∧
    lessAt * il = overlap ∧
    (2 * a) * b = doubleAB ∧
    pe * (1 + doubleAB - a - b) = pe' ∧
    il' = il + lessAt - overlap

/-- Counter form of the deployed ladder. `n + 1` consumes bit `n`, hence a
run from `128` visits a little-endian vector in MSB-first order. -/
def run (A B : List.Vector F 128) (k : F → Prop) :
    ℕ → F → F → Prop
  | 0, _, il => k il
  | n + 1, pe, il =>
      ∃ pe' il',
        Step pe il A[n]! B[n]! pe' il' ∧
        run A B k n pe' il'

private theorem step_equations
    (pe il a b pe' il' : F)
    (h : Step pe il a b pe' il') :
    pe' = pe * (1 + 2 * (a * b) - a - b) ∧
      il' =
        il + pe * ((1 - a) * b) -
          il * (pe * ((1 - a) * b)) := by
  rcases h with
    ⟨prefixWithoutA, lessAt, overlap, doubleAB,
      hprefix, hless, hoverlap, hdouble, hpe, hil⟩
  constructor
  · calc
      pe' = pe * (1 + doubleAB - a - b) := hpe.symm
      _ = pe * (1 + 2 * (a * b) - a - b) := by
        rw [← hdouble]
        ring
  · calc
      il' = il + lessAt - overlap := hil
      _ = il + lessAt - lessAt * il := by rw [hoverlap]
      _ = il + prefixWithoutA * b - (prefixWithoutA * b) * il := by rw [hless]
      _ =
          il + pe * ((1 - a) * b) -
            il * (pe * ((1 - a) * b)) := by
        rw [← hprefix]
        ring

private theorem pe_update (pe a b : Bool) :
    (toZMod pe : F) *
        (1 + 2 * ((toZMod a : F) * toZMod b) -
          toZMod a - toZMod b) =
      toZMod (pe && (!(xor a b))) := by
  cases pe <;> cases a <;> cases b <;>
    simp [Bool.toZMod_zero, Bool.toZMod_one] <;> ring

private theorem il_update (pe il a b : Bool) :
    (toZMod il : F) +
          (toZMod pe : F) * (((1 : F) - toZMod a) * toZMod b) -
        (toZMod il : F) *
          ((toZMod pe : F) * (((1 : F) - toZMod a) * toZMod b)) =
      toZMod (il || (pe && !a && b)) := by
  cases pe <;> cases il <;> cases a <;> cases b <;>
    simp [Bool.toZMod_zero, Bool.toZMod_one] <;> ring

/-- Low-`n` prefix of a bit-indexed function. -/
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

theorem boolLow_full (x : List.Vector Bool 128) :
    boolLow (fun i => x[i]!) 128 = x := by
  apply List.Vector.ext
  intro i
  rw [boolLow_get, getElem!_pos x i.val i.isLt]
  rfl

/-- The field ladder follows the Boolean strict-less accumulator exactly. -/
theorem run_boolLow
    (A B : List.Vector Bool 128) (k : F → Prop) :
    ∀ (n : ℕ), n ≤ 128 → ∀ (pe il : Bool),
      run (A.map toZMod) (B.map toZMod) k n (toZMod pe) (toZMod il) →
        k (toZMod (ltAccum pe il
            (boolLow (fun i => A[i]!) n).reverse
            (boolLow (fun i => B[i]!) n).reverse)) := by
  intro n
  induction n with
  | zero =>
    intro _ pe il h
    simpa [run, boolLow, ltAccum] using h
  | succ n ih =>
    intro hn pe il h
    have hnlt : n < 128 := Nat.lt_of_succ_le hn
    have hA : ((A.map toZMod)[n]! : F) = toZMod A[n]! := by
      rw [getElem!_pos (A.map toZMod) n hnlt, getElem!_pos A n hnlt,
        List.Vector.getElem_map]
    have hB : ((B.map toZMod)[n]! : F) = toZMod B[n]! := by
      rw [getElem!_pos (B.map toZMod) n hnlt, getElem!_pos B n hnlt,
        List.Vector.getElem_map]
    rw [run] at h
    rcases h with ⟨pe', il', hstep, htail⟩
    have heq := step_equations _ _ _ _ _ _ hstep
    rw [hA, hB, pe_update, il_update] at heq
    rw [heq.1, heq.2] at htail
    have hk := ih (Nat.le_of_succ_le hn)
      (pe && (!(xor A[n]! B[n]!)))
      (il || (pe && !A[n]! && B[n]!)) htail
    simpa [boolLow, List.Vector.reverse_snoc, ltAccum, Fin.ofBitsBE,
      Bool.and_assoc, Bool.and_left_comm, Bool.and_comm] using hk

/-- A complete deployed ladder returns strict `<` on the natural values of the
recovered little-endian decompositions. -/
theorem run_sound
    (A B : List.Vector Bool 128) (k : F → Prop)
    (h : run (A.map toZMod) (B.map toZMod) k 128 (1 : F) (0 : F)) :
    k (toZMod (decide ((Fin.ofBitsLE A).val < (Fin.ofBitsLE B).val))) := by
  have hk := run_boolLow A B k 128 le_rfl true false (by
    simpa [Bool.toZMod_one, Bool.toZMod_zero] using h)
  rw [boolLow_full A, boolLow_full B] at hk
  simpa [Fin.ofBitsLE, ltAccum_eq_decide] using hk

end Shieldd.GnarkFormal.ThresholdFlagLadder
