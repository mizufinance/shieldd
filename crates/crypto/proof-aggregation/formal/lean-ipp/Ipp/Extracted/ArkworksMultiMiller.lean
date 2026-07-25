import Ipp.Extracted.ArkworksMultiMillerFilter
import Ipp.Extracted.ArkworksMultiMillerOuterLoop

/-! End-to-end conformance for the extracted multi-pair Miller schedule. -/

namespace Ipp.Extracted.ArkworksMultiMiller

open Aeneas Aeneas.Std Result
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerFilter
open Ipp.Extracted.ArkworksMultiMillerChunkModel
open Ipp.Extracted.ArkworksMultiMillerOuterLoop

set_option maxHeartbeats 1000000

private theorem bind_eq_ok {α β : Type} {action : Result α}
    {next : α → Result β} {output : β}
    (hexec : action >>= next = .ok output) :
    ∃ value, action = .ok value ∧ next value = .ok output := by
  cases action with
  | fail error => simp at hexec
  | div => simp at hexec
  | ok value => exact ⟨value, rfl, hexec⟩

/-- A successful schedule returns the product of the source-order pair folds. -/
theorem multi_miller_schedule_spec
    (pairs : List MillerPair) (out : ArkworksMultiMillerModel.Fq12Limb)
    (hpairs : ValidPairs pairs)
    (hexec :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule
        ⟨encodePairs pairs⟩ = .ok out) :
    Canonical12 out ∧ decodeFq12 out = multiMillerModel pairs := by
  unfold ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule at hexec
  obtain ⟨filtered, hfilter, houter⟩ := bind_eq_ok hexec
  have hvalidEncoded : ValidExecPairs (encodePairs pairs) :=
    validPairs_encode hpairs
  have hfiltered : filtered.val = encodePairs pairs :=
    filter_valid_exec_pairs (encodePairs pairs) filtered hvalidEncoded hfilter
  have hvalidFiltered : ValidExecPairs filtered.val := by
    rw [hfiltered]
    exact hvalidEncoded
  have hspec := outer_schedule_spec filtered.val out hvalidFiltered houter
  have hsource :
      filtered.val.map (fun pair => pairFold (sourcePair pair)) =
        pairs.map pairFold := by
    rw [hfiltered]
    simpa [List.map_map] using congrArg (List.map pairFold)
      (sourcePairs_encode pairs)
  refine ⟨hspec.1, ?_⟩
  rw [hspec.2, hsource]
  rfl

end Ipp.Extracted.ArkworksMultiMiller
