import Ipp.Extracted.ArkworksG2PreparedGenericityHomogeneous
import Ipp.Extracted.ArkworksG2PreparedScalar
import Ipp.Extracted.ArkworksG2PreparedAdditionTransport

namespace Ipp.Extracted.ArkworksG2PreparedPointStep

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedAdditionTransport
open Ipp.Extracted.ArkworksG2PreparedGenericityHomogeneous
open Ipp.Extracted.ArkworksG2PreparedScalar

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

set_option maxHeartbeats 1000000

theorem add_model_generic_and_represents
    (state : G2HomProjective) (qx qy : Fq2) (Q : G2AffinePoint) (n : Nat)
    (hsub : inPrimeSubgroup Q) (hne : Q ≠ 0)
    (hmem : n ∈ additionDoubledScalars)
    (hrep : RepresentsDecodedG2 (decodeModelHomogeneous state) (n • Q))
    (hq : RepresentsDecodedG2 (some (qx, qy)) Q) :
    (state.z ≠ 0 ∧ state.x / state.z ≠ qx) ∧
      RepresentsDecodedG2
        (decodeModelHomogeneous (addLine state ⟨false, qx, qy⟩).1)
        ((n + 1) • Q) := by
  obtain ⟨hzero, heq, hneg⟩ := additionScalar_generic hsub hne hmem
  have hgeneric := homogeneous_generic_of_point_exclusions state qx qy
    (n • Q) Q hrep hq hzero heq hneg
  refine ⟨hgeneric, ?_⟩
  have hadd := addLine_represents_add state qx qy (n • Q) Q
    hgeneric.1 hgeneric.2 hrep hq
  simpa [add_nsmul] using hadd

#print axioms add_model_generic_and_represents

end Ipp.Extracted.ArkworksG2PreparedPointStep
