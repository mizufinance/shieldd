import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Part54

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationPart54 rho) :
    rho 277 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (((403917435174867072656735572934226709672919820691101390561081554994951410328 : F) + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 252 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 257 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 262 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 267)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    (((403917435174867072656735572934226709672919820691101390561081554994951410328 : F) + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 252 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 257 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 262 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 267)) (rho 273) (rho 274) (rho 275) (rho 276) (rho 277)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8.Part54
