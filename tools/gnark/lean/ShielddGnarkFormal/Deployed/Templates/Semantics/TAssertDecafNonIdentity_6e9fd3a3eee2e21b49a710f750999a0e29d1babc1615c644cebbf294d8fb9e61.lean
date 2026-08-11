import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def spec (rho : Nat -> F) : Prop :=
  rho 1 ≠ 0 ∧ (rho 2 + rho 3) ≠ 0

theorem sound (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61.relation rho) : spec rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61.relationSegment0 at h
  constructor
  · intro hx
    have h01 : (0 : F) = 1 := by
      simpa only [hx, one_mul, zero_mul, mul_zero] using h.1
    exact zero_ne_one h01
  · intro hx
    have h01 : (0 : F) = 1 := by
      simpa only [hx, one_mul, zero_mul, mul_zero] using h.1
    exact zero_ne_one h01

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61
