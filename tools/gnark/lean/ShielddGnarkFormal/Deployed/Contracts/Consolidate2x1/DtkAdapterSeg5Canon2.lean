import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon2Chain

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon2_canonical (rho : Nat -> Seg5.F)
    (h : Seg5.relation rho) (k : List.Vector Seg5.F 253 -> Prop)
    (hk : k (seg5Canon2Bits rho)) :
    canonicalFqBitsGadget (rho 572) k := by
  exact canonicalFqBitsGadget_of_components (rho 572) (seg5Canon2Bits rho) k
    (seg5Canon2_recover rho h) (seg5Canon2_binary rho h) (seg5Canon2_chain rho h k hk)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
