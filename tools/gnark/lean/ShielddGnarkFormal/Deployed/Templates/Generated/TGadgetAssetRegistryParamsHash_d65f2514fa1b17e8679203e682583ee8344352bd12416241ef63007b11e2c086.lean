import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086
