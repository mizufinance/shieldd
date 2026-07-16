import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Part48

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationPart48 rho) :
    rho 247 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 ((relationLc6 rho)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    ((relationLc6 rho)) (rho 243) (rho 244) (rho 245) (rho 246) (rho 247)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Part48
