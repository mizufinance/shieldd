import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon2Chain

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon2_canonical (rho : Nat -> Seg34.F)
    (h : Seg34.relation rho) (k : List.Vector Seg34.F 253 -> Prop)
    (hk : k (seg34Canon2Bits rho)) :
    canonicalFqBitsGadget (rho 32149) k := by
  exact canonicalFqBitsGadget_of_components (rho 32149) (seg34Canon2Bits rho) k
    (seg34Canon2_recover rho h) (seg34Canon2_binary rho h) (seg34Canon2_chain rho h k hk)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
