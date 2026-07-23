import Ipp.Extracted.ArkworksFinalExpCyclotomicExpExponent

/-!
S3-39: one-step invariant for the cyclotomic NAF fold.
-/

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy

set_option maxHeartbeats 800000

structure NafFoldInvariant (x : Fq12Canonical)
    (modelState : Fq12Model × Bool) (exponentState : Nat × Bool) : Prop where
  found_eq : modelState.2 = exponentState.2
  decode_eq : fq12Coefficients modelState.1 = x ^ exponentState.1
  cyclotomic :
    fq12Coefficients modelState.1 ^ cyclotomicOrder = 1

theorem nafFoldInvariant_step (a inverse : Fq12Model)
    (x : Fq12Canonical) (hx : x ^ cyclotomicOrder = 1)
    (ha : fq12Coefficients a = x)
    (hinverse :
      fq12Coefficients inverse = x ^ (cyclotomicOrder - 1))
    (modelState : Fq12Model × Bool) (exponentState : Nat × Bool)
    (hstate : NafFoldInvariant x modelState exponentState) (digit : Int) :
    NafFoldInvariant x
      (fq12CyclotomicExpStep a inverse modelState digit)
      (nafExponentStep exponentState digit) := by
  rcases modelState with ⟨result, found⟩
  rcases exponentState with ⟨exponent, expectedFound⟩
  rcases hstate with ⟨hfound, hdecode, hcyclotomic⟩
  change found = expectedFound at hfound
  change fq12Coefficients result = x ^ exponent at hdecode
  change fq12Coefficients result ^ cyclotomicOrder = 1 at hcyclotomic
  subst expectedFound
  have hsquare :
      fq12Coefficients (fq12CyclotomicSquare result) =
        x ^ (exponent * 2) := by
    rw [fq12CyclotomicSquare_eq_square result hcyclotomic,
      fq12Square, fq12Coefficients_mul, hdecode]
    calc
      x ^ exponent * x ^ exponent =
          x ^ (exponent + exponent) := (pow_add x exponent exponent).symm
      _ = x ^ (exponent * 2) := by
        congr 1
        omega
  cases found with
  | false =>
      by_cases hz : digit = 0
      · simp only [fq12CyclotomicExpStep, nafExponentStep,
          Bool.false_eq_true, hz, ↓reduceIte]
        exact ⟨rfl, hdecode, hcyclotomic⟩
      · by_cases hp : digit > 0
        · simp only [fq12CyclotomicExpStep, nafExponentStep,
            Bool.false_eq_true, hz, hp, ↓reduceIte]
          have hnext :
              fq12Coefficients (fq12Mul result a) =
                x ^ (exponent + 1) := by
            rw [fq12Coefficients_mul, hdecode, ha]
            exact (pow_succ x exponent).symm
          refine ⟨rfl, hnext, ?_⟩
          rw [hnext]
          exact cyclotomic_power x hx (exponent + 1)
        · simp only [fq12CyclotomicExpStep, nafExponentStep,
            Bool.false_eq_true, hz, hp, ↓reduceIte]
          have hnext :
              fq12Coefficients (fq12Mul result inverse) =
                x ^ (exponent + (cyclotomicOrder - 1)) := by
            rw [fq12Coefficients_mul, hdecode, hinverse]
            exact (pow_add x exponent (cyclotomicOrder - 1)).symm
          refine ⟨rfl, hnext, ?_⟩
          rw [hnext]
          exact cyclotomic_power x hx
            (exponent + (cyclotomicOrder - 1))
  | true =>
      by_cases hz : digit = 0
      · simp only [fq12CyclotomicExpStep, nafExponentStep, hz, ↓reduceIte]
        refine ⟨rfl, hsquare, ?_⟩
        rw [hsquare]
        exact cyclotomic_power x hx (exponent * 2)
      · by_cases hp : digit > 0
        · simp only [fq12CyclotomicExpStep, nafExponentStep,
            hz, hp, ↓reduceIte]
          have hnext :
              fq12Coefficients
                  (fq12Mul (fq12CyclotomicSquare result) a) =
                x ^ (exponent * 2 + 1) := by
            rw [fq12Coefficients_mul, hsquare, ha]
            exact (pow_succ x (exponent * 2)).symm
          refine ⟨rfl, hnext, ?_⟩
          rw [hnext]
          exact cyclotomic_power x hx (exponent * 2 + 1)
        · simp only [fq12CyclotomicExpStep, nafExponentStep,
            hz, hp, ↓reduceIte]
          have hnext :
              fq12Coefficients
                  (fq12Mul (fq12CyclotomicSquare result) inverse) =
                x ^ (exponent * 2 + (cyclotomicOrder - 1)) := by
            rw [fq12Coefficients_mul, hsquare, hinverse]
            exact (pow_add x (exponent * 2)
              (cyclotomicOrder - 1)).symm
          refine ⟨rfl, hnext, ?_⟩
          rw [hnext]
          exact cyclotomic_power x hx
            (exponent * 2 + (cyclotomicOrder - 1))

#print axioms nafFoldInvariant_step

end Ipp.Extracted.ArkworksFinalExpCyclotomic
