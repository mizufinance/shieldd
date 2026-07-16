import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Part4

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationPart4 rho) :
    rho 27 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (((328337256043669749952766918005403961251721771488055375803984966836024271627 : F) + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 6 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 12)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    (((328337256043669749952766918005403961251721771488055375803984966836024271627 : F) + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 6 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 12)) (rho 23) (rho 24) (rho 25) (rho 26) (rho 27)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Part4
