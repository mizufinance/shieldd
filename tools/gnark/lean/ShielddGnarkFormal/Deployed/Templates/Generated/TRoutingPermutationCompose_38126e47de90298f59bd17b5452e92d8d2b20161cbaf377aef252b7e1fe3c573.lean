import ShielddGnarkFormal.Deployed.Templates.Relations.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573
