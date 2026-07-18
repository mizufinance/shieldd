import Ipp.Bls12377Pairing
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.FieldTheory.KummerExtension

/-!
The canonical cubic extension underlying the BLS12-377 Fq6 tower.
-/

namespace Ipp.Bls12377

open Polynomial

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

private theorem fq2_card : Fintype.card Fq2 = baseModulus ^ 2 := by
  rw [Fintype.card_congr (QuadraticAlgebra.equivProd (-5 : Fq) 0),
    Fintype.card_prod, ZMod.card]
  ring

private theorem fq2U_square : fq2U ^ 2 = algebraMap Fq Fq2 (-5) := by
  ext <;> simp [fq2U, pow_two]

/-- The cubic tower constant `u` is not a cube in Fq2. -/
theorem fq2U_not_cube : ∀ b : Fq2, b ^ 3 ≠ fq2U := by
  intro b hb
  have hu : fq2U ≠ 0 := by
    intro h
    have := congrArg QuadraticAlgebra.im h
    simp [fq2U] at this
  have hb0 : b ≠ 0 := by
    intro h
    apply hu
    simpa [h] using hb.symm
  let e := (baseModulus ^ 2 - 1) / 3
  have he : 3 * e = baseModulus ^ 2 - 1 := by
    norm_num [e, baseModulus]
  have hcube : fq2U ^ e = 1 := by
    rw [← hb, ← pow_mul, he, ← fq2_card]
    exact FiniteField.pow_card_sub_one_eq_one b hb0
  have heven : e = 2 * ((baseModulus ^ 2 - 1) / 6) := by
    norm_num [e, baseModulus]
  rw [heven, pow_mul, fq2U_square, ← map_pow] at hcube
  have hbase : (-5 : Fq) ^ ((baseModulus ^ 2 - 1) / 6) = 1 :=
    (algebraMap Fq Fq2).injective (by simpa using hcube)
  have hminusFive : (-5 : Fq) ≠ 0 := by
    intro h
    exact arithmeticFacts.fq2Nonresidue 0 (by simpa using h.symm)
  have hfermat : (-5 : Fq) ^ (baseModulus - 1) = 1 :=
    ZMod.pow_card_sub_one_eq_one hminusFive
  have hexponent :
      (baseModulus ^ 2 - 1) / 6 =
        (baseModulus - 1) / 3 + (baseModulus - 1) * ((baseModulus - 1) / 6) := by
    norm_num [baseModulus]
  rw [hexponent, pow_add, pow_mul, hfermat, one_pow, mul_one] at hbase
  apply Ipp.Bls12377Certificates.baseModulus_minus_five_cubeResidue_ne_one
  simpa [baseModulus] using hbase

noncomputable def fq6Polynomial : Polynomial Fq2 := X ^ 3 - C fq2U

/-- The cubic polynomial defining the BLS12-377 Fq6 tower is irreducible. -/
theorem fq6Polynomial_irreducible : Irreducible fq6Polynomial := by
  simpa [fq6Polynomial] using
    X_pow_sub_C_irreducible_of_prime_pow Nat.prime_three (by decide) 1 fq2U_not_cube

instance fq6Polynomial_irreducibleFact : Fact (Irreducible fq6Polynomial) :=
  ⟨fq6Polynomial_irreducible⟩

abbrev Fq6Canonical := AdjoinRoot fq6Polynomial

/-- The canonical cubic extension has the field structure derived by `AdjoinRoot`. -/
theorem fq6Canonical_field_available : Nonempty (Field Fq6Canonical) :=
  ⟨inferInstance⟩

noncomputable def fq6Coefficients (a : Fq6Model) : Fq6Canonical :=
  algebraMap Fq2 Fq6Canonical a.c0 +
    algebraMap Fq2 Fq6Canonical a.c1 * AdjoinRoot.root fq6Polynomial +
    algebraMap Fq2 Fq6Canonical a.c2 * AdjoinRoot.root fq6Polynomial ^ 2

private theorem fq6Polynomial_ne_zero : fq6Polynomial ≠ 0 :=
  fq6Polynomial_irreducible.ne_zero

private theorem fq6_root_cube :
    AdjoinRoot.root fq6Polynomial ^ 3 = algebraMap Fq2 Fq6Canonical fq2U := by
  simpa [fq6Polynomial] using (root_X_pow_sub_C_pow 3 fq2U)

@[simp] theorem fq6Coefficients_zero : fq6Coefficients fq6Zero = 0 := by
  have hz : fq2Zero = 0 := by ext <;> simp [fq2Zero]
  simp [fq6Coefficients, fq6Zero, hz]

@[simp] theorem fq6Coefficients_one : fq6Coefficients fq6One = 1 := by
  have hz : fq2Zero = 0 := by ext <;> simp [fq2Zero]
  have ho : fq2One = 1 := by apply QuadraticAlgebra.ext <;> rfl
  simp [fq6Coefficients, fq6One, hz, ho]

theorem fq6Coefficients_add (a b : Fq6Model) :
    fq6Coefficients (fq6Add a b) = fq6Coefficients a + fq6Coefficients b := by
  simp [fq6Coefficients, fq6Add]
  ring

theorem fq6Coefficients_mul (a b : Fq6Model) :
    fq6Coefficients (fq6Mul a b) = fq6Coefficients a * fq6Coefficients b := by
  simp only [fq6Coefficients, fq6Mul]
  push_cast
  have hrel : AdjoinRoot.root fq6Polynomial ^ 3 -
      algebraMap Fq2 Fq6Canonical fq2U = 0 := sub_eq_zero.mpr fq6_root_cube
  linear_combination
    -(algebraMap Fq2 Fq6Canonical a.c2 * algebraMap Fq2 Fq6Canonical b.c1 +
      algebraMap Fq2 Fq6Canonical a.c1 * algebraMap Fq2 Fq6Canonical b.c2 +
      algebraMap Fq2 Fq6Canonical a.c2 * algebraMap Fq2 Fq6Canonical b.c2 *
        AdjoinRoot.root fq6Polynomial) * hrel

theorem fq6Coefficients_mulByV (a : Fq6Model) :
    fq6Coefficients (fq6MulByV a) =
      AdjoinRoot.root fq6Polynomial * fq6Coefficients a := by
  simp only [fq6Coefficients, fq6MulByV]
  push_cast
  have hrel : AdjoinRoot.root fq6Polynomial ^ 3 -
      algebraMap Fq2 Fq6Canonical fq2U = 0 := sub_eq_zero.mpr fq6_root_cube
  linear_combination -(algebraMap Fq2 Fq6Canonical a.c2) * hrel

private def fq6ModelEquivCoefficients : Fq6Model ≃ (Fin 3 → Fq2) where
  toFun a := ![a.c0, a.c1, a.c2]
  invFun c := ⟨c 0, c 1, c 2⟩
  left_inv a := by cases a; rfl
  right_inv c := by
    funext i
    fin_cases i <;> rfl

private theorem fq6Polynomial_natDegree : fq6Polynomial.natDegree = 3 := by
  simp [fq6Polynomial]

private noncomputable def fq6Basis : Module.Basis (Fin 3) Fq2 Fq6Canonical :=
  (AdjoinRoot.powerBasis fq6Polynomial_ne_zero).basis.reindex
    (finCongr fq6Polynomial_natDegree)

private theorem fq6Coefficients_eq_basis (a : Fq6Model) :
    fq6Coefficients a =
      fq6Basis.equivFun.symm
        (fq6ModelEquivCoefficients a) := by
  rw [Module.Basis.equivFun_symm_apply]
  simp only [fq6Basis, Module.Basis.reindex_apply]
  simp_rw [(AdjoinRoot.powerBasis fq6Polynomial_ne_zero).basis_eq_pow]
  rw [Fin.sum_univ_three]
  simp only [finCongr_symm_apply_coe]
  simp [fq6Coefficients, fq6ModelEquivCoefficients, Algebra.smul_def]

/-- The coefficient interpretation is a bijection onto the canonical field. -/
theorem fq6Coefficients_bijective : Function.Bijective fq6Coefficients := by
  rw [show fq6Coefficients =
      fq6Basis.equivFun.symm ∘
        fq6ModelEquivCoefficients from by
    funext a
    exact fq6Coefficients_eq_basis a]
  exact fq6Basis.equivFun.symm.bijective.comp
    fq6ModelEquivCoefficients.bijective

end Ipp.Bls12377
