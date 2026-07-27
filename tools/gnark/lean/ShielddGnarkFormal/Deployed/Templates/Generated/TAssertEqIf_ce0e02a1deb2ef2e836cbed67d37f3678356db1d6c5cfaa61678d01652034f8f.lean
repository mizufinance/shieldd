import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.sound rho h

end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f
