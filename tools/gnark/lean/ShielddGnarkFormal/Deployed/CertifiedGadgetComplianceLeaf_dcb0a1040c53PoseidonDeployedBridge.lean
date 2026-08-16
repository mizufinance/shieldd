import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430
import ShielddGnarkFormal.Poseidon6Bridge
import ShielddGnarkFormal.Deployed.PrimeOrder

namespace Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53Poseidon

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.Poseidon6Bridge

instance : Fact (Nat.Prime
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.F

def domainLit : F := (5091441079939941903017664305347261861704474070005805806880013805880773073215 : F)

theorem p17_from_rows (x v0 v1 v2 v3 v4 : F)
    (h0 : x * x = v0) (h1 : v0 * v0 = v1)
    (h2 : v1 * v1 = v2) (h3 : v2 * v2 = v3)
    (h4 : v3 * x = v4) :
    v4 = p17 x := by
  unfold p17
  rw [← h4, ← h3, ← h2, ← h1, ← h0]

end Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53Poseidon
