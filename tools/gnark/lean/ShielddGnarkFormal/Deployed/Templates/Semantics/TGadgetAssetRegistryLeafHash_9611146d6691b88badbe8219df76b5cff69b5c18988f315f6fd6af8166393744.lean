import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744
import ShielddGnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691Poseidon.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

instance templateFactPrime : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

local instance (priority := 2000) providerCommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) providerAdd : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) providerAddSemigroup : AddSemigroup F := (ZMod.commRing _).toAddSemigroup
local instance (priority := 3000) providerMul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) providerNatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) providerZero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) providerOne : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) providerNeg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) providerSub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) providerMulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) providerCommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) providerRing : Ring F := (ZMod.commRing _).toRing

def output (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691Poseidon.s38_1 (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404)

def spec (rho : Nat → F) : Prop :=
  output rho =
    Shieldd.GnarkFormal.Poseidon5Bridge.permSpec5
      (7414146286439358428123110060125696348906971675449116418017868010797147357618 : F)
      (rho 1) (rho 7) (rho 13) ((7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) * rho 19 + (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 20 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 21 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 22 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 23) ((7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) * rho 29 + (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 30 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 31 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 32 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 33 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 34)

theorem template_part0_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart0 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 20) (rho 21) (rho 22) (rho 23) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34) (rho 6)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg0 (rho 1) (rho 7) (rho 13) (rho 19) (rho 20) (rho 21) (rho 22) (rho 23) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg0
  refine ⟨(rho 2), (rho 3), (rho 4), (rho 5), (rho 6), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part1_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart1 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 13) (rho 19) (rho 20) (rho 21) (rho 22) (rho 23) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34) (rho 12)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg1 (rho 6) (rho 7) (rho 13) (rho 19) (rho 20) (rho 21) (rho 22) (rho 23) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg1
  refine ⟨(rho 8), (rho 9), (rho 10), (rho 11), (rho 12), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part2_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart2 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 19) (rho 20) (rho 21) (rho 22) (rho 23) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34) (rho 18)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg2 (rho 6) (rho 12) (rho 13) (rho 19) (rho 20) (rho 21) (rho 22) (rho 23) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg2
  refine ⟨(rho 14), (rho 15), (rho 16), (rho 17), (rho 18), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part3_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart3 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34) (rho 28)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg3 (rho 6) (rho 12) (rho 18) (rho 19) (rho 20) (rho 21) (rho 22) (rho 23) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg3
  refine ⟨(rho 24), (rho 25), (rho 26), (rho 27), (rho 28), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart4 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 28) (rho 39)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg4 (rho 6) (rho 12) (rho 18) (rho 28) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg4
  refine ⟨(rho 35), (rho 36), (rho 37), (rho 38), (rho 39), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part5_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart5 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) (rho 44)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg5 (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg5
  refine ⟨(rho 40), (rho 41), (rho 42), (rho 43), (rho 44), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part6_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart6 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) (rho 44) (rho 49)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg6 (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) (rho 44) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg6
  refine ⟨(rho 45), (rho 46), (rho 47), (rho 48), (rho 49), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part7_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart7 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) (rho 44) (rho 49) (rho 54)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg7 (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) (rho 44) (rho 49) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg7
  refine ⟨(rho 50), (rho 51), (rho 52), (rho 53), (rho 54), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart8 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) (rho 44) (rho 49) (rho 54) (rho 59)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg8 (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) (rho 44) (rho 49) (rho 54) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg8
  refine ⟨(rho 55), (rho 56), (rho 57), (rho 58), (rho 59), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part9_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart9 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) (rho 44) (rho 49) (rho 54) (rho 59) (rho 64)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg9 (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) (rho 44) (rho 49) (rho 54) (rho 59) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg9
  refine ⟨(rho 60), (rho 61), (rho 62), (rho 63), (rho 64), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part10_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart10 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg10 (rho 6) (rho 12) (rho 18) (rho 28) (rho 39) (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg10
  refine ⟨(rho 65), (rho 66), (rho 67), (rho 68), (rho 69), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part11_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart11 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg11 (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg11
  refine ⟨(rho 70), (rho 71), (rho 72), (rho 73), (rho 74), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part12_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart12 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg12 (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg12
  refine ⟨(rho 75), (rho 76), (rho 77), (rho 78), (rho 79), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part13_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart13 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg13 (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg13
  refine ⟨(rho 80), (rho 81), (rho 82), (rho 83), (rho 84), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part14_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart14 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg14 (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg14
  refine ⟨(rho 85), (rho 86), (rho 87), (rho 88), (rho 89), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part15_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart15 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg15 (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg15
  refine ⟨(rho 90), (rho 91), (rho 92), (rho 93), (rho 94), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part16_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart16 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg16 (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg16
  refine ⟨(rho 95), (rho 96), (rho 97), (rho 98), (rho 99), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart17 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg17 (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg17
  refine ⟨(rho 100), (rho 101), (rho 102), (rho 103), (rho 104), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part18_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart18 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg18 (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg18
  refine ⟨(rho 105), (rho 106), (rho 107), (rho 108), (rho 109), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part19_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart19 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg19 (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart19 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow96 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow97 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow98 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg19
  refine ⟨(rho 110), (rho 111), (rho 112), (rho 113), (rho 114), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part20_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart20 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg20 (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg20
  refine ⟨(rho 115), (rho 116), (rho 117), (rho 118), (rho 119), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part21_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart21 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg21 (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow108 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg21
  refine ⟨(rho 120), (rho 121), (rho 122), (rho 123), (rho 124), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part22_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart22 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg22 (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow112 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg22
  refine ⟨(rho 125), (rho 126), (rho 127), (rho 128), (rho 129), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part23_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart23 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg23 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow115 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg23
  refine ⟨(rho 130), (rho 131), (rho 132), (rho 133), (rho 134), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part24_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart24 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg24 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart24 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow120 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow121 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg24
  refine ⟨(rho 135), (rho 136), (rho 137), (rho 138), (rho 139), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg25 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg25
  refine ⟨(rho 140), (rho 141), (rho 142), (rho 143), (rho 144), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part26_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart26 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg26 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg26
  refine ⟨(rho 145), (rho 146), (rho 147), (rho 148), (rho 149), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part27_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart27 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg27 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow138 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg27
  refine ⟨(rho 150), (rho 151), (rho 152), (rho 153), (rho 154), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part28_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart28 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg28 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow140 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg28
  refine ⟨(rho 155), (rho 156), (rho 157), (rho 158), (rho 159), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part29_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart29 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg29 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart29 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg29
  refine ⟨(rho 160), (rho 161), (rho 162), (rho 163), (rho 164), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part30_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart30 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg30 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow151 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow152 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg30
  refine ⟨(rho 165), (rho 166), (rho 167), (rho 168), (rho 169), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg31 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg31
  refine ⟨(rho 170), (rho 171), (rho 172), (rho 173), (rho 174), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part32_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart32 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg32 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg32
  refine ⟨(rho 175), (rho 176), (rho 177), (rho 178), (rho 179), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part33_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart33 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg33 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow165 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow166 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg33
  refine ⟨(rho 180), (rho 181), (rho 182), (rho 183), (rho 184), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part34_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart34 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg34 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart34 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow172 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow173 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg34
  refine ⟨(rho 185), (rho 186), (rho 187), (rho 188), (rho 189), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part35_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart35 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg35 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow177 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow178 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg35
  refine ⟨(rho 190), (rho 191), (rho 192), (rho 193), (rho 194), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part36_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart36 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg36 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow180 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg36
  refine ⟨(rho 195), (rho 196), (rho 197), (rho 198), (rho 199), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part37_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart37 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg37 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow185 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow186 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg37
  refine ⟨(rho 200), (rho 201), (rho 202), (rho 203), (rho 204), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part38_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart38 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg38 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow192 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg38
  refine ⟨(rho 205), (rho 206), (rho 207), (rho 208), (rho 209), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part39_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart39 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg39 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart39 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg39
  refine ⟨(rho 210), (rho 211), (rho 212), (rho 213), (rho 214), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg40 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg40
  refine ⟨(rho 215), (rho 216), (rho 217), (rho 218), (rho 219), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part41_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart41 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg41 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow205 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow206 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg41
  refine ⟨(rho 220), (rho 221), (rho 222), (rho 223), (rho 224), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part42_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart42 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg42 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg42
  refine ⟨(rho 225), (rho 226), (rho 227), (rho 228), (rho 229), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part43_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart43 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg43 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow218 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg43
  refine ⟨(rho 230), (rho 231), (rho 232), (rho 233), (rho 234), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part44_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart44 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg44 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg44
  refine ⟨(rho 235), (rho 236), (rho 237), (rho 238), (rho 239), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part45_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart45 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg45 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg45
  refine ⟨(rho 240), (rho 241), (rho 242), (rho 243), (rho 244), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part46_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart46 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg46 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow232 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg46
  refine ⟨(rho 245), (rho 246), (rho 247), (rho 248), (rho 249), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part47_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart47 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg47 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow238 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg47
  refine ⟨(rho 250), (rho 251), (rho 252), (rho 253), (rho 254), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part48_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart48 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg48 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg48
  refine ⟨(rho 255), (rho 256), (rho 257), (rho 258), (rho 259), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part49_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart49 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg49 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart49 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg49
  refine ⟨(rho 260), (rho 261), (rho 262), (rho 263), (rho 264), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc0Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc0Part1, choiceFreeAddAssoc] using h4

theorem template_part50_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart50 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg50 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow250 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg50
  refine ⟨(rho 265), (rho 266), (rho 267), (rho 268), (rho 269), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc1Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc1Part1, choiceFreeAddAssoc] using h4

theorem template_part51_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart51 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg51 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow255 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow256 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow257 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg51
  refine ⟨(rho 270), (rho 271), (rho 272), (rho 273), (rho 274), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc2Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc2Part1, choiceFreeAddAssoc] using h4

theorem template_part52_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart52 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg52 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow263 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg52
  refine ⟨(rho 275), (rho 276), (rho 277), (rho 278), (rho 279), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc3Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc3Part1, choiceFreeAddAssoc] using h4

theorem template_part53_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart53 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg53 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg53
  refine ⟨(rho 280), (rho 281), (rho 282), (rho 283), (rho 284), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc4Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc4Part1, choiceFreeAddAssoc] using h4

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart54 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg54 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg54
  refine ⟨(rho 285), (rho 286), (rho 287), (rho 288), (rho 289), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc5Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc5Part1, choiceFreeAddAssoc] using h4

theorem template_part55_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart55 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg55 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow276 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow277 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg55
  refine ⟨(rho 290), (rho 291), (rho 292), (rho 293), (rho 294), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc6Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc6Part1, choiceFreeAddAssoc] using h4

theorem template_part56_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart56 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg56 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow283 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg56
  refine ⟨(rho 295), (rho 296), (rho 297), (rho 298), (rho 299), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc7Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc7Part1, choiceFreeAddAssoc] using h4

theorem template_part57_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart57 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg57 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg57
  refine ⟨(rho 300), (rho 301), (rho 302), (rho 303), (rho 304), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc8Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc8Part1, choiceFreeAddAssoc] using h4

theorem template_part58_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart58 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg58 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow290 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg58
  refine ⟨(rho 305), (rho 306), (rho 307), (rho 308), (rho 309), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc9Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc9Part1, choiceFreeAddAssoc] using h4

theorem template_part59_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart59 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg59 (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart59 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow297 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg59
  refine ⟨(rho 310), (rho 311), (rho 312), (rho 313), (rho 314), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc10Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationLc10Part1, choiceFreeAddAssoc] using h4

theorem template_part60_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart60 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg60 (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg60
  refine ⟨(rho 315), (rho 316), (rho 317), (rho 318), (rho 319), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part61_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart61 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg61 (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow308 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg61
  refine ⟨(rho 320), (rho 321), (rho 322), (rho 323), (rho 324), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part62_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart62 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg62 (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow310 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow311 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow312 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow313 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg62
  refine ⟨(rho 325), (rho 326), (rho 327), (rho 328), (rho 329), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part63_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart63 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg63 (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow315 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow316 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow317 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow318 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg63
  refine ⟨(rho 330), (rho 331), (rho 332), (rho 333), (rho 334), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part64_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart64 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) (rho 339)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg64 (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart64 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow320 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow321 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow322 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow323 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg64
  refine ⟨(rho 335), (rho 336), (rho 337), (rho 338), (rho 339), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part65_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart65 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg65 (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow325 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow326 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow327 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow328 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg65
  refine ⟨(rho 340), (rho 341), (rho 342), (rho 343), (rho 344), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part66_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart66 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg66 (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow330 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow331 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow332 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow333 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg66
  refine ⟨(rho 345), (rho 346), (rho 347), (rho 348), (rho 349), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part67_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart67 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg67 (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow335 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow336 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow337 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow338 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg67
  refine ⟨(rho 350), (rho 351), (rho 352), (rho 353), (rho 354), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part68_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart68 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg68 (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow340 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow341 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow342 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow343 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg68
  refine ⟨(rho 355), (rho 356), (rho 357), (rho 358), (rho 359), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part69_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart69 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg69 (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart69 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow345 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow346 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow347 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow348 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg69
  refine ⟨(rho 360), (rho 361), (rho 362), (rho 363), (rho 364), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part70_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart70 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg70 (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow350 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow351 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow352 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow353 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg70
  refine ⟨(rho 365), (rho 366), (rho 367), (rho 368), (rho 369), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part71_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart71 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg71 (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow355 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow356 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow357 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow358 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg71
  refine ⟨(rho 370), (rho 371), (rho 372), (rho 373), (rho 374), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part72_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart72 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg72 (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow360 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow361 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow362 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow363 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg72
  refine ⟨(rho 375), (rho 376), (rho 377), (rho 378), (rho 379), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part73_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart73 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg73 (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow365 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow366 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow367 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow368 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg73
  refine ⟨(rho 380), (rho 381), (rho 382), (rho 383), (rho 384), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part74_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart74 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg74 (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart74 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow370 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow371 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow372 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow373 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg74
  refine ⟨(rho 385), (rho 386), (rho 387), (rho 388), (rho 389), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part75_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart75 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg75 (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow375 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow376 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow377 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow378 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg75
  refine ⟨(rho 390), (rho 391), (rho 392), (rho 393), (rho 394), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part76_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart76 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg76 (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow380 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow381 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow382 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow383 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg76
  refine ⟨(rho 395), (rho 396), (rho 397), (rho 398), (rho 399), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part77_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart77 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg77 (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationPart77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow385 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow386 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow387 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow388 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.seg77
  refine ⟨(rho 400), (rho 401), (rho 402), (rho 403), (rho 404), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
theorem template_relation_to_poseidon
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.relation (rho 1) (rho 7) (rho 13) (rho 19) (rho 20) (rho 21) (rho 22) (rho 23) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34)
      (fun w379 w384 w389 w394 w399 w404 => w379 = rho 379 ∧ w384 = rho 384 ∧ w389 = rho 389 ∧ w394 = rho 394 ∧ w399 = rho 399 ∧ w404 = rho 404) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7,
    p8, p9, p10, p11, p12, p13, p14, p15,
    p16, p17, p18, p19, p20, p21, p22, p23,
    p24, p25, p26, p27, p28, p29, p30, p31,
    p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41, p42, p43, p44, p45, p46, p47,
    p48, p49, p50, p51, p52, p53, p54, p55,
    p56, p57, p58, p59, p60, p61, p62, p63,
    p64, p65, p66, p67, p68, p69, p70, p71,
    p72, p73, p74, p75, p76, p77
  ⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691PoseidonRows390.relation
  apply template_part0_to_extracted rho p0
  apply template_part1_to_extracted rho p1
  apply template_part2_to_extracted rho p2
  apply template_part3_to_extracted rho p3
  apply template_part4_to_extracted rho p4
  apply template_part5_to_extracted rho p5
  apply template_part6_to_extracted rho p6
  apply template_part7_to_extracted rho p7
  apply template_part8_to_extracted rho p8
  apply template_part9_to_extracted rho p9
  apply template_part10_to_extracted rho p10
  apply template_part11_to_extracted rho p11
  apply template_part12_to_extracted rho p12
  apply template_part13_to_extracted rho p13
  apply template_part14_to_extracted rho p14
  apply template_part15_to_extracted rho p15
  apply template_part16_to_extracted rho p16
  apply template_part17_to_extracted rho p17
  apply template_part18_to_extracted rho p18
  apply template_part19_to_extracted rho p19
  apply template_part20_to_extracted rho p20
  apply template_part21_to_extracted rho p21
  apply template_part22_to_extracted rho p22
  apply template_part23_to_extracted rho p23
  apply template_part24_to_extracted rho p24
  apply template_part25_to_extracted rho p25
  apply template_part26_to_extracted rho p26
  apply template_part27_to_extracted rho p27
  apply template_part28_to_extracted rho p28
  apply template_part29_to_extracted rho p29
  apply template_part30_to_extracted rho p30
  apply template_part31_to_extracted rho p31
  apply template_part32_to_extracted rho p32
  apply template_part33_to_extracted rho p33
  apply template_part34_to_extracted rho p34
  apply template_part35_to_extracted rho p35
  apply template_part36_to_extracted rho p36
  apply template_part37_to_extracted rho p37
  apply template_part38_to_extracted rho p38
  apply template_part39_to_extracted rho p39
  apply template_part40_to_extracted rho p40
  apply template_part41_to_extracted rho p41
  apply template_part42_to_extracted rho p42
  apply template_part43_to_extracted rho p43
  apply template_part44_to_extracted rho p44
  apply template_part45_to_extracted rho p45
  apply template_part46_to_extracted rho p46
  apply template_part47_to_extracted rho p47
  apply template_part48_to_extracted rho p48
  apply template_part49_to_extracted rho p49
  apply template_part50_to_extracted rho p50
  apply template_part51_to_extracted rho p51
  apply template_part52_to_extracted rho p52
  apply template_part53_to_extracted rho p53
  apply template_part54_to_extracted rho p54
  apply template_part55_to_extracted rho p55
  apply template_part56_to_extracted rho p56
  apply template_part57_to_extracted rho p57
  apply template_part58_to_extracted rho p58
  apply template_part59_to_extracted rho p59
  apply template_part60_to_extracted rho p60
  apply template_part61_to_extracted rho p61
  apply template_part62_to_extracted rho p62
  apply template_part63_to_extracted rho p63
  apply template_part64_to_extracted rho p64
  apply template_part65_to_extracted rho p65
  apply template_part66_to_extracted rho p66
  apply template_part67_to_extracted rho p67
  apply template_part68_to_extracted rho p68
  apply template_part69_to_extracted rho p69
  apply template_part70_to_extracted rho p70
  apply template_part71_to_extracted rho p71
  apply template_part72_to_extracted rho p72
  apply template_part73_to_extracted rho p73
  apply template_part74_to_extracted rho p74
  apply template_part75_to_extracted rho p75
  apply template_part76_to_extracted rho p76
  apply template_part77_to_extracted rho p77
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.relation rho) : spec rho := by
  have hExtracted := template_relation_to_poseidon rho h
  rcases Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691Poseidon.relation_sound_permSpec
      (rho 1) (rho 7) (rho 13) (rho 19) (rho 20) (rho 21) (rho 22) (rho 23) (rho 29) (rho 30) (rho 31) (rho 32) (rho 33) (rho 34) _ hExtracted with
    ⟨w379, w384, w389, w394, w399, w404, hk, hperm⟩
  rcases hk with ⟨hw379, hw384, hw389, hw394, hw399, hw404⟩
  unfold spec output
  rw [← hw379, ← hw384, ← hw389, ← hw394, ← hw399, ← hw404]
  exact hperm


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744
