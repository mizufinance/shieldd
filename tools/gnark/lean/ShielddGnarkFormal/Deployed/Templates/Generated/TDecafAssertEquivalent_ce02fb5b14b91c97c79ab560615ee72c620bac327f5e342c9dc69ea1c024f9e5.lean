import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5
