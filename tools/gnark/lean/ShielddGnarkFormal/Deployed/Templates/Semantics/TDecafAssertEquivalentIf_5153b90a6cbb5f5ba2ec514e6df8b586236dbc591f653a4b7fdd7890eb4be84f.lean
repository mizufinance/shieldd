import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.relation rho

def spec (rho : Nat -> F) : Prop :=
  1 - rho 1 = 0 ∨ rho 2 * rho 3 = rho 5 * rho 6

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.relationSegment0] at h
  simp only [spec]
  obtain ⟨h0, h1, h2, h3, h4, h5, _⟩ := h
  have hp : (1 - rho 1) * ((rho 2 * rho 3) - (rho 5 * rho 6)) = 0 := by
    linear_combination
      (1 - rho 1) * h1 - (1 - rho 1) * h2 +
      h3 - h4 + h5
  rcases mul_eq_zero.mp hp with hdisabled | heq
  · exact Or.inl hdisabled
  · right
    linear_combination heq

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f
