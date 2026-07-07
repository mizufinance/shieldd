import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon1Chain

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon1_canonical (rho : Nat -> Seg34.F)
    (h : Seg34.relation rho) (k : List.Vector Seg34.F 253 -> Prop)
    (hk : k (seg34Canon1Bits rho)) :
    canonicalFqBitsGadget (rho 31807) k := by
  exact canonicalFqBitsGadget_of_components (rho 31807) (seg34Canon1Bits rho) k
    (seg34Canon1_recover rho h) (seg34Canon1_binary rho h) (seg34Canon1_chain rho h k hk)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
