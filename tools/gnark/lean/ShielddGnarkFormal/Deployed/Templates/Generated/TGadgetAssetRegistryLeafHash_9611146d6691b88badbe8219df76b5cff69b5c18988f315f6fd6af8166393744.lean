import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744
