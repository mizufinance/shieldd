import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374
