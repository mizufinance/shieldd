import Ipp.Extracted.ArkworksFinalExpCyclotomicSquare0
import Ipp.Extracted.ArkworksFinalExpCyclotomicSquare1
import Ipp.Extracted.ArkworksFinalExpCyclotomicSquare2
import Ipp.Extracted.ArkworksFinalExpCyclotomicSquare3
import Ipp.Extracted.ArkworksFinalExpCyclotomicSquare4
import Ipp.Extracted.ArkworksFinalExpCyclotomicSquare5

/-!
S3-39: semantic correctness of Granger--Scott squaring on cyclotomic inputs.
-/

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksFinalExpEasy

theorem fq12CyclotomicSquare_eq_square (a : Fq12Model)
    (hx : fq12Coefficients a ^ (q ^ 4 - q ^ 2 + 1) = 1) :
    fq12CyclotomicSquare a = fq12Square a := by
  rcases a with ⟨c0, c1⟩
  rw [Fq12Model.mk.injEq, Fq6Model.mk.injEq, Fq6Model.mk.injEq]
  exact ⟨
    ⟨fq12CyclotomicSquare_c0c0 _ hx, fq12CyclotomicSquare_c0c1 _ hx,
      fq12CyclotomicSquare_c0c2 _ hx⟩,
    ⟨fq12CyclotomicSquare_c1c0 _ hx, fq12CyclotomicSquare_c1c1 _ hx,
      fq12CyclotomicSquare_c1c2 _ hx⟩⟩

#print axioms fq12CyclotomicSquare_eq_square

end Ipp.Extracted.ArkworksFinalExpCyclotomic
