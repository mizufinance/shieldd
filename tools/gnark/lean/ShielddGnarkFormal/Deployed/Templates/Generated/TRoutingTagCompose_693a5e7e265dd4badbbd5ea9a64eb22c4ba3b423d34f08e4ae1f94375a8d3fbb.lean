import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb
