import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc
