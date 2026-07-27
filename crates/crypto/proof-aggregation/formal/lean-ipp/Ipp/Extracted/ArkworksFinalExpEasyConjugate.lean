import Ipp.Extracted.ArkworksFq12

namespace Ipp.Extracted.ArkworksFinalExpEasy

open Ipp.Bls12377

abbrev qConjugate := baseModulus

local instance conjugatePrime : Fact qConjugate.Prime := ⟨arithmeticFacts.basePrime⟩
local instance conjugateFq2Nonresidue : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance conjugateFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance conjugateCharFq2 : CharP Fq2 qConjugate :=
  charP_of_injective_algebraMap' Fq qConjugate
local instance conjugateCharFq6 : CharP Fq6Canonical qConjugate :=
  charP_of_injective_algebraMap' Fq2 qConjugate
local instance conjugateCharFq12 : CharP Fq12Canonical qConjugate :=
  charP_of_injective_algebraMap' Fq6Canonical qConjugate

private theorem fq12_root_square :
    AdjoinRoot.root fq12Polynomial ^ 2 =
      algebraMap Fq6Canonical Fq12Canonical fq6V := by
  simpa [fq12Polynomial] using (root_X_pow_sub_C_pow 2 fq6V)

private theorem fq12_root_pow_q6 :
    AdjoinRoot.root fq12Polynomial ^ (qConjugate ^ 6) =
      -AdjoinRoot.root fq12Polynomial := by
  let e := (qConjugate ^ 6 - 1) / 2
  have hqOdd : Odd qConjugate := by norm_num [qConjugate, baseModulus]
  have hpowOdd : Odd (qConjugate ^ 6) := hqOdd.pow
  have he : qConjugate ^ 6 = 2 * e + 1 := by
    rcases hpowOdd with ⟨k, hk⟩
    simp only [e]
    omega
  calc
    AdjoinRoot.root fq12Polynomial ^ (qConjugate ^ 6) =
        AdjoinRoot.root fq12Polynomial ^ (2 * e + 1) := congrArg _ he
    _ = -AdjoinRoot.root fq12Polynomial := by
      rw [pow_add, pow_mul, fq12_root_square, ← map_pow, fq6V_pow_half]
      simp

private noncomputable def fq12FrobeniusSix :
    Fq12Canonical →ₐ[Fq6Canonical] Fq12Canonical where
  toRingHom := iterateFrobenius Fq12Canonical qConjugate 6
  commutes' a := by
    change (algebraMap Fq6Canonical Fq12Canonical a) ^ (qConjugate ^ 6) =
      algebraMap Fq6Canonical Fq12Canonical a
    rw [← map_pow, show qConjugate ^ 6 = Fintype.card Fq6Canonical by
      simpa [qConjugate] using fq6_card.symm, FiniteField.pow_card]

private theorem fq12FrobeniusSix_eq_conjugate :
    fq12FrobeniusSix = fq12ConjAut.toAlgHom := by
  apply AdjoinRoot.algHom_ext
  calc
    fq12FrobeniusSix (AdjoinRoot.root fq12Polynomial) =
        AdjoinRoot.root fq12Polynomial ^ (qConjugate ^ 6) := rfl
    _ = -AdjoinRoot.root fq12Polynomial := fq12_root_pow_q6
    _ = fq12ConjAut (AdjoinRoot.root fq12Polynomial) :=
      fq12ConjAut_root.symm

theorem fq12_coefficients_conjugate_pow (a : Fq12Model) :
    fq12Coefficients (fq12Conjugate a) =
      fq12Coefficients a ^ (qConjugate ^ 6) := by
  calc
    fq12Coefficients (fq12Conjugate a) =
        fq12ConjAut (fq12Coefficients a) := fq12Coefficients_conjugate a
    _ = fq12FrobeniusSix (fq12Coefficients a) :=
      congrArg (fun h => h (fq12Coefficients a))
        fq12FrobeniusSix_eq_conjugate.symm
    _ = fq12Coefficients a ^ (qConjugate ^ 6) := rfl

end Ipp.Extracted.ArkworksFinalExpEasy
