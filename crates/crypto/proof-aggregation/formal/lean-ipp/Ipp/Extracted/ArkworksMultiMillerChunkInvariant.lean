import Ipp.Extracted.ArkworksMultiMillerChunkModel
import Ipp.Extracted.ArkworksMultiMillerLineBoundary

/-! Opaque product invariant for the 63-position shared chunk loop. -/

namespace Ipp.Extracted.ArkworksMultiMillerChunkInvariant

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksEllFq12
open Ipp.Extracted.ArkworksMillerModel
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerChunkModel

/-- Uniform pair cursors and the product of their completed pure prefixes. -/
structure ChunkLoopInv (filtered : List ExecPair)
    (chunkStart width remaining : Nat)
    (cursors : alloc.vec.Vec Usize)
    (f : ArkworksMultiMillerModel.Fq12Limb) : Prop where
  remainingBound : remaining ≤ 63
  cursorsState : cursors.val =
    List.replicate width ⟨millerCoeffCount (63 - remaining)⟩
  canonical : Canonical12 f
  accumulator : decodeFq12 f =
    (chunkPrefixValues filtered chunkStart width (63 - remaining)).prod

/-- The all-zero cursor vector and Fq12 one start a fresh chunk. -/
theorem chunkLoopInv_initial
    (filtered : List ExecPair) (chunkStart width : Nat)
    (cursors : alloc.vec.Vec Usize)
    (hcursors : cursors.val = List.replicate width 0#usize) :
    ChunkLoopInv filtered chunkStart width 63 cursors
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE := by
  refine ⟨by omega, ?_, fq12_one_spec.1, ?_⟩
  · simpa [millerCoeffCount] using hcursors
  · rw [fq12_one_spec.2, chunkPrefixValues_zero, fq12Prod_one]

end Ipp.Extracted.ArkworksMultiMillerChunkInvariant
