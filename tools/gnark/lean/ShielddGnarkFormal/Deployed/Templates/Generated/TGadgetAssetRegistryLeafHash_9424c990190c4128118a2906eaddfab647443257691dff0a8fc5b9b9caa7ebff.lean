import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff
