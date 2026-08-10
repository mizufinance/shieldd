import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd
