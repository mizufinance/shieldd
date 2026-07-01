import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45Canon2Chain

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg45Canon2_canonical (rho : Nat -> Seg45.F)
    (h : Seg45.relation rho) (k : List.Vector Seg45.F 253 -> Prop)
    (hk : k (seg45Canon2Bits rho)) :
    canonicalFqBitsGadget (rho 39105) k := by
  exact canonicalFqBitsGadget_of_components (rho 39105) (seg45Canon2Bits rho) k
    (seg45Canon2_recover rho h) (seg45Canon2_binary rho h) (seg45Canon2_chain rho h k hk)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
