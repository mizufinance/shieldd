import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.Part48

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.relationPart48 rho) :
    rho 247 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 ((Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.relationLc6 rho)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    ((Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.relationLc6 rho)) (rho 243) (rho 244) (rho 245) (rho 246) (rho 247)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa.Part48
