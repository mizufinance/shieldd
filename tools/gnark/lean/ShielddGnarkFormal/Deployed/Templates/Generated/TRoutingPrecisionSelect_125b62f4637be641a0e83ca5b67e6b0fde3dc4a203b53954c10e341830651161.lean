import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161
