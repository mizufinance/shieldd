import Ipp.Bls12377Fq6

/-!
The canonical quadratic extension underlying the BLS12-377 Fq12 tower.
-/

namespace Ipp.Bls12377

open Polynomial

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

/-- The cubic generator used as the quadratic nonresidue for Fq12. -/
noncomputable def fq6V : Fq6Canonical := AdjoinRoot.root fq6Polynomial

private theorem fq6V_cube :
    fq6V ^ 3 = algebraMap Fq2 Fq6Canonical fq2U := by
  simpa [fq6V, fq6Polynomial] using (root_X_pow_sub_C_pow 3 fq2U)

private theorem fq6V_ne_zero : fq6V ≠ 0 := by
  intro hv
  have hu : fq2U ≠ 0 := by
    intro h
    have hi := congrArg QuadraticAlgebra.im h
    simp [fq2U] at hi
  apply hu
  apply (algebraMap Fq2 Fq6Canonical).injective
  rw [← fq6V_cube, hv]
  norm_num

private theorem fq6_half_twice :
    2 * ((baseModulus ^ 6 - 1) / 2) = baseModulus ^ 6 - 1 := by
  norm_num [baseModulus]

private theorem fq6_half_thrice :
    (baseModulus ^ 6 - 1) / 2 = 3 * ((baseModulus ^ 6 - 1) / 6) := by
  norm_num [baseModulus]

private theorem fq6_sixth_twice :
    (baseModulus ^ 6 - 1) / 6 = 2 * ((baseModulus ^ 6 - 1) / 12) := by
  norm_num [baseModulus]

private theorem fq6_twelfth_reduce :
    (baseModulus ^ 6 - 1) / 12 =
      (baseModulus - 1) / 2 +
        (baseModulus - 1) *
          (((baseModulus ^ 6 - 1) / 12) / (baseModulus - 1)) := by
  norm_num [baseModulus]

/-- The quadratic character of the Fq12 nonresidue in Fq6 is negative. -/
theorem fq6V_pow_half :
    fq6V ^ ((baseModulus ^ 6 - 1) / 2) =
      algebraMap Fq Fq6Canonical (-1) := by
  have hminusFive : (-5 : Fq) ≠ 0 := by
    intro h
    exact arithmeticFacts.fq2Nonresidue 0 (by simpa using h.symm)
  have hfermat : (-5 : Fq) ^ (baseModulus - 1) = 1 :=
    ZMod.pow_card_sub_one_eq_one hminusFive
  have hbase : (-5 : Fq) ^ ((baseModulus ^ 6 - 1) / 12) = -1 := by
    rw [fq6_twelfth_reduce, pow_add, pow_mul, hfermat, one_pow, mul_one]
    simpa [baseModulus] using Ipp.Bls12377Certificates.minus_five_pow_half
  rw [fq6_half_thrice, pow_mul, fq6V_cube, ← map_pow,
    fq6_sixth_twice, fq2U_pow_twice, hbase]
  simp

/-- The cubic generator `v` is not a square in the canonical Fq6 field. -/
theorem fq6V_not_square : ∀ b : Fq6Canonical, b ^ 2 ≠ fq6V := by
  intro b hb
  have hb0 : b ≠ 0 := by
    intro h
    apply fq6V_ne_zero
    simpa [h] using hb.symm
  have hsquare : fq6V ^ ((baseModulus ^ 6 - 1) / 2) = 1 := by
    rw [← hb, ← pow_mul, fq6_half_twice, ← fq6_card]
    exact FiniteField.pow_card_sub_one_eq_one b hb0
  have hnegOne_ne_one : algebraMap Fq Fq6Canonical (-1) ≠ 1 := by
    intro h
    have h' := (algebraMap Fq Fq6Canonical).injective h
    letI : Fact (2 < baseModulus) := ⟨by norm_num [baseModulus]⟩
    exact ZMod.neg_one_ne_one h'
  exact hnegOne_ne_one (fq6V_pow_half.symm.trans hsquare)

noncomputable def fq12Polynomial : Polynomial Fq6Canonical := X ^ 2 - C fq6V

/-- The quadratic polynomial defining the BLS12-377 Fq12 tower is irreducible. -/
theorem fq12Polynomial_irreducible : Irreducible fq12Polynomial := by
  simpa [fq12Polynomial] using
    (X_pow_sub_C_irreducible_iff_of_prime Nat.prime_two).2 fq6V_not_square

instance fq12Polynomial_irreducibleFact : Fact (Irreducible fq12Polynomial) :=
  ⟨fq12Polynomial_irreducible⟩

abbrev Fq12Canonical := AdjoinRoot fq12Polynomial

/-- The canonical quadratic extension has its field structure derived by `AdjoinRoot`. -/
theorem fq12Canonical_field_available : Nonempty (Field Fq12Canonical) :=
  ⟨inferInstance⟩

noncomputable def fq12Coefficients (a : Fq12Model) : Fq12Canonical :=
  algebraMap Fq6Canonical Fq12Canonical (fq6Coefficients a.c0) +
    algebraMap Fq6Canonical Fq12Canonical (fq6Coefficients a.c1) *
      AdjoinRoot.root fq12Polynomial

def fq12Zero : Fq12Model := ⟨fq6Zero, fq6Zero⟩

/-- The quadratic norm used by the executed Fq12 inverse. -/
def fq12QuadraticNorm (a : Fq12Model) : Fq6Model :=
  fq6Sub (fq6Mul a.c0 a.c0) (fq6MulByV (fq6Mul a.c1 a.c1))

private theorem fq12Polynomial_ne_zero : fq12Polynomial ≠ 0 :=
  fq12Polynomial_irreducible.ne_zero

private theorem fq12Polynomial_natDegree : fq12Polynomial.natDegree = 2 := by
  simp [fq12Polynomial]

private theorem fq12_root_square :
    AdjoinRoot.root fq12Polynomial ^ 2 =
      algebraMap Fq6Canonical Fq12Canonical fq6V := by
  simpa [fq12Polynomial] using (root_X_pow_sub_C_pow 2 fq6V)

private theorem fq12_neg_root_square :
    (-AdjoinRoot.root fq12Polynomial) ^ 2 =
      algebraMap Fq6Canonical Fq12Canonical fq6V := by
  rw [neg_sq, fq12_root_square]

private theorem fq12_neg_root_is_root :
    fq12Polynomial.eval₂ (algebraMap Fq6Canonical Fq12Canonical)
      (-AdjoinRoot.root fq12Polynomial) = 0 := by
  simpa [fq12Polynomial] using sub_eq_zero.mpr fq12_neg_root_square

private noncomputable def fq12ConjHom :
    Fq12Canonical →ₐ[Fq6Canonical] Fq12Canonical :=
  AdjoinRoot.liftAlgHom fq12Polynomial (Algebra.ofId _ _)
    (-AdjoinRoot.root fq12Polynomial) fq12_neg_root_is_root

private theorem fq12ConjHom_involutive :
    fq12ConjHom.comp fq12ConjHom = AlgHom.id Fq6Canonical Fq12Canonical := by
  apply AdjoinRoot.algHom_ext
  simp [fq12ConjHom]

/-- The Fq12 automorphism fixing Fq6 and sending the quadratic generator to its negation. -/
noncomputable def fq12ConjAut :
    Fq12Canonical ≃ₐ[Fq6Canonical] Fq12Canonical :=
  AlgEquiv.ofAlgHom fq12ConjHom fq12ConjHom
    fq12ConjHom_involutive fq12ConjHom_involutive

@[simp] theorem fq12ConjAut_root :
    fq12ConjAut (AdjoinRoot.root fq12Polynomial) =
      -AdjoinRoot.root fq12Polynomial := by
  simp [fq12ConjAut, fq12ConjHom]

private noncomputable def fq12Basis :
    Module.Basis (Fin 2) Fq6Canonical Fq12Canonical :=
  (AdjoinRoot.powerBasis fq12Polynomial_ne_zero).basis.reindex
    (finCongr fq12Polynomial_natDegree)

noncomputable instance : Fintype Fq12Canonical :=
  Fintype.ofEquiv (Fin 2 → Fq6Canonical) fq12Basis.equivFun.symm

/-- The canonical quadratic extension has `q¹²` elements. -/
theorem fq12_card : Fintype.card Fq12Canonical = baseModulus ^ 12 := by
  rw [Fintype.card_congr fq12Basis.equivFun.toEquiv, Fintype.card_fun, Fintype.card_fin,
    fq6_card]
  ring

@[simp] theorem fq12Coefficients_one : fq12Coefficients fq12One = 1 := by
  simp [fq12Coefficients, fq12One]

@[simp] theorem fq12Coefficients_zero : fq12Coefficients fq12Zero = 0 := by
  simp [fq12Coefficients, fq12Zero]

private theorem fq6Coefficients_componentwise_neg (a : Fq6Model) :
    fq6Coefficients ⟨-a.c0, -a.c1, -a.c2⟩ = -fq6Coefficients a := by
  simp [fq6Coefficients]
  ring

/-- Executed conjugation is the canonical quadratic-extension automorphism. -/
theorem fq12Coefficients_conjugate (a : Fq12Model) :
    fq12Coefficients (fq12Conjugate a) = fq12ConjAut (fq12Coefficients a) := by
  simp [fq12Coefficients, fq12Conjugate, fq12ConjAut, fq12ConjHom,
    fq6Coefficients_componentwise_neg]

theorem fq12QuadraticNorm_coefficients (a : Fq12Model) :
    fq6Coefficients (fq12QuadraticNorm a) =
      fq6Coefficients a.c0 ^ 2 - fq6V * fq6Coefficients a.c1 ^ 2 := by
  rw [fq12QuadraticNorm, fq6Coefficients_sub, fq6Coefficients_mul,
    fq6Coefficients_mulByV, fq6Coefficients_mul]
  simp [fq6V, pow_two]

/-- The executed quadratic norm vanishes exactly at the zero Fq12 value. -/
theorem fq12QuadraticNorm_eq_zero_iff (a : Fq12Model) :
    fq12QuadraticNorm a = fq6Zero ↔ a = fq12Zero := by
  constructor
  · intro hnorm
    have hcoeff : fq6Coefficients a.c0 ^ 2 - fq6V * fq6Coefficients a.c1 ^ 2 = 0 := by
      rw [← fq12QuadraticNorm_coefficients, hnorm, fq6Coefficients_zero]
    have hc1 : fq6Coefficients a.c1 = 0 := by
      by_contra hc1
      have hsquare : (fq6Coefficients a.c0 / fq6Coefficients a.c1) ^ 2 = fq6V := by
        field_simp
        linear_combination hcoeff
      exact fq6V_not_square (fq6Coefficients a.c0 / fq6Coefficients a.c1) hsquare
    have hc0 : fq6Coefficients a.c0 = 0 := by
      have hsquare : fq6Coefficients a.c0 ^ 2 = 0 := by simpa [hc1] using hcoeff
      exact sq_eq_zero_iff.mp hsquare
    have h0 : a.c0 = fq6Zero :=
      fq6Coefficients_bijective.injective (by simpa using hc0)
    have h1 : a.c1 = fq6Zero :=
      fq6Coefficients_bijective.injective (by simpa using hc1)
    cases a
    simp_all [fq12Zero]
  · rintro rfl
    have hz : fq2Zero = 0 := by ext <;> rfl
    simp [fq12QuadraticNorm, fq12Zero, fq6Sub, fq6Zero, fq6Mul, fq6MulByV, hz]

theorem fq12Coefficients_mul (a b : Fq12Model) :
    fq12Coefficients (fq12Mul a b) =
      fq12Coefficients a * fq12Coefficients b := by
  simp only [fq12Coefficients, fq12Mul, fq6Coefficients_add,
    fq6Coefficients_mul, fq6Coefficients_mulByV]
  push_cast
  have hrel : AdjoinRoot.root fq12Polynomial ^ 2 -
      algebraMap Fq6Canonical Fq12Canonical fq6V = 0 :=
    sub_eq_zero.mpr fq12_root_square
  dsimp only [fq6V] at hrel ⊢
  linear_combination
    -(algebraMap Fq6Canonical Fq12Canonical (fq6Coefficients a.c1) *
      algebraMap Fq6Canonical Fq12Canonical (fq6Coefficients b.c1)) * hrel

private noncomputable def fq6CoefficientsEquiv : Fq6Model ≃ Fq6Canonical :=
  Equiv.ofBijective fq6Coefficients fq6Coefficients_bijective

private noncomputable def fq12ModelEquivCoefficients :
    Fq12Model ≃ (Fin 2 → Fq6Canonical) where
  toFun a := ![fq6Coefficients a.c0, fq6Coefficients a.c1]
  invFun c :=
    ⟨fq6CoefficientsEquiv.symm (c 0), fq6CoefficientsEquiv.symm (c 1)⟩
  left_inv a := by cases a; simp [fq6CoefficientsEquiv]
  right_inv c := by
    funext i
    fin_cases i
    · exact fq6CoefficientsEquiv.apply_symm_apply (c 0)
    · exact fq6CoefficientsEquiv.apply_symm_apply (c 1)

private theorem fq12Coefficients_eq_basis (a : Fq12Model) :
    fq12Coefficients a =
      fq12Basis.equivFun.symm (fq12ModelEquivCoefficients a) := by
  rw [Module.Basis.equivFun_symm_apply]
  simp only [fq12Basis, Module.Basis.reindex_apply]
  simp_rw [(AdjoinRoot.powerBasis fq12Polynomial_ne_zero).basis_eq_pow]
  rw [Fin.sum_univ_two]
  simp only [finCongr_symm_apply_coe]
  simp [fq12Coefficients, fq12ModelEquivCoefficients, fq6CoefficientsEquiv,
    Algebra.smul_def]

/-- The pair interpretation is a bijection onto the canonical field. -/
theorem fq12Coefficients_bijective : Function.Bijective fq12Coefficients := by
  rw [show fq12Coefficients =
      fq12Basis.equivFun.symm ∘ fq12ModelEquivCoefficients from by
    funext a
    exact fq12Coefficients_eq_basis a]
  exact fq12Basis.equivFun.symm.bijective.comp
    fq12ModelEquivCoefficients.bijective

private instance : Semigroup Fq12Model where
  mul_assoc a b c := by
    apply fq12Coefficients_bijective.injective
    change fq12Coefficients (fq12Mul (fq12Mul a b) c) =
      fq12Coefficients (fq12Mul a (fq12Mul b c))
    rw [fq12Coefficients_mul, fq12Coefficients_mul,
      fq12Coefficients_mul, fq12Coefficients_mul]
    ring

theorem fq12Coefficients_pow (a : Fq12Model) (n : Nat) :
    fq12Coefficients (fq12Pow a n) = fq12Coefficients a ^ n := by
  induction n with
  | zero =>
      change fq12Coefficients fq12One = 1
      exact fq12Coefficients_one
  | succ n ih =>
      simp only [fq12Pow] at ih ⊢
      rw [npowBinRec_succ]
      change fq12Coefficients (fq12Mul (npowBinRec n a) a) =
        fq12Coefficients a ^ (n + 1)
      rw [fq12Coefficients_mul, ih, pow_succ]

#print axioms fq6V_not_square
#print axioms fq6V_pow_half
#print axioms fq12Polynomial_irreducible
#print axioms fq6_card
#print axioms fq12_card
#print axioms fq12Coefficients_mul
#print axioms fq12Coefficients_pow
#print axioms fq12Coefficients_bijective
#print axioms fq12Coefficients_zero
#print axioms fq12QuadraticNorm_coefficients
#print axioms fq12QuadraticNorm_eq_zero_iff
#print axioms fq12ConjAut
#print axioms fq12ConjAut_root
#print axioms fq12Coefficients_conjugate

end Ipp.Bls12377
