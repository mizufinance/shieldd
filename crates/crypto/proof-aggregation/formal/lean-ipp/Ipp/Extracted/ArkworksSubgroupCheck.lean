import Ipp.Bls12377Subgroups
import Ipp.Extracted.ArkworksScalarMulG1Loop
import Ipp.Extracted.ArkworksScalarMulG2Loop

/-! Composition proof for the executed BLS12-377 affine subgroup checks. -/

namespace Ipp.Extracted.ArkworksSubgroupCheck

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksScalarMul

noncomputable section

local instance : Fact Ipp.Bls12377.baseModulus.Prime :=
  ⟨Ipp.Bls12377.arithmeticFacts.basePrime⟩

local instance : Fact (∀ x : Ipp.Bls12377.Fq,
    x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using Ipp.Bls12377.arithmeticFacts.fq2Nonresidue x⟩

local instance : Ipp.Bls12377.g1Curve.IsElliptic :=
  Ipp.Bls12377.g1_isElliptic

local instance : Ipp.Bls12377.g2Curve.IsElliptic :=
  Ipp.Bls12377.g2_isElliptic

local instance : DecidableEq Ipp.Extracted.ArkworksG1.G1AffinePoint :=
  Classical.decEq _

local instance : DecidableEq Ipp.Extracted.ArkworksG2.G2AffinePoint :=
  Classical.decEq _

local instance : DecidableEq Ipp.Bls12377.G1 :=
  Classical.decEq _

local instance : DecidableEq Ipp.Bls12377.G2 :=
  Classical.decEq _

local instance classicalPropDecidable (p : Prop) : Decidable p :=
  Classical.propDecidable p

private abbrev frModulus :=
  ark_ip_proofs.s3_07_arkworks_fr_spike.MODULUS

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- The canonical additive equivalence from GAP-05 G1 to affine G1. -/
noncomputable def g1AffineEquiv :
    Ipp.Bls12377.G1 ≃+
      Ipp.Extracted.ArkworksG1.G1AffinePoint :=
  WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
    Ipp.Bls12377.g1Curve.toJacobian

/-- The canonical additive equivalence from GAP-06 G2 to affine G2. -/
noncomputable def g2AffineEquiv :
    Ipp.Bls12377.G2 ≃+
      Ipp.Extracted.ArkworksG2.G2AffinePoint :=
  WeierstrassCurve.Jacobian.Point.toAffineAddEquiv
    Ipp.Bls12377.g2Curve.toJacobian

/-- The projective G1 `is_zero` test reached after scalar multiplication. -/
def g1ProjectiveIsZero
    (point : Ipp.Extracted.ArkworksG1.G1ProjLimbTriple) : Bool :=
  decide (point.z.val =
    ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val)

/-- The projective G2 `is_zero` test reached after scalar multiplication. -/
def g2ProjectiveIsZero
    (point : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple) : Bool :=
  Ipp.Extracted.ArkworksG2.isZeroFq2Mont point.z

/--
The monomorphic G1 composition reached by arkworks checked membership:
ordinary affine multiplication by the Fr characteristic, then `is_zero`.
-/
def g1_subgroup_check
    (point : Ipp.Extracted.ArkworksG1.G1AffineLimbPair) : Result Bool := do
  let product ←
    ark_ip_proofs.s3_07_arkworks_fq_spike.g1_mul_affine point frModulus
  pure (g1ProjectiveIsZero product)

/--
The monomorphic G2 composition reached by arkworks checked membership:
ordinary affine multiplication by the Fr characteristic, then `is_zero`.
-/
def g2_subgroup_check
    (point : Ipp.Extracted.ArkworksG2.G2AffineLimbPair) : Result Bool := do
  let product ←
    ark_ip_proofs.s3_07_arkworks_fq_spike.g2_mul_affine point frModulus
  pure (g2ProjectiveIsZero product)

private theorem scalarToNat_frModulus :
    scalarToNat frModulus = Ipp.Bls12377.scalarModulus := by
  exact Ipp.Extracted.ArkworksFr.modulus_limbsToNat

private theorem g1ProjectiveIsZero_eq_decide_decode_none
    (point : Ipp.Extracted.ArkworksG1.G1ProjLimbTriple) :
    g1ProjectiveIsZero point =
      decide (Ipp.Extracted.ArkworksG1.decodeG1 point = none) := by
  by_cases hz : point.z.val =
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ_ZERO.val <;>
    simp [g1ProjectiveIsZero, Ipp.Extracted.ArkworksG1.decodeG1, hz]

private theorem g2ProjectiveIsZero_eq_decide_decode_none
    (point : Ipp.Extracted.ArkworksG2.G2ProjLimbTriple) :
    g2ProjectiveIsZero point =
      decide (Ipp.Extracted.ArkworksG2.decodeG2 point = none) := by
  by_cases hz : Ipp.Extracted.ArkworksG2.isZeroFq2Mont point.z <;>
    simp [g2ProjectiveIsZero, Ipp.Extracted.ArkworksG2.decodeG2, hz]

private theorem representsDecodedG1_none_iff
    {decoded : Option (Ipp.Bls12377.Fq × Ipp.Bls12377.Fq)}
    {point : Ipp.Extracted.ArkworksG1.G1AffinePoint}
    (hrep : Ipp.Extracted.ArkworksG1.RepresentsDecodedG1 decoded point) :
    decoded = none ↔ point = 0 := by
  cases decoded with
  | none => simpa [Ipp.Extracted.ArkworksG1.RepresentsDecodedG1] using hrep
  | some coordinates =>
      rcases hrep with ⟨hcurve, rfl⟩
      simp [WeierstrassCurve.Affine.Point.mk]

private theorem representsDecodedG2_none_iff
    {decoded : Option (Ipp.Bls12377.Fq2 × Ipp.Bls12377.Fq2)}
    {point : Ipp.Extracted.ArkworksG2.G2AffinePoint}
    (hrep : Ipp.Extracted.ArkworksG2.RepresentsDecodedG2 decoded point) :
    decoded = none ↔ point = 0 := by
  cases decoded with
  | none => simpa [Ipp.Extracted.ArkworksG2.RepresentsDecodedG2] using hrep
  | some coordinates =>
      rcases hrep with ⟨hcurve, rfl⟩
      simp [WeierstrassCurve.Affine.Point.mk]

theorem g1AffineEquiv_inPrimeSubgroup (point : Ipp.Bls12377.G1) :
    Ipp.Bls12377.inPrimeSubgroup (g1AffineEquiv point) ↔
      Ipp.Bls12377.arkworksG1CheckedMembership point := by
  constructor
  · intro h
    apply g1AffineEquiv.injective
    simpa [Ipp.Bls12377.inPrimeSubgroup,
      Ipp.Bls12377.arkworksG1CheckedMembership] using h
  · intro h
    have hmapped := congrArg g1AffineEquiv h
    simpa [Ipp.Bls12377.inPrimeSubgroup,
      Ipp.Bls12377.arkworksG1CheckedMembership] using hmapped

theorem g2AffineEquiv_inPrimeSubgroup (point : Ipp.Bls12377.G2) :
    Ipp.Bls12377.inPrimeSubgroup (g2AffineEquiv point) ↔
      Ipp.Bls12377.arkworksG2CheckedMembership point := by
  constructor
  · intro h
    apply g2AffineEquiv.injective
    simpa [Ipp.Bls12377.inPrimeSubgroup,
      Ipp.Bls12377.arkworksG2CheckedMembership] using h
  · intro h
    have hmapped := congrArg g2AffineEquiv h
    simpa [Ipp.Bls12377.inPrimeSubgroup,
      Ipp.Bls12377.arkworksG2CheckedMembership] using hmapped

/-- The executed G1 check returns the concrete prime-subgroup decision. -/
theorem valid_g1_subgroup_check
    (encoded : Ipp.Extracted.ArkworksG1.G1AffineLimbPair)
    (point : Ipp.Extracted.ArkworksG1.G1AffinePoint) (out : Bool)
    (hpoint : ValidG1AffineLoopBase encoded point)
    (hexec : g1_subgroup_check encoded = .ok out) :
    out = decide (Ipp.Bls12377.inPrimeSubgroup point) := by
  unfold g1_subgroup_check at hexec
  obtain ⟨product, hmul, hout⟩ := bind_eq_ok hexec
  change Result.ok (g1ProjectiveIsZero product) = Result.ok out at hout
  simp only [Result.ok.injEq] at hout
  subst out
  have hvalid := valid_g1_mul_affine encoded point frModulus product hpoint hmul
  have hzero :
      Ipp.Extracted.ArkworksG1.decodeG1 product = none ↔
        Ipp.Bls12377.inPrimeSubgroup point := by
    rw [representsDecodedG1_none_iff hvalid.represents]
    simp [Ipp.Bls12377.inPrimeSubgroup, scalarToNat_frModulus]
  rw [g1ProjectiveIsZero_eq_decide_decode_none]
  apply Bool.eq_iff_iff.mpr
  simpa only [decide_eq_true_eq] using hzero

/-- The executed G2 check returns the concrete prime-subgroup decision. -/
theorem valid_g2_subgroup_check
    (encoded : Ipp.Extracted.ArkworksG2.G2AffineLimbPair)
    (point : Ipp.Extracted.ArkworksG2.G2AffinePoint) (out : Bool)
    (hpoint : ValidG2AffineLoopBase encoded point)
    (hexec : g2_subgroup_check encoded = .ok out) :
    out = decide (Ipp.Bls12377.inPrimeSubgroup point) := by
  unfold g2_subgroup_check at hexec
  obtain ⟨product, hmul, hout⟩ := bind_eq_ok hexec
  change Result.ok (g2ProjectiveIsZero product) = Result.ok out at hout
  simp only [Result.ok.injEq] at hout
  subst out
  have hvalid := valid_g2_mul_affine encoded point frModulus product hpoint hmul
  have hzero :
      Ipp.Extracted.ArkworksG2.decodeG2 product = none ↔
        Ipp.Bls12377.inPrimeSubgroup point := by
    rw [representsDecodedG2_none_iff hvalid.represents]
    simp [Ipp.Bls12377.inPrimeSubgroup, scalarToNat_frModulus]
  rw [g2ProjectiveIsZero_eq_decide_decode_none]
  apply Bool.eq_iff_iff.mpr
  simpa only [decide_eq_true_eq] using hzero

/-- G1 conformance stated against the GAP-05 checked-membership predicate. -/
theorem valid_g1_subgroup_check_checked_membership
    (encoded : Ipp.Extracted.ArkworksG1.G1AffineLimbPair)
    (point : Ipp.Bls12377.G1) (out : Bool)
    (hpoint : ValidG1AffineLoopBase encoded (g1AffineEquiv point))
    (hexec : g1_subgroup_check encoded = .ok out) :
    out = decide (Ipp.Bls12377.arkworksG1CheckedMembership point) := by
  simpa only [g1AffineEquiv_inPrimeSubgroup] using
    valid_g1_subgroup_check encoded (g1AffineEquiv point) out hpoint hexec

/-- G2 conformance stated against the GAP-06 checked-membership predicate. -/
theorem valid_g2_subgroup_check_checked_membership
    (encoded : Ipp.Extracted.ArkworksG2.G2AffineLimbPair)
    (point : Ipp.Bls12377.G2) (out : Bool)
    (hpoint : ValidG2AffineLoopBase encoded (g2AffineEquiv point))
    (hexec : g2_subgroup_check encoded = .ok out) :
    out = decide (Ipp.Bls12377.arkworksG2CheckedMembership point) := by
  simpa only [g2AffineEquiv_inPrimeSubgroup] using
    valid_g2_subgroup_check encoded (g2AffineEquiv point) out hpoint hexec

#print axioms valid_g1_subgroup_check
#print axioms valid_g2_subgroup_check
#print axioms valid_g1_subgroup_check_checked_membership
#print axioms valid_g2_subgroup_check_checked_membership

end

end Ipp.Extracted.ArkworksSubgroupCheck
