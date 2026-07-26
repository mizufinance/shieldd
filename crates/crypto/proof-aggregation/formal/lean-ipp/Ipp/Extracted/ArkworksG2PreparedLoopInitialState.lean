import Ipp.Extracted.ArkworksG2PreparedLoopInvariant

namespace Ipp.Extracted.ArkworksG2PreparedLoopInitialState

open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedModel
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedSchedule

theorem initial_modelState (q : G2AffineLimb) :
    decodeHomogeneous (initialState q) =
      (preparedModelAt (finiteAffineRep q) 63).r := by
  simp [initialState, decodeHomogeneous, finiteAffineRep,
    Ipp.Extracted.ArkworksScalarMulNormalizeCommon.decode_fq2_one]

end Ipp.Extracted.ArkworksG2PreparedLoopInitialState
