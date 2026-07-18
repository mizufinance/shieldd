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

theorem fq2_card : Fintype.card Fq2 = baseModulus ^ 2 := by
  rw [Fintype.card_congr (QuadraticAlgebra.equivProd (-5 : Fq) 0),
    Fintype.card_prod, ZMod.card]
  ring

theorem fq2U_square : fq2U ^ 2 = algebraMap Fq Fq2 (-5) := by
  ext <;> simp [fq2U, pow_two]

theorem fq2U_pow_twice (n : Nat) :
    fq2U ^ (2 * n) = algebraMap Fq Fq2 ((-5 : Fq) ^ n) := by
  rw [pow_mul, fq2U_square, map_pow]

theorem fq6FrobeniusC1_one :
    fq2U ^ ((baseModulus - 1) / 3) =
      algebraMap Fq Fq2
        (80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410946 : Fq) := by
  have hp : (-5 : Fq) ^ ((baseModulus - 1) / 6) =
      (80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410946 : Fq) := by
    simpa [baseModulus] using Ipp.Bls12377Certificates.minus_five_pow_sixth
  rw [show (baseModulus - 1) / 3 = 2 * ((baseModulus - 1) / 6) by
    norm_num [baseModulus], fq2U_pow_twice, hp]

theorem fq6FrobeniusC2_one :
    fq2U ^ (2 * ((baseModulus - 1) / 3)) =
      algebraMap Fq Fq2
        (80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410945 : Fq) := by
  have hp : (-5 : Fq) ^ ((baseModulus - 1) / 3) =
      (80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410945 : Fq) := by
    simpa [baseModulus] using Ipp.Bls12377Certificates.minus_five_pow_third
  rw [fq2U_pow_twice, hp]

theorem fq6FrobeniusC1_two :
    fq2U ^ ((baseModulus ^ 2 - 1) / 3) =
      algebraMap Fq Fq2
        (80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410945 : Fq) := by
  rw [show (baseModulus ^ 2 - 1) / 3 = 2 * ((baseModulus ^ 2 - 1) / 6) by
    norm_num [baseModulus], fq2U_pow_twice]
  have hminusFive : (-5 : Fq) ≠ 0 := by
    intro h
    exact arithmeticFacts.fq2Nonresidue 0 (by simpa using h.symm)
  have hfermat : (-5 : Fq) ^ (baseModulus - 1) = 1 :=
    ZMod.pow_card_sub_one_eq_one hminusFive
  have hp : (-5 : Fq) ^ ((baseModulus - 1) / 3) =
      (80949648264912719408558363140637477264845294720710499478137287262712535938301461879813459410945 : Fq) := by
    simpa [baseModulus] using Ipp.Bls12377Certificates.minus_five_pow_third
  rw [show (baseModulus ^ 2 - 1) / 6 =
      (baseModulus - 1) / 3 + (baseModulus - 1) * ((baseModulus - 1) / 6) by
    norm_num [baseModulus], pow_add, hp, pow_mul, hfermat, one_pow, mul_one]

theorem fq6FrobeniusC2_two :
    fq2U ^ (2 * ((baseModulus ^ 2 - 1) / 3)) =
      algebraMap Fq Fq2
        (258664426012969093929703085429980814127835149614277183275038967946009968870203535512256352201271898244626862047231 : Fq) := by
  rw [fq2U_pow_twice]
  have hminusFive : (-5 : Fq) ≠ 0 := by
    intro h
    exact arithmeticFacts.fq2Nonresidue 0 (by simpa using h.symm)
  have hfermat : (-5 : Fq) ^ (baseModulus - 1) = 1 :=
    ZMod.pow_card_sub_one_eq_one hminusFive
  have hp : (-5 : Fq) ^ (2 * ((baseModulus - 1) / 3)) =
      (258664426012969093929703085429980814127835149614277183275038967946009968870203535512256352201271898244626862047231 : Fq) := by
    simpa [baseModulus] using Ipp.Bls12377Certificates.minus_five_pow_twoThirds
  rw [show (baseModulus ^ 2 - 1) / 3 =
      2 * ((baseModulus - 1) / 3) +
        (baseModulus - 1) * ((baseModulus - 1) / 3) by
    norm_num [baseModulus], pow_add, hp, pow_mul, hfermat, one_pow, mul_one]

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

noncomputable instance : Fintype Fq6Canonical :=
  Fintype.ofEquiv (Fin 3 → Fq2) fq6Basis.equivFun.symm

/-- The canonical cubic extension has `q⁶` elements. -/
theorem fq6_card : Fintype.card Fq6Canonical = baseModulus ^ 6 := by
  rw [Fintype.card_congr fq6Basis.equivFun.toEquiv, Fintype.card_fun, Fintype.card_fin,
    fq2_card]
  ring

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

/-- The cubic norm used by the executed Algorithm-17 inverse. -/
def fq6CubicNorm (a : Fq6Model) : Fq2 :=
  a.c0 ^ 3 + fq2U * a.c1 ^ 3 + fq2U ^ 2 * a.c2 ^ 3 -
    3 * fq2U * a.c0 * a.c1 * a.c2

/-- Algorithm-17's scaled adjugate is a multiplicative inverse when its norm is. -/
theorem fq6Mul_scaledAdjugate (a : Fq6Model) (t : Fq2)
    (hinv : t * fq6CubicNorm a = 1) :
    fq6Mul
      ⟨t * (a.c0 * a.c0 - fq2U * (a.c1 * a.c2)),
       t * (fq2U * (a.c2 * a.c2) - a.c0 * a.c1),
       t * (a.c1 * a.c1 - a.c0 * a.c2)⟩ a = fq6One := by
  have hone : fq2One = 1 := by ext <;> rfl
  have hzero : fq2Zero = 0 := by ext <;> rfl
  cases a with
  | mk x y z =>
      simp only [fq6Mul, fq6One, hone, hzero]
      congr 1
      · simp only [fq6CubicNorm] at hinv
        ring_nf at hinv ⊢
        exact hinv
      · ring
      · ring

private theorem fq6Adjugate_zero_imp_zero (x y z : Fq2)
    (h0 : x * x - fq2U * (y * z) = 0)
    (h1 : fq2U * (z * z) - x * y = 0)
    (h2 : y * y - x * z = 0) : x = 0 ∧ y = 0 ∧ z = 0 := by
  have hu : fq2U ≠ 0 := by
    intro h
    have hi := congrArg QuadraticAlgebra.im h
    simp [fq2U] at hi
  by_cases hx : x = 0
  · subst x
    have hy : y = 0 := by
      simpa using (mul_self_eq_zero.mp (by simpa using h2))
    subst y
    have hz2 : z * z = 0 := by
      exact (mul_eq_zero.mp (by simpa using h1)).resolve_left hu
    exact ⟨rfl, rfl, mul_self_eq_zero.mp hz2⟩
  · have hy : y ≠ 0 := by
      intro hy
      subst y
      apply hx
      exact mul_self_eq_zero.mp (by simpa using h0)
    exfalso
    apply fq2U_not_cube (x / y)
    field_simp [hy]
    calc
      x ^ 3 = x * (x * x) := by ring
      _ = x * (fq2U * (y * z)) := by rw [sub_eq_zero.mp h0]
      _ = fq2U * y * (x * z) := by ring
      _ = fq2U * y * (y * y) := by rw [sub_eq_zero.mp h2]
      _ = fq2U * y ^ 3 := by ring
      _ = y ^ 3 * fq2U := by ring

/-- The executed cubic norm vanishes only on the zero coefficient vector. -/
theorem fq6CubicNorm_eq_zero_iff (a : Fq6Model) :
    fq6CubicNorm a = 0 ↔ a = fq6Zero := by
  constructor
  · intro hnorm
    have hz : fq2Zero = 0 := by ext <;> rfl
    let adj : Fq6Model :=
      ⟨a.c0 * a.c0 - fq2U * (a.c1 * a.c2),
       fq2U * (a.c2 * a.c2) - a.c0 * a.c1,
       a.c1 * a.c1 - a.c0 * a.c2⟩
    have hproduct : fq6Mul adj a = fq6Zero := by
      cases a with
      | mk x y z =>
          simp only [adj, fq6Mul, fq6Zero]
          congr 1
          · simp [fq2Zero, fq6CubicNorm] at hnorm ⊢
            ring_nf at hnorm ⊢
            exact hnorm
          · simp [fq2Zero]
            ring
            exact hz.symm
          · simp [fq2Zero]
            ring
            exact hz.symm
    have hcoeffProduct : fq6Coefficients adj * fq6Coefficients a = 0 := by
      rw [← fq6Coefficients_mul, hproduct, fq6Coefficients_zero]
    by_cases ha : a = fq6Zero
    · exact ha
    · have hca : fq6Coefficients a ≠ 0 := by
        intro hzero
        apply ha
        exact fq6Coefficients_bijective.injective (by simpa using hzero)
      have hadjCoeff : fq6Coefficients adj = 0 :=
        (mul_eq_zero.mp hcoeffProduct).resolve_right hca
      have hadj : adj = fq6Zero :=
        fq6Coefficients_bijective.injective (by simpa using hadjCoeff)
      have h0 := congrArg Fq6Model.c0 hadj
      have h1 := congrArg Fq6Model.c1 hadj
      have h2 := congrArg Fq6Model.c2 hadj
      simp only [adj, fq6Zero] at h0 h1 h2
      rw [hz] at h0 h1 h2
      rcases fq6Adjugate_zero_imp_zero a.c0 a.c1 a.c2 h0 h1 h2 with
        ⟨hc0, hc1, hc2⟩
      cases a
      simp_all [fq6Zero, fq2Zero]
  · rintro rfl
    have hz : fq2Zero = 0 := by ext <;> rfl
    rw [show fq6CubicNorm fq6Zero =
        fq2Zero ^ 3 + fq2U * fq2Zero ^ 3 + fq2U ^ 2 * fq2Zero ^ 3 -
          3 * fq2U * fq2Zero * fq2Zero * fq2Zero by rfl, hz]
    simp

#print axioms fq6CubicNorm_eq_zero_iff
#print axioms fq6Mul_scaledAdjugate
#print axioms fq2U_square
#print axioms fq2U_pow_twice
#print axioms fq6FrobeniusC1_one
#print axioms fq6FrobeniusC2_one
#print axioms fq6FrobeniusC1_two
#print axioms fq6FrobeniusC2_two

end Ipp.Bls12377
