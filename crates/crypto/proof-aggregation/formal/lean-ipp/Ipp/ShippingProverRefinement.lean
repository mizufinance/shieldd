import Ipp.Extracted.ShippingProver

/-!
Narrow algebraic lemmas for closing the shipping-prover contract.

The KZG results derive both opening equations from the extracted coefficient,
synthetic-division, and full-SRS MSM postconditions.  The only setup premise is
the exact power sequence, and the only verifier premise is the concrete
pairing equation's completeness direction for the production predicate.

This module intentionally does not turn an assumed whole-loop result into a
`SuccessfulLoopTrace`: those propositions are equivalent and such a conversion
would not prove the missing per-round shipping execution.  The trace must be
constructed from the extracted round transitions and production effect results.
-/

namespace Ipp.Extracted.ShippingProverRefinement

open Polynomial
open scoped BigOperators

noncomputable section

variable {F G1 G2 GT : Type}
  [Field F]
  [AddCommGroup G1] [Module F G1]
  [AddCommGroup G2] [Module F G2]
  [AddCommGroup GT] [Module F GT]

/-! ## Exact full proving-SRS semantics -/

/-- A full proving SRS is the consecutive power sequence used by the
production opening MSM.  This is the precise trusted-setup postcondition
needed for prover completeness; it contains no acceptance conclusion. -/
structure FullPowerSrs
    {μ : Nat} {G : Type}
    [AddCommGroup G] [Module F G]
    (logicalSrs : Fin (2 ^ μ) → G)
    (algorithm :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) logicalSrs)
    (base : G) where
  trapdoor : F
  fullSrsPower : ∀ i,
    algorithm.fullSrs i = trapdoor ^ (i : Nat) • base

/-- MSM against a consecutive power SRS is polynomial evaluation in the
setup trapdoor followed by one scalar multiplication of the base. -/
theorem msm_fullPowerSrs
    {n : Nat} {G : Type}
    [AddCommGroup G] [Module F G]
    (coefficients : Fin n → F)
    (srs : Fin n → G) (base : G) (trapdoor : F)
    (power : ∀ i, srs i = trapdoor ^ (i : Nat) • base) :
    Ipp.msm coefficients srs =
      (Ipp.Extracted.ShippingProver.coefficientPolynomial coefficients).eval
        trapdoor • base := by
  rw [Ipp.Extracted.ShippingProver.coefficientPolynomial_eval]
  simp only [Ipp.msm, power, smul_smul, Finset.sum_smul]

/-- The logical GIPA key is the even-power projection of the full proving
SRS, so its MSM evaluates the extracted even-degree polynomial. -/
theorem msm_logicalSrs
    {μ : Nat} {G : Type}
    [AddCommGroup G] [Module F G]
    (logicalSrs : Fin (2 ^ μ) → G)
    (algorithm :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) logicalSrs)
    (base : G)
    (setup : FullPowerSrs logicalSrs algorithm base)
    (coefficients : Fin (2 ^ μ) → F) :
    Ipp.msm coefficients logicalSrs =
      (Ipp.Extracted.ShippingProver.evenCoefficientPolynomial coefficients).eval
        setup.trapdoor • base := by
  rw [Ipp.Extracted.ShippingProver.evenCoefficientPolynomial_eval,
    Ipp.Extracted.ShippingProver.coefficientPolynomial_eval]
  simp only [Ipp.msm]
  apply Finset.sum_congr rfl
  intro i _
  rw [← algorithm.fullSrsEven i, setup.fullSrsPower]
  simp only [Ipp.Extracted.ShippingProver.evenIndex_val, smul_smul, pow_mul]

/-- The concrete full-SRS opening returned by the shipping prover satisfies
the exact KZG key equation.  Polynomial construction, division, and MSM
execution are all discharged by existing extracted theorems; no KZG
acceptance premise is used. -/
theorem executedOpening_keyEquation
    {μ : Nat} {G : Type}
    [AddCommGroup G] [Module F G]
    (logicalSrs : Fin (2 ^ μ) → G)
    (algorithm :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) logicalSrs)
    (base : G)
    (setup : FullPowerSrs logicalSrs algorithm base)
    (z : F) (coefficients : Fin (2 ^ μ) → F) :
    Ipp.msm coefficients logicalSrs -
        (Ipp.Extracted.ShippingProver.evenCoefficientPolynomial
          coefficients).eval z • base =
      (setup.trapdoor - z) • algorithm.opening z coefficients := by
  have hquotient := congrArg
    (fun polynomial : F[X] => polynomial.eval setup.trapdoor)
    (algorithm.quotientExact z coefficients)
  simp only [eval_mul, eval_sub, eval_X, eval_C] at hquotient
  rw [algorithm.coefficientsExact coefficients] at hquotient
  rw [msm_logicalSrs logicalSrs algorithm base setup coefficients,
    algorithm.openingMsm,
    msm_fullPowerSrs (algorithm.quotient z coefficients)
      algorithm.fullSrs base setup.trapdoor setup.fullSrsPower,
    ← sub_smul, smul_smul]
  exact congrArg (fun scalar : F => scalar • base) hquotient.symm

/-! ## Concrete verifier equations -/

/-- Ordered G2/V-lane verifier equation used by the extracted Arkworks
adapter. -/
def VEquation
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (g gBeta : G1) (h : G2)
    (z evaluation : F) (key opening : G2) : Prop :=
  e g (key - evaluation • h) -
    e (gBeta - z • g) opening = 0

/-- Ordered G1/W-lane verifier equation used by the extracted Arkworks
adapter. -/
def WEquation
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (g : G1) (h hAlpha : G2)
    (z evaluation : F) (key opening : G1) : Prop :=
  e (key - evaluation • g) h -
    e opening (hAlpha - z • h) = 0

/-- Exact relation between the V-lane trapdoor and the verifier's shifted G1
base. -/
structure VSetup
    {μ : Nat}
    (logicalSrs : Fin (2 ^ μ) → G2)
    (algorithm :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) logicalSrs)
    (g gBeta : G1) (h : G2)
    extends FullPowerSrs logicalSrs algorithm h where
  gBetaExact : gBeta = trapdoor • g

/-- Exact relation between the W-lane trapdoor and the verifier's shifted G2
base. -/
structure WSetup
    {μ : Nat}
    (logicalSrs : Fin (2 ^ μ) → G1)
    (algorithm :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) logicalSrs)
    (g : G1) (h hAlpha : G2)
    extends FullPowerSrs logicalSrs algorithm g where
  hAlphaExact : hAlpha = trapdoor • h

/-- Complete setup postcondition for the two production opening lanes.  The
V and W trapdoors are intentionally independent because the shipping SRS
uses distinct structured keys. -/
structure WellFormedProvingSrs
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (v :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) statement.srsV)
    (w :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) statement.srsW)
    (g gBeta : G1) (h hAlpha : G2) where
  vLane : VSetup statement.srsV v g gBeta h
  wLane : WSetup statement.srsW w g h hAlpha

/-- A well-formed V proving SRS makes every opening produced by the extracted
algorithm satisfy the concrete verifier equation. -/
theorem executedOpening_vEquation
    {μ : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (logicalSrs : Fin (2 ^ μ) → G2)
    (algorithm :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) logicalSrs)
    (g gBeta : G1) (h : G2)
    (setup : VSetup logicalSrs algorithm g gBeta h)
    (z : F) (coefficients : Fin (2 ^ μ) → F) :
    VEquation e g gBeta h z
      ((Ipp.Extracted.ShippingProver.evenCoefficientPolynomial
        coefficients).eval z)
      (Ipp.msm coefficients logicalSrs)
      (algorithm.opening z coefficients) := by
  have hkey := executedOpening_keyEquation logicalSrs algorithm h
    setup.toFullPowerSrs z coefficients
  rw [VEquation, hkey, setup.gBetaExact]
  simp only [← sub_smul, map_smul, LinearMap.smul_apply, sub_self]

/-- A well-formed W proving SRS makes every opening produced by the extracted
algorithm satisfy the concrete verifier equation. -/
theorem executedOpening_wEquation
    {μ : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (logicalSrs : Fin (2 ^ μ) → G1)
    (algorithm :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) logicalSrs)
    (g : G1) (h hAlpha : G2)
    (setup : WSetup logicalSrs algorithm g h hAlpha)
    (z : F) (coefficients : Fin (2 ^ μ) → F) :
    WEquation e g h hAlpha z
      ((Ipp.Extracted.ShippingProver.evenCoefficientPolynomial
        coefficients).eval z)
      (Ipp.msm coefficients logicalSrs)
      (algorithm.opening z coefficients) := by
  have hkey := executedOpening_keyEquation logicalSrs algorithm g
    setup.toFullPowerSrs z coefficients
  rw [WEquation, hkey, setup.hAlphaExact]
  simp only [← sub_smul, map_smul, LinearMap.smul_apply, sub_self]

/-- Exact one-way semantics needed from the extracted V verifier.  It does
not assert that any produced opening accepts; that follows from the setup and
polynomial theorems above. -/
def VEquationAccepts
    {μ : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (g gBeta : G1) (h : G2)
    (accept : F → (Fin (2 ^ μ) → F) → G2 → G2 → Prop) : Prop :=
  ∀ z coefficients key opening,
    VEquation e g gBeta h z
        ((Ipp.Extracted.ShippingProver.evenCoefficientPolynomial
          coefficients).eval z)
        key opening →
      accept z coefficients key opening

/-- Exact one-way semantics needed from the extracted W verifier. -/
def WEquationAccepts
    {μ : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (g : G1) (h hAlpha : G2)
    (accept : F → (Fin (2 ^ μ) → F) → G1 → G1 → Prop) : Prop :=
  ∀ z coefficients key opening,
    WEquation e g h hAlpha z
        ((Ipp.Extracted.ShippingProver.evenCoefficientPolynomial
          coefficients).eval z)
        key opening →
      accept z coefficients key opening

/-- Derive the former broad V-lane acceptance premise from a well-formed
power SRS and the exact verifier-equation interface. -/
theorem executedOpeningAcceptance_of_vSetup
    {μ : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (logicalSrs : Fin (2 ^ μ) → G2)
    (accept : F → (Fin (2 ^ μ) → F) → G2 → G2 → Prop)
    (algorithm :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) logicalSrs)
    (g gBeta : G1) (h : G2)
    (setup : VSetup logicalSrs algorithm g gBeta h)
    (verifier : VEquationAccepts e g gBeta h accept) :
    Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAcceptance
      (F := F) logicalSrs accept algorithm := by
  intro z coefficients
  exact verifier z coefficients
    (Ipp.msm coefficients logicalSrs)
    (algorithm.opening z coefficients)
    (executedOpening_vEquation e logicalSrs algorithm
      g gBeta h setup z coefficients)

/-- Derive the former broad W-lane acceptance premise from a well-formed
power SRS and the exact verifier-equation interface. -/
theorem executedOpeningAcceptance_of_wSetup
    {μ : Nat}
    (e : G1 →ₗ[F] G2 →ₗ[F] GT)
    (logicalSrs : Fin (2 ^ μ) → G1)
    (accept : F → (Fin (2 ^ μ) → F) → G1 → G1 → Prop)
    (algorithm :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) logicalSrs)
    (g : G1) (h hAlpha : G2)
    (setup : WSetup logicalSrs algorithm g h hAlpha)
    (verifier : WEquationAccepts e g h hAlpha accept) :
    Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAcceptance
      (F := F) logicalSrs accept algorithm := by
  intro z coefficients
  exact verifier z coefficients
    (Ipp.msm coefficients logicalSrs)
    (algorithm.opening z coefficients)
    (executedOpening_wEquation e logicalSrs algorithm
      g h hAlpha setup z coefficients)

/-- Construct both shipping KZG lanes without assuming their acceptance.
The residual inputs are the authenticated power-SRS relations and exact
production-verifier equation semantics. -/
def kzgBoundary_of_wellFormedSrs_and_verifierEquations
    {μ : Nat}
    (statement : Ipp.FsStatement μ F G1 G2 GT)
    (v :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) statement.srsV)
    (w :
      Ipp.Extracted.ShippingProver.ExecutedKzgOpeningAlgorithm
        (F := F) statement.srsW)
    (g gBeta : G1) (h hAlpha : G2)
    (setup : WellFormedProvingSrs statement v w g gBeta h hAlpha)
    (vVerifier :
      VEquationAccepts statement.e g gBeta h statement.acceptV)
    (wVerifier :
      WEquationAccepts statement.e g h hAlpha statement.acceptW) :
    Ipp.Extracted.ShippingProver.KzgBoundary statement where
  v := v
  w := w
  vAccepts := executedOpeningAcceptance_of_vSetup
    statement.e statement.srsV statement.acceptV v
    g gBeta h setup.vLane vVerifier
  wAccepts := executedOpeningAcceptance_of_wSetup
    statement.e statement.srsW statement.acceptW w
    g h hAlpha setup.wLane wVerifier

#print axioms executedOpening_keyEquation
#print axioms executedOpeningAcceptance_of_vSetup
#print axioms executedOpeningAcceptance_of_wSetup
#print axioms kzgBoundary_of_wellFormedSrs_and_verifierEquations

end

end Ipp.Extracted.ShippingProverRefinement
