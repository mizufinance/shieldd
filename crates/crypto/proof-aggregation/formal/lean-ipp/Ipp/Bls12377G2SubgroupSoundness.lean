import Ipp.Bls12377G2Endomorphism
import Ipp.EigenvalueSubgroupCriterion

/-!
Soundness of the concrete BLS12-377 G2 fast subgroup relation. Completeness
is supplied operationally by the scalar-check fallback, not assumed here.
-/

namespace Ipp.Bls12377G2SubgroupSoundness

set_option maxRecDepth 4096
set_option maxHeartbeats 400000

open Ipp.Bls12377
open Ipp.Bls12377G2Endomorphism

local instance : Fact baseModulus.Prime :=
  ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

/-- Transport the concrete affine Frobenius map to Jacobian G2. -/
noncomputable def g2Psi : G2 →+ G2 :=
  let equiv := WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
    g2Curve.toJacobian
  { toFun := fun point => equiv.symm (g2PsiAffine (equiv point))
    map_zero' := by simp
    map_add' := by simp }

@[simp]
theorem g2Psi_toAffine (point : G2) :
    (WeierstrassCurve.Jacobian.Point.toAffineAddEquiv g2Curve.toJacobian)
        (g2Psi point) =
      g2PsiAffine
        ((WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
          g2Curve.toJacobian) point) := by
  let equiv := WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
    g2Curve.toJacobian
  change equiv (equiv.symm (g2PsiAffine (equiv point))) = _
  exact equiv.apply_symm_apply _

/-- The transported Jacobian Frobenius map has sixth power `-1`. -/
theorem g2Psi_six (point : G2) :
    g2Psi (g2Psi (g2Psi (g2Psi (g2Psi (g2Psi point))))) = -point := by
  let equiv := WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
    g2Curve.toJacobian
  apply equiv.injective
  rw [g2Psi_toAffine, g2Psi_toAffine, g2Psi_toAffine,
    g2Psi_toAffine, g2Psi_toAffine, g2Psi_toAffine]
  simpa using g2PsiAffine_six (equiv point)

private theorem fast_iterate {A : Type} [AddMonoid A]
    (endomorphism : A →+ A) (point : A) (eigenvalue rounds : Nat)
    (hfast : endomorphism point = eigenvalue • point) :
    (endomorphism^[rounds]) point = eigenvalue ^ rounds • point := by
  induction rounds with
  | zero => simp
  | succ rounds ih =>
      rw [Function.iterate_succ_apply', ih, map_nsmul, hfast, pow_succ]
      rw [← mul_nsmul, Nat.mul_comm]

/-- Scalar annihilator forced by the G2 fast relation. -/
def g2FastAnnihilator : Nat := ateLoopParameter ^ 6 + 1

/-- The G2 fast relation forces the order to divide `u^6 + 1`. -/
theorem g2_fast_annihilates (point : G2)
    (hfast : g2Psi point = ateLoopParameter • point) :
    g2FastAnnihilator • point = 0 := by
  have hiterate := fast_iterate g2Psi point ateLoopParameter 6 hfast
  have hsix : (g2Psi^[6]) point = -point := by
    simpa [Function.iterate_succ_apply] using g2Psi_six point
  have heigen : ateLoopParameter ^ 6 • point = -point := by
    rw [← hiterate, hsix]
  rw [g2FastAnnihilator, add_nsmul, one_nsmul]
  calc
    ateLoopParameter ^ 6 • point + point = -point + point :=
      congrArg (· + point) heigen
    _ = 0 := neg_add_cancel point

private theorem g2_fast_coprime :
    Nat.Coprime g2FastAnnihilator g2Cofactor := by
  norm_num [g2FastAnnihilator, ateLoopParameter, g2Cofactor, Nat.Coprime]

/-- A point passing the concrete G2 fast relation is in the prime subgroup. -/
theorem g2_fast_sound (facts : PublishedCurveOrderFacts) (point : G2)
    (hfast : g2Psi point = ateLoopParameter • point) :
    arkworksG2CheckedMembership point := by
  letI : Finite G2 := Nat.finite_of_card_ne_zero (by
    rw [facts.g2_cardinality]
    exact mul_ne_zero (by norm_num) scalarModulus_prime.ne_zero)
  exact Ipp.EigenvalueSubgroupCriterion.nsmul_eq_zero_implies_prime_nsmul_eq_zero point
      facts.g2_cardinality g2_fast_coprime
      (g2_fast_annihilates point hfast)

#print axioms g2Psi
#print axioms g2Psi_six
#print axioms g2_fast_annihilates
#print axioms g2_fast_sound

end Ipp.Bls12377G2SubgroupSoundness
