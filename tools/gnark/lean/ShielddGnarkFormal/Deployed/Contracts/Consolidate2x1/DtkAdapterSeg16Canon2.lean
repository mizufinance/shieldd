import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon2Chain

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon2_canonical (rho : Nat -> Seg16.F)
    (h : Seg16.relation rho) (k : List.Vector Seg16.F 253 -> Prop)
    (hk : k (seg16Canon2Bits rho)) :
    canonicalFqBitsGadget (rho 13449) k := by
  exact canonicalFqBitsGadget_of_components (rho 13449) (seg16Canon2Bits rho) k
    (seg16Canon2_recover rho h) (seg16Canon2_binary rho h) (seg16Canon2_chain rho h k hk)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
