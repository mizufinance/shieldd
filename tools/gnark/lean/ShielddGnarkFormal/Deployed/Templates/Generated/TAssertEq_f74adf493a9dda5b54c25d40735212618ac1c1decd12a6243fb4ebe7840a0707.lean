import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707
