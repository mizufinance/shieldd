import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat -> F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e.relation rho

def spec (rho : Nat -> F) : Prop :=
  1 - rho 507 = 0 ∨ rho 1 * Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e.relationLc0 rho = rho 254 * Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e.relationLc1 rho

theorem sound (rho : Nat -> F) (h : relation rho) : spec rho := by
  simp only [relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e.relation, Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e.relationSegment0] at h
  simp only [spec]
  obtain ⟨h0, h1, h2, h3, h4, _⟩ := h
  have hp : (1 - rho 507) * ((rho 1 * Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e.relationLc0 rho) - (rho 254 * Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e.relationLc1 rho)) = 0 := by
    linear_combination
      (1 - rho 507) * h0 - (1 - rho 507) * h1 +
      h2 - h3 + h4
  rcases mul_eq_zero.mp hp with hdisabled | heq
  · exact Or.inl hdisabled
  · right
    linear_combination heq

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5be591435a6da60f6425c787fbbe584d1c91891985a42a1a1ae026592549eb3e
