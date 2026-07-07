import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon1Chain

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon1_canonical (rho : Nat -> Seg45.F)
    (h : Seg45.relation rho) (k : List.Vector Seg45.F 253 -> Prop)
    (hk : k (seg45Canon1Bits rho)) :
    canonicalFqBitsGadget (rho 38763) k := by
  exact canonicalFqBitsGadget_of_components (rho 38763) (seg45Canon1Bits rho) k
    (seg45Canon1_recover rho h) (seg45Canon1_binary rho h) (seg45Canon1_chain rho h k hk)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
