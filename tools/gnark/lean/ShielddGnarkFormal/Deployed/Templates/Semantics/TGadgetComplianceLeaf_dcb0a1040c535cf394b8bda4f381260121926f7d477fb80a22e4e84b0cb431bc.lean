import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc
import ShielddGnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53Poseidon.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc

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
  Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53Poseidon.s38_1 (rho 408) (rho 413) (rho 418) (rho 423) (rho 428) (rho 433) (rho 438)

def spec (rho : Nat → F) : Prop :=
  output rho =
    Shieldd.GnarkFormal.Poseidon6Bridge.permSpec6
      (5091441079939941903017664305347261861704474070005805806880013805880773073215 : F)
      ((-1 : F) * rho 1 + rho 2) ((-1 : F) * rho 8 + rho 9) (rho 15) (rho 21) (rho 27) (rho 33)

theorem template_part0_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart0 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 8) (rho 9) (rho 15) (rho 21) (rho 27) (rho 33) (rho 7)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg0 (rho 1) (rho 2) (rho 8) (rho 9) (rho 15) (rho 21) (rho 27) (rho 33) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg0
  refine ⟨(rho 3), (rho 4), (rho 5), (rho 6), (rho 7), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part1_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart1 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 15) (rho 21) (rho 27) (rho 33) (rho 14)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg1 (rho 7) (rho 8) (rho 9) (rho 15) (rho 21) (rho 27) (rho 33) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg1
  refine ⟨(rho 10), (rho 11), (rho 12), (rho 13), (rho 14), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part2_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart2 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 21) (rho 27) (rho 33) (rho 20)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg2 (rho 7) (rho 14) (rho 15) (rho 21) (rho 27) (rho 33) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg2
  refine ⟨(rho 16), (rho 17), (rho 18), (rho 19), (rho 20), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part3_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart3 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 27) (rho 33) (rho 26)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg3 (rho 7) (rho 14) (rho 20) (rho 21) (rho 27) (rho 33) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg3
  refine ⟨(rho 22), (rho 23), (rho 24), (rho 25), (rho 26), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart4 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 33) (rho 32)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg4 (rho 7) (rho 14) (rho 20) (rho 26) (rho 27) (rho 33) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg4
  refine ⟨(rho 28), (rho 29), (rho 30), (rho 31), (rho 32), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part5_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart5 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg5 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 33) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg5
  refine ⟨(rho 34), (rho 35), (rho 36), (rho 37), (rho 38), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part6_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart6 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg6 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg6
  refine ⟨(rho 39), (rho 40), (rho 41), (rho 42), (rho 43), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part7_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart7 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) (rho 48)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg7 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg7
  refine ⟨(rho 44), (rho 45), (rho 46), (rho 47), (rho 48), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart8 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) (rho 48) (rho 53)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg8 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) (rho 48) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg8
  refine ⟨(rho 49), (rho 50), (rho 51), (rho 52), (rho 53), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part9_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart9 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) (rho 48) (rho 53) (rho 58)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg9 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) (rho 48) (rho 53) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg9
  refine ⟨(rho 54), (rho 55), (rho 56), (rho 57), (rho 58), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part10_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart10 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) (rho 48) (rho 53) (rho 58) (rho 63)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg10 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) (rho 48) (rho 53) (rho 58) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg10
  refine ⟨(rho 59), (rho 60), (rho 61), (rho 62), (rho 63), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part11_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart11 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg11 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg11
  refine ⟨(rho 64), (rho 65), (rho 66), (rho 67), (rho 68), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part12_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart12 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg12 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg12
  refine ⟨(rho 69), (rho 70), (rho 71), (rho 72), (rho 73), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part13_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart13 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg13 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg13
  refine ⟨(rho 74), (rho 75), (rho 76), (rho 77), (rho 78), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part14_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart14 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg14 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg14
  refine ⟨(rho 79), (rho 80), (rho 81), (rho 82), (rho 83), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part15_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart15 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg15 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg15
  refine ⟨(rho 84), (rho 85), (rho 86), (rho 87), (rho 88), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part16_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart16 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg16 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg16
  refine ⟨(rho 89), (rho 90), (rho 91), (rho 92), (rho 93), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart17 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg17 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg17
  refine ⟨(rho 94), (rho 95), (rho 96), (rho 97), (rho 98), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part18_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart18 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg18 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg18
  refine ⟨(rho 99), (rho 100), (rho 101), (rho 102), (rho 103), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part19_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart19 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg19 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart19 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow96 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow97 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow98 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg19
  refine ⟨(rho 104), (rho 105), (rho 106), (rho 107), (rho 108), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part20_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart20 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg20 (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg20
  refine ⟨(rho 109), (rho 110), (rho 111), (rho 112), (rho 113), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part21_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart21 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg21 (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow108 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg21
  refine ⟨(rho 114), (rho 115), (rho 116), (rho 117), (rho 118), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part22_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart22 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg22 (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow112 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg22
  refine ⟨(rho 119), (rho 120), (rho 121), (rho 122), (rho 123), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part23_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart23 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg23 (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow115 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg23
  refine ⟨(rho 124), (rho 125), (rho 126), (rho 127), (rho 128), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part24_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart24 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg24 (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart24 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow120 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow121 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg24
  refine ⟨(rho 129), (rho 130), (rho 131), (rho 132), (rho 133), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg25 (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg25
  refine ⟨(rho 134), (rho 135), (rho 136), (rho 137), (rho 138), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part26_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart26 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg26 (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg26
  refine ⟨(rho 139), (rho 140), (rho 141), (rho 142), (rho 143), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part27_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart27 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg27 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow138 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg27
  refine ⟨(rho 144), (rho 145), (rho 146), (rho 147), (rho 148), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part28_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart28 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg28 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow140 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg28
  refine ⟨(rho 149), (rho 150), (rho 151), (rho 152), (rho 153), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part29_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart29 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg29 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart29 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg29
  refine ⟨(rho 154), (rho 155), (rho 156), (rho 157), (rho 158), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part30_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart30 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg30 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow151 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow152 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg30
  refine ⟨(rho 159), (rho 160), (rho 161), (rho 162), (rho 163), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg31 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg31
  refine ⟨(rho 164), (rho 165), (rho 166), (rho 167), (rho 168), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part32_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart32 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg32 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg32
  refine ⟨(rho 169), (rho 170), (rho 171), (rho 172), (rho 173), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part33_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart33 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg33 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow165 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow166 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg33
  refine ⟨(rho 174), (rho 175), (rho 176), (rho 177), (rho 178), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part34_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart34 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg34 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart34 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow172 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow173 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg34
  refine ⟨(rho 179), (rho 180), (rho 181), (rho 182), (rho 183), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part35_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart35 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg35 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow177 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow178 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg35
  refine ⟨(rho 184), (rho 185), (rho 186), (rho 187), (rho 188), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part36_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart36 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg36 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow180 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg36
  refine ⟨(rho 189), (rho 190), (rho 191), (rho 192), (rho 193), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part37_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart37 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg37 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow185 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow186 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg37
  refine ⟨(rho 194), (rho 195), (rho 196), (rho 197), (rho 198), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part38_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart38 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg38 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow192 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg38
  refine ⟨(rho 199), (rho 200), (rho 201), (rho 202), (rho 203), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part39_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart39 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg39 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart39 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg39
  refine ⟨(rho 204), (rho 205), (rho 206), (rho 207), (rho 208), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg40 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg40
  refine ⟨(rho 209), (rho 210), (rho 211), (rho 212), (rho 213), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part41_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart41 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg41 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow205 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow206 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg41
  refine ⟨(rho 214), (rho 215), (rho 216), (rho 217), (rho 218), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part42_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart42 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg42 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg42
  refine ⟨(rho 219), (rho 220), (rho 221), (rho 222), (rho 223), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part43_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart43 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg43 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow218 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg43
  refine ⟨(rho 224), (rho 225), (rho 226), (rho 227), (rho 228), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part44_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart44 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg44 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg44
  refine ⟨(rho 229), (rho 230), (rho 231), (rho 232), (rho 233), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part45_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart45 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg45 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg45
  refine ⟨(rho 234), (rho 235), (rho 236), (rho 237), (rho 238), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part46_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart46 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg46 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow232 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg46
  refine ⟨(rho 239), (rho 240), (rho 241), (rho 242), (rho 243), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part47_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart47 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg47 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow238 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg47
  refine ⟨(rho 244), (rho 245), (rho 246), (rho 247), (rho 248), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part48_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart48 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg48 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg48
  refine ⟨(rho 249), (rho 250), (rho 251), (rho 252), (rho 253), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part49_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart49 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg49 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart49 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg49
  refine ⟨(rho 254), (rho 255), (rho 256), (rho 257), (rho 258), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part50_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart50 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg50 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow250 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg50
  refine ⟨(rho 259), (rho 260), (rho 261), (rho 262), (rho 263), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part51_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart51 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg51 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow255 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow256 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow257 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg51
  refine ⟨(rho 264), (rho 265), (rho 266), (rho 267), (rho 268), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part52_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart52 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg52 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow263 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg52
  refine ⟨(rho 269), (rho 270), (rho 271), (rho 272), (rho 273), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc0Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc0Part1, choiceFreeAddAssoc] using h4

theorem template_part53_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart53 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg53 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg53
  refine ⟨(rho 274), (rho 275), (rho 276), (rho 277), (rho 278), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc1Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc1Part1, choiceFreeAddAssoc] using h4

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart54 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg54 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg54
  refine ⟨(rho 279), (rho 280), (rho 281), (rho 282), (rho 283), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc2Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc2Part1, choiceFreeAddAssoc] using h4

theorem template_part55_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart55 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg55 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow276 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow277 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg55
  refine ⟨(rho 284), (rho 285), (rho 286), (rho 287), (rho 288), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc3Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc3Part1, choiceFreeAddAssoc] using h4

theorem template_part56_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart56 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg56 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow283 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg56
  refine ⟨(rho 289), (rho 290), (rho 291), (rho 292), (rho 293), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc4Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc4Part1, choiceFreeAddAssoc] using h4

theorem template_part57_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart57 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg57 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg57
  refine ⟨(rho 294), (rho 295), (rho 296), (rho 297), (rho 298), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc5Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc5Part1, choiceFreeAddAssoc] using h4

theorem template_part58_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart58 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg58 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow290 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg58
  refine ⟨(rho 299), (rho 300), (rho 301), (rho 302), (rho 303), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc6Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc6Part1, choiceFreeAddAssoc] using h4

theorem template_part59_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart59 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg59 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart59 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow297 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg59
  refine ⟨(rho 304), (rho 305), (rho 306), (rho 307), (rho 308), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc7Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc7Part1, choiceFreeAddAssoc] using h4

theorem template_part60_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart60 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308) (rho 313)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg60 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg60
  refine ⟨(rho 309), (rho 310), (rho 311), (rho 312), (rho 313), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc8Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc8Part1, choiceFreeAddAssoc] using h4

theorem template_part61_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart61 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308) (rho 313) (rho 318)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg61 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308) (rho 313) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow308 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg61
  refine ⟨(rho 314), (rho 315), (rho 316), (rho 317), (rho 318), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc9Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc9Part1, choiceFreeAddAssoc] using h4

theorem template_part62_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart62 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308) (rho 313) (rho 318) (rho 323)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg62 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308) (rho 313) (rho 318) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow310 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow311 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow312 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow313 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg62
  refine ⟨(rho 319), (rho 320), (rho 321), (rho 322), (rho 323), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc10Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc10Part1, choiceFreeAddAssoc] using h4

theorem template_part63_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart63 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg63 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow315 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow316 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow317 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow318 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg63
  refine ⟨(rho 324), (rho 325), (rho 326), (rho 327), (rho 328), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc11, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc11Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc11Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc11, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc11Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc11Part1, choiceFreeAddAssoc] using h4

theorem template_part64_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart64 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg64 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart64 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow320 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow321 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow322 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow323 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg64
  refine ⟨(rho 329), (rho 330), (rho 331), (rho 332), (rho 333), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc12, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc12Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc12Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc12, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc12Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationLc12Part1, choiceFreeAddAssoc] using h4

theorem template_part65_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart65 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg65 (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow325 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow326 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow327 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow328 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg65
  refine ⟨(rho 334), (rho 335), (rho 336), (rho 337), (rho 338), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part66_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart66 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg66 (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow330 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow331 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow332 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow333 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg66
  refine ⟨(rho 339), (rho 340), (rho 341), (rho 342), (rho 343), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part67_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart67 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) (rho 348)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg67 (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow335 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow336 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow337 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow338 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg67
  refine ⟨(rho 344), (rho 345), (rho 346), (rho 347), (rho 348), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part68_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart68 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) (rho 348) (rho 353)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg68 (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) (rho 348) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow340 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow341 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow342 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow343 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg68
  refine ⟨(rho 349), (rho 350), (rho 351), (rho 352), (rho 353), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part69_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart69 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) (rho 348) (rho 353) (rho 358)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg69 (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) (rho 348) (rho 353) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart69 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow345 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow346 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow347 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow348 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg69
  refine ⟨(rho 354), (rho 355), (rho 356), (rho 357), (rho 358), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part70_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart70 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg70 (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow350 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow351 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow352 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow353 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg70
  refine ⟨(rho 359), (rho 360), (rho 361), (rho 362), (rho 363), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part71_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart71 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg71 (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow355 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow356 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow357 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow358 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg71
  refine ⟨(rho 364), (rho 365), (rho 366), (rho 367), (rho 368), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part72_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart72 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg72 (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow360 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow361 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow362 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow363 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg72
  refine ⟨(rho 369), (rho 370), (rho 371), (rho 372), (rho 373), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part73_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart73 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) (rho 378)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg73 (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow365 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow366 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow367 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow368 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg73
  refine ⟨(rho 374), (rho 375), (rho 376), (rho 377), (rho 378), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part74_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart74 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) (rho 378) (rho 383)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg74 (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) (rho 378) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart74 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow370 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow371 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow372 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow373 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg74
  refine ⟨(rho 379), (rho 380), (rho 381), (rho 382), (rho 383), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part75_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart75 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) (rho 378) (rho 383) (rho 388)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg75 (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) (rho 378) (rho 383) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow375 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow376 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow377 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow378 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg75
  refine ⟨(rho 384), (rho 385), (rho 386), (rho 387), (rho 388), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part76_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart76 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) (rho 378) (rho 383) (rho 388) (rho 393)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg76 (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) (rho 378) (rho 383) (rho 388) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow380 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow381 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow382 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow383 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg76
  refine ⟨(rho 389), (rho 390), (rho 391), (rho 392), (rho 393), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part77_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart77 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg77 (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow385 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow386 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow387 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow388 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg77
  refine ⟨(rho 394), (rho 395), (rho 396), (rho 397), (rho 398), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part78_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart78 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg78 (rho 338) (rho 343) (rho 348) (rho 353) (rho 358) (rho 363) (rho 368) (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow390 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow391 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow392 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow393 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg78
  refine ⟨(rho 399), (rho 400), (rho 401), (rho 402), (rho 403), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part79_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart79 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg79 (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart79 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow395 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow396 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow397 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow398 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg79
  refine ⟨(rho 404), (rho 405), (rho 406), (rho 407), (rho 408), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part80_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart80 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) (rho 413)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg80 (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow400 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow401 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow402 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow403 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg80
  refine ⟨(rho 409), (rho 410), (rho 411), (rho 412), (rho 413), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part81_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart81 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) (rho 413) (rho 418)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg81 (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) (rho 413) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow405 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow406 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow407 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow408 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg81
  refine ⟨(rho 414), (rho 415), (rho 416), (rho 417), (rho 418), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part82_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart82 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) (rho 413) (rho 418) (rho 423)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg82 (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) (rho 413) (rho 418) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow410 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow411 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow412 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow413 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg82
  refine ⟨(rho 419), (rho 420), (rho 421), (rho 422), (rho 423), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part83_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart83 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) (rho 413) (rho 418) (rho 423) (rho 428)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg83 (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) (rho 413) (rho 418) (rho 423) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow415 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow416 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow417 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow418 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg83
  refine ⟨(rho 424), (rho 425), (rho 426), (rho 427), (rho 428), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part84_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart84 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) (rho 413) (rho 418) (rho 423) (rho 428) (rho 433)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg84 (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) (rho 413) (rho 418) (rho 423) (rho 428) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart84 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow420 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow421 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow422 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow423 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg84
  refine ⟨(rho 429), (rho 430), (rho 431), (rho 432), (rho 433), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part85_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart85 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 408) (rho 413) (rho 418) (rho 423) (rho 428) (rho 433) (rho 438)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg85 (rho 373) (rho 378) (rho 383) (rho 388) (rho 393) (rho 398) (rho 403) (rho 408) (rho 413) (rho 418) (rho 423) (rho 428) (rho 433) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationPart85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow425 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow426 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow427 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow428 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.seg85
  refine ⟨(rho 434), (rho 435), (rho 436), (rho 437), (rho 438), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
theorem template_relation_to_poseidon
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.relation (rho 1) (rho 2) (rho 8) (rho 9) (rho 15) (rho 21) (rho 27) (rho 33)
      (fun w408 w413 w418 w423 w428 w433 w438 => w408 = rho 408 ∧ w413 = rho 413 ∧ w418 = rho 418 ∧ w423 = rho 423 ∧ w428 = rho 428 ∧ w433 = rho 433 ∧ w438 = rho 438) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relation at h
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
    p72, p73, p74, p75, p76, p77, p78, p79,
    p80, p81, p82, p83, p84, p85
  ⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53PoseidonRows430.relation
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
  apply template_part78_to_extracted rho p78
  apply template_part79_to_extracted rho p79
  apply template_part80_to_extracted rho p80
  apply template_part81_to_extracted rho p81
  apply template_part82_to_extracted rho p82
  apply template_part83_to_extracted rho p83
  apply template_part84_to_extracted rho p84
  apply template_part85_to_extracted rho p85
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.relation rho) : spec rho := by
  have hExtracted := template_relation_to_poseidon rho h
  rcases Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_dcb0a1040c53Poseidon.relation_sound_permSpec
      (rho 1) (rho 2) (rho 8) (rho 9) (rho 15) (rho 21) (rho 27) (rho 33) _ hExtracted with
    ⟨w408, w413, w418, w423, w428, w433, w438, hk, hperm⟩
  rcases hk with ⟨hw408, hw413, hw418, hw423, hw428, hw433, hw438⟩
  unfold spec output
  rw [← hw408, ← hw413, ← hw418, ← hw423, ← hw428, ← hw433, ← hw438]
  exact hperm


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc
