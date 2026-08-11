import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557
