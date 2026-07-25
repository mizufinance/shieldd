import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32Part2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32Part3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32Part4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32Part5
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.Nullifier.Round01
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32Fixed
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Round1Lane2

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p2 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationPart2 rho) (p3 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationPart3 rho) (p4 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationPart4 rho) (p5 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.relationPart5 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_0 (rho 6) (rho 12))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_1 (rho 6) (rho 12))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_2 (rho 6) (rho 12))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_3 (rho 6) (rho 12)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_2 (rho 17) (rho 22) (rho 27) (rho 32) := by
  have hp2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Part2.sound rho p2
  have hp3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Part3.sound rho p3
  have hp4 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Part4.sound rho p4
  have hp5 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Part5.sound rho p5
  have ha0 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) + (2460473050623699025207425440478059302299840127402356580032311810234352192553 : F)) = (rho 17) := by
    rw [hPrev0]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_0 (rho 6) (rho 12) + (2460473050623699025207425440478059302299840127402356580032311810234352192553 : F) = ((6976794124577740234048013889436914139594869958332518365676555370407027739483 : F) + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 6 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_0
      have hc : (6976794124577740234048013889436914139594869958332518365676555370407027739483 : F) = (6976794124577740234048013889436914139594869958332518365676555370407027739483 : F) :=
        Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq Order 6976794124577740234048013889436914139594869958332518365676555370407027739483 6976794124577740234048013889436914139594869958332518365676555370407027739483 (by decide) (by decide)
      linear_combination hc, ← hp2]
  have ha1 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) + (6739526644189243304596281380207849534959661650376903866949397817731628238273 : F)) = (rho 22) := by
    rw [hPrev1]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_1 (rho 6) (rho 12) + (6739526644189243304596281380207849534959661650376903866949397817731628238273 : F) = ((8138520766810963855371534661824297726186059405561365993124317802412731693829 : F) + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 6 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_1
      have hc : (8138520766810963855371534661824297726186059405561365993124317802412731693829 : F) = (8138520766810963855371534661824297726186059405561365993124317802412731693829 : F) :=
        Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq Order 8138520766810963855371534661824297726186059405561365993124317802412731693829 8138520766810963855371534661824297726186059405561365993124317802412731693829 (by decide) (by decide)
      linear_combination hc, ← hp3]
  have ha2 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) + (597549483098771783017881992848590630624851676141528707360377946657258324767 : F)) = (rho 27) := by
    rw [hPrev2]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_2 (rho 6) (rho 12) + (597549483098771783017881992848590630624851676141528707360377946657258324767 : F) = ((328337256043669749952766918005403961251721771488055375803984966836024271627 : F) + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 6 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_2
      have hc : (8772799005472040174201591856786950492627621106642119203739218422753433510668 : F) = (328337256043669749952766918005403961251721771488055375803984966836024271627 : F) :=
        Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq Order 8772799005472040174201591856786950492627621106642119203739218422753433510668 328337256043669749952766918005403961251721771488055375803984966836024271627 (by decide) (by decide)
      linear_combination hc, ← hp4]
  have ha3 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (2 : F) + (4344854910230270044421510722988181256819181450723410913296668891739456698878 : F)) = (rho 32) := by
    rw [hPrev3]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_3 (rho 6) (rho 12) + (4344854910230270044421510722988181256819181450723410913296668891739456698878 : F) = ((7955480403806198263963088411610178018443210500669253031329841706436013178882 : F) + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 6 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Fixed.s0_3
      have hc : (7955480403806198263963088411610178018443210500669253031329841706436013178882 : F) = (7955480403806198263963088411610178018443210500669253031329841706436013178882 : F) :=
        Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq Order 7955480403806198263963088411610178018443210500669253031329841706436013178882 7955480403806198263963088411610178018443210500669253031329841706436013178882 (by decide) (by decide)
      linear_combination hc, ← hp5]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane2 Shieldd.GnarkFormal.Deployed.Nullifier.s1_2
  rw [ha0, ha1, ha2, ha3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32.Round1Lane2
