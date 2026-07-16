import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Part10

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart10 rho) :
    rho 57 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (((6174290539348443013815085618635508535362670264359346323016750542543831671611 : F) + (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 37 + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 42 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 47 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 52)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    (((6174290539348443013815085618635508535362670264359346323016750542543831671611 : F) + (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 37 + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 42 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 47 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 52)) (rho 53) (rho 54) (rho 55) (rho 56) (rho 57)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907.Part10
