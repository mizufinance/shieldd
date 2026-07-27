import Ipp.Bls12377
import Mathlib.GroupTheory.Sylow

/-!
Exact BLS12-377 curve orders and the arithmetic facts used by subgroup proofs.
The two point counts are retained published mathematics, not derived here.
-/

namespace Ipp.Bls12377

def g1GroupOrder : Nat :=
  258664426012969094010652733694893533536393512754914660539884262666720468348340822774968888139563774001527230824448

def g2GroupOrder : Nat :=
  66907285284618762516179251892498138576011520021772958506141914906595914232678740282226827271676970130419140598508556341525183081340042409483740343529628495544958523157897449553724368660947169855001598703830131538604937367781377

/--
The published point counts for the concrete BLS12-377 curve and its G2 twist.

Sources: arkworks-rs/curves v0.5.0, `bls12_377/src/curves/g1.rs` and
`g2.rs` (`COFACTOR` with scalar-field modulus `FrConfig::MODULUS`); Bowe et al.,
"Zexe: Enabling Decentralized Private Computation", [BCGMMW20],
IACR ePrint 2018/962, BLS12-377 parameter listing. These equalities are a
cited mathematics boundary; they are not derived from curve arithmetic here.
-/
structure PublishedCurveOrderFacts : Prop where
  g1_cardinality : Nat.card G1 =
    30631250834960419227450344600217059328 * scalarModulus
  g2_cardinality : Nat.card G2 =
    7923214915284317143930293550643874566881017850177945424769256759165301436616933228209277966774092486467289478618404761412630691835764674559376407658497 *
      scalarModulus

theorem g1Cofactor_mul_scalarModulus :
    g1Cofactor * scalarModulus =
      258664426012969094010652733694893533536393512754914660539884262666720468348340822774968888139563774001527230824448 := by
  norm_num [g1Cofactor, scalarModulus]

theorem g2Cofactor_mul_scalarModulus :
    g2Cofactor * scalarModulus =
      66907285284618762516179251892498138576011520021772958506141914906595914232678740282226827271676970130419140598508556341525183081340042409483740343529628495544958523157897449553724368660947169855001598703830131538604937367781377 := by
  norm_num [g2Cofactor, scalarModulus]

theorem PublishedCurveOrderFacts.g1_cardinality_eq_groupOrder
    (facts : PublishedCurveOrderFacts) : Nat.card G1 = g1GroupOrder := by
  rw [facts.g1_cardinality]
  norm_num [scalarModulus, g1GroupOrder]

theorem PublishedCurveOrderFacts.g2_cardinality_eq_groupOrder
    (facts : PublishedCurveOrderFacts) : Nat.card G2 = g2GroupOrder := by
  rw [facts.g2_cardinality]
  norm_num [scalarModulus, g2GroupOrder]

theorem scalarModulus_prime : scalarModulus.Prime :=
  arithmeticFacts.scalarPrime

theorem g1Cofactor_coprime_scalarModulus :
    Nat.Coprime g1Cofactor scalarModulus := by
  norm_num [g1Cofactor, scalarModulus, Nat.Coprime]

theorem g2Cofactor_coprime_scalarModulus :
    Nat.Coprime g2Cofactor scalarModulus := by
  norm_num [g2Cofactor, scalarModulus, Nat.Coprime]

theorem g1Cofactor_gcd_scalarModulus :
    Nat.gcd g1Cofactor scalarModulus = 1 :=
  g1Cofactor_coprime_scalarModulus

theorem g2Cofactor_gcd_scalarModulus :
    Nat.gcd g2Cofactor scalarModulus = 1 :=
  g2Cofactor_coprime_scalarModulus

theorem scalarModulus_not_dvd_g1Cofactor :
    ¬ scalarModulus ∣ g1Cofactor := by
  norm_num [g1Cofactor, scalarModulus]

theorem scalarModulus_not_dvd_g2Cofactor :
    ¬ scalarModulus ∣ g2Cofactor := by
  norm_num [g2Cofactor, scalarModulus]

theorem scalarModulus_dvd_g1GroupOrder :
    scalarModulus ∣ g1GroupOrder := by
  change scalarModulus ∣
    258664426012969094010652733694893533536393512754914660539884262666720468348340822774968888139563774001527230824448
  rw [← g1Cofactor_mul_scalarModulus]
  exact dvd_mul_left _ _

theorem scalarModulus_dvd_g2GroupOrder :
    scalarModulus ∣ g2GroupOrder := by
  change scalarModulus ∣
    66907285284618762516179251892498138576011520021772958506141914906595914232678740282226827271676970130419140598508556341525183081340042409483740343529628495544958523157897449553724368660947169855001598703830131538604937367781377
  rw [← g2Cofactor_mul_scalarModulus]
  exact dvd_mul_left _ _

theorem scalarModulus_sq_not_dvd_g1GroupOrder :
    ¬ scalarModulus ^ 2 ∣ g1GroupOrder := by
  norm_num [scalarModulus, g1GroupOrder]

theorem scalarModulus_sq_not_dvd_g2GroupOrder :
    ¬ scalarModulus ^ 2 ∣ g2GroupOrder := by
  norm_num [scalarModulus, g2GroupOrder]

section G1

local instance subgroupG1BasePrimeFact : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩

/--
The arkworks 0.5.0 checked G1 membership predicate: scalar multiplication by
the `Fr` characteristic must be the identity. `ark-bls12-377-0.5.0/src/curves/g1.rs`
does not override the default from
`ark-ec-0.5.0/src/models/short_weierstrass/mod.rs` (`SWCurveConfig`), which
evaluates `mul_affine(item, ScalarField::characteristic()).is_zero()`.
The executed scalar-multiplication conformance is outside this specification.
-/
def arkworksG1CheckedMembership (p : G1) : Prop :=
  scalarModulus • p = 0

/-- The concrete G1 points killed by the scalar-field modulus. -/
def g1PrimeSubgroup : AddSubgroup G1 where
  carrier := {p | inPrimeSubgroup p}
  zero_mem' := by simp [inPrimeSubgroup]
  add_mem' := by
    intro a b ha hb
    simp only [Set.mem_setOf_eq, inPrimeSubgroup, nsmul_add] at ha hb ⊢
    rw [ha, hb, add_zero]
  neg_mem' := by
    intro a ha
    simpa [inPrimeSubgroup] using congrArg Neg.neg ha

@[simp]
theorem mem_g1PrimeSubgroup (p : G1) :
    p ∈ g1PrimeSubgroup ↔ inPrimeSubgroup p :=
  Iff.rfl

/-- The pinned arkworks check is exactly membership in the G1 prime subgroup. -/
@[simp]
theorem arkworksG1CheckedMembership_iff_mem_g1PrimeSubgroup (p : G1) :
    arkworksG1CheckedMembership p ↔ p ∈ g1PrimeSubgroup :=
  Iff.rfl

/-- The multiplicative view of the G1 prime subgroup is an `r`-group. -/
theorem g1PrimeSubgroup_isPGroup :
    IsPGroup scalarModulus g1PrimeSubgroup.toSubgroup := by
  intro x
  refine ⟨1, ?_⟩
  apply Subtype.ext
  change scalarModulus • Multiplicative.toAdd x.1 = 0
  exact x.2

theorem g1PrimeSubgroup_card (facts : PublishedCurveOrderFacts) :
    Nat.card g1PrimeSubgroup = scalarModulus := by
  letI : Finite G1 := Nat.finite_of_card_ne_zero (by
    rw [facts.g1_cardinality]
    exact mul_ne_zero (by norm_num) scalarModulus_prime.ne_zero)
  letI : Fact scalarModulus.Prime := ⟨scalarModulus_prime⟩
  obtain ⟨x, hx⟩ := exists_prime_addOrderOf_dvd_card' scalarModulus (by
    rw [facts.g1_cardinality]
    exact dvd_mul_left _ _)
  have hxmem : x ∈ g1PrimeSubgroup := by
    rw [mem_g1PrimeSubgroup, inPrimeSubgroup,
      ← addOrderOf_dvd_iff_nsmul_eq_zero, hx]
  have hprime_dvd : scalarModulus ∣ Nat.card g1PrimeSubgroup := by
    rw [← hx]
    exact g1PrimeSubgroup.addOrderOf_dvd_natCard hxmem
  obtain ⟨n, hn⟩ := (IsPGroup.iff_card.mp g1PrimeSubgroup_isPGroup)
  have hn' : Nat.card g1PrimeSubgroup = scalarModulus ^ n := hn
  have hpow_dvd : scalarModulus ^ n ∣ g1GroupOrder := by
    rw [← facts.g1_cardinality_eq_groupOrder, ← hn']
    exact g1PrimeSubgroup.card_addSubgroup_dvd_card
  have hn_lt : n < 2 := by
    by_contra hnlt
    exact scalarModulus_sq_not_dvd_g1GroupOrder
      ((Nat.pow_dvd_pow scalarModulus (Nat.le_of_not_gt hnlt)).trans hpow_dvd)
  have hn_pos : 0 < n := by
    by_contra hnpos
    have hnzero : n = 0 := Nat.eq_zero_of_not_pos hnpos
    rw [hn', hnzero, pow_zero] at hprime_dvd
    exact scalarModulus_prime.not_dvd_one hprime_dvd
  have : n = 1 := by omega
  rw [hn', this, pow_one]

/-- The points accepted by the pinned arkworks check have cardinality `r`. -/
theorem arkworksG1CheckedMembership_card (facts : PublishedCurveOrderFacts) :
    Nat.card {p : G1 // arkworksG1CheckedMembership p} = scalarModulus := by
  change Nat.card g1PrimeSubgroup = scalarModulus
  exact g1PrimeSubgroup_card facts

/-- Every order-`r` additive subgroup of G1 is the prime subgroup. -/
theorem g1PrimeSubgroup_unique (facts : PublishedCurveOrderFacts)
    (H : AddSubgroup G1) (hH : Nat.card H = scalarModulus) :
    H = g1PrimeSubgroup := by
  letI : Finite G1 := Nat.finite_of_card_ne_zero (by
    rw [facts.g1_cardinality]
    exact mul_ne_zero (by norm_num) scalarModulus_prime.ne_zero)
  apply AddSubgroup.eq_of_le_of_card_ge
  · intro x hx
    rw [mem_g1PrimeSubgroup, inPrimeSubgroup, ← hH]
    exact congrArg Subtype.val (card_nsmul_eq_zero' (x := ⟨x, hx⟩))
  · rw [g1PrimeSubgroup_card facts, hH]

/-- The prime subgroup, viewed multiplicatively, is a Sylow-`r` subgroup. -/
noncomputable def g1PrimeSubgroupSylow (facts : PublishedCurveOrderFacts) :
    Sylow scalarModulus (Multiplicative G1) := by
  letI : Finite G1 := Nat.finite_of_card_ne_zero (by
    rw [facts.g1_cardinality]
    exact mul_ne_zero (by norm_num) scalarModulus_prime.ne_zero)
  letI : Fact scalarModulus.Prime := ⟨scalarModulus_prime⟩
  apply g1PrimeSubgroup_isPGroup.toSylow
  intro hdvd
  apply scalarModulus_not_dvd_g1Cofactor
  have hcard := Subgroup.card_mul_index g1PrimeSubgroup.toSubgroup
  have hprimecard : Nat.card g1PrimeSubgroup.toSubgroup = scalarModulus :=
    g1PrimeSubgroup_card facts
  have hcard' :
      scalarModulus * g1PrimeSubgroup.toSubgroup.index =
        g1Cofactor * scalarModulus := by
    calc
      _ = Nat.card g1PrimeSubgroup.toSubgroup *
          g1PrimeSubgroup.toSubgroup.index := by rw [hprimecard]
      _ = Nat.card (Multiplicative G1) := hcard
      _ = Nat.card G1 := rfl
      _ = g1Cofactor * scalarModulus := facts.g1_cardinality
  have hindex : g1PrimeSubgroup.toSubgroup.index = g1Cofactor :=
    Nat.mul_right_cancel scalarModulus_prime.pos (by simpa [mul_comm] using hcard')
  rwa [hindex] at hdvd

/-- G1 has only one Sylow-`r` subgroup. -/
theorem g1_sylow_unique (facts : PublishedCurveOrderFacts)
    (P : Sylow scalarModulus (Multiplicative G1)) :
    (P : Subgroup (Multiplicative G1)) = g1PrimeSubgroup.toSubgroup := by
  letI : Finite G1 := Nat.finite_of_card_ne_zero (by
    rw [facts.g1_cardinality]
    exact mul_ne_zero (by norm_num) scalarModulus_prime.ne_zero)
  letI : Fact scalarModulus.Prime := ⟨scalarModulus_prime⟩
  letI : Finite (Sylow scalarModulus (Multiplicative G1)) :=
    Sylow.finite_of_finiteIndex (g1PrimeSubgroupSylow facts)
  letI : Unique (Sylow scalarModulus (Multiplicative G1)) :=
    Sylow.unique_of_normal (g1PrimeSubgroupSylow facts) inferInstance
  have hP : P = g1PrimeSubgroupSylow facts := Subsingleton.elim _ _
  change (P : Subgroup (Multiplicative G1)) =
    ((g1PrimeSubgroupSylow facts : Sylow scalarModulus (Multiplicative G1)) : Subgroup _)
  exact congrArg Sylow.toSubgroup hP

theorem g1_identity_inPrimeSubgroup : inPrimeSubgroup (0 : G1) := by
  simp [inPrimeSubgroup]

/-- Arkworks accepts the G1 identity. -/
theorem arkworksG1CheckedMembership_identity :
    arkworksG1CheckedMembership (0 : G1) := by
  simp [arkworksG1CheckedMembership]

/-- Cofactor torsion meets the prime subgroup only at the identity. -/
theorem g1_cofactor_torsion_inPrimeSubgroup_iff (p : G1)
    (horder : addOrderOf p ∣ g1Cofactor) :
    inPrimeSubgroup p ↔ p = 0 := by
  constructor
  · intro hp
    have hr : addOrderOf p ∣ scalarModulus :=
      addOrderOf_dvd_iff_nsmul_eq_zero.mpr hp
    exact AddMonoid.addOrderOf_eq_one_iff.mp
      (Nat.eq_one_of_dvd_coprimes g1Cofactor_coprime_scalarModulus horder hr)
  · rintro rfl
    exact g1_identity_inPrimeSubgroup

theorem g1_nonzero_cofactor_torsion_not_inPrimeSubgroup (p : G1)
    (hne : p ≠ 0) (horder : addOrderOf p ∣ g1Cofactor) :
    ¬ inPrimeSubgroup p := by
  rw [g1_cofactor_torsion_inPrimeSubgroup_iff p horder]
  exact hne

/-- On cofactor torsion, the pinned arkworks check accepts only identity. -/
theorem arkworksG1CheckedMembership_cofactor_torsion_iff (p : G1)
    (horder : addOrderOf p ∣ g1Cofactor) :
    arkworksG1CheckedMembership p ↔ p = 0 := by
  exact g1_cofactor_torsion_inPrimeSubgroup_iff p horder

/-- Every nonidentity G1 cofactor-torsion point fails the pinned arkworks check. -/
theorem arkworksG1CheckedMembership_rejects_nonzero_cofactor_torsion (p : G1)
    (hne : p ≠ 0) (horder : addOrderOf p ∣ g1Cofactor) :
    ¬ arkworksG1CheckedMembership p := by
  exact g1_nonzero_cofactor_torsion_not_inPrimeSubgroup p hne horder

end G1

section G2

local instance subgroupG2BasePrimeFact : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance subgroupG2NonresidueFact :
    Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

/--
The arkworks 0.5.0 checked G2 membership predicate: scalar multiplication by
the `Fr` characteristic must be the identity. `ark-bls12-377-0.5.0/src/curves/g2.rs`
does not override the default from
`ark-ec-0.5.0/src/models/short_weierstrass/mod.rs` (`SWCurveConfig`), which
evaluates `mul_affine(item, ScalarField::characteristic()).is_zero()`.
The G2 psi endomorphisms are used for cofactor clearing, not membership checking;
the executed scalar-multiplication conformance is outside this specification.
-/
def arkworksG2CheckedMembership (p : G2) : Prop :=
  scalarModulus • p = 0

/-- The concrete G2 points killed by the scalar-field modulus. -/
def g2PrimeSubgroup : AddSubgroup G2 where
  carrier := {p | inPrimeSubgroup p}
  zero_mem' := by simp [inPrimeSubgroup]
  add_mem' := by
    intro a b ha hb
    simp only [Set.mem_setOf_eq, inPrimeSubgroup, nsmul_add] at ha hb ⊢
    rw [ha, hb, add_zero]
  neg_mem' := by
    intro a ha
    simpa [inPrimeSubgroup] using congrArg Neg.neg ha

@[simp]
theorem mem_g2PrimeSubgroup (p : G2) :
    p ∈ g2PrimeSubgroup ↔ inPrimeSubgroup p :=
  Iff.rfl

/-- The pinned arkworks check is exactly membership in the G2 prime subgroup. -/
@[simp]
theorem arkworksG2CheckedMembership_iff_mem_g2PrimeSubgroup (p : G2) :
    arkworksG2CheckedMembership p ↔ p ∈ g2PrimeSubgroup :=
  Iff.rfl

/-- The multiplicative view of the G2 prime subgroup is an `r`-group. -/
theorem g2PrimeSubgroup_isPGroup :
    IsPGroup scalarModulus g2PrimeSubgroup.toSubgroup := by
  intro x
  refine ⟨1, ?_⟩
  apply Subtype.ext
  change scalarModulus • Multiplicative.toAdd x.1 = 0
  exact x.2

theorem g2PrimeSubgroup_card (facts : PublishedCurveOrderFacts) :
    Nat.card g2PrimeSubgroup = scalarModulus := by
  letI : Finite G2 := Nat.finite_of_card_ne_zero (by
    rw [facts.g2_cardinality]
    exact mul_ne_zero (by norm_num) scalarModulus_prime.ne_zero)
  letI : Fact scalarModulus.Prime := ⟨scalarModulus_prime⟩
  obtain ⟨x, hx⟩ := exists_prime_addOrderOf_dvd_card' scalarModulus (by
    rw [facts.g2_cardinality]
    exact dvd_mul_left _ _)
  have hxmem : x ∈ g2PrimeSubgroup := by
    rw [mem_g2PrimeSubgroup, inPrimeSubgroup,
      ← addOrderOf_dvd_iff_nsmul_eq_zero, hx]
  have hprime_dvd : scalarModulus ∣ Nat.card g2PrimeSubgroup := by
    rw [← hx]
    exact g2PrimeSubgroup.addOrderOf_dvd_natCard hxmem
  obtain ⟨n, hn⟩ := (IsPGroup.iff_card.mp g2PrimeSubgroup_isPGroup)
  have hn' : Nat.card g2PrimeSubgroup = scalarModulus ^ n := hn
  have hpow_dvd : scalarModulus ^ n ∣ g2GroupOrder := by
    rw [← facts.g2_cardinality_eq_groupOrder, ← hn']
    exact g2PrimeSubgroup.card_addSubgroup_dvd_card
  have hn_lt : n < 2 := by
    by_contra hnlt
    exact scalarModulus_sq_not_dvd_g2GroupOrder
      ((Nat.pow_dvd_pow scalarModulus (Nat.le_of_not_gt hnlt)).trans hpow_dvd)
  have hn_pos : 0 < n := by
    by_contra hnpos
    have hnzero : n = 0 := Nat.eq_zero_of_not_pos hnpos
    rw [hn', hnzero, pow_zero] at hprime_dvd
    exact scalarModulus_prime.not_dvd_one hprime_dvd
  have : n = 1 := by omega
  rw [hn', this, pow_one]

/-- The points accepted by the pinned arkworks check have cardinality `r`. -/
theorem arkworksG2CheckedMembership_card (facts : PublishedCurveOrderFacts) :
    Nat.card {p : G2 // arkworksG2CheckedMembership p} = scalarModulus := by
  change Nat.card g2PrimeSubgroup = scalarModulus
  exact g2PrimeSubgroup_card facts

/-- Every order-`r` additive subgroup of G2 is the prime subgroup. -/
theorem g2PrimeSubgroup_unique (facts : PublishedCurveOrderFacts)
    (H : AddSubgroup G2) (hH : Nat.card H = scalarModulus) :
    H = g2PrimeSubgroup := by
  letI : Finite G2 := Nat.finite_of_card_ne_zero (by
    rw [facts.g2_cardinality]
    exact mul_ne_zero (by norm_num) scalarModulus_prime.ne_zero)
  apply AddSubgroup.eq_of_le_of_card_ge
  · intro x hx
    rw [mem_g2PrimeSubgroup, inPrimeSubgroup, ← hH]
    exact congrArg Subtype.val (card_nsmul_eq_zero' (x := ⟨x, hx⟩))
  · rw [g2PrimeSubgroup_card facts, hH]

/-- The prime subgroup, viewed multiplicatively, is a Sylow-`r` subgroup. -/
noncomputable def g2PrimeSubgroupSylow (facts : PublishedCurveOrderFacts) :
    Sylow scalarModulus (Multiplicative G2) := by
  letI : Finite G2 := Nat.finite_of_card_ne_zero (by
    rw [facts.g2_cardinality]
    exact mul_ne_zero (by norm_num) scalarModulus_prime.ne_zero)
  letI : Fact scalarModulus.Prime := ⟨scalarModulus_prime⟩
  apply g2PrimeSubgroup_isPGroup.toSylow
  intro hdvd
  apply scalarModulus_not_dvd_g2Cofactor
  have hcard := Subgroup.card_mul_index g2PrimeSubgroup.toSubgroup
  have hprimecard : Nat.card g2PrimeSubgroup.toSubgroup = scalarModulus :=
    g2PrimeSubgroup_card facts
  have hcard' :
      scalarModulus * g2PrimeSubgroup.toSubgroup.index =
        g2Cofactor * scalarModulus := by
    calc
      _ = Nat.card g2PrimeSubgroup.toSubgroup *
          g2PrimeSubgroup.toSubgroup.index := by rw [hprimecard]
      _ = Nat.card (Multiplicative G2) := hcard
      _ = Nat.card G2 := rfl
      _ = g2Cofactor * scalarModulus := facts.g2_cardinality
  have hindex : g2PrimeSubgroup.toSubgroup.index = g2Cofactor :=
    Nat.mul_right_cancel scalarModulus_prime.pos (by simpa [mul_comm] using hcard')
  rwa [hindex] at hdvd

/-- G2 has only one Sylow-`r` subgroup. -/
theorem g2_sylow_unique (facts : PublishedCurveOrderFacts)
    (P : Sylow scalarModulus (Multiplicative G2)) :
    (P : Subgroup (Multiplicative G2)) = g2PrimeSubgroup.toSubgroup := by
  letI : Finite G2 := Nat.finite_of_card_ne_zero (by
    rw [facts.g2_cardinality]
    exact mul_ne_zero (by norm_num) scalarModulus_prime.ne_zero)
  letI : Fact scalarModulus.Prime := ⟨scalarModulus_prime⟩
  letI : Finite (Sylow scalarModulus (Multiplicative G2)) :=
    Sylow.finite_of_finiteIndex (g2PrimeSubgroupSylow facts)
  letI : Unique (Sylow scalarModulus (Multiplicative G2)) :=
    Sylow.unique_of_normal (g2PrimeSubgroupSylow facts) inferInstance
  have hP : P = g2PrimeSubgroupSylow facts := Subsingleton.elim _ _
  change (P : Subgroup (Multiplicative G2)) =
    ((g2PrimeSubgroupSylow facts : Sylow scalarModulus (Multiplicative G2)) : Subgroup _)
  exact congrArg Sylow.toSubgroup hP

theorem g2_identity_inPrimeSubgroup : inPrimeSubgroup (0 : G2) := by
  simp [inPrimeSubgroup]

/-- Arkworks accepts the G2 identity. -/
theorem arkworksG2CheckedMembership_identity :
    arkworksG2CheckedMembership (0 : G2) := by
  simp [arkworksG2CheckedMembership]

/-- Cofactor torsion meets the prime subgroup only at the identity. -/
theorem g2_cofactor_torsion_inPrimeSubgroup_iff (p : G2)
    (horder : addOrderOf p ∣ g2Cofactor) :
    inPrimeSubgroup p ↔ p = 0 := by
  constructor
  · intro hp
    have hr : addOrderOf p ∣ scalarModulus :=
      addOrderOf_dvd_iff_nsmul_eq_zero.mpr hp
    exact AddMonoid.addOrderOf_eq_one_iff.mp
      (Nat.eq_one_of_dvd_coprimes g2Cofactor_coprime_scalarModulus horder hr)
  · rintro rfl
    exact g2_identity_inPrimeSubgroup

theorem g2_nonzero_cofactor_torsion_not_inPrimeSubgroup (p : G2)
    (hne : p ≠ 0) (horder : addOrderOf p ∣ g2Cofactor) :
    ¬ inPrimeSubgroup p := by
  rw [g2_cofactor_torsion_inPrimeSubgroup_iff p horder]
  exact hne

/-- On cofactor torsion, the pinned arkworks check accepts only identity. -/
theorem arkworksG2CheckedMembership_cofactor_torsion_iff (p : G2)
    (horder : addOrderOf p ∣ g2Cofactor) :
    arkworksG2CheckedMembership p ↔ p = 0 := by
  exact g2_cofactor_torsion_inPrimeSubgroup_iff p horder

/-- Every nonidentity G2 cofactor-torsion point fails the pinned arkworks check. -/
theorem arkworksG2CheckedMembership_rejects_nonzero_cofactor_torsion (p : G2)
    (hne : p ≠ 0) (horder : addOrderOf p ∣ g2Cofactor) :
    ¬ arkworksG2CheckedMembership p := by
  exact g2_nonzero_cofactor_torsion_not_inPrimeSubgroup p hne horder

end G2

end Ipp.Bls12377
