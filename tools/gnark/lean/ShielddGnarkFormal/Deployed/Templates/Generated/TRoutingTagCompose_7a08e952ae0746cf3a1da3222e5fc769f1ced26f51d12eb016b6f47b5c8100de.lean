import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingTagCompose_7a08e952ae0746cf3a1da3222e5fc769f1ced26f51d12eb016b6f47b5c8100de
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_7a08e952ae0746cf3a1da3222e5fc769f1ced26f51d12eb016b6f47b5c8100de

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagCompose_7a08e952ae0746cf3a1da3222e5fc769f1ced26f51d12eb016b6f47b5c8100de

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_7a08e952ae0746cf3a1da3222e5fc769f1ced26f51d12eb016b6f47b5c8100de.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingTagCompose_7a08e952ae0746cf3a1da3222e5fc769f1ced26f51d12eb016b6f47b5c8100de.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_7a08e952ae0746cf3a1da3222e5fc769f1ced26f51d12eb016b6f47b5c8100de.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_7a08e952ae0746cf3a1da3222e5fc769f1ced26f51d12eb016b6f47b5c8100de.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagCompose_7a08e952ae0746cf3a1da3222e5fc769f1ced26f51d12eb016b6f47b5c8100de
