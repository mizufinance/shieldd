import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651bPart2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651bPart3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651bPart4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651bPart5
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Deployed.Nullifier.Round01
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651bFixed
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Round1Lane1

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p2 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationPart2 rho) (p3 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationPart3 rho) (p4 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationPart4 rho) (p5 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.relationPart5 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_0 (rho 6) (rho 12))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_1 (rho 6) (rho 12))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_2 (rho 6) (rho 12))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_3 (rho 6) (rho 12)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_1 (rho 17) (rho 22) (rho 27) (rho 32) := by
  have hp2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Part2.sound rho p2
  have hp3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Part3.sound rho p3
  have hp4 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Part4.sound rho p4
  have hp5 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Part5.sound rho p5
  have ha0 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) + (2460473050623699025207425440478059302299840127402356580032311810234352192553 : F)) = (rho 17) := by
    rw [hPrev0]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_0 (rho 6) (rho 12) + (2460473050623699025207425440478059302299840127402356580032311810234352192553 : F) = ((2699872965561633760607534861177035728742865838072608683961206219160986156048 : F) + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 6 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_0
      have hc : (2699872965561633760607534861177035728742865838072608683961206219160986156048 : F) = (2699872965561633760607534861177035728742865838072608683961206219160986156048 : F) :=
        (ZMod.natCast_eq_natCast_iff' 2699872965561633760607534861177035728742865838072608683961206219160986156048 2699872965561633760607534861177035728742865838072608683961206219160986156048 Order).mpr (by decide)
      linear_combination hc, ← hp2]
  have ha1 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) + (6739526644189243304596281380207849534959661650376903866949397817731628238273 : F)) = (rho 22) := by
    rw [hPrev1]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_1 (rho 6) (rho 12) + (6739526644189243304596281380207849534959661650376903866949397817731628238273 : F) = ((1229541596636231782017806160053824167424593549651171086147674749103416843683 : F) + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 6 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_1
      have hc : (9674003346064602206266631098835370698800492884805234914082908205020826082724 : F) = (1229541596636231782017806160053824167424593549651171086147674749103416843683 : F) :=
        (ZMod.natCast_eq_natCast_iff' 9674003346064602206266631098835370698800492884805234914082908205020826082724 1229541596636231782017806160053824167424593549651171086147674749103416843683 Order).mpr (by decide)
      linear_combination hc, ← hp3]
  have ha2 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) + (597549483098771783017881992848590630624851676141528707360377946657258324767 : F)) = (rho 27) := by
    rw [hPrev2]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_2 (rho 6) (rho 12) + (597549483098771783017881992848590630624851676141528707360377946657258324767 : F) = ((7322851826110261900247624821202944291159595532029759190835109850877047665561 : F) + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 6 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_2
      have hc : (7322851826110261900247624821202944291159595532029759190835109850877047665561 : F) = (7322851826110261900247624821202944291159595532029759190835109850877047665561 : F) :=
        (ZMod.natCast_eq_natCast_iff' 7322851826110261900247624821202944291159595532029759190835109850877047665561 7322851826110261900247624821202944291159595532029759190835109850877047665561 Order).mpr (by decide)
      linear_combination hc, ← hp4]
  have ha3 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (0 : F) + (4344854910230270044421510722988181256819181450723410913296668891739456698878 : F)) = (rho 32) := by
    rw [hPrev3]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_3 (rho 6) (rho 12) + (4344854910230270044421510722988181256819181450723410913296668891739456698878 : F) = ((739404717780738520430340622437489865158857948910284340161480572605079450957 : F) + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 6 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Fixed.s0_3
      have hc : (9183866467209108944679165561219036396534757284064348168096714028522488689998 : F) = (739404717780738520430340622437489865158857948910284340161480572605079450957 : F) :=
        (ZMod.natCast_eq_natCast_iff' 9183866467209108944679165561219036396534757284064348168096714028522488689998 739404717780738520430340622437489865158857948910284340161480572605079450957 Order).mpr (by decide)
      linear_combination hc, ← hp5]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane1 Shieldd.GnarkFormal.Deployed.Nullifier.s1_1
  rw [ha0, ha1, ha2, ha3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b.Round1Lane1
