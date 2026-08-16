import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030
