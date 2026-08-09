import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350
import ShielddGnarkFormal.Poseidon4Bridge
import ShielddGnarkFormal.Deployed.PrimeOrder

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Poseidon4Bridge

instance : Fact (Nat.Prime
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.F

def domainLit : F := (3087648872801978871068165188801234750107370627422529216418050362074203193020 : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1)
    (h2 : v1 * v1 = v2) (h3 : v2 * v2 = v3)
    (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidon
