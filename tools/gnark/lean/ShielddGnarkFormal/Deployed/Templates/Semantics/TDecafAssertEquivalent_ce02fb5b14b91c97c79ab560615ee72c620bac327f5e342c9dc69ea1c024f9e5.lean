import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def spec (rho : Nat -> F) : Prop :=
  ((1 : F) * rho 1) * ((1 : F) * rho 2) = ((1 : F) * rho 1) * ((1 : F) * rho 2)

theorem sound (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.relation rho) : spec rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.relationSegment0 at h
  rcases h with ⟨h0, h1, h2, _⟩
  unfold spec
  linear_combination h0 - h1 + h2

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5
