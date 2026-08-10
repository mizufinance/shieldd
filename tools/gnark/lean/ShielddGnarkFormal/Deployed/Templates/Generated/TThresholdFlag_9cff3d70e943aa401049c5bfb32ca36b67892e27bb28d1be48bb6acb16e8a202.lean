import ShielddGnarkFormal.Deployed.Templates.Relations.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202
import ShielddGnarkFormal.Deployed.Templates.Semantics.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202
