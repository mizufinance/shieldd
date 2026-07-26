import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_9751fe87fa2c56ff1ab94b413c6c480f6675c29236b522f924826fe36f060dd3
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalent_9751fe87fa2c56ff1ab94b413c6c480f6675c29236b522f924826fe36f060dd3

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def spec (rho : Nat -> F) : Prop :=
  ((1 : F) * rho 1) * (Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_9751fe87fa2c56ff1ab94b413c6c480f6675c29236b522f924826fe36f060dd3.relationLc0 rho) = ((1 : F) * rho 254) * (Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_9751fe87fa2c56ff1ab94b413c6c480f6675c29236b522f924826fe36f060dd3.relationLc1 rho)

theorem sound (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_9751fe87fa2c56ff1ab94b413c6c480f6675c29236b522f924826fe36f060dd3.relation rho) : spec rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_9751fe87fa2c56ff1ab94b413c6c480f6675c29236b522f924826fe36f060dd3.relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_9751fe87fa2c56ff1ab94b413c6c480f6675c29236b522f924826fe36f060dd3.relationSegment0 at h
  rcases h with ⟨h0, h1, h2, _⟩
  unfold spec
  linear_combination h0 - h1 + h2

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalent_9751fe87fa2c56ff1ab94b413c6c480f6675c29236b522f924826fe36f060dd3
