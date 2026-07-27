import Ipp.Extracted.ArkworksFinalExpCyclotomicEigen
import Ipp.Extracted.ArkworksFinalExpCyclotomicRelation
import Ipp.Extracted.ArkworksFinalExpCyclotomicSquareAlgebra1

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFinalExpEasy

local instance square1Prime : Fact q.Prime := ⟨arithmeticFacts.basePrime⟩
local instance square1Fq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance square1FintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

theorem fq12CyclotomicSquare_c0c1 (a : Fq12Model)
    (hx : fq12Coefficients a ^ (q ^ 4 - q ^ 2 + 1) = 1) :
    (fq12CyclotomicSquare a).c0.c1 = (fq12Square a).c0.c1 := by
  rcases a with ⟨⟨r0, r4, r3⟩, ⟨r2, r1, r5⟩⟩
  let a0 : Fq12Model := ⟨⟨r0, r4, r3⟩, ⟨r2, r1, r5⟩⟩
  let b := frobeniusTwoModel a0
  let c := frobeniusTwoModel b
  have hrel := cyclotomic_relation
    (⟨⟨r0, r4, r3⟩, ⟨r2, r1, r5⟩⟩ : Fq12Model) hx
  change fq12Mul c a0 = b at hrel
  have hb := frobeniusTwoModel_eigen a0
  change b = _ at hb
  have hc := frobeniusTwoModel_eigen b
  change c = _ at hc
  have h2 := congrArg (fun x : Fq12Model => x.c0.c1) hrel
  have fifth_of (z : Fq2) (hz2 : z ^ 2 = z - 1) (hz3 : z ^ 3 = -1) :
      z ^ 5 = 1 - z := by
    rw [show (5 : Nat) = 3 + 2 by norm_num, pow_add, hz3, hz2,
      neg_one_mul, neg_sub]
  have hζ5 : ζ ^ 5 = 1 - ζ := fifth_of ζ ζ_square ζ_cube
  simp only [fq12Mul, fq6Mul, fq6Add, fq6MulByV] at h2
  rw [hc, hb] at h2
  simp only [a0] at h2
  simp only [ζ_square, ζ_cube, ζ_fourth, hζ5] at h2
  exact fq12CyclotomicSquare_c0c1_algebra
    ζ r0 r4 r3 r2 r1 r5 ζ_square h2

#print axioms fq12CyclotomicSquare_c0c1

end Ipp.Extracted.ArkworksFinalExpCyclotomic
