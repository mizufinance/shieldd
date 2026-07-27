import Ipp.Extracted.ArkworksFinalExpEasy

/-!
S3-39 cyclotomic semantics shared by squaring and exponentiation.
-/

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy

abbrev q := baseModulus

local instance cyclotomicPrime : Fact q.Prime := ⟨arithmeticFacts.basePrime⟩
local instance cyclotomicFq2Nonresidue : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance cyclotomicFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

def ζ : Fq2 := fq2U ^ ((q ^ 2 - 1) / 6)

theorem ζ_square : ζ ^ 2 = ζ - 1 := by
  rw [ζ, fq12FrobeniusC1_two]
  change (algebraMap Fq Fq2)
      ((80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410946 :
        Fq) ^ 2) =
    (algebraMap Fq Fq2)
      ((80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410946 :
        Fq) - 1)
  congr 1

#print axioms ζ_square

end Ipp.Extracted.ArkworksFinalExpCyclotomic
