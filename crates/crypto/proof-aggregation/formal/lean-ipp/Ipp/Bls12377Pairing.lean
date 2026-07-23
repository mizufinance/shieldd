import Ipp.Bls12377Gt
import Ipp.Bls12377PairingModel
import Ipp.Bls12377Subgroups

/-!
The BLS12-377 subgroup pairing boundary. Successful final exponentiation lands
in GT by proof; only bilinearity and nondegeneracy remain cited mathematics.
-/

namespace Ipp.Bls12377

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : Fintype Fq2 :=
  Fintype.ofEquiv (Fq × Fq) (QuadraticAlgebra.equivProd (-5 : Fq) 0).symm

/-- S3-40's exact factor-three final exponent, stated without its generated graph. -/
def executedPairingExponent : Nat := 3 * finalExponent

/-- The executed exponent is three times the full multiplicative-order quotient. -/
theorem executedPairingExponent_mul_scalarModulus :
    executedPairingExponent * scalarModulus =
      3 * (baseModulus ^ 12 - 1) := by
  rw [executedPairingExponent, finalExponent, Nat.mul_assoc,
    Nat.div_mul_cancel scalarModulus_dvd_fq12_order]

/-- Every nonzero input raised by the executed final exponent is `r`-torsion. -/
theorem executedFinalExponent_mem_gtGroup (x : Fq12Canonical) (hx : x ≠ 0) :
    Units.mk0 (x ^ executedPairingExponent)
      (pow_ne_zero executedPairingExponent hx) ∈ GtGroup := by
  apply (mem_gtGroup _).2
  apply Units.ext
  change (x ^ executedPairingExponent) ^ scalarModulus = 1
  rw [← pow_mul, executedPairingExponent_mul_scalarModulus]
  have hfermat : x ^ (baseModulus ^ 12 - 1) = 1 := by
    rw [← fq12_card]
    exact FiniteField.pow_card_sub_one_eq_one x hx
  rw [Nat.mul_comm 3, pow_mul, hfermat, one_pow]

/-- A successful S3-40 final-exponent value, packaged in the concrete GT group. -/
noncomputable def successfulFinalExponentGt (x : Fq12Canonical) (hx : x ≠ 0) :
    GtGroup :=
  ⟨Units.mk0 (x ^ executedPairingExponent)
      (pow_ne_zero executedPairingExponent hx),
    executedFinalExponent_mem_gtGroup x hx⟩

@[simp] theorem gtValue_successfulFinalExponentGt
    (x : Fq12Canonical) (hx : x ≠ 0) :
    gtValue (successfulFinalExponentGt x hx) =
      x ^ executedPairingExponent := rfl

/-- The single-pair Miller value before S3-40's reached final exponent. -/
noncomputable def subgroupMillerValue
    (p : g1PrimeSubgroup) (q : g2PrimeSubgroup) : Fq12Canonical :=
  fq12Coefficients <| millerLoop
    (affineRepOfPoint p.1.toAffineLift)
    (affineRepOfPoint q.1.toAffineLift)

/--
The total prime-subgroup pairing used by the abstract algebra. The zero branch
is the executable final-exponentiation failure branch; successful values use
the proved GT packaging above.
-/
noncomputable def executablePairing
    (p : g1PrimeSubgroup) (q : g2PrimeSubgroup) : GtGroup :=
  if hx : subgroupMillerValue p q = 0 then 1
  else successfulFinalExponentGt (subgroupMillerValue p q) hx

/-- On every successful input, the GT adapter has exactly S3-40's final-exponent value. -/
theorem gtValue_executablePairing_of_nonzero
    (p : g1PrimeSubgroup) (q : g2PrimeSubgroup)
    (h : subgroupMillerValue p q ≠ 0) :
    gtValue (executablePairing p q) =
      subgroupMillerValue p q ^ executedPairingExponent := by
  simp [executablePairing, h]

/-- The cited additive laws, restricted to the prime-order input subgroups. -/
def PublishedPairingBilinear : Prop :=
  (∀ p₁ p₂ q, executablePairing (p₁ + p₂) q =
      executablePairing p₁ q * executablePairing p₂ q) ∧
  (∀ p q₁ q₂, executablePairing p (q₁ + q₂) =
      executablePairing p q₁ * executablePairing p q₂)

/-- Genuine left and right nondegeneracy, stated separately from S2's needs. -/
def PublishedPairingNondegenerate : Prop :=
  (∀ p : g1PrimeSubgroup, p ≠ 0 →
    ∃ q : g2PrimeSubgroup, executablePairing p q ≠ 1) ∧
  (∀ q : g2PrimeSubgroup, q ≠ 0 →
    ∃ p : g1PrimeSubgroup, executablePairing p q ≠ 1)

/--
Cited optimal-ate mathematics on the two prime-order subgroups. Mathlib lacks
the divisor and pairing theory needed to derive these laws. S2 consumes only
`PublishedPairingBilinear`, never the nondegeneracy conjunct.
-/
def PublishedPairingBilinearNondegenerate : Prop :=
  PublishedPairingBilinear ∧ PublishedPairingNondegenerate

#print axioms executedPairingExponent_mul_scalarModulus
#print axioms executedFinalExponent_mem_gtGroup
#print axioms gtValue_successfulFinalExponentGt
#print axioms gtValue_executablePairing_of_nonzero
#print axioms PublishedPairingBilinear
#print axioms PublishedPairingNondegenerate
#print axioms PublishedPairingBilinearNondegenerate

end Ipp.Bls12377
