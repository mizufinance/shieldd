import Ipp.Extracted.ArkworksFinalExpCyclotomicBase
import Ipp.Extracted.ArkworksFinalExpCyclotomicExponents

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377

local instance cyclotomicCoefficientsPrime : Fact q.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance cyclotomicCoefficientsFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance cyclotomicCoefficientsFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

theorem frobeniusTwoCoefficient_one :
    fq2U ^ ((q ^ 2 - 1) / 6) = ζ := rfl

set_option maxRecDepth 16384 in
theorem frobeniusTwoCoefficient_two :
    fq2U ^ ((q ^ 2 - 1) / 3) = ζ ^ 2 := by
  calc
    fq2U ^ ((q ^ 2 - 1) / 3) =
        fq2U ^ (((q ^ 2 - 1) / 6) * 2) :=
      congrArg (fun n => fq2U ^ n) frobeniusTwoExponent_two_right
    _ = (fq2U ^ ((q ^ 2 - 1) / 6)) ^ 2 :=
      pow_mul fq2U ((q ^ 2 - 1) / 6) 2
    _ = ζ ^ 2 := rfl

set_option maxRecDepth 16384 in
theorem frobeniusTwoCoefficient_four :
    fq2U ^ (2 * ((q ^ 2 - 1) / 3)) = ζ ^ 4 := by
  calc
    fq2U ^ (2 * ((q ^ 2 - 1) / 3)) =
        fq2U ^ (((q ^ 2 - 1) / 6) * 4) :=
      congrArg (fun n => fq2U ^ n) frobeniusTwoExponent_four_right
    _ = (fq2U ^ ((q ^ 2 - 1) / 6)) ^ 4 :=
      pow_mul fq2U ((q ^ 2 - 1) / 6) 4
    _ = ζ ^ 4 := rfl

#print axioms frobeniusTwoCoefficient_one
#print axioms frobeniusTwoCoefficient_two
#print axioms frobeniusTwoCoefficient_four

end Ipp.Extracted.ArkworksFinalExpCyclotomic
