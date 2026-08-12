import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240
