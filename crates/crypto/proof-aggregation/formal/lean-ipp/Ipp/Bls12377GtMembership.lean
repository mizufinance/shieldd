import Ipp.Bls12377Gt
import Ipp.CanonicalGtDecode
import Ipp.Extracted.ArkworksFq12

/-!
GAP-07: the checked BLS12-377 `PairingOutput` predicate and its exact
identification with the order-`r` target subgroup.
-/

namespace Ipp.Bls12377

open Ipp.CanonicalWire

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance gtMembershipFintypeFq2 : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

private def fq2ModelOfValue (x : Fq2Value) : Fq2 :=
  ⟨x.1.1, x.2.1⟩

private def fq6ModelOfValue (x : Fq6Value) : Fq6Model :=
  ⟨fq2ModelOfValue x.1, fq2ModelOfValue x.2.1, fq2ModelOfValue x.2.2⟩

private theorem fq_natCast_eq_of_eq_val {n : Nat} {x : Fq}
    (h : n = x.val) : (n : Fq) = x := by
  rw [h, ZMod.natCast_zmod_val]

/-- The canonical wire coefficients interpreted in the executable Fq12 model. -/
def pairingOutputModelOfValue (x : PairingOutputValue) : Fq12Model :=
  ⟨fq6ModelOfValue x.1, fq6ModelOfValue x.2⟩

/-- S3-21's componentwise bridge identifies the same canonical wire model. -/
theorem pairingOutputModelOfValue_eq_of_matches {x : PairingOutputValue}
    {m : Fq12Model}
    (h : Ipp.Extracted.ArkworksFq12.Fq12ValueMatchesModel x m) :
    pairingOutputModelOfValue x = m := by
  rcases h with ⟨h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11⟩
  unfold pairingOutputModelOfValue fq6ModelOfValue
  congr 2 <;> apply QuadraticAlgebra.ext <;> simp only [fq2ModelOfValue] <;>
    apply fq_natCast_eq_of_eq_val <;> assumption

private theorem fq2ModelOfValue_injective : Function.Injective fq2ModelOfValue := by
  intro x y h
  apply Prod.ext
  · apply Subtype.ext
    have hval := congrArg ZMod.val (congrArg QuadraticAlgebra.re h)
    change x.1.1 % baseModulus = y.1.1 % baseModulus at hval
    rw [Nat.mod_eq_of_lt (by simpa [baseModulus, fqModulus] using x.1.2),
      Nat.mod_eq_of_lt (by simpa [baseModulus, fqModulus] using y.1.2)] at hval
    exact hval
  · apply Subtype.ext
    have hval := congrArg ZMod.val (congrArg QuadraticAlgebra.im h)
    change x.2.1 % baseModulus = y.2.1 % baseModulus at hval
    rw [Nat.mod_eq_of_lt (by simpa [baseModulus, fqModulus] using x.2.2),
      Nat.mod_eq_of_lt (by simpa [baseModulus, fqModulus] using y.2.2)] at hval
    exact hval

private theorem fq6ModelOfValue_injective : Function.Injective fq6ModelOfValue := by
  intro x y h
  apply Prod.ext
  · apply fq2ModelOfValue_injective
    exact congrArg Fq6Model.c0 h
  · apply Prod.ext
    · apply fq2ModelOfValue_injective
      exact congrArg Fq6Model.c1 h
    · apply fq2ModelOfValue_injective
      exact congrArg Fq6Model.c2 h

/-- Canonical Fq12 values inject into the executable tower model. -/
theorem pairingOutputModelOfValue_injective :
    Function.Injective pairingOutputModelOfValue := by
  intro x y h
  apply Prod.ext
  · apply fq6ModelOfValue_injective
    exact congrArg Fq12Model.c0 h
  · apply fq6ModelOfValue_injective
    exact congrArg Fq12Model.c1 h

/-- Arkworks' checked `PairingOutput` condition, before its executed GAP-10 refinement. -/
def arkworksPairingOutputCheckedMembership (x : Fq12Model) : Prop :=
  fq12Pow x scalarModulus = fq12One

/-! ### Exact Frobenius/seed membership criterion -/

def cyclotomicOrder : Nat := baseModulus ^ 4 - baseModulus ^ 2 + 1

def seedRelationExponent : Nat := baseModulus - ateLoopParameter

theorem seed_relation_factorization :
    seedRelationExponent =
      scalarModulus * (((ateLoopParameter - 1) ^ 2) / 3) := by
  norm_num [seedRelationExponent, baseModulus, scalarModulus, ateLoopParameter]

theorem fast_membership_exponents_gcd :
    Nat.gcd cyclotomicOrder seedRelationExponent = scalarModulus := by
  norm_num [cyclotomicOrder, seedRelationExponent, baseModulus,
    scalarModulus, ateLoopParameter]

/-- The two equations implemented by the fast BLS12-377 GT check. On units,
the Frobenius equations are the corresponding powers by `q`. -/
def fastGtUnitMembership (x : Fq12Canonicalˣ) : Prop :=
  x ^ cyclotomicOrder = 1 ∧
    x ^ baseModulus = x ^ ateLoopParameter

/-- Cyclotomic membership plus the BLS seed/Frobenius relation accepts exactly
the same order-`r` subgroup as Arkworks' generic exponentiation check. -/
theorem fastGtUnitMembership_iff (x : Fq12Canonicalˣ) :
    fastGtUnitMembership x ↔ x ^ scalarModulus = 1 := by
  constructor
  · rintro ⟨hcyclotomic, hseed⟩
    have hsplit :
        baseModulus = ateLoopParameter + seedRelationExponent := by
      norm_num [seedRelationExponent, baseModulus, ateLoopParameter]
    have hrelation : x ^ seedRelationExponent = 1 := by
      have hcancel :
          x ^ ateLoopParameter * x ^ seedRelationExponent =
            x ^ ateLoopParameter * 1 := by
        simpa [hsplit, pow_add] using hseed
      exact mul_left_cancel hcancel
    have hgcd : x ^ Nat.gcd cyclotomicOrder seedRelationExponent = 1 :=
      (pow_gcd_eq_one).2 ⟨hcyclotomic, hrelation⟩
    simpa [fast_membership_exponents_gcd] using hgcd
  · intro hr
    have hcyclotomicFactor :
        cyclotomicOrder = scalarModulus * gtCyclotomicCofactor := by
      exact cyclotomic_order_factorization
    have hseedFactor := seed_relation_factorization
    constructor
    · rw [hcyclotomicFactor, pow_mul, hr, one_pow]
    · have hsplit :
          baseModulus = ateLoopParameter + seedRelationExponent := by
        norm_num [seedRelationExponent, baseModulus, ateLoopParameter]
      calc
        x ^ baseModulus =
            x ^ (ateLoopParameter + seedRelationExponent) :=
          congrArg (fun exponent : Nat => x ^ exponent) hsplit
        _ = x ^ ateLoopParameter * x ^ seedRelationExponent := pow_add _ _ _
        _ = x ^ ateLoopParameter *
            x ^ (scalarModulus * (((ateLoopParameter - 1) ^ 2) / 3)) := by
          rw [hseedFactor]
        _ = x ^ ateLoopParameter := by rw [pow_mul, hr, one_pow, mul_one]

/-- The concrete boolean supplied to GAP-04's parameterized checked decoder. -/
noncomputable def pairingOutputValueMember (x : PairingOutputValue) : Bool := by
  classical
  exact decide (arkworksPairingOutputCheckedMembership (pairingOutputModelOfValue x))

/-- GAP-04 canonical decoding specialized to the BLS12-377 GT check. -/
noncomputable def decodePairingOutputGtChecked
    (w : PairingOutputWire) : Option PairingOutputValue :=
  decodePairingOutputChecked pairingOutputValueMember w

/-- The executable model check is exactly the canonical field `r`-torsion equation. -/
theorem arkworksPairingOutputCheckedMembership_iff_pow (x : Fq12Model) :
    arkworksPairingOutputCheckedMembership x ↔
      fq12Coefficients x ^ scalarModulus = 1 := by
  constructor
  · intro h
    rw [← fq12Coefficients_pow, h, fq12Coefficients_one]
  · intro h
    apply fq12Coefficients_bijective.injective
    rw [fq12Coefficients_pow, h, fq12Coefficients_one]

/-- Passing the checked condition is exactly nonzero canonical `r`-torsion. -/
theorem arkworksPairingOutputCheckedMembership_iff_nonzero_pow (x : Fq12Model) :
    arkworksPairingOutputCheckedMembership x ↔
      fq12Coefficients x ≠ 0 ∧ fq12Coefficients x ^ scalarModulus = 1 := by
  rw [arkworksPairingOutputCheckedMembership_iff_pow]
  constructor
  · intro hpow
    refine ⟨?_, hpow⟩
    intro hzero
    rw [hzero, zero_pow (by norm_num [scalarModulus])] at hpow
    exact zero_ne_one hpow
  · exact And.right

/-- A checked value determines a canonical unit in the order-`r` GT subgroup. -/
theorem arkworksPairingOutputCheckedMembership_iff_exists_mem_gtGroup
    (x : Fq12Model) :
    arkworksPairingOutputCheckedMembership x ↔
      ∃ u : Fq12Canonicalˣ, (u : Fq12Canonical) = fq12Coefficients x ∧
        u ∈ GtGroup := by
  constructor
  · intro h
    have hx := (arkworksPairingOutputCheckedMembership_iff_nonzero_pow x).mp h
    let u : Fq12Canonicalˣ := Units.mk0 (fq12Coefficients x) hx.1
    refine ⟨u, rfl, ?_⟩
    apply (mem_gtGroup u).2
    apply Units.ext
    simpa [u] using hx.2
  · rintro ⟨u, hu, hmem⟩
    apply (arkworksPairingOutputCheckedMembership_iff_pow x).2
    rw [← hu]
    have hpow := congrArg (fun z : Fq12Canonicalˣ => (z : Fq12Canonical))
      ((mem_gtGroup u).1 hmem)
    simpa using hpow

private noncomputable def fq12ModelEquivCanonical : Fq12Model ≃ Fq12Canonical :=
  Equiv.ofBijective fq12Coefficients fq12Coefficients_bijective

private noncomputable def checkedModelEquivCanonical :
    {x : Fq12Model // arkworksPairingOutputCheckedMembership x} ≃
      {x : Fq12Canonical // x ≠ 0 ∧ x ^ scalarModulus = 1} :=
  fq12ModelEquivCanonical.subtypeEquiv fun x =>
    arkworksPairingOutputCheckedMembership_iff_nonzero_pow x

private noncomputable def checkedCanonicalEquivGt :
    {x : Fq12Canonical // x ≠ 0 ∧ x ^ scalarModulus = 1} ≃ GtGroup where
  toFun x := by
    let u : Fq12Canonicalˣ := Units.mk0 x.1 x.2.1
    refine ⟨u, (mem_gtGroup u).2 ?_⟩
    apply Units.ext
    simpa [u] using x.2.2
  invFun g := by
    refine ⟨gtValue g, gtValue_ne_zero g, ?_⟩
    have hpow := congrArg (fun z : Fq12Canonicalˣ => (z : Fq12Canonical))
      ((mem_gtGroup g.1).1 g.2)
    simpa [gtValue] using hpow
  left_inv x := by
    apply Subtype.ext
    rfl
  right_inv g := by
    apply Subtype.ext
    apply Units.ext
    rfl

/-- Accepted executable Fq12 models are canonically equivalent to `GtGroup`. -/
noncomputable def checkedPairingOutputEquivGt :
    {x : Fq12Model // arkworksPairingOutputCheckedMembership x} ≃ GtGroup :=
  checkedModelEquivCanonical.trans checkedCanonicalEquivGt

/-- The checked-model equivalence preserves the underlying canonical Fq12 value. -/
theorem checkedPairingOutputEquivGt_value
    (x : {x : Fq12Model // arkworksPairingOutputCheckedMembership x}) :
    gtValue (checkedPairingOutputEquivGt x) = fq12Coefficients x.1 := by
  rfl

/-- The checked `PairingOutput` set has the concrete scalar-modulus cardinality. -/
theorem arkworksPairingOutputCheckedMembership_card :
    Nat.card {x : Fq12Model // arkworksPairingOutputCheckedMembership x} =
      scalarModulus := by
  rw [Nat.card_congr checkedPairingOutputEquivGt, gtGroup_card]

/-- The concrete order factorization and checked-set cardinality in one consumer hook. -/
theorem pairingOutput_checked_factorization_and_cardinality :
    baseModulus ^ 12 - 1 = scalarModulus * gtCofactor ∧
    Nat.card {x : Fq12Model // arkworksPairingOutputCheckedMembership x} =
      scalarModulus :=
  ⟨fq12_order_factorization, arkworksPairingOutputCheckedMembership_card⟩

/-- The wire boolean is propositionally exact. -/
theorem pairingOutputValueMember_eq_true_iff (x : PairingOutputValue) :
    pairingOutputValueMember x = true ↔
      arkworksPairingOutputCheckedMembership (pairingOutputModelOfValue x) := by
  classical
  simp [pairingOutputValueMember]

/-- The specialized checked decoder accepts exactly canonical nonzero `r`-torsion. -/
theorem decodePairingOutputGtChecked_eq_some_iff
    (w : PairingOutputWire) (x : PairingOutputValue) :
    decodePairingOutputGtChecked w = some x ↔
      decodePairingOutputCanonical w = some x ∧
      fq12Coefficients (pairingOutputModelOfValue x) ≠ 0 ∧
      fq12Coefficients (pairingOutputModelOfValue x) ^ scalarModulus = 1 := by
  rw [decodePairingOutputGtChecked, decodePairingOutputChecked_eq_some_iff,
    pairingOutputValueMember_eq_true_iff,
    arkworksPairingOutputCheckedMembership_iff_nonzero_pow]

/-! ### Zero and identity conventions -/

/-- Arkworks additive zero is multiplicative one and passes the checked predicate. -/
theorem arkworksPairingOutputCheckedMembership_identity :
    arkworksPairingOutputCheckedMembership fq12One := by
  rw [arkworksPairingOutputCheckedMembership_iff_pow, fq12Coefficients_one]
  simp

/-- The additive field zero is rejected by the checked `PairingOutput` predicate. -/
theorem arkworksPairingOutputCheckedMembership_rejects_field_zero :
    ¬ arkworksPairingOutputCheckedMembership fq12Zero := by
  rw [arkworksPairingOutputCheckedMembership_iff_nonzero_pow, fq12Coefficients_zero]
  simp

/-- In arkworks notation, `PairingOutput` zero has the accepted field value one. -/
theorem arkPairingOutput_zero_value_accepted :
    arkworksPairingOutputCheckedMembership fq12One ∧
      gtValue (Additive.toMul (0 : ArkPairingOutput)) = 1 := by
  exact ⟨arkworksPairingOutputCheckedMembership_identity, by simp⟩

/-- Field zero is neither accepted nor the value of the arkworks additive identity. -/
theorem field_zero_rejected_and_ne_arkPairingOutput_zero :
    ¬ arkworksPairingOutputCheckedMembership fq12Zero ∧
      (0 : Fq12Canonical) ≠ gtValue (Additive.toMul (0 : ArkPairingOutput)) := by
  refine ⟨arkworksPairingOutputCheckedMembership_rejects_field_zero, ?_⟩
  simpa using fq12_zero_ne_gt_identity

#print axioms pairingOutputModelOfValue_eq_of_matches
#print axioms pairingOutputModelOfValue_injective
#print axioms arkworksPairingOutputCheckedMembership_iff_pow
#print axioms arkworksPairingOutputCheckedMembership_iff_nonzero_pow
#print axioms arkworksPairingOutputCheckedMembership_iff_exists_mem_gtGroup
#print axioms checkedPairingOutputEquivGt
#print axioms checkedPairingOutputEquivGt_value
#print axioms arkworksPairingOutputCheckedMembership_card
#print axioms pairingOutput_checked_factorization_and_cardinality
#print axioms pairingOutputValueMember_eq_true_iff
#print axioms decodePairingOutputGtChecked_eq_some_iff
#print axioms arkworksPairingOutputCheckedMembership_identity
#print axioms arkworksPairingOutputCheckedMembership_rejects_field_zero
#print axioms arkPairingOutput_zero_value_accepted
#print axioms field_zero_rejected_and_ne_arkPairingOutput_zero

end Ipp.Bls12377
