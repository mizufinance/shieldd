import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7
