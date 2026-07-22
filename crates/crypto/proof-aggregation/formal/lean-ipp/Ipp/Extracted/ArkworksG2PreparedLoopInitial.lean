import Ipp.Extracted.ArkworksG2PreparedLoopInitialRepresentation
import Ipp.Extracted.ArkworksG2PreparedLoopInitialState

/-! Initial finite-input witness for the prepared-loop invariant. -/

namespace Ipp.Extracted.ArkworksG2PreparedLoopInitial

open Ipp.Bls12377
open Ipp.Extracted.ArkworksG2
open Ipp.Extracted.ArkworksG2PreparedInput
open Ipp.Extracted.ArkworksG2PreparedLoopInitialRepresentation
open Ipp.Extracted.ArkworksG2PreparedLoopInitialState
open Ipp.Extracted.ArkworksG2PreparedLoopInvariant
open Ipp.Extracted.ArkworksG2PreparedModelPrefix
open Ipp.Extracted.ArkworksG2PreparedResult
open Ipp.Extracted.ArkworksG2PreparedSchedule

theorem preparedLoopInv_initial {q : G2AffineLimb} {Q : G2AffinePoint}
    (hq : ValidG2PreparedInput q Q) (hfinite : q.infinity = false) :
    PreparedLoopInv (finiteAffineRep q) Q 63 (initialState q) ⟨[]⟩ := by
  exact ⟨initialState_canonical hq, initial_modelRepresents hq hfinite,
    initial_modelState q, rfl⟩

end Ipp.Extracted.ArkworksG2PreparedLoopInitial
