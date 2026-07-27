import Ipp.Extracted.ArkworksFq12

namespace Ipp.Extracted.ArkworksFinalExpEasy

open Ipp.Bls12377

abbrev qFrobenius := baseModulus

local instance frobeniusPrime : Fact qFrobenius.Prime := ⟨arithmeticFacts.basePrime⟩
local instance frobeniusFq2Nonresidue : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance frobeniusFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance frobeniusCharFq2 : CharP Fq2 qFrobenius := charP_of_injective_algebraMap' Fq qFrobenius
local instance frobeniusCharFq6 : CharP Fq6Canonical qFrobenius :=
  charP_of_injective_algebraMap' Fq2 qFrobenius
local instance frobeniusCharFq12 : CharP Fq12Canonical qFrobenius :=
  charP_of_injective_algebraMap' Fq6Canonical qFrobenius

private theorem add_pow_q_pow {K : Type} [CommSemiring K] [CharP K qFrobenius]
    (x y : K) (n : Nat) :
    (x + y) ^ (qFrobenius ^ n) = x ^ (qFrobenius ^ n) + y ^ (qFrobenius ^ n) := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [pow_succ, pow_mul, ih, add_pow_char]
      simp only [← pow_mul]

private theorem fq2_pow_q2 (x : Fq2) : x ^ (qFrobenius ^ 2) = x := by
  rw [← fq2_card]
  exact FiniteField.pow_card x

private theorem fq6_root_cube :
    AdjoinRoot.root fq6Polynomial ^ 3 =
      algebraMap Fq2 Fq6Canonical fq2U := by
  simpa [fq6Polynomial] using (root_X_pow_sub_C_pow 3 fq2U)

private theorem fq6_root_pow_q2 :
    AdjoinRoot.root fq6Polynomial ^ (qFrobenius ^ 2) =
      algebraMap Fq2 Fq6Canonical
        (fq2U ^ ((qFrobenius ^ 2 - 1) / 3)) * AdjoinRoot.root fq6Polynomial := by
  let e := (qFrobenius ^ 2 - 1) / 3
  have he : qFrobenius ^ 2 = 3 * e + 1 := by norm_num [e, qFrobenius, baseModulus]
  calc
    AdjoinRoot.root fq6Polynomial ^ (qFrobenius ^ 2) =
        AdjoinRoot.root fq6Polynomial ^ (3 * e + 1) := congrArg _ he
    _ = algebraMap Fq2 Fq6Canonical (fq2U ^ e) *
        AdjoinRoot.root fq6Polynomial := by
      rw [pow_add, pow_mul, fq6_root_cube, map_pow, pow_one]

private theorem fq6_coefficients_pow_q2 (a : Fq6Model) :
    fq6Coefficients a ^ (qFrobenius ^ 2) =
      fq6Coefficients
        ⟨a.c0,
          fq2U ^ ((qFrobenius ^ 2 - 1) / 3) * a.c1,
          fq2U ^ (2 * ((qFrobenius ^ 2 - 1) / 3)) * a.c2⟩ := by
  simp only [fq6Coefficients]
  have hroot2 :
      (AdjoinRoot.root fq6Polynomial ^ 2) ^ (qFrobenius ^ 2) =
        (algebraMap Fq2 Fq6Canonical
          (fq2U ^ ((qFrobenius ^ 2 - 1) / 3)) * AdjoinRoot.root fq6Polynomial) ^ 2 := by
    calc
      (AdjoinRoot.root fq6Polynomial ^ 2) ^ (qFrobenius ^ 2) =
          AdjoinRoot.root fq6Polynomial ^ (2 * qFrobenius ^ 2) := by rw [pow_mul]
      _ = AdjoinRoot.root fq6Polynomial ^ (qFrobenius ^ 2 * 2) := by
        rw [Nat.mul_comm 2 (qFrobenius ^ 2)]
      _ = (AdjoinRoot.root fq6Polynomial ^ (qFrobenius ^ 2)) ^ 2 := by rw [pow_mul]
      _ = _ := by rw [fq6_root_pow_q2]
  rw [add_pow_q_pow, add_pow_q_pow, mul_pow, mul_pow,
    ← map_pow, fq2_pow_q2, ← map_pow, fq2_pow_q2,
    ← map_pow, fq2_pow_q2, fq6_root_pow_q2, hroot2, mul_pow]
  push_cast
  ring

private theorem fq12_root_square :
    AdjoinRoot.root fq12Polynomial ^ 2 =
      algebraMap Fq6Canonical Fq12Canonical fq6V := by
  simpa [fq12Polynomial] using (root_X_pow_sub_C_pow 2 fq6V)

private theorem fq12_root_six :
    AdjoinRoot.root fq12Polynomial ^ 6 =
      algebraMap Fq2 Fq12Canonical fq2U := by
  rw [show (6 : Nat) = 2 * 3 by norm_num, pow_mul, fq12_root_square,
    ← map_pow, show fq6V ^ 3 = algebraMap Fq2 Fq6Canonical fq2U by
      simpa [fq6V, fq6Polynomial] using (root_X_pow_sub_C_pow 3 fq2U)]
  change (algebraMap Fq6Canonical Fq12Canonical)
    ((algebraMap Fq2 Fq6Canonical) fq2U) =
      (algebraMap Fq2 Fq12Canonical) fq2U
  rw [IsScalarTower.algebraMap_apply Fq2 Fq6Canonical Fq12Canonical]

private theorem fq12_root_pow_q2 :
    AdjoinRoot.root fq12Polynomial ^ (qFrobenius ^ 2) =
      algebraMap Fq2 Fq12Canonical
        (fq2U ^ ((qFrobenius ^ 2 - 1) / 6)) * AdjoinRoot.root fq12Polynomial := by
  let e := (qFrobenius ^ 2 - 1) / 6
  have he : qFrobenius ^ 2 = 6 * e + 1 := by norm_num [e, qFrobenius, baseModulus]
  calc
    AdjoinRoot.root fq12Polynomial ^ (qFrobenius ^ 2) =
        AdjoinRoot.root fq12Polynomial ^ (6 * e + 1) := congrArg _ he
    _ = algebraMap Fq2 Fq12Canonical (fq2U ^ e) *
        AdjoinRoot.root fq12Polynomial := by
      rw [pow_add, pow_mul, fq12_root_six, map_pow, pow_one]

def frobeniusTwoModel (a : Fq12Model) : Fq12Model :=
  ⟨⟨a.c0.c0,
      fq2U ^ ((qFrobenius ^ 2 - 1) / 3) * a.c0.c1,
      fq2U ^ (2 * ((qFrobenius ^ 2 - 1) / 3)) * a.c0.c2⟩,
   ⟨a.c1.c0 * fq2U ^ ((qFrobenius ^ 2 - 1) / 6),
      (fq2U ^ ((qFrobenius ^ 2 - 1) / 3) * a.c1.c1) *
        fq2U ^ ((qFrobenius ^ 2 - 1) / 6),
      (fq2U ^ (2 * ((qFrobenius ^ 2 - 1) / 3)) * a.c1.c2) *
        fq2U ^ ((qFrobenius ^ 2 - 1) / 6)⟩⟩

theorem fq12_coefficients_frobenius_two (a : Fq12Model) :
    fq12Coefficients (frobeniusTwoModel a) =
      fq12Coefficients a ^ (qFrobenius ^ 2) := by
  simp only [frobeniusTwoModel, fq12Coefficients]
  rw [add_pow_q_pow, mul_pow, ← map_pow, fq6_coefficients_pow_q2,
    ← map_pow, fq6_coefficients_pow_q2, fq12_root_pow_q2]
  simp only [fq6Coefficients]
  simp_rw [IsScalarTower.algebraMap_apply Fq2 Fq6Canonical Fq12Canonical]
  push_cast
  ring

end Ipp.Extracted.ArkworksFinalExpEasy
