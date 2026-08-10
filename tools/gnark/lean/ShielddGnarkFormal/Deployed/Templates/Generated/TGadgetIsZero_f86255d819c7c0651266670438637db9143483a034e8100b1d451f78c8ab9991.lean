import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991
