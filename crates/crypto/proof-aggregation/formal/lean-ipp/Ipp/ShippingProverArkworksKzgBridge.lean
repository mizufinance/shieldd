import Ipp.ArkworksTippKzgBoundary
import Ipp.ShippingProverRefinement

/-!
Reuses the verifier's universal Arkworks KZG statement equations for shipping
prover completeness.  The prover-specific `VEquationAccepts` and
`WEquationAccepts` interfaces are the same equations after normalizing the
even-coefficient polynomial evaluation.
-/

namespace Ipp.Extracted.ShippingProverArkworksKzgBridge

open Ipp.Bls12377
open Ipp.Extracted.AggregateVerifier
open Ipp.Extracted.ShippingProver
open Ipp.Extracted.ShippingProverRefinement

noncomputable section

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

/-- The verifier's universal V-lane equation supplies the exact one-way
predicate semantics required by shipping prover completeness. -/
theorem vEquationAccepts_of_arkworksStatementEquations
    {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (equations : ArkworksTippKzgStatementEquations
      hbilinear baseStmt g gBeta h hAlpha) :
    VEquationAccepts
      (statementWithExecutablePairing hbilinear baseStmt).e
      g gBeta h
      (statementWithExecutablePairing hbilinear baseStmt).acceptV := by
  intro z coefficients key opening hequation
  apply (equations.acceptV z coefficients key opening).2
  simpa [VEquation, evenCoefficientPolynomial_eval,
    coefficientPolynomial_eval] using hequation

/-- The verifier's universal W-lane equation supplies the exact one-way
predicate semantics required by shipping prover completeness. -/
theorem wEquationAccepts_of_arkworksStatementEquations
    {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (equations : ArkworksTippKzgStatementEquations
      hbilinear baseStmt g gBeta h hAlpha) :
    WEquationAccepts
      (statementWithExecutablePairing hbilinear baseStmt).e
      g h hAlpha
      (statementWithExecutablePairing hbilinear baseStmt).acceptW := by
  intro z coefficients key opening hequation
  apply (equations.acceptW z coefficients key opening).2
  simpa [WEquation, evenCoefficientPolynomial_eval,
    coefficientPolynomial_eval] using hequation

/-- Construct both prover KZG lanes from the authenticated proving SRS and
the verifier's already-shared universal statement-equation boundary. -/
def kzgBoundary_of_wellFormedSrs_and_arkworksStatementEquations
    {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (v : ExecutedKzgOpeningAlgorithm (F := Fr)
      (statementWithExecutablePairing hbilinear baseStmt).srsV)
    (w : ExecutedKzgOpeningAlgorithm (F := Fr)
      (statementWithExecutablePairing hbilinear baseStmt).srsW)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (setup : WellFormedProvingSrs
      (statementWithExecutablePairing hbilinear baseStmt)
      v w g gBeta h hAlpha)
    (equations : ArkworksTippKzgStatementEquations
      hbilinear baseStmt g gBeta h hAlpha) :
    KzgBoundary (statementWithExecutablePairing hbilinear baseStmt) :=
  kzgBoundary_of_wellFormedSrs_and_verifierEquations
    (statementWithExecutablePairing hbilinear baseStmt)
    v w g gBeta h hAlpha setup
    (vEquationAccepts_of_arkworksStatementEquations
      hbilinear baseStmt g gBeta h hAlpha equations)
    (wEquationAccepts_of_arkworksStatementEquations
      hbilinear baseStmt g gBeta h hAlpha equations)

end

end Ipp.Extracted.ShippingProverArkworksKzgBridge
