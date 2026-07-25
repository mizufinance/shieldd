import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.Part18

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationPart18 rho) :
    rho 97 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (((2829796229334663377753312994535136336253760367327511878367179669817843806213 : F) + (668747237121320492782168270063825062220919494747515865744658334588595234051 : F) * rho 57 + (6087395921021275780628874587899188804568416515344015561012376477127152419750 : F) * rho 62 + (5355926780034961154065801377154310921441757660111086558798718807318312050322 : F) * rho 67 + (5101629178073013167316837323585703772385116812301151937785443084424112914710 : F) * rho 72 + (3579836157955309420880140593532766176609326046154565461072858000375764742326 : F) * rho 77 + (8263421233974591934739537252948315170507181901467385008661160910236927442893 : F) * rho 82 + (6332580374497633521549498629261780619934974306414513488744809651261783241368 : F) * rho 87 + (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 92)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    (((2829796229334663377753312994535136336253760367327511878367179669817843806213 : F) + (668747237121320492782168270063825062220919494747515865744658334588595234051 : F) * rho 57 + (6087395921021275780628874587899188804568416515344015561012376477127152419750 : F) * rho 62 + (5355926780034961154065801377154310921441757660111086558798718807318312050322 : F) * rho 67 + (5101629178073013167316837323585703772385116812301151937785443084424112914710 : F) * rho 72 + (3579836157955309420880140593532766176609326046154565461072858000375764742326 : F) * rho 77 + (8263421233974591934739537252948315170507181901467385008661160910236927442893 : F) * rho 82 + (6332580374497633521549498629261780619934974306414513488744809651261783241368 : F) * rho 87 + (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 92)) (rho 93) (rho 94) (rho 95) (rho 96) (rho 97)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0.Part18
