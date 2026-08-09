import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_89974c69097fec1fe7276409b30d17170b41afc739ec6a0392be21d56a7c6d68
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_89974c69097fec1fe7276409b30d17170b41afc739ec6a0392be21d56a7c6d68

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetComplianceLeaf_89974c69097fec1fe7276409b30d17170b41afc739ec6a0392be21d56a7c6d68

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_89974c69097fec1fe7276409b30d17170b41afc739ec6a0392be21d56a7c6d68.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_89974c69097fec1fe7276409b30d17170b41afc739ec6a0392be21d56a7c6d68.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_89974c69097fec1fe7276409b30d17170b41afc739ec6a0392be21d56a7c6d68.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_89974c69097fec1fe7276409b30d17170b41afc739ec6a0392be21d56a7c6d68.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetComplianceLeaf_89974c69097fec1fe7276409b30d17170b41afc739ec6a0392be21d56a7c6d68
