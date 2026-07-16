import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Part17

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart17 rho) :
    rho 92 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (((6338858802087006565873742200609438722204931953366525961300565465846849278674 : F) + (3579836157955309420880140593532766176609326046154565461072858000375764742326 : F) * rho 57 + (3020607076656756078418837235637442188306522617192578641389204937737014650962 : F) * rho 62 + (5637220359779161156373647100061456652227512307027696275393780604040622884745 : F) * rho 67 + (7668244523520435283525964877159182945565842688382326226602525369239387851908 : F) * rho 72 + (8263421233974591934739537252948315170507181901467385008661160910236927442893 : F) * rho 77 + (6332580374497633521549498629261780619934974306414513488744809651261783241368 : F) * rho 82 + (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 87)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    (((6338858802087006565873742200609438722204931953366525961300565465846849278674 : F) + (3579836157955309420880140593532766176609326046154565461072858000375764742326 : F) * rho 57 + (3020607076656756078418837235637442188306522617192578641389204937737014650962 : F) * rho 62 + (5637220359779161156373647100061456652227512307027696275393780604040622884745 : F) * rho 67 + (7668244523520435283525964877159182945565842688382326226602525369239387851908 : F) * rho 72 + (8263421233974591934739537252948315170507181901467385008661160910236927442893 : F) * rho 77 + (6332580374497633521549498629261780619934974306414513488744809651261783241368 : F) * rho 82 + (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 87)) (rho 88) (rho 89) (rho 90) (rho 91) (rho 92)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Part17
