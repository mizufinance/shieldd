import Ipp.Extracted.ArkworksG2PreparedInput

namespace Ipp.Extracted.ArkworksG2PreparedInfinityModel

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedInput
open Ipp.Extracted.ArkworksG2PreparedResult

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩
local instance : g2Curve.IsElliptic := g2_isElliptic

theorem preparedModel_infinity_of_input {q : G2AffineLimb}
    {Q : G2AffinePoint} (hinput : ValidG2PreparedInput q Q)
    (hinfinity : q.infinity = true) :
    preparedModel Q = ⟨[], true⟩ := by
  have hQ : Q = 0 := by
    simpa only [hinfinity, if_true] using hinput.represents
  subst Q
  rfl

end Ipp.Extracted.ArkworksG2PreparedInfinityModel
