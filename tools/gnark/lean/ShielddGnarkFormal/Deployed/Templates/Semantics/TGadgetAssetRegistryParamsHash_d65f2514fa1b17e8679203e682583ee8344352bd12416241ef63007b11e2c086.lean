import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086
import ShielddGnarkFormal.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidon.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086

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
  Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidon.s38_1 (rho 335) (rho 340) (rho 345) (rho 350) (rho 355)

def spec (rho : Nat → F) : Prop :=
  output rho =
    Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4
      (3087648872801978871068165188801234750107370627422529216418050362074203193020 : F)
      ((-1 : F) * rho 1 + rho 2) (rho 8) (rho 14) (rho 20)

theorem template_part0_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart0 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 8) (rho 14) (rho 20) (rho 7)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg0 (rho 1) (rho 2) (rho 8) (rho 14) (rho 20) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg0
  refine ⟨(rho 3), (rho 4), (rho 5), (rho 6), (rho 7), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part1_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart1 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 13)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg1 (rho 7) (rho 8) (rho 14) (rho 20) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg1
  refine ⟨(rho 9), (rho 10), (rho 11), (rho 12), (rho 13), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part2_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart2 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 20) (rho 19)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg2 (rho 7) (rho 13) (rho 14) (rho 20) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg2
  refine ⟨(rho 15), (rho 16), (rho 17), (rho 18), (rho 19), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part3_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart3 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg3 (rho 7) (rho 13) (rho 19) (rho 20) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg3
  refine ⟨(rho 21), (rho 22), (rho 23), (rho 24), (rho 25), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart4 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 30)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg4 (rho 7) (rho 13) (rho 19) (rho 25) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg4
  refine ⟨(rho 26), (rho 27), (rho 28), (rho 29), (rho 30), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part5_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart5 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 30) (rho 35)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg5 (rho 7) (rho 13) (rho 19) (rho 25) (rho 30) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg5
  refine ⟨(rho 31), (rho 32), (rho 33), (rho 34), (rho 35), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part6_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart6 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 30) (rho 35) (rho 40)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg6 (rho 7) (rho 13) (rho 19) (rho 25) (rho 30) (rho 35) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg6
  refine ⟨(rho 36), (rho 37), (rho 38), (rho 39), (rho 40), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part7_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart7 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 25) (rho 30) (rho 35) (rho 40) (rho 45)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg7 (rho 7) (rho 13) (rho 19) (rho 25) (rho 30) (rho 35) (rho 40) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg7
  refine ⟨(rho 41), (rho 42), (rho 43), (rho 44), (rho 45), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart8 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 30) (rho 35) (rho 40) (rho 45) (rho 50)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg8 (rho 7) (rho 13) (rho 19) (rho 25) (rho 30) (rho 35) (rho 40) (rho 45) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg8
  refine ⟨(rho 46), (rho 47), (rho 48), (rho 49), (rho 50), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part9_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart9 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) (rho 55)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg9 (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg9
  refine ⟨(rho 51), (rho 52), (rho 53), (rho 54), (rho 55), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part10_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart10 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg10 (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg10
  refine ⟨(rho 56), (rho 57), (rho 58), (rho 59), (rho 60), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part11_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart11 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg11 (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg11
  refine ⟨(rho 61), (rho 62), (rho 63), (rho 64), (rho 65), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part12_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart12 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) (rho 70)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg12 (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg12
  refine ⟨(rho 66), (rho 67), (rho 68), (rho 69), (rho 70), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part13_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart13 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 55) (rho 60) (rho 65) (rho 70) (rho 75)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg13 (rho 30) (rho 35) (rho 40) (rho 45) (rho 50) (rho 55) (rho 60) (rho 65) (rho 70) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg13
  refine ⟨(rho 71), (rho 72), (rho 73), (rho 74), (rho 75), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part14_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart14 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg14 (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg14
  refine ⟨(rho 76), (rho 77), (rho 78), (rho 79), (rho 80), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part15_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart15 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80) (rho 85)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg15 (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg15
  refine ⟨(rho 81), (rho 82), (rho 83), (rho 84), (rho 85), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part16_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart16 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg16 (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg16
  refine ⟨(rho 86), (rho 87), (rho 88), (rho 89), (rho 90), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart17 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg17 (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg17
  refine ⟨(rho 91), (rho 92), (rho 93), (rho 94), (rho 95), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part18_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart18 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg18 (rho 55) (rho 60) (rho 65) (rho 70) (rho 75) (rho 80) (rho 85) (rho 90) (rho 95) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg18
  refine ⟨(rho 96), (rho 97), (rho 98), (rho 99), (rho 100), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part19_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart19 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg19 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart19 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow96 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow97 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow98 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg19
  refine ⟨(rho 101), (rho 102), (rho 103), (rho 104), (rho 105), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part20_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart20 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg20 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg20
  refine ⟨(rho 106), (rho 107), (rho 108), (rho 109), (rho 110), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part21_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart21 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg21 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow108 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg21
  refine ⟨(rho 111), (rho 112), (rho 113), (rho 114), (rho 115), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part22_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart22 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg22 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow112 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg22
  refine ⟨(rho 116), (rho 117), (rho 118), (rho 119), (rho 120), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part23_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart23 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg23 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow115 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg23
  refine ⟨(rho 121), (rho 122), (rho 123), (rho 124), (rho 125), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part24_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart24 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg24 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart24 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow120 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow121 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg24
  refine ⟨(rho 126), (rho 127), (rho 128), (rho 129), (rho 130), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg25 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg25
  refine ⟨(rho 131), (rho 132), (rho 133), (rho 134), (rho 135), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part26_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart26 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg26 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg26
  refine ⟨(rho 136), (rho 137), (rho 138), (rho 139), (rho 140), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part27_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart27 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg27 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow138 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg27
  refine ⟨(rho 141), (rho 142), (rho 143), (rho 144), (rho 145), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part28_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart28 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg28 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow140 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg28
  refine ⟨(rho 146), (rho 147), (rho 148), (rho 149), (rho 150), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part29_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart29 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg29 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart29 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg29
  refine ⟨(rho 151), (rho 152), (rho 153), (rho 154), (rho 155), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part30_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart30 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg30 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow151 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow152 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg30
  refine ⟨(rho 156), (rho 157), (rho 158), (rho 159), (rho 160), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg31 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg31
  refine ⟨(rho 161), (rho 162), (rho 163), (rho 164), (rho 165), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part32_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart32 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg32 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg32
  refine ⟨(rho 166), (rho 167), (rho 168), (rho 169), (rho 170), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part33_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart33 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg33 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow165 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow166 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg33
  refine ⟨(rho 171), (rho 172), (rho 173), (rho 174), (rho 175), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part34_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart34 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg34 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart34 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow172 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow173 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg34
  refine ⟨(rho 176), (rho 177), (rho 178), (rho 179), (rho 180), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part35_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart35 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg35 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow177 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow178 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg35
  refine ⟨(rho 181), (rho 182), (rho 183), (rho 184), (rho 185), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part36_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart36 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg36 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow180 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg36
  refine ⟨(rho 186), (rho 187), (rho 188), (rho 189), (rho 190), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part37_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart37 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg37 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow185 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow186 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg37
  refine ⟨(rho 191), (rho 192), (rho 193), (rho 194), (rho 195), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part38_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart38 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg38 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow192 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg38
  refine ⟨(rho 196), (rho 197), (rho 198), (rho 199), (rho 200), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part39_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart39 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg39 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart39 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg39
  refine ⟨(rho 201), (rho 202), (rho 203), (rho 204), (rho 205), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg40 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg40
  refine ⟨(rho 206), (rho 207), (rho 208), (rho 209), (rho 210), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part41_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart41 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg41 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow205 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow206 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg41
  refine ⟨(rho 211), (rho 212), (rho 213), (rho 214), (rho 215), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part42_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart42 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg42 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg42
  refine ⟨(rho 216), (rho 217), (rho 218), (rho 219), (rho 220), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part43_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart43 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg43 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow218 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg43
  refine ⟨(rho 221), (rho 222), (rho 223), (rho 224), (rho 225), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part44_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart44 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg44 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg44
  refine ⟨(rho 226), (rho 227), (rho 228), (rho 229), (rho 230), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part45_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart45 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg45 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg45
  refine ⟨(rho 231), (rho 232), (rho 233), (rho 234), (rho 235), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part46_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart46 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg46 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow232 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg46
  refine ⟨(rho 236), (rho 237), (rho 238), (rho 239), (rho 240), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc0Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc0Part1, choiceFreeAddAssoc] using h4

theorem template_part47_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart47 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg47 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow238 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg47
  refine ⟨(rho 241), (rho 242), (rho 243), (rho 244), (rho 245), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc1Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc1Part1, choiceFreeAddAssoc] using h4

theorem template_part48_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart48 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg48 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg48
  refine ⟨(rho 246), (rho 247), (rho 248), (rho 249), (rho 250), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc2Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc2Part1, choiceFreeAddAssoc] using h4

theorem template_part49_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart49 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg49 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart49 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg49
  refine ⟨(rho 251), (rho 252), (rho 253), (rho 254), (rho 255), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc3Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc3Part1, choiceFreeAddAssoc] using h4

theorem template_part50_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart50 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg50 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow250 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg50
  refine ⟨(rho 256), (rho 257), (rho 258), (rho 259), (rho 260), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc4Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc4Part1, choiceFreeAddAssoc] using h4

theorem template_part51_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart51 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg51 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow255 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow256 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow257 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg51
  refine ⟨(rho 261), (rho 262), (rho 263), (rho 264), (rho 265), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc5Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc5Part1, choiceFreeAddAssoc] using h4

theorem template_part52_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart52 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg52 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow263 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg52
  refine ⟨(rho 266), (rho 267), (rho 268), (rho 269), (rho 270), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc6Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc6Part1, choiceFreeAddAssoc] using h4

theorem template_part53_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart53 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg53 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg53
  refine ⟨(rho 271), (rho 272), (rho 273), (rho 274), (rho 275), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc7Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc7Part1, choiceFreeAddAssoc] using h4

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart54 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 260) (rho 265) (rho 270) (rho 275) (rho 280)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg54 (rho 80) (rho 85) (rho 90) (rho 95) (rho 100) (rho 105) (rho 110) (rho 115) (rho 120) (rho 125) (rho 130) (rho 135) (rho 140) (rho 145) (rho 150) (rho 155) (rho 160) (rho 165) (rho 170) (rho 175) (rho 180) (rho 185) (rho 190) (rho 195) (rho 200) (rho 205) (rho 210) (rho 215) (rho 220) (rho 225) (rho 230) (rho 235) (rho 240) (rho 245) (rho 250) (rho 255) (rho 260) (rho 265) (rho 270) (rho 275) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg54
  refine ⟨(rho 276), (rho 277), (rho 278), (rho 279), (rho 280), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc8Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationLc8Part1, choiceFreeAddAssoc] using h4

theorem template_part55_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart55 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg55 (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow276 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow277 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg55
  refine ⟨(rho 281), (rho 282), (rho 283), (rho 284), (rho 285), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part56_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart56 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg56 (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow283 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg56
  refine ⟨(rho 286), (rho 287), (rho 288), (rho 289), (rho 290), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part57_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart57 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290) (rho 295)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg57 (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg57
  refine ⟨(rho 291), (rho 292), (rho 293), (rho 294), (rho 295), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part58_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart58 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290) (rho 295) (rho 300)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg58 (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290) (rho 295) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow290 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg58
  refine ⟨(rho 296), (rho 297), (rho 298), (rho 299), (rho 300), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part59_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart59 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 285) (rho 290) (rho 295) (rho 300) (rho 305)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg59 (rho 260) (rho 265) (rho 270) (rho 275) (rho 280) (rho 285) (rho 290) (rho 295) (rho 300) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart59 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow297 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg59
  refine ⟨(rho 301), (rho 302), (rho 303), (rho 304), (rho 305), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part60_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart60 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg60 (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg60
  refine ⟨(rho 306), (rho 307), (rho 308), (rho 309), (rho 310), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part61_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart61 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg61 (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow308 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg61
  refine ⟨(rho 311), (rho 312), (rho 313), (rho 314), (rho 315), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part62_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart62 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) (rho 320)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg62 (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow310 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow311 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow312 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow313 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg62
  refine ⟨(rho 316), (rho 317), (rho 318), (rho 319), (rho 320), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part63_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart63 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) (rho 320) (rho 325)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg63 (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) (rho 320) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow315 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow316 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow317 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow318 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg63
  refine ⟨(rho 321), (rho 322), (rho 323), (rho 324), (rho 325), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part64_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart64 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg64 (rho 285) (rho 290) (rho 295) (rho 300) (rho 305) (rho 310) (rho 315) (rho 320) (rho 325) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart64 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow320 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow321 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow322 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow323 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg64
  refine ⟨(rho 326), (rho 327), (rho 328), (rho 329), (rho 330), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part65_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart65 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg65 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow325 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow326 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow327 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow328 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg65
  refine ⟨(rho 331), (rho 332), (rho 333), (rho 334), (rho 335), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part66_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart66 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg66 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow330 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow331 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow332 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow333 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg66
  refine ⟨(rho 336), (rho 337), (rho 338), (rho 339), (rho 340), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part67_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart67 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg67 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow335 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow336 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow337 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow338 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg67
  refine ⟨(rho 341), (rho 342), (rho 343), (rho 344), (rho 345), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part68_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart68 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345) (rho 350)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg68 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow340 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow341 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow342 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow343 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg68
  refine ⟨(rho 346), (rho 347), (rho 348), (rho 349), (rho 350), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part69_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart69 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 335) (rho 340) (rho 345) (rho 350) (rho 355)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg69 (rho 310) (rho 315) (rho 320) (rho 325) (rho 330) (rho 335) (rho 340) (rho 345) (rho 350) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationPart69 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow345 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow346 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow347 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow348 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.seg69
  refine ⟨(rho 351), (rho 352), (rho 353), (rho 354), (rho 355), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
theorem template_relation_to_poseidon
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.relation (rho 1) (rho 2) (rho 8) (rho 14) (rho 20)
      (fun w335 w340 w345 w350 w355 => w335 = rho 335 ∧ w340 = rho 340 ∧ w345 = rho 345 ∧ w350 = rho 350 ∧ w355 = rho 355) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7,
    p8, p9, p10, p11, p12, p13, p14, p15,
    p16, p17, p18, p19, p20, p21, p22, p23,
    p24, p25, p26, p27, p28, p29, p30, p31,
    p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41, p42, p43, p44, p45, p46, p47,
    p48, p49, p50, p51, p52, p53, p54, p55,
    p56, p57, p58, p59, p60, p61, p62, p63,
    p64, p65, p66, p67, p68, p69
  ⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidonRows350.relation
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
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.relation rho) : spec rho := by
  have hExtracted := template_relation_to_poseidon rho h
  rcases Shieldd.GnarkFormal.Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidon.relation_sound_permSpec
      (rho 1) (rho 2) (rho 8) (rho 14) (rho 20) _ hExtracted with
    ⟨w335, w340, w345, w350, w355, hk, hperm⟩
  rcases hk with ⟨hw335, hw340, hw345, hw350, hw355⟩
  unfold spec output
  rw [← hw335, ← hw340, ← hw345, ← hw350, ← hw355]
  exact hperm


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086
