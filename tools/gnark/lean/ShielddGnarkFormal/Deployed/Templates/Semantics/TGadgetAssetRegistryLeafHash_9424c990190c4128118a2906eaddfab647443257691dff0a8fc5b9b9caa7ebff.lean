import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff
import ShielddGnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidon.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff

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
  Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidon.s38_1 (rho 370) (rho 375) (rho 380) (rho 385) (rho 390) (rho 395)

def spec (rho : Nat → F) : Prop :=
  output rho =
    Shieldd.GnarkFormal.Poseidon5Bridge.permSpec5
      (7414146286439358428123110060125696348906971675449116418017868010797147357618 : F)
      (rho 1) (rho 7) (rho 13) (rho 19) (rho 25)

theorem template_part0_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart0 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 6)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg0 (rho 1) (rho 7) (rho 13) (rho 19) (rho 25) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg0
  refine ⟨(rho 2), (rho 3), (rho 4), (rho 5), (rho 6), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part1_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart1 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 6) (rho 13) (rho 19) (rho 25) (rho 12)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg1 (rho 6) (rho 7) (rho 13) (rho 19) (rho 25) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg1
  refine ⟨(rho 8), (rho 9), (rho 10), (rho 11), (rho 12), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part2_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart2 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 19) (rho 25) (rho 18)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg2 (rho 6) (rho 12) (rho 13) (rho 19) (rho 25) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg2
  refine ⟨(rho 14), (rho 15), (rho 16), (rho 17), (rho 18), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part3_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart3 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 24)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg3 (rho 6) (rho 12) (rho 18) (rho 19) (rho 25) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg3
  refine ⟨(rho 20), (rho 21), (rho 22), (rho 23), (rho 24), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart4 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 24) (rho 30)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg4 (rho 6) (rho 12) (rho 18) (rho 24) (rho 25) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg4
  refine ⟨(rho 26), (rho 27), (rho 28), (rho 29), (rho 30), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part5_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart5 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) (rho 35)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg5 (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg5
  refine ⟨(rho 31), (rho 32), (rho 33), (rho 34), (rho 35), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part6_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart6 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) (rho 35) (rho 40)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg6 (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) (rho 35) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg6
  refine ⟨(rho 36), (rho 37), (rho 38), (rho 39), (rho 40), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part7_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart7 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) (rho 35) (rho 40) (rho 45)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg7 (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) (rho 35) (rho 40) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg7
  refine ⟨(rho 41), (rho 42), (rho 43), (rho 44), (rho 45), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart8 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) (rho 35) (rho 40) (rho 45) (rho 50)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg8 (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) (rho 35) (rho 40) (rho 45) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg8
  refine ⟨(rho 46), (rho 47), (rho 48), (rho 49), (rho 50), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part9_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart9 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) (rho 55)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg9 (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg9
  refine ⟨(rho 51), (rho 52), (rho 53), (rho 54), (rho 55), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part10_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart10 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg10 (rho 6) (rho 12) (rho 18) (rho 24) (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg10
  refine ⟨(rho 56), (rho 57), (rho 58), (rho 59), (rho 60), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part11_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart11 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg11 (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg11
  refine ⟨(rho 61), (rho 62), (rho 63), (rho 64), (rho 65), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part12_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart12 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) (rho 70)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg12 (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg12
  refine ⟨(rho 66), (rho 67), (rho 68), (rho 69), (rho 70), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part13_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart13 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) (rho 70) (rho 75)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg13 (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) (rho 70) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg13
  refine ⟨(rho 71), (rho 72), (rho 73), (rho 74), (rho 75), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part14_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart14 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg14 (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg14
  refine ⟨(rho 76), (rho 77), (rho 78), (rho 79), (rho 80), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part15_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart15 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80) (rho 85)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg15 (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg15
  refine ⟨(rho 81), (rho 82), (rho 83), (rho 84), (rho 85), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part16_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart16 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg16 (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg16
  refine ⟨(rho 86), (rho 87), (rho 88), (rho 89), (rho 90), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart17 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg17 (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg17
  refine ⟨(rho 91), (rho 92), (rho 93), (rho 94), (rho 95), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part18_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart18 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95) (rho 100)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg18 (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg18
  refine ⟨(rho 96), (rho 97), (rho 98), (rho 99), (rho 100), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part19_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart19 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg19 (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart19 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow96 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow97 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow98 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg19
  refine ⟨(rho 101), (rho 102), (rho 103), (rho 104), (rho 105), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part20_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart20 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg20 (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg20
  refine ⟨(rho 106), (rho 107), (rho 108), (rho 109), (rho 110), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part21_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart21 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg21 (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow108 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg21
  refine ⟨(rho 111), (rho 112), (rho 113), (rho 114), (rho 115), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part22_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart22 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg22 (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow112 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg22
  refine ⟨(rho 116), (rho 117), (rho 118), (rho 119), (rho 120), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part23_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart23 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg23 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow115 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg23
  refine ⟨(rho 121), (rho 122), (rho 123), (rho 124), (rho 125), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part24_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart24 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg24 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart24 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow120 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow121 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg24
  refine ⟨(rho 126), (rho 127), (rho 128), (rho 129), (rho 130), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg25 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg25
  refine ⟨(rho 131), (rho 132), (rho 133), (rho 134), (rho 135), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part26_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart26 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg26 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg26
  refine ⟨(rho 136), (rho 137), (rho 138), (rho 139), (rho 140), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part27_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart27 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg27 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow138 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg27
  refine ⟨(rho 141), (rho 142), (rho 143), (rho 144), (rho 145), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part28_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart28 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg28 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow140 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg28
  refine ⟨(rho 146), (rho 147), (rho 148), (rho 149), (rho 150), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part29_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart29 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg29 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart29 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg29
  refine ⟨(rho 151), (rho 152), (rho 153), (rho 154), (rho 155), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part30_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart30 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg30 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow151 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow152 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg30
  refine ⟨(rho 156), (rho 157), (rho 158), (rho 159), (rho 160), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg31 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg31
  refine ⟨(rho 161), (rho 162), (rho 163), (rho 164), (rho 165), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part32_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart32 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg32 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg32
  refine ⟨(rho 166), (rho 167), (rho 168), (rho 169), (rho 170), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part33_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart33 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg33 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow165 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow166 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg33
  refine ⟨(rho 171), (rho 172), (rho 173), (rho 174), (rho 175), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part34_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart34 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg34 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart34 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow172 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow173 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg34
  refine ⟨(rho 176), (rho 177), (rho 178), (rho 179), (rho 180), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part35_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart35 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg35 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow177 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow178 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg35
  refine ⟨(rho 181), (rho 182), (rho 183), (rho 184), (rho 185), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part36_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart36 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg36 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow180 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg36
  refine ⟨(rho 186), (rho 187), (rho 188), (rho 189), (rho 190), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part37_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart37 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg37 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow185 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow186 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg37
  refine ⟨(rho 191), (rho 192), (rho 193), (rho 194), (rho 195), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part38_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart38 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg38 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow192 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg38
  refine ⟨(rho 196), (rho 197), (rho 198), (rho 199), (rho 200), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part39_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart39 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg39 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart39 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg39
  refine ⟨(rho 201), (rho 202), (rho 203), (rho 204), (rho 205), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg40 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg40
  refine ⟨(rho 206), (rho 207), (rho 208), (rho 209), (rho 210), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part41_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart41 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg41 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow205 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow206 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg41
  refine ⟨(rho 211), (rho 212), (rho 213), (rho 214), (rho 215), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part42_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart42 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg42 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg42
  refine ⟨(rho 216), (rho 217), (rho 218), (rho 219), (rho 220), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part43_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart43 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg43 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow218 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg43
  refine ⟨(rho 221), (rho 222), (rho 223), (rho 224), (rho 225), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part44_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart44 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg44 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg44
  refine ⟨(rho 226), (rho 227), (rho 228), (rho 229), (rho 230), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part45_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart45 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg45 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg45
  refine ⟨(rho 231), (rho 232), (rho 233), (rho 234), (rho 235), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part46_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart46 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg46 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow232 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg46
  refine ⟨(rho 236), (rho 237), (rho 238), (rho 239), (rho 240), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part47_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart47 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg47 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow238 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg47
  refine ⟨(rho 241), (rho 242), (rho 243), (rho 244), (rho 245), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part48_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart48 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg48 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg48
  refine ⟨(rho 246), (rho 247), (rho 248), (rho 249), (rho 250), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part49_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart49 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg49 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart49 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg49
  refine ⟨(rho 251), (rho 252), (rho 253), (rho 254), (rho 255), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc0Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc0Part1, choiceFreeAddAssoc] using h4

theorem template_part50_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart50 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg50 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow250 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg50
  refine ⟨(rho 256), (rho 257), (rho 258), (rho 259), (rho 260), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc1Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc1Part1, choiceFreeAddAssoc] using h4

theorem template_part51_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart51 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg51 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow255 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow256 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow257 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg51
  refine ⟨(rho 261), (rho 262), (rho 263), (rho 264), (rho 265), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc2Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc2Part1, choiceFreeAddAssoc] using h4

theorem template_part52_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart52 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg52 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow263 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg52
  refine ⟨(rho 266), (rho 267), (rho 268), (rho 269), (rho 270), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc3Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc3Part1, choiceFreeAddAssoc] using h4

theorem template_part53_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart53 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg53 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg53
  refine ⟨(rho 271), (rho 272), (rho 273), (rho 274), (rho 275), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc4Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc4Part1, choiceFreeAddAssoc] using h4

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart54 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) (rho 280)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg54 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg54
  refine ⟨(rho 276), (rho 277), (rho 278), (rho 279), (rho 280), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc5Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc5Part1, choiceFreeAddAssoc] using h4

theorem template_part55_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart55 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg55 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow276 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow277 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg55
  refine ⟨(rho 281), (rho 282), (rho 283), (rho 284), (rho 285), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc6Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc6Part1, choiceFreeAddAssoc] using h4

theorem template_part56_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart56 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg56 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow283 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg56
  refine ⟨(rho 286), (rho 287), (rho 288), (rho 289), (rho 290), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc7Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc7Part1, choiceFreeAddAssoc] using h4

theorem template_part57_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart57 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290) (rho 295)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg57 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg57
  refine ⟨(rho 291), (rho 292), (rho 293), (rho 294), (rho 295), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc8Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc8Part1, choiceFreeAddAssoc] using h4

theorem template_part58_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart58 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290) (rho 295) (rho 300)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg58 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290) (rho 295) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow290 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg58
  refine ⟨(rho 296), (rho 297), (rho 298), (rho 299), (rho 300), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc9Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc9Part1, choiceFreeAddAssoc] using h4

theorem template_part59_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart59 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg59 (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart59 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow297 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg59
  refine ⟨(rho 301), (rho 302), (rho 303), (rho 304), (rho 305), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc10Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationLc10Part1, choiceFreeAddAssoc] using h4

theorem template_part60_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart60 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg60 (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg60
  refine ⟨(rho 306), (rho 307), (rho 308), (rho 309), (rho 310), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part61_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart61 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg61 (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow308 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg61
  refine ⟨(rho 311), (rho 312), (rho 313), (rho 314), (rho 315), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part62_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart62 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) (rho 320)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg62 (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow310 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow311 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow312 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow313 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg62
  refine ⟨(rho 316), (rho 317), (rho 318), (rho 319), (rho 320), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part63_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart63 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) (rho 320) (rho 325)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg63 (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) (rho 320) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow315 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow316 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow317 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow318 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg63
  refine ⟨(rho 321), (rho 322), (rho 323), (rho 324), (rho 325), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part64_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart64 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) (rho 320) (rho 325) (rho 330)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg64 (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) (rho 320) (rho 325) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart64 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow320 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow321 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow322 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow323 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg64
  refine ⟨(rho 326), (rho 327), (rho 328), (rho 329), (rho 330), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part65_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart65 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg65 (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow325 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow326 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow327 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow328 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg65
  refine ⟨(rho 331), (rho 332), (rho 333), (rho 334), (rho 335), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part66_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart66 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg66 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow330 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow331 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow332 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow333 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg66
  refine ⟨(rho 336), (rho 337), (rho 338), (rho 339), (rho 340), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part67_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart67 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg67 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow335 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow336 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow337 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow338 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg67
  refine ⟨(rho 341), (rho 342), (rho 343), (rho 344), (rho 345), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part68_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart68 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345) (rho 350)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg68 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow340 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow341 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow342 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow343 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg68
  refine ⟨(rho 346), (rho 347), (rho 348), (rho 349), (rho 350), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part69_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart69 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345) (rho 350) (rho 355)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg69 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345) (rho 350) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart69 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow345 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow346 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow347 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow348 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg69
  refine ⟨(rho 351), (rho 352), (rho 353), (rho 354), (rho 355), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part70_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart70 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345) (rho 350) (rho 355) (rho 360)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg70 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345) (rho 350) (rho 355) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow350 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow351 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow352 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow353 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg70
  refine ⟨(rho 356), (rho 357), (rho 358), (rho 359), (rho 360), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part71_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart71 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg71 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow355 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow356 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow357 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow358 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg71
  refine ⟨(rho 361), (rho 362), (rho 363), (rho 364), (rho 365), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part72_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart72 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) (rho 370)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg72 (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow360 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow361 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow362 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow363 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg72
  refine ⟨(rho 366), (rho 367), (rho 368), (rho 369), (rho 370), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part73_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart73 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) (rho 370) (rho 375)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg73 (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) (rho 370) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow365 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow366 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow367 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow368 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg73
  refine ⟨(rho 371), (rho 372), (rho 373), (rho 374), (rho 375), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part74_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart74 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) (rho 370) (rho 375) (rho 380)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg74 (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) (rho 370) (rho 375) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart74 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow370 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow371 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow372 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow373 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg74
  refine ⟨(rho 376), (rho 377), (rho 378), (rho 379), (rho 380), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part75_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart75 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) (rho 370) (rho 375) (rho 380) (rho 385)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg75 (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) (rho 370) (rho 375) (rho 380) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow375 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow376 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow377 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow378 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg75
  refine ⟨(rho 381), (rho 382), (rho 383), (rho 384), (rho 385), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part76_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart76 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) (rho 370) (rho 375) (rho 380) (rho 385) (rho 390)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg76 (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) (rho 370) (rho 375) (rho 380) (rho 385) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow380 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow381 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow382 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow383 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg76
  refine ⟨(rho 386), (rho 387), (rho 388), (rho 389), (rho 390), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part77_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart77 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 370) (rho 375) (rho 380) (rho 385) (rho 390) (rho 395)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg77 (rho 340) (rho 345) (rho 350) (rho 355) (rho 360) (rho 365) (rho 370) (rho 375) (rho 380) (rho 385) (rho 390) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationPart77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow385 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow386 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow387 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow388 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.seg77
  refine ⟨(rho 391), (rho 392), (rho 393), (rho 394), (rho 395), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
theorem template_relation_to_poseidon
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.relation (rho 1) (rho 7) (rho 13) (rho 19) (rho 25)
      (fun w370 w375 w380 w385 w390 w395 => w370 = rho 370 ∧ w375 = rho 375 ∧ w380 = rho 380 ∧ w385 = rho 385 ∧ w390 = rho 390 ∧ w395 = rho 395) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relation at h
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
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidonRows390.relation
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff.relation rho) : spec rho := by
  have hExtracted := template_relation_to_poseidon rho h
  rcases Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryLeafHash_9424c990190cPoseidon.relation_sound_permSpec
      (rho 1) (rho 7) (rho 13) (rho 19) (rho 25) _ hExtracted with
    ⟨w370, w375, w380, w385, w390, w395, hk, hperm⟩
  rcases hk with ⟨hw370, hw375, hw380, hw385, hw390, hw395⟩
  unfold spec output
  rw [← hw370, ← hw375, ← hw380, ← hw385, ← hw390, ← hw395]
  exact hperm


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff
