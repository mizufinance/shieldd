import Ipp.Bls12377Fq12
import Mathlib.GroupTheory.SpecificGroups.Cyclic
import Mathlib.RingTheory.IntegralDomain

/-!
The order-`r` target group inside the canonical BLS12-377 Fq12 field.
-/

namespace Ipp.Bls12377

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

/-- The exact cofactor of `r` in the multiplicative order `q^12 - 1`. -/
def gtCofactor : Nat :=
  10623521018019860488254031663707568428798032905123811199571213965079129114663661236359849629341526275899063345613340067081670062620727617884137487754739150147491204559514205186492385590272208934467461444944652711005169371168250068790820776124772095630237102189827733019989835063334551453893534663070786533932633573962932272563471643288531959637300817070265537429506484880990981069041269405383502889677357082012807298529931118124428569059822346289745077401570134157444973271520981774047146918354408632568723153146248333028827919406785654402107153546667815607201488590832478225403444136409349877481268154817904541340614173261949772403060924324366861723245182619859389254985008236007465814273361497134138868945580557938161335670207544906643574043606819537336472235809927599628123275314288006170804044560238676463931639339711913111080974582593228138704154320599775683095604041309000197025419968125718018311805959315220036948621879242495199408833915486421612374480018459896018440926235261824654956932384859260479372776022979736734221629097297890154692194441528462770218811795624471108972377573690833913231260547835550851256817740247389770320334698430697237343583761719223414894063451411431859122738488311580005412765070251810159991897110936324943232526870280724876946523218213525646968094720

/-- The exact cofactor of `r` in the cyclotomic order `q^4 - q^2 + 1`. -/
def gtCyclotomicCofactor : Nat :=
  530120800708274287517286541802349452660745684053757914303768306618941972249640599293219931039210515729594290095080864629839255786034925825766501871381405070298586299360456640686306783945821986704847802905075226768628585629948009388297573781114348798579024146628152873080566041108659848567284670260514857010142479602040029387286382704121649569349339557572505841407388976720904193

/-- Exact factorization of the Fq12 multiplicative order by `r`. -/
theorem fq12_order_factorization :
    baseModulus ^ 12 - 1 = scalarModulus * gtCofactor := by
  norm_num [baseModulus, scalarModulus, gtCofactor]

/-- The scalar modulus divides the Fq12 multiplicative order. -/
theorem scalarModulus_dvd_fq12_order :
    scalarModulus ∣ baseModulus ^ 12 - 1 :=
  ⟨gtCofactor, fq12_order_factorization⟩

/-- Exact factorization of the cyclotomic order by `r`. -/
theorem cyclotomic_order_factorization :
    baseModulus ^ 4 - baseModulus ^ 2 + 1 =
      scalarModulus * gtCyclotomicCofactor := by
  norm_num [baseModulus, scalarModulus, gtCyclotomicCofactor]

/-- GT membership implies the order condition required by cyclotomic operations. -/
theorem scalarModulus_dvd_cyclotomic_order :
    scalarModulus ∣ baseModulus ^ 4 - baseModulus ^ 2 + 1 :=
  ⟨gtCyclotomicCofactor, cyclotomic_order_factorization⟩

/-- The cyclotomic order divides the full Fq12 multiplicative order. -/
theorem cyclotomic_order_dvd_fq12_order :
    baseModulus ^ 4 - baseModulus ^ 2 + 1 ∣ baseModulus ^ 12 - 1 := by
  refine ⟨baseModulus ^ 8 + baseModulus ^ 6 - baseModulus ^ 2 - 1, ?_⟩
  norm_num [baseModulus]

/-- The order-`r` factor occurs with multiplicity one in `q^12 - 1`. -/
theorem scalarModulus_coprime_gtCofactor :
    Nat.Coprime scalarModulus gtCofactor := by
  norm_num [scalarModulus, gtCofactor]

/-- The gcd used by the cyclic-group torsion cardinality calculation. -/
theorem scalarModulus_gcd_fq12_order :
    Nat.gcd scalarModulus (baseModulus ^ 12 - 1) = scalarModulus :=
  Nat.gcd_eq_left_iff_dvd.mpr scalarModulus_dvd_fq12_order

/-- The multiplicative units satisfying `x^r = 1`. -/
noncomputable def GtGroup : Subgroup Fq12Canonicalˣ :=
  (powMonoidHom scalarModulus : Fq12Canonicalˣ →* Fq12Canonicalˣ).ker

@[simp] theorem mem_gtGroup (x : Fq12Canonicalˣ) :
    x ∈ GtGroup ↔ x ^ scalarModulus = 1 := by
  rfl

/-- Every GT element satisfies the hypothesis required by cyclotomic operations. -/
theorem gt_pow_cyclotomic_order_eq_one (x : GtGroup) :
    x.1 ^ (baseModulus ^ 4 - baseModulus ^ 2 + 1) = 1 := by
  rw [cyclotomic_order_factorization, pow_mul, (mem_gtGroup x.1).mp x.2, one_pow]

/-- The full Fq12 unit group has order `q^12 - 1`. -/
theorem fq12_units_card :
    Fintype.card Fq12Canonicalˣ = baseModulus ^ 12 - 1 := by
  rw [Fintype.card_units, fq12_card]

/-- The intended BLS12-377 target group has exactly `r` elements. -/
theorem gtGroup_card : Nat.card GtGroup = scalarModulus := by
  change Nat.card
      ((powMonoidHom scalarModulus : Fq12Canonicalˣ →* Fq12Canonicalˣ).ker) =
    scalarModulus
  rw [IsCyclic.card_powMonoidHom_ker, Nat.card_eq_fintype_card, fq12_units_card]
  exact Nat.gcd_eq_right_iff_dvd.mpr scalarModulus_dvd_fq12_order

/-! ### Multiplicative identity and arkworks additive notation -/

/-- The underlying canonical Fq12 value of a GT element. -/
def gtValue (x : GtGroup) : Fq12Canonical := x.1.1

@[simp] theorem one_mem_gtGroup : (1 : Fq12Canonicalˣ) ∈ GtGroup := by
  simp

@[simp] theorem gtValue_one : gtValue (1 : GtGroup) = 1 := rfl

/-- GT values are units, so the additive field zero is never a GT value. -/
theorem gtValue_ne_zero (x : GtGroup) : gtValue x ≠ 0 :=
  Units.ne_zero x.1

/-- The GT identity is field `1`, explicitly distinct from field `0`. -/
theorem fq12_zero_ne_gt_identity : (0 : Fq12Canonical) ≠ gtValue (1 : GtGroup) := by
  simp

/-- Arkworks writes its multiplicative `PairingOutput` group additively. -/
abbrev ArkPairingOutput := Additive GtGroup

/-- Arkworks `PairingOutput` zero corresponds to multiplicative GT one. -/
@[simp] theorem arkPairingOutput_zero :
    Additive.toMul (0 : ArkPairingOutput) = (1 : GtGroup) := rfl

/-- Arkworks `PairingOutput` addition corresponds to GT multiplication. -/
@[simp] theorem arkPairingOutput_add (x y : ArkPairingOutput) :
    Additive.toMul (x + y) = Additive.toMul x * Additive.toMul y := rfl

/-- Arkworks natural-number scalar multiplication corresponds to GT exponentiation. -/
@[simp] theorem arkPairingOutput_nsmul (n : Nat) (x : ArkPairingOutput) :
    Additive.toMul (n • x) = Additive.toMul x ^ n := by
  induction n with
  | zero => rfl
  | succ n ih => simp [succ_nsmul, pow_succ, ih]

#print axioms fq12_order_factorization
#print axioms scalarModulus_dvd_fq12_order
#print axioms cyclotomic_order_factorization
#print axioms scalarModulus_dvd_cyclotomic_order
#print axioms cyclotomic_order_dvd_fq12_order
#print axioms scalarModulus_coprime_gtCofactor
#print axioms scalarModulus_gcd_fq12_order
#print axioms mem_gtGroup
#print axioms gt_pow_cyclotomic_order_eq_one
#print axioms fq12_units_card
#print axioms gtGroup_card
#print axioms one_mem_gtGroup
#print axioms gtValue_ne_zero
#print axioms fq12_zero_ne_gt_identity
#print axioms arkPairingOutput_zero
#print axioms arkPairingOutput_add
#print axioms arkPairingOutput_nsmul

end Ipp.Bls12377
