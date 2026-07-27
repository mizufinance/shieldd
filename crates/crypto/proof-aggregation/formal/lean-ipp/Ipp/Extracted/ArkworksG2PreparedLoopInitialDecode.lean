import Ipp.Extracted.ArkworksG2PreparedLoopInvariant

namespace Ipp.Extracted.ArkworksG2PreparedLoopInitialDecode

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq2
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedResult

local instance : Fact baseModulus.Prime := ⟨arithmeticFacts.basePrime⟩
local instance : Fact (∀ x : Fq, x ^ 2 ≠ (-5) + 0 * x) :=
  ⟨by intro x; simpa using arithmeticFacts.fq2Nonresidue x⟩

theorem initial_modelDecode (q : G2AffineLimb) :
    decodeModelHomogeneous (preparedModelAt (finiteAffineRep q) 63).r =
      some (decodeFq2 q.x, decodeFq2 q.y) := by
  simp [finiteAffineRep, decodeModelHomogeneous]

end Ipp.Extracted.ArkworksG2PreparedLoopInitialDecode
