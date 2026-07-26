import Ipp.Extracted.ArkworksFinalExpEasy

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy

abbrev qRelation := baseModulus

local instance cyclotomicRelationPrime : Fact qRelation.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance cyclotomicRelationFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance cyclotomicRelationFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

theorem cyclotomic_relation (a : Fq12Model)
    (hx : fq12Coefficients a ^
      (qRelation ^ 4 - qRelation ^ 2 + 1) = 1) :
    fq12Mul (frobeniusTwoModel (frobeniusTwoModel a)) a =
      frobeniusTwoModel a := by
  apply fq12Coefficients_bijective.injective
  rw [fq12Coefficients_mul, fq12_coefficients_frobenius_two,
    fq12_coefficients_frobenius_two]
  rw [← pow_mul]
  have hq : qRelation ^ 2 * qRelation ^ 2 = qRelation ^ 4 := by ring
  rw [hq]
  calc
    fq12Coefficients a ^ (qRelation ^ 4) * fq12Coefficients a =
        fq12Coefficients a ^ (qRelation ^ 4 + 1) := (pow_succ _ _).symm
    _ = fq12Coefficients a ^
        ((qRelation ^ 4 - qRelation ^ 2 + 1) + qRelation ^ 2) := by
      congr 1
    _ = fq12Coefficients a ^ (qRelation ^ 4 - qRelation ^ 2 + 1) *
        fq12Coefficients a ^ (qRelation ^ 2) := pow_add _ _ _
    _ = fq12Coefficients a ^ (qRelation ^ 2) := by rw [hx, one_mul]

#print axioms cyclotomic_relation

end Ipp.Extracted.ArkworksFinalExpCyclotomic
