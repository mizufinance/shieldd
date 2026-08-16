import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.Decaf377Assumptions

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def spec (rho : Nat → F) : Prop :=
  (rho 252).val < 2 ^ 251 ∧
    (EdwardsBridge.onCurve ⟨rho 1807, rho 1808⟩ →
      Shieldd.GnarkFormal.Decaf377Assumptions.RandomizedVerificationKeySpec
        ⟨rho 1807, rho 1808⟩ (rho 252) ⟨rho 1813, rho 1814⟩ ∧
      EdwardsBridge.onCurve ⟨rho 1813, rho 1814⟩)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
