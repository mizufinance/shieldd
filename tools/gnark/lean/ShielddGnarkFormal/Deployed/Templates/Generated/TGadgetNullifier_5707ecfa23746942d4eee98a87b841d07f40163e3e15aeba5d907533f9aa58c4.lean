import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4
