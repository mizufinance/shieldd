import Ipp.Extracted.ArkworksFinalExpCyclotomicCube

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377

local instance cyclotomicFourthPrime : Fact q.Prime := ⟨arithmeticFacts.basePrime⟩
local instance cyclotomicFourthFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance cyclotomicFourthFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

theorem ζ_fourth : ζ ^ 4 = -ζ := by
  calc
    ζ ^ 4 = ζ ^ 3 * ζ := pow_succ ζ 3
    _ = (-1) * ζ := by rw [ζ_cube]
    _ = -ζ := neg_one_mul ζ

#print axioms ζ_fourth

end Ipp.Extracted.ArkworksFinalExpCyclotomic
