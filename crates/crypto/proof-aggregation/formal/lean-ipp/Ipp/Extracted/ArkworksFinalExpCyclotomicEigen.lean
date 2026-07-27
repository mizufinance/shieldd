import Ipp.Extracted.ArkworksFinalExpCyclotomicFourth
import Ipp.Extracted.ArkworksFinalExpCyclotomicCoefficients

namespace Ipp.Extracted.ArkworksFinalExpCyclotomic

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFinalExpEasy

local instance cyclotomicEigenPrime : Fact q.Prime := ⟨arithmeticFacts.basePrime⟩
local instance cyclotomicEigenFq2Nonresidue :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance cyclotomicEigenFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

set_option maxRecDepth 16384 in
theorem frobeniusTwoModel_eigen (a : Fq12Model) :
    frobeniusTwoModel a =
      ⟨⟨a.c0.c0, ζ ^ 2 * a.c0.c1, ζ ^ 4 * a.c0.c2⟩,
       ⟨ζ * a.c1.c0, ζ ^ 3 * a.c1.c1, ζ ^ 5 * a.c1.c2⟩⟩ := by
  unfold frobeniusTwoModel
  rw [frobeniusTwoCoefficient_one, frobeniusTwoCoefficient_two,
    frobeniusTwoCoefficient_four]
  have h3 (z x : Fq2) : (z ^ 2 * x) * z = z ^ 3 * x := by
    calc
      (z ^ 2 * x) * z = (z ^ 2 * z) * x := by ac_rfl
      _ = z ^ 3 * x := congrArg (fun y => y * x) (pow_succ z 2).symm
  have h5 (z x : Fq2) : (z ^ 4 * x) * z = z ^ 5 * x := by
    calc
      (z ^ 4 * x) * z = (z ^ 4 * z) * x := by ac_rfl
      _ = z ^ 5 * x := congrArg (fun y => y * x) (pow_succ z 4).symm
  rw [Fq12Model.mk.injEq, Fq6Model.mk.injEq, Fq6Model.mk.injEq]
  refine ⟨⟨rfl, rfl, rfl⟩, ?_⟩
  refine ⟨mul_comm _ _, ?_, ?_⟩
  · exact h3 ζ a.c1.c1
  · exact h5 ζ a.c1.c2

#print axioms frobeniusTwoModel_eigen

end Ipp.Extracted.ArkworksFinalExpCyclotomic
