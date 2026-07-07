import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52CanonChain

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg52Canon_canonical (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (k : List.Vector Seg52.F 253 -> Prop)
    (hk : k (seg52CanonBits rho)) :
    canonicalFqBitsGadget (rho 44814) k := by
  exact canonicalFqBitsGadget_of_components (rho 44814) (seg52CanonBits rho) k
    (seg52Canon_recover rho h) (seg52Canon_binary rho h) (seg52Canon_chain rho h k hk)

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
