import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonChain

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_canonical (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (k : List.Vector Seg48.F 253 -> Prop)
    (hk : k (seg48CanonBits rho)) :
    canonicalFqBitsGadget (rho 33182) k := by
  exact canonicalFqBitsGadget_of_components (rho 33182) (seg48CanonBits rho) k
    (seg48Canon_recover rho h) (seg48Canon_binary rho h) (seg48Canon_chain rho h k hk)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
