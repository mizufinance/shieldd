import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_047c1edf46dd929e3ea5f5930f7a429d351626a21efffc3babfb345c1a143c9e
