import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Canon1Chain

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_canonical (rho : Nat -> Seg6.F)
    (h : Seg6.relation rho) (k : List.Vector Seg6.F 253 -> Prop)
    (hk : k (seg6Canon1Bits rho)) :
    canonicalFqBitsGadget (rho 927) k := by
  exact canonicalFqBitsGadget_of_components (rho 927) (seg6Canon1Bits rho) k
    (seg6Canon1_recover rho h) (seg6Canon1_binary rho h) (seg6Canon1_chain rho h k hk)

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
