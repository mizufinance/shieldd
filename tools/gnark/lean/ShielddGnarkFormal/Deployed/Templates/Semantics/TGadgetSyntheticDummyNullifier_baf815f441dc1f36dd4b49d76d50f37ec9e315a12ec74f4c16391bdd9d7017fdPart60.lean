import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd
import ShielddGnarkFormal.Deployed.NullifierDeployedBridge
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Part60

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order
abbrev F :=
  Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.relationPart60 rho) :
    rho 307 = Shieldd.GnarkFormal.Poseidon3Bridge.p17 (((6815943890781966378087179499267196955390238260135387729266185493827955661877 : F) + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 272 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 277 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 282 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 287)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  exact Shieldd.GnarkFormal.Deployed.Nullifier.p17_from_rows
    (((6815943890781966378087179499267196955390238260135387729266185493827955661877 : F) + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 272 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 277 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 282 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 287)) (rho 303) (rho 304) (rho 305) (rho 306) (rho 307)
    (by linear_combination h0) (by linear_combination h1)
    (by linear_combination h2) (by linear_combination h3)
    (by linear_combination h4)

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Part60
