import Ipp.Extracted.ArkworksFq12
import Ipp.Extracted.ArkworksFinalExpCyclotomicBase

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12

local instance squareAlgebra3Prime : Fact q.Prime := ⟨arithmeticFacts.basePrime⟩
local instance squareAlgebra3Fq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

theorem fq12CyclotomicSquare_c1c0_algebra
    (z r0 r4 r3 r2 r1 r5 : Fq2) (hz : z ^ 2 = z - 1)
    (hrel :
      r0 * r2 +
          fq2U * ((z - 1) * ((z - 1) * r4) * r5 + -z * (-z * r3) * r1) +
          (z * (z * r2) * r0 +
            fq2U * (-1 * (-1 * r1) * r3 +
              (1 - z) * ((1 - z) * r5) * r4)) =
        z * r2) :
    (fq12CyclotomicSquare
      ⟨⟨r0, r4, r3⟩, ⟨r2, r1, r5⟩⟩).c1.c0 =
    (fq12Square
      ⟨⟨r0, r4, r3⟩, ⟨r2, r1, r5⟩⟩).c1.c0 := by
  simp only [fq12CyclotomicSquare, fq12Square, fq12Mul, fq6Mul, fq6Add,
    fq6MulByV]
  linear_combination
    (-2 + 2 * z) * hrel +
    ((-2 * r2 * r0 - 4 * fq2U * r4 * r5 - 2 * fq2U * r3 * r1) * z +
      (2 * r2 + 8 * fq2U * r4 * r5)) * hz

#print axioms fq12CyclotomicSquare_c1c0_algebra

end Ipp.Extracted.ArkworksFinalExpCyclotomic
