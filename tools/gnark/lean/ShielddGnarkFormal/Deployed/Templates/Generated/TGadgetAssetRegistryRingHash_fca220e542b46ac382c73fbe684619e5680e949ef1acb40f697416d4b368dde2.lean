import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2
