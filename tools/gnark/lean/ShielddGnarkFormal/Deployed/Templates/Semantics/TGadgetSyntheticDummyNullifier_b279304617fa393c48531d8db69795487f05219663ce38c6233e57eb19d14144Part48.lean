import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Part48

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationPart48 rho) :
    rho 247 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 ((Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationLc6 rho)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    ((Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.relationLc6 rho)) (rho 243) (rho 244) (rho 245) (rho 246) (rho 247)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144.Part48
