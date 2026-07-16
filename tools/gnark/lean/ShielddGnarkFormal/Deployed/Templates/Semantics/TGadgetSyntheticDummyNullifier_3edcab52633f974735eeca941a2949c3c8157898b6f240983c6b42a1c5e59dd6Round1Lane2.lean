import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6Part2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6Part3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6Part4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6Part5
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Deployed.Nullifier.Round01
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6Fixed
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Round1Lane2

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p2 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart2 rho) (p3 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart3 rho) (p4 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart4 rho) (p5 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.relationPart5 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_0 (rho 6) (rho 12))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_1 (rho 6) (rho 12))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_2 (rho 6) (rho 12))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_3 (rho 6) (rho 12)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_2 (rho 17) (rho 22) (rho 27) (rho 32) := by
  have hp2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Part2.sound rho p2
  have hp3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Part3.sound rho p3
  have hp4 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Part4.sound rho p4
  have hp5 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Part5.sound rho p5
  have ha0 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) + (2460473050623699025207425440478059302299840127402356580032311810234352192553 : F)) = (rho 17) := by
    rw [hPrev0]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_0 (rho 6) (rho 12) + (2460473050623699025207425440478059302299840127402356580032311810234352192553 : F) = ((8077328215232257366860456904543994949748392446453601758320132508716506338549 : F) + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 6 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_0
      have hc : (8077328215232257366860456904543994949748392446453601758320132508716506338549 : F) = (8077328215232257366860456904543994949748392446453601758320132508716506338549 : F) :=
        (ZMod.natCast_eq_natCast_iff' 8077328215232257366860456904543994949748392446453601758320132508716506338549 8077328215232257366860456904543994949748392446453601758320132508716506338549 Order).mpr (by decide)
      linear_combination hc, ← hp2]
  have ha1 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) + (6739526644189243304596281380207849534959661650376903866949397817731628238273 : F)) = (rho 22) := by
    rw [hPrev1]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_1 (rho 6) (rho 12) + (6739526644189243304596281380207849534959661650376903866949397817731628238273 : F) = ((2768141784062388528395803595956833536538467081301766090736022706495468538731 : F) + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 6 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_1
      have hc : (11212603533490758952644628534738380067914366416455829918671256162412877777772 : F) = (2768141784062388528395803595956833536538467081301766090736022706495468538731 : F) :=
        (ZMod.natCast_eq_natCast_iff' 11212603533490758952644628534738380067914366416455829918671256162412877777772 2768141784062388528395803595956833536538467081301766090736022706495468538731 Order).mpr (by decide)
      linear_combination hc, ← hp3]
  have ha2 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) + (597549483098771783017881992848590630624851676141528707360377946657258324767 : F)) = (rho 27) := by
    rw [hPrev2]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_2 (rho 6) (rho 12) + (597549483098771783017881992848590630624851676141528707360377946657258324767 : F) = ((2122581743155890900390092034064416428190672521710460662075126458400886430794 : F) + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 6 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_2
      have hc : (2122581743155890900390092034064416428190672521710460662075126458400886430794 : F) = (2122581743155890900390092034064416428190672521710460662075126458400886430794 : F) :=
        (ZMod.natCast_eq_natCast_iff' 2122581743155890900390092034064416428190672521710460662075126458400886430794 2122581743155890900390092034064416428190672521710460662075126458400886430794 Order).mpr (by decide)
      linear_combination hc, ← hp4]
  have ha3 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (3 : F) + (4344854910230270044421510722988181256819181450723410913296668891739456698878 : F)) = (rho 32) := by
    rw [hPrev3]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_3 (rho 6) (rho 12) + (4344854910230270044421510722988181256819181450723410913296668891739456698878 : F) = ((7036961917378686172082033534428825279275496375323198640593299012069166350420 : F) + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 6 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Fixed.s0_3
      have hc : (7036961917378686172082033534428825279275496375323198640593299012069166350420 : F) = (7036961917378686172082033534428825279275496375323198640593299012069166350420 : F) :=
        (ZMod.natCast_eq_natCast_iff' 7036961917378686172082033534428825279275496375323198640593299012069166350420 7036961917378686172082033534428825279275496375323198640593299012069166350420 Order).mpr (by decide)
      linear_combination hc, ← hp5]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane2 Shieldd.GnarkFormal.Deployed.Nullifier.s1_2
  rw [ha0, ha1, ha2, ha3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6.Round1Lane2
