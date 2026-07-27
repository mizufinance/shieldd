import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafCompressToField_134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2
