import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafCompressToField_14402e03b86e0bdccb6b4235ec7a9d91040f46b463af7374fe316cd4e4b6e531
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_14402e03b86e0bdccb6b4235ec7a9d91040f46b463af7374fe316cd4e4b6e531

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafCompressToField_14402e03b86e0bdccb6b4235ec7a9d91040f46b463af7374fe316cd4e4b6e531

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_14402e03b86e0bdccb6b4235ec7a9d91040f46b463af7374fe316cd4e4b6e531.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafCompressToField_14402e03b86e0bdccb6b4235ec7a9d91040f46b463af7374fe316cd4e4b6e531.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_14402e03b86e0bdccb6b4235ec7a9d91040f46b463af7374fe316cd4e4b6e531.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_14402e03b86e0bdccb6b4235ec7a9d91040f46b463af7374fe316cd4e4b6e531.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafCompressToField_14402e03b86e0bdccb6b4235ec7a9d91040f46b463af7374fe316cd4e4b6e531
