import Ipp.Extracted.ArkworksMultiMillerLineStep

/-! One opaque-value invariant step for the addition-line pass. -/

namespace Ipp.Extracted.ArkworksMultiMillerAdditionStep

open Aeneas Aeneas.Std Result ControlFlow
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerLineModel
open Ipp.Extracted.ArkworksMultiMillerLineStep

set_option maxHeartbeats 1000000

/-- The addition pass shares the verified line-body transition. -/
theorem addition_line_step
    (filtered : List ExecPair) (chunkStart width cursor processed : Nat)
    (baseValues : List Ipp.Bls12377.Fq12Model)
    (cursors nextCursors : alloc.vec.Vec Usize)
    (f nextF : ArkworksMultiMillerModel.Fq12Limb)
    (nextProcessed : Usize)
    (hvalid : ValidExecPairs filtered)
    (hchunk : chunkStart + width ≤ filtered.length)
    (hcursor : cursor < 69)
    (hbaseLength : baseValues.length = width)
    (hinv : LinePassInv filtered chunkStart width cursor baseValues processed
      cursors f)
    (hactive : processed < width)
    (hbody :
      ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop1.body
        ⟨filtered⟩ ⟨chunkStart⟩ cursors f ⟨processed⟩ =
          .ok (.cont (nextCursors, nextF, nextProcessed))) :
    nextProcessed = ⟨processed + 1⟩ ∧
      LinePassInv filtered chunkStart width cursor baseValues (processed + 1)
        nextCursors nextF := by
  change
    ark_ip_proofs.s3_07_arkworks_fq_spike.multi_miller_schedule_loop1_loop1_loop0.body
      ⟨filtered⟩ ⟨chunkStart⟩ cursors f ⟨processed⟩ =
        .ok (.cont (nextCursors, nextF, nextProcessed)) at hbody
  exact doubling_line_step filtered chunkStart width cursor processed
    baseValues cursors nextCursors f nextF nextProcessed hvalid hchunk hcursor
    hbaseLength hinv hactive hbody

end Ipp.Extracted.ArkworksMultiMillerAdditionStep
