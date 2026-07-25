import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.relation rho

def spec (rho : Nat -> F) : Prop :=
  rho 7 = 0 ∨ rho 1 * rho 2 = rho 4 * rho 5

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.relationSegment0] at h
  simp only [spec]
  obtain ⟨h0, h1, h2, h3, h4, _⟩ := h
  have hp : (rho 7) * ((rho 1 * rho 2) - (rho 4 * rho 5)) = 0 := by
    linear_combination
      (rho 7) * h0 - (rho 7) * h1 +
      h2 - h3 + h4
  rcases mul_eq_zero.mp hp with hdisabled | heq
  · exact Or.inl hdisabled
  · right
    linear_combination heq

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350
