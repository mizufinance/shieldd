import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_89974c69097fPoseidonRows470
import ShielddGnarkFormal.Poseidon7Bridge
import ShielddGnarkFormal.Deployed.PrimeOrder

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_89974c69097fPoseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Poseidon7Bridge

instance : Fact (Nat.Prime
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_89974c69097fPoseidonRows470.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_89974c69097fPoseidonRows470.F

def domainLit : F := (168430640865250000792698691211246566687485655593739355441774434546766203703 : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1)
    (h2 : v1 * v1 = v2) (h3 : v2 * v2 = v3)
    (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_89974c69097fPoseidon
