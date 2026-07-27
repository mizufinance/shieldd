import Ipp.Extracted.ArkworksFinalExpCyclotomicExpExec

/-!
S3-39: canonical-field semantics of the executed `q`-Frobenius model.
-/

namespace Ipp.Extracted.ArkworksFinalExpHard

open Ipp.Bls12377

abbrev q := baseModulus

local instance hardPrime : Fact q.Prime := ⟨arithmeticFacts.basePrime⟩
local instance hardFq2Nonresidue : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance hardFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm
local instance hardCharFq2 : CharP Fq2 q :=
  charP_of_injective_algebraMap' Fq q
local instance hardCharFq6 : CharP Fq6Canonical q :=
  charP_of_injective_algebraMap' Fq2 q
local instance hardCharFq12 : CharP Fq12Canonical q :=
  charP_of_injective_algebraMap' Fq6Canonical q

private theorem add_pow_q {K : Type} [CommSemiring K] [CharP K q]
    (x y : K) : (x + y) ^ q = x ^ q + y ^ q := by
  exact add_pow_char x y q

private theorem fq2U_pow_q : fq2U ^ q = -fq2U := by
  let e := (q - 1) / 2
  have he : q = 2 * e + 1 := by norm_num [e, q, baseModulus]
  have hminusFive : (-5 : Fq) ^ e = -1 := by
    simpa [e, q, baseModulus] using
      Ipp.Bls12377Certificates.minus_five_pow_half
  calc
    fq2U ^ q = fq2U ^ (2 * e + 1) := congrArg _ he
    _ = fq2U ^ (2 * e) * fq2U := by rw [pow_add, pow_one]
    _ = -fq2U := by rw [fq2U_pow_twice, hminusFive]; simp

private theorem fq2_pow_q (x : Fq2) : x ^ q = star x := by
  rcases x with ⟨x0, x1⟩
  have hrepr :
      (⟨x0, x1⟩ : Fq2) =
        algebraMap Fq Fq2 x0 + algebraMap Fq Fq2 x1 * fq2U := by
    apply QuadraticAlgebra.ext <;> simp [fq2U]
  have hx0 : x0 ^ q = x0 := by
    rw [show q = Fintype.card Fq by simp [q]]
    exact FiniteField.pow_card x0
  have hx1 : x1 ^ q = x1 := by
    rw [show q = Fintype.card Fq by simp [q]]
    exact FiniteField.pow_card x1
  rw [hrepr, add_pow_q, mul_pow, ← map_pow, ← map_pow, hx0, hx1,
    fq2U_pow_q]
  apply QuadraticAlgebra.ext <;> simp [fq2U]

private theorem fq6_root_cube :
    AdjoinRoot.root fq6Polynomial ^ 3 =
      algebraMap Fq2 Fq6Canonical fq2U := by
  simpa [fq6Polynomial] using (root_X_pow_sub_C_pow 3 fq2U)

private theorem fq6_root_pow_q :
    AdjoinRoot.root fq6Polynomial ^ q =
      algebraMap Fq2 Fq6Canonical (fq2U ^ ((q - 1) / 3)) *
        AdjoinRoot.root fq6Polynomial := by
  let e := (q - 1) / 3
  have he : q = 3 * e + 1 := by norm_num [e, q, baseModulus]
  calc
    AdjoinRoot.root fq6Polynomial ^ q =
        AdjoinRoot.root fq6Polynomial ^ (3 * e + 1) := congrArg _ he
    _ = algebraMap Fq2 Fq6Canonical (fq2U ^ e) *
        AdjoinRoot.root fq6Polynomial := by
      rw [pow_add, pow_mul, fq6_root_cube, map_pow, pow_one]

private theorem fq6_coefficients_pow_q (a : Fq6Model) :
    fq6Coefficients a ^ q =
      fq6Coefficients
        ⟨star a.c0,
          fq2U ^ ((q - 1) / 3) * star a.c1,
          fq2U ^ (2 * ((q - 1) / 3)) * star a.c2⟩ := by
  simp only [fq6Coefficients]
  have hroot2 :
      (AdjoinRoot.root fq6Polynomial ^ 2) ^ q =
        (algebraMap Fq2 Fq6Canonical (fq2U ^ ((q - 1) / 3)) *
          AdjoinRoot.root fq6Polynomial) ^ 2 := by
    calc
      (AdjoinRoot.root fq6Polynomial ^ 2) ^ q =
          AdjoinRoot.root fq6Polynomial ^ (2 * q) := by rw [pow_mul]
      _ = AdjoinRoot.root fq6Polynomial ^ (q * 2) := by
        rw [Nat.mul_comm 2 q]
      _ = (AdjoinRoot.root fq6Polynomial ^ q) ^ 2 := by rw [pow_mul]
      _ = _ := by rw [fq6_root_pow_q]
  rw [add_pow_q, add_pow_q, mul_pow, mul_pow, ← map_pow, fq2_pow_q,
    ← map_pow, fq2_pow_q, ← map_pow, fq2_pow_q, fq6_root_pow_q,
    hroot2, mul_pow]
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

private theorem fq12_root_pow_q :
    AdjoinRoot.root fq12Polynomial ^ q =
      algebraMap Fq2 Fq12Canonical (fq2U ^ ((q - 1) / 6)) *
        AdjoinRoot.root fq12Polynomial := by
  let e := (q - 1) / 6
  have he : q = 6 * e + 1 := by norm_num [e, q, baseModulus]
  calc
    AdjoinRoot.root fq12Polynomial ^ q =
        AdjoinRoot.root fq12Polynomial ^ (6 * e + 1) := congrArg _ he
    _ = algebraMap Fq2 Fq12Canonical (fq2U ^ e) *
        AdjoinRoot.root fq12Polynomial := by
      rw [pow_add, pow_mul, fq12_root_six, map_pow, pow_one]

def frobeniusOneModel (a : Fq12Model) : Fq12Model :=
  ⟨⟨star a.c0.c0,
      fq2U ^ ((q - 1) / 3) * star a.c0.c1,
      fq2U ^ (2 * ((q - 1) / 3)) * star a.c0.c2⟩,
   ⟨star a.c1.c0 * fq2U ^ ((q - 1) / 6),
      (fq2U ^ ((q - 1) / 3) * star a.c1.c1) *
        fq2U ^ ((q - 1) / 6),
      (fq2U ^ (2 * ((q - 1) / 3)) * star a.c1.c2) *
        fq2U ^ ((q - 1) / 6)⟩⟩

theorem fq12_coefficients_frobenius_one (a : Fq12Model) :
    fq12Coefficients (frobeniusOneModel a) =
      fq12Coefficients a ^ q := by
  simp only [frobeniusOneModel, fq12Coefficients]
  rw [add_pow_q, mul_pow, ← map_pow, fq6_coefficients_pow_q,
    ← map_pow, fq6_coefficients_pow_q, fq12_root_pow_q]
  simp only [fq6Coefficients]
  simp_rw [IsScalarTower.algebraMap_apply Fq2 Fq6Canonical Fq12Canonical]
  push_cast
  ring

#print axioms fq12_coefficients_frobenius_one

end Ipp.Extracted.ArkworksFinalExpHard
