import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279
