import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed
