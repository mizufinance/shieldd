import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e
