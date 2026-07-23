import Ipp.Extracted.ArkworksFq12
import Ipp.Extracted.ArkworksFinalExpCyclotomicBase

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12

local instance squareAlgebra2Prime : Fact q.Prime := ⟨arithmeticFacts.basePrime⟩
local instance squareAlgebra2Fq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

theorem fq12CyclotomicSquare_c0c2_algebra
    (z r0 r4 r3 r2 r1 r5 : Fq2) (hz : z ^ 2 = z - 1)
    (hrel :
      r0 * r3 + (z - 1) * ((z - 1) * r4) * r4 + -z * (-z * r3) * r0 +
          (z * (z * r2) * r1 + -1 * (-1 * r1) * r2 +
            fq2U * ((1 - z) * ((1 - z) * r5) * r5)) =
        -z * r3) :
    (fq12CyclotomicSquare
      ⟨⟨r0, r4, r3⟩, ⟨r2, r1, r5⟩⟩).c0.c2 =
    (fq12Square
      ⟨⟨r0, r4, r3⟩, ⟨r2, r1, r5⟩⟩).c0.c2 := by
  simp only [fq12CyclotomicSquare, fq12Square, fq12Mul, fq6Mul, fq6Add,
    fq6MulByV]
  linear_combination
    (-2 + 2 * z) * hrel +
    ((-2 * r4 ^ 2 - 2 * fq2U * r5 ^ 2 - 2 * r3 * r0 -
        2 * r2 * r1) * z +
      (4 * r4 ^ 2 + 4 * fq2U * r5 ^ 2 - 2 * r3)) * hz

#print axioms fq12CyclotomicSquare_c0c2_algebra

end Ipp.Extracted.ArkworksFinalExpCyclotomic
