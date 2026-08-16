import Mathlib.GroupTheory.OrderOfElement

/-!
Finite-group arithmetic used by endomorphism subgroup tests. If a point is
killed by a scalar coprime to the ambient cofactor, its order divides the
distinguished prime factor.
-/

namespace Ipp.EigenvalueSubgroupCriterion

/-- The gcd of two annihilating scalars also annihilates the point. -/
theorem gcd_nsmul_eq_zero {G : Type*} [AddGroup G]
    (a b : Nat) (p : G) (ha : a • p = 0) (hb : b • p = 0) :
    Nat.gcd a b • p = 0 := by
  apply addOrderOf_dvd_iff_nsmul_eq_zero.mp
  exact Nat.dvd_gcd
    (addOrderOf_dvd_iff_nsmul_eq_zero.mpr ha)
    (addOrderOf_dvd_iff_nsmul_eq_zero.mpr hb)

/-- A scalar coprime to the cofactor cannot kill any cofactor torsion. -/
theorem nsmul_eq_zero_implies_prime_nsmul_eq_zero
    {G : Type*} [AddGroup G] [Finite G]
    {cofactor prime scalar : Nat} (p : G)
    (hcard : Nat.card G = cofactor * prime)
    (hcoprime : Nat.Coprime scalar cofactor)
    (hscalar : scalar • p = 0) :
    prime • p = 0 := by
  have horderScalar : addOrderOf p ∣ scalar :=
    addOrderOf_dvd_iff_nsmul_eq_zero.mpr hscalar
  have horderCard : addOrderOf p ∣ Nat.card G :=
    addOrderOf_dvd_natCard p
  have horderCoprime : Nat.Coprime (addOrderOf p) cofactor :=
    Nat.Coprime.of_dvd_left horderScalar hcoprime
  have horderPrime : addOrderOf p ∣ prime := by
    apply horderCoprime.dvd_of_dvd_mul_left
    rwa [hcard] at horderCard
  exact addOrderOf_dvd_iff_nsmul_eq_zero.mp horderPrime

/-- The reusable endomorphism criterion, with its two curve-specific algebraic
obligations exposed separately from finite-group/cofactor arithmetic. -/
theorem fast_relation_iff_prime_nsmul_eq_zero
    {G : Type*} [AddGroup G] [Finite G]
    {cofactor prime scalar eigenvalue : Nat}
    (endomorphism : G →+ G) (p : G)
    (hcard : Nat.card G = cofactor * prime)
    (hcoprime : Nat.Coprime scalar cofactor)
    (hfastAnnihilates :
      endomorphism p = eigenvalue • p → scalar • p = 0)
    (hsubgroupEigenvalue :
      prime • p = 0 → endomorphism p = eigenvalue • p) :
    endomorphism p = eigenvalue • p ↔ prime • p = 0 := by
  constructor
  · intro hfast
    exact nsmul_eq_zero_implies_prime_nsmul_eq_zero p hcard hcoprime
      (hfastAnnihilates hfast)
  · exact hsubgroupEigenvalue

#print axioms gcd_nsmul_eq_zero
#print axioms nsmul_eq_zero_implies_prime_nsmul_eq_zero
#print axioms fast_relation_iff_prime_nsmul_eq_zero

end Ipp.EigenvalueSubgroupCriterion
