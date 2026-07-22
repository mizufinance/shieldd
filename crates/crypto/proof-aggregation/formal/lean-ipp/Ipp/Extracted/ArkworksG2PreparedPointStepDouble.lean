import Ipp.Extracted.ArkworksG2PreparedModel

namespace Ipp.Extracted.ArkworksG2PreparedPointStep

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

theorem double_model_represents_nsmul (state : G2HomProjective)
    (Q : G2AffinePoint) (k : Nat)
    (hrep : RepresentsDecodedG2 (decodeModelHomogeneous state) (k • Q)) :
    RepresentsDecodedG2 (decodeModelHomogeneous (doubleLine state).1)
      ((2 * k) • Q) := by
  have h := doubleLine_represents_double state (k • Q) hrep
  simpa [two_mul, add_nsmul] using h

#print axioms double_model_represents_nsmul

end Ipp.Extracted.ArkworksG2PreparedPointStep
