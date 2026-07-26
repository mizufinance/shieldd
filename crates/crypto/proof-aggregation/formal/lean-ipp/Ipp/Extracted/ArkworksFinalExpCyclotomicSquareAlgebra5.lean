import Ipp.Extracted.ArkworksFq12
import Ipp.Extracted.ArkworksFinalExpCyclotomicBase

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12

local instance squareAlgebra5Prime : Fact q.Prime := ⟨arithmeticFacts.basePrime⟩
local instance squareAlgebra5Fq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

theorem fq12CyclotomicSquare_c1c2_algebra
    (z r0 r4 r3 r2 r1 r5 : Fq2) (hz : z ^ 2 = z - 1)
    (hrel :
      r0 * r5 + (z - 1) * ((z - 1) * r4) * r1 + -z * (-z * r3) * r2 +
          (z * (z * r2) * r3 + -1 * (-1 * r1) * r4 +
            (1 - z) * ((1 - z) * r5) * r0) =
        (1 - z) * r5) :
    (fq12CyclotomicSquare
      ⟨⟨r0, r4, r3⟩, ⟨r2, r1, r5⟩⟩).c1.c2 =
    (fq12Square
      ⟨⟨r0, r4, r3⟩, ⟨r2, r1, r5⟩⟩).c1.c2 := by
  simp only [fq12CyclotomicSquare, fq12Square, fq12Mul, fq6Mul, fq6Add,
    fq6MulByV]
  linear_combination
    (-2 * z) * hrel +
    ((2 * r5 * r0 + 4 * r2 * r3 + 2 * r4 * r1) * z +
      (2 * r5 - 2 * r5 * r0 + 4 * r2 * r3 - 2 * r4 * r1)) * hz

#print axioms fq12CyclotomicSquare_c1c2_algebra

end Ipp.Extracted.ArkworksFinalExpCyclotomic
