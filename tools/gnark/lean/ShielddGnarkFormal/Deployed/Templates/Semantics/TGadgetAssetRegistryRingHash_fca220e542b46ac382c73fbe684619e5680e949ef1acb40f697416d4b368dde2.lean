import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2
import ShielddGnarkFormal.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4Poseidon.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2

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
  Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4Poseidon.s38_1 (rho 371) (rho 376) (rho 381) (rho 386) (rho 391) (rho 396)

def spec (rho : Nat → F) : Prop :=
  output rho =
    Shieldd.GnarkFormal.Poseidon5Bridge.permSpec5
      (2332157431640739955796532904592455296874484311567337797924969966168817210674 : F)
      ((-1 : F) * rho 1 + rho 2) (rho 8) (rho 14) (rho 20) (rho 26)

theorem template_part0_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart0 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 8) (rho 14) (rho 20) (rho 26) (rho 7)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg0 (rho 1) (rho 2) (rho 8) (rho 14) (rho 20) (rho 26) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg0
  refine ⟨(rho 3), (rho 4), (rho 5), (rho 6), (rho 7), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part1_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart1 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 13)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg1 (rho 7) (rho 8) (rho 14) (rho 20) (rho 26) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg1
  refine ⟨(rho 9), (rho 10), (rho 11), (rho 12), (rho 13), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part2_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart2 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 20) (rho 26) (rho 19)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg2 (rho 7) (rho 13) (rho 14) (rho 20) (rho 26) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg2
  refine ⟨(rho 15), (rho 16), (rho 17), (rho 18), (rho 19), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part3_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart3 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 26) (rho 25)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg3 (rho 7) (rho 13) (rho 19) (rho 20) (rho 26) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg3
  refine ⟨(rho 21), (rho 22), (rho 23), (rho 24), (rho 25), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart4 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 31)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg4 (rho 7) (rho 13) (rho 19) (rho 25) (rho 26) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg4
  refine ⟨(rho 27), (rho 28), (rho 29), (rho 30), (rho 31), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part5_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart5 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) (rho 36)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg5 (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg5
  refine ⟨(rho 32), (rho 33), (rho 34), (rho 35), (rho 36), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part6_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart6 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) (rho 36) (rho 41)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg6 (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) (rho 36) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg6
  refine ⟨(rho 37), (rho 38), (rho 39), (rho 40), (rho 41), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part7_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart7 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) (rho 36) (rho 41) (rho 46)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg7 (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) (rho 36) (rho 41) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg7
  refine ⟨(rho 42), (rho 43), (rho 44), (rho 45), (rho 46), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart8 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) (rho 36) (rho 41) (rho 46) (rho 51)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg8 (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) (rho 36) (rho 41) (rho 46) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg8
  refine ⟨(rho 47), (rho 48), (rho 49), (rho 50), (rho 51), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part9_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart9 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) (rho 36) (rho 41) (rho 46) (rho 51) (rho 56)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg9 (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) (rho 36) (rho 41) (rho 46) (rho 51) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg9
  refine ⟨(rho 52), (rho 53), (rho 54), (rho 55), (rho 56), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part10_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart10 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg10 (rho 7) (rho 13) (rho 19) (rho 25) (rho 31) (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg10
  refine ⟨(rho 57), (rho 58), (rho 59), (rho 60), (rho 61), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part11_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart11 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) (rho 66)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg11 (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg11
  refine ⟨(rho 62), (rho 63), (rho 64), (rho 65), (rho 66), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part12_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart12 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) (rho 66) (rho 71)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg12 (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) (rho 66) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg12
  refine ⟨(rho 67), (rho 68), (rho 69), (rho 70), (rho 71), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part13_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart13 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) (rho 66) (rho 71) (rho 76)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg13 (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) (rho 66) (rho 71) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg13
  refine ⟨(rho 72), (rho 73), (rho 74), (rho 75), (rho 76), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part14_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart14 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) (rho 66) (rho 71) (rho 76) (rho 81)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg14 (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) (rho 66) (rho 71) (rho 76) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg14
  refine ⟨(rho 77), (rho 78), (rho 79), (rho 80), (rho 81), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part15_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart15 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) (rho 66) (rho 71) (rho 76) (rho 81) (rho 86)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg15 (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) (rho 66) (rho 71) (rho 76) (rho 81) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg15
  refine ⟨(rho 82), (rho 83), (rho 84), (rho 85), (rho 86), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part16_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart16 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg16 (rho 36) (rho 41) (rho 46) (rho 51) (rho 56) (rho 61) (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg16
  refine ⟨(rho 87), (rho 88), (rho 89), (rho 90), (rho 91), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart17 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) (rho 96)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg17 (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg17
  refine ⟨(rho 92), (rho 93), (rho 94), (rho 95), (rho 96), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part18_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart18 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) (rho 96) (rho 101)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg18 (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) (rho 96) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg18
  refine ⟨(rho 97), (rho 98), (rho 99), (rho 100), (rho 101), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part19_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart19 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) (rho 96) (rho 101) (rho 106)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg19 (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) (rho 96) (rho 101) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart19 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow96 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow97 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow98 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg19
  refine ⟨(rho 102), (rho 103), (rho 104), (rho 105), (rho 106), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part20_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart20 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) (rho 96) (rho 101) (rho 106) (rho 111)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg20 (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) (rho 96) (rho 101) (rho 106) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg20
  refine ⟨(rho 107), (rho 108), (rho 109), (rho 110), (rho 111), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part21_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart21 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) (rho 96) (rho 101) (rho 106) (rho 111) (rho 116)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg21 (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) (rho 96) (rho 101) (rho 106) (rho 111) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow108 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg21
  refine ⟨(rho 112), (rho 113), (rho 114), (rho 115), (rho 116), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part22_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart22 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg22 (rho 66) (rho 71) (rho 76) (rho 81) (rho 86) (rho 91) (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow112 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg22
  refine ⟨(rho 117), (rho 118), (rho 119), (rho 120), (rho 121), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part23_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart23 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg23 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow115 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg23
  refine ⟨(rho 122), (rho 123), (rho 124), (rho 125), (rho 126), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part24_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart24 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg24 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart24 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow120 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow121 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg24
  refine ⟨(rho 127), (rho 128), (rho 129), (rho 130), (rho 131), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg25 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg25
  refine ⟨(rho 132), (rho 133), (rho 134), (rho 135), (rho 136), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part26_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart26 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg26 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg26
  refine ⟨(rho 137), (rho 138), (rho 139), (rho 140), (rho 141), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part27_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart27 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg27 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow138 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg27
  refine ⟨(rho 142), (rho 143), (rho 144), (rho 145), (rho 146), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part28_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart28 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg28 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow140 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg28
  refine ⟨(rho 147), (rho 148), (rho 149), (rho 150), (rho 151), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part29_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart29 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg29 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart29 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg29
  refine ⟨(rho 152), (rho 153), (rho 154), (rho 155), (rho 156), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part30_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart30 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg30 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow151 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow152 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg30
  refine ⟨(rho 157), (rho 158), (rho 159), (rho 160), (rho 161), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg31 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg31
  refine ⟨(rho 162), (rho 163), (rho 164), (rho 165), (rho 166), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part32_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart32 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg32 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg32
  refine ⟨(rho 167), (rho 168), (rho 169), (rho 170), (rho 171), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part33_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart33 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg33 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow165 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow166 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg33
  refine ⟨(rho 172), (rho 173), (rho 174), (rho 175), (rho 176), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part34_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart34 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg34 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart34 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow172 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow173 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg34
  refine ⟨(rho 177), (rho 178), (rho 179), (rho 180), (rho 181), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part35_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart35 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg35 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow177 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow178 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg35
  refine ⟨(rho 182), (rho 183), (rho 184), (rho 185), (rho 186), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part36_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart36 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg36 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow180 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg36
  refine ⟨(rho 187), (rho 188), (rho 189), (rho 190), (rho 191), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part37_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart37 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg37 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow185 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow186 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg37
  refine ⟨(rho 192), (rho 193), (rho 194), (rho 195), (rho 196), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part38_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart38 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg38 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow192 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg38
  refine ⟨(rho 197), (rho 198), (rho 199), (rho 200), (rho 201), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part39_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart39 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg39 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart39 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg39
  refine ⟨(rho 202), (rho 203), (rho 204), (rho 205), (rho 206), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg40 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg40
  refine ⟨(rho 207), (rho 208), (rho 209), (rho 210), (rho 211), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part41_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart41 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg41 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow205 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow206 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg41
  refine ⟨(rho 212), (rho 213), (rho 214), (rho 215), (rho 216), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part42_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart42 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg42 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg42
  refine ⟨(rho 217), (rho 218), (rho 219), (rho 220), (rho 221), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part43_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart43 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg43 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow218 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg43
  refine ⟨(rho 222), (rho 223), (rho 224), (rho 225), (rho 226), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part44_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart44 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg44 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg44
  refine ⟨(rho 227), (rho 228), (rho 229), (rho 230), (rho 231), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part45_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart45 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg45 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg45
  refine ⟨(rho 232), (rho 233), (rho 234), (rho 235), (rho 236), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part46_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart46 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg46 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow232 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg46
  refine ⟨(rho 237), (rho 238), (rho 239), (rho 240), (rho 241), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part47_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart47 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg47 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow238 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg47
  refine ⟨(rho 242), (rho 243), (rho 244), (rho 245), (rho 246), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part48_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart48 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg48 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg48
  refine ⟨(rho 247), (rho 248), (rho 249), (rho 250), (rho 251), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part49_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart49 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg49 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart49 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg49
  refine ⟨(rho 252), (rho 253), (rho 254), (rho 255), (rho 256), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc0Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc0Part1, choiceFreeAddAssoc] using h4

theorem template_part50_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart50 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg50 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow250 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg50
  refine ⟨(rho 257), (rho 258), (rho 259), (rho 260), (rho 261), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc1Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc1Part1, choiceFreeAddAssoc] using h4

theorem template_part51_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart51 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg51 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow255 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow256 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow257 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg51
  refine ⟨(rho 262), (rho 263), (rho 264), (rho 265), (rho 266), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc2Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc2Part1, choiceFreeAddAssoc] using h4

theorem template_part52_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart52 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg52 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow263 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg52
  refine ⟨(rho 267), (rho 268), (rho 269), (rho 270), (rho 271), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc3Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc3Part1, choiceFreeAddAssoc] using h4

theorem template_part53_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart53 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg53 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg53
  refine ⟨(rho 272), (rho 273), (rho 274), (rho 275), (rho 276), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc4Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc4Part1, choiceFreeAddAssoc] using h4

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart54 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) (rho 281)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg54 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg54
  refine ⟨(rho 277), (rho 278), (rho 279), (rho 280), (rho 281), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc5Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc5Part1, choiceFreeAddAssoc] using h4

theorem template_part55_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart55 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) (rho 281) (rho 286)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg55 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) (rho 281) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow276 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow277 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg55
  refine ⟨(rho 282), (rho 283), (rho 284), (rho 285), (rho 286), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc6Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc6Part1, choiceFreeAddAssoc] using h4

theorem template_part56_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart56 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) (rho 281) (rho 286) (rho 291)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg56 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) (rho 281) (rho 286) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow283 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg56
  refine ⟨(rho 287), (rho 288), (rho 289), (rho 290), (rho 291), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc7Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc7Part1, choiceFreeAddAssoc] using h4

theorem template_part57_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart57 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) (rho 281) (rho 286) (rho 291) (rho 296)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg57 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) (rho 281) (rho 286) (rho 291) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg57
  refine ⟨(rho 292), (rho 293), (rho 294), (rho 295), (rho 296), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc8Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc8Part1, choiceFreeAddAssoc] using h4

theorem template_part58_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart58 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) (rho 281) (rho 286) (rho 291) (rho 296) (rho 301)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg58 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) (rho 281) (rho 286) (rho 291) (rho 296) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow290 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg58
  refine ⟨(rho 297), (rho 298), (rho 299), (rho 300), (rho 301), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc9Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc9Part1, choiceFreeAddAssoc] using h4

theorem template_part59_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart59 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg59 (rho 96) (rho 101) (rho 106) (rho 111) (rho 116) (rho 121) (rho 126) (rho 131) (rho 136) (rho 141) (rho 146) (rho 151) (rho 156) (rho 161) (rho 166) (rho 171) (rho 176) (rho 181) (rho 186) (rho 191) (rho 196) (rho 201) (rho 206) (rho 211) (rho 216) (rho 221) (rho 226) (rho 231) (rho 236) (rho 241) (rho 246) (rho 251) (rho 256) (rho 261) (rho 266) (rho 271) (rho 276) (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart59 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow297 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg59
  refine ⟨(rho 302), (rho 303), (rho 304), (rho 305), (rho 306), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc10Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationLc10Part1, choiceFreeAddAssoc] using h4

theorem template_part60_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart60 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) (rho 311)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg60 (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg60
  refine ⟨(rho 307), (rho 308), (rho 309), (rho 310), (rho 311), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part61_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart61 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) (rho 311) (rho 316)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg61 (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) (rho 311) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow308 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg61
  refine ⟨(rho 312), (rho 313), (rho 314), (rho 315), (rho 316), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part62_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart62 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) (rho 311) (rho 316) (rho 321)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg62 (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) (rho 311) (rho 316) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow310 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow311 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow312 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow313 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg62
  refine ⟨(rho 317), (rho 318), (rho 319), (rho 320), (rho 321), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part63_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart63 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) (rho 311) (rho 316) (rho 321) (rho 326)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg63 (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) (rho 311) (rho 316) (rho 321) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow315 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow316 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow317 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow318 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg63
  refine ⟨(rho 322), (rho 323), (rho 324), (rho 325), (rho 326), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part64_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart64 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) (rho 311) (rho 316) (rho 321) (rho 326) (rho 331)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg64 (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) (rho 311) (rho 316) (rho 321) (rho 326) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart64 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow320 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow321 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow322 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow323 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg64
  refine ⟨(rho 327), (rho 328), (rho 329), (rho 330), (rho 331), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part65_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart65 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg65 (rho 281) (rho 286) (rho 291) (rho 296) (rho 301) (rho 306) (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow325 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow326 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow327 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow328 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg65
  refine ⟨(rho 332), (rho 333), (rho 334), (rho 335), (rho 336), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part66_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart66 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) (rho 341)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg66 (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow330 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow331 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow332 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow333 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg66
  refine ⟨(rho 337), (rho 338), (rho 339), (rho 340), (rho 341), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part67_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart67 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) (rho 341) (rho 346)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg67 (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) (rho 341) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow335 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow336 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow337 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow338 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg67
  refine ⟨(rho 342), (rho 343), (rho 344), (rho 345), (rho 346), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part68_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart68 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) (rho 341) (rho 346) (rho 351)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg68 (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) (rho 341) (rho 346) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow340 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow341 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow342 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow343 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg68
  refine ⟨(rho 347), (rho 348), (rho 349), (rho 350), (rho 351), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part69_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart69 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) (rho 341) (rho 346) (rho 351) (rho 356)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg69 (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) (rho 341) (rho 346) (rho 351) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart69 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow345 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow346 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow347 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow348 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg69
  refine ⟨(rho 352), (rho 353), (rho 354), (rho 355), (rho 356), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part70_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart70 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) (rho 341) (rho 346) (rho 351) (rho 356) (rho 361)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg70 (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) (rho 341) (rho 346) (rho 351) (rho 356) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow350 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow351 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow352 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow353 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg70
  refine ⟨(rho 357), (rho 358), (rho 359), (rho 360), (rho 361), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part71_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart71 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg71 (rho 311) (rho 316) (rho 321) (rho 326) (rho 331) (rho 336) (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow355 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow356 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow357 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow358 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg71
  refine ⟨(rho 362), (rho 363), (rho 364), (rho 365), (rho 366), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part72_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart72 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) (rho 371)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg72 (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow360 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow361 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow362 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow363 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg72
  refine ⟨(rho 367), (rho 368), (rho 369), (rho 370), (rho 371), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part73_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart73 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) (rho 371) (rho 376)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg73 (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) (rho 371) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow365 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow366 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow367 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow368 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg73
  refine ⟨(rho 372), (rho 373), (rho 374), (rho 375), (rho 376), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part74_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart74 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) (rho 371) (rho 376) (rho 381)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg74 (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) (rho 371) (rho 376) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart74 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow370 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow371 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow372 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow373 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg74
  refine ⟨(rho 377), (rho 378), (rho 379), (rho 380), (rho 381), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part75_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart75 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) (rho 371) (rho 376) (rho 381) (rho 386)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg75 (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) (rho 371) (rho 376) (rho 381) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow375 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow376 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow377 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow378 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg75
  refine ⟨(rho 382), (rho 383), (rho 384), (rho 385), (rho 386), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part76_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart76 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) (rho 371) (rho 376) (rho 381) (rho 386) (rho 391)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg76 (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) (rho 371) (rho 376) (rho 381) (rho 386) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow380 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow381 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow382 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow383 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg76
  refine ⟨(rho 387), (rho 388), (rho 389), (rho 390), (rho 391), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part77_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart77 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 371) (rho 376) (rho 381) (rho 386) (rho 391) (rho 396)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg77 (rho 341) (rho 346) (rho 351) (rho 356) (rho 361) (rho 366) (rho 371) (rho 376) (rho 381) (rho 386) (rho 391) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationPart77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow385 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow386 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow387 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow388 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.seg77
  refine ⟨(rho 392), (rho 393), (rho 394), (rho 395), (rho 396), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
theorem template_relation_to_poseidon
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.relation (rho 1) (rho 2) (rho 8) (rho 14) (rho 20) (rho 26)
      (fun w371 w376 w381 w386 w391 w396 => w371 = rho 371 ∧ w376 = rho 376 ∧ w381 = rho 381 ∧ w386 = rho 386 ∧ w391 = rho 391 ∧ w396 = rho 396) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relation at h
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
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4PoseidonRows390.relation
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.relation rho) : spec rho := by
  have hExtracted := template_relation_to_poseidon rho h
  rcases Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4Poseidon.relation_sound_permSpec
      (rho 1) (rho 2) (rho 8) (rho 14) (rho 20) (rho 26) _ hExtracted with
    ⟨w371, w376, w381, w386, w391, w396, hk, hperm⟩
  rcases hk with ⟨hw371, hw376, hw381, hw386, hw391, hw396⟩
  unfold spec output
  rw [← hw371, ← hw376, ← hw381, ← hw386, ← hw391, ← hw396]
  exact hperm


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2
