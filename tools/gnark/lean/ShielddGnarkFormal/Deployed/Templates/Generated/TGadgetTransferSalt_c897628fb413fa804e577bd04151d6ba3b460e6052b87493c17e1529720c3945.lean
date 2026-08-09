import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945
