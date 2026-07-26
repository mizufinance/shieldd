import Ipp.Extracted.ArkworksFinalExpCyclotomicBase

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377

local instance cyclotomicCubePrime : Fact q.Prime := ⟨arithmeticFacts.basePrime⟩
local instance cyclotomicCubeFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance cyclotomicCubeFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

theorem ζ_cube : ζ ^ 3 = -1 := by
  calc
    ζ ^ 3 = ζ ^ 2 * ζ := pow_succ ζ 2
    _ = (ζ - 1) * ζ := by rw [ζ_square]
    _ = ζ * ζ - 1 * ζ := sub_mul ζ 1 ζ
    _ = ζ ^ 2 - ζ := by rw [pow_two, one_mul]
    _ = (ζ - 1) - ζ := by rw [ζ_square]
    _ = -1 := by
      apply sub_eq_iff_eq_add.mpr
      rw [sub_eq_add_neg]
      exact add_comm ζ (-1)

#print axioms ζ_cube

end Ipp.Extracted.ArkworksFinalExpCyclotomic
