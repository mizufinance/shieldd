import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bbPart2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bbPart3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bbPart4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bbPart5
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZModCast
import ShielddGnarkFormal.Deployed.Nullifier.Round01
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bbFixed
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Round1Lane1

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound (rho : Nat → F) (p2 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationPart2 rho) (p3 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationPart3 rho) (p4 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationPart4 rho) (p5 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.relationPart5 rho)
    (hPrev0 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_0 (rho 6) (rho 12))
    (hPrev1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_1 (rho 6) (rho 12))
    (hPrev2 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_2 (rho 6) (rho 12))
    (hPrev3 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_3 (rho 6) (rho 12)) :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) = Shieldd.GnarkFormal.Deployed.Nullifier.s1_1 (rho 17) (rho 22) (rho 27) (rho 32) := by
  have hp2 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Part2.sound rho p2
  have hp3 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Part3.sound rho p3
  have hp4 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Part4.sound rho p4
  have hp5 := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Part5.sound rho p5
  have ha0 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane0 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (2460473050623699025207425440478059302299840127402356580032311810234352192553 : F)) = (rho 17) := by
    rw [hPrev0]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_0 (rho 6) (rho 12) + (2460473050623699025207425440478059302299840127402356580032311810234352192553 : F) = ((921294592652393816666414464529070042460020455640616992996906349629728941903 : F) + (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) * rho 6 + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_0
      have hc : (9365756342080764240915239403310616573835919790794680820932139805547138180944 : F) = (921294592652393816666414464529070042460020455640616992996906349629728941903 : F) :=
        Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq Order 9365756342080764240915239403310616573835919790794680820932139805547138180944 921294592652393816666414464529070042460020455640616992996906349629728941903 (by decide) (by decide)
      linear_combination hc, ← hp2]
  have ha1 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane1 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (6739526644189243304596281380207849534959661650376903866949397817731628238273 : F)) = (rho 22) := by
    rw [hPrev1]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_1 (rho 6) (rho 12) + (6739526644189243304596281380207849534959661650376903866949397817731628238273 : F) = ((5270221671655567663040922197425692436652401991811609028476674758029344450529 : F) + (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 6 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_1
      have hc : (13714683421083938087289747136207238968028301326965672856411908213946753689570 : F) = (5270221671655567663040922197425692436652401991811609028476674758029344450529 : F) :=
        Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq Order 13714683421083938087289747136207238968028301326965672856411908213946753689570 5270221671655567663040922197425692436652401991811609028476674758029344450529 (by decide) (by decide)
      linear_combination hc, ← hp3]
  have ha2 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane2 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (597549483098771783017881992848590630624851676141528707360377946657258324767 : F)) = (rho 27) := by
    rw [hPrev2]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_2 (rho 6) (rho 12) + (597549483098771783017881992848590630624851676141528707360377946657258324767 : F) = ((5474050760832796069771077738316386791105780408183522679148949175498797538847 : F) + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 6 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_2
      have hc : (5474050760832796069771077738316386791105780408183522679148949175498797538847 : F) = (5474050760832796069771077738316386791105780408183522679148949175498797538847 : F) :=
        Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq Order 5474050760832796069771077738316386791105780408183522679148949175498797538847 5474050760832796069771077738316386791105780408183522679148949175498797538847 (by decide) (by decide)
      linear_combination hc, ← hp4]
  have ha3 : Shieldd.GnarkFormal.Poseidon3Bridge.p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarBase.state0Lane3 Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.syntheticDummyNullifierDomainLit (rho 1) (rho 7) (1 : F) + (4344854910230270044421510722988181256819181450723410913296668891739456698878 : F)) = (rho 32) := by
    rw [hPrev3]
    rw [show Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_3 (rho 6) (rho 12) + (4344854910230270044421510722988181256819181450723410913296668891739456698878 : F) = ((7882795866222939068158746583995987085521963107823190761506172846972045514146 : F) + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 6 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 12) by
      unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Fixed.s0_3
      have hc : (7882795866222939068158746583995987085521963107823190761506172846972045514146 : F) = (7882795866222939068158746583995987085521963107823190761506172846972045514146 : F) :=
        Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq Order 7882795866222939068158746583995987085521963107823190761506172846972045514146 7882795866222939068158746583995987085521963107823190761506172846972045514146 (by decide) (by decide)
      linear_combination hc, ← hp5]
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound01.state1Lane1 Shieldd.GnarkFormal.Deployed.Nullifier.s1_1
  rw [ha0, ha1, ha2, ha3]

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb.Round1Lane1
