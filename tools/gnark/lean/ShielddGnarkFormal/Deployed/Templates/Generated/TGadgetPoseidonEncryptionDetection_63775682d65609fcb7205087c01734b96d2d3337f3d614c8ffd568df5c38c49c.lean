import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c
