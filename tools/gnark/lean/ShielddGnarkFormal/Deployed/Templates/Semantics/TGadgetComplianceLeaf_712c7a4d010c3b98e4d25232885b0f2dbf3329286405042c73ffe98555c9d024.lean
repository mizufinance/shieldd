import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024
import ShielddGnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidon.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024

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
  Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidon.s38_1 (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479)

def spec (rho : Nat → F) : Prop :=
  output rho =
    Shieldd.GnarkFormal.Poseidon7Bridge.permSpec7
      (7622592512688680933372249798274825146043518728282898866874410341055945679433 : F)
      ((-1 : F) * rho 1 + rho 2) ((-1 : F) * rho 8 + rho 9) (rho 15) (rho 21) (rho 27) (rho 33) (rho 39)

theorem template_part0_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart0 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 8) (rho 9) (rho 15) (rho 21) (rho 27) (rho 33) (rho 39) (rho 7)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg0 (rho 1) (rho 2) (rho 8) (rho 9) (rho 15) (rho 21) (rho 27) (rho 33) (rho 39) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg0
  refine ⟨(rho 3), (rho 4), (rho 5), (rho 6), (rho 7), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part1_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart1 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 15) (rho 21) (rho 27) (rho 33) (rho 39) (rho 14)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg1 (rho 7) (rho 8) (rho 9) (rho 15) (rho 21) (rho 27) (rho 33) (rho 39) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg1
  refine ⟨(rho 10), (rho 11), (rho 12), (rho 13), (rho 14), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part2_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart2 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 21) (rho 27) (rho 33) (rho 39) (rho 20)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg2 (rho 7) (rho 14) (rho 15) (rho 21) (rho 27) (rho 33) (rho 39) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg2
  refine ⟨(rho 16), (rho 17), (rho 18), (rho 19), (rho 20), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part3_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart3 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 27) (rho 33) (rho 39) (rho 26)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg3 (rho 7) (rho 14) (rho 20) (rho 21) (rho 27) (rho 33) (rho 39) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg3
  refine ⟨(rho 22), (rho 23), (rho 24), (rho 25), (rho 26), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart4 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 33) (rho 39) (rho 32)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg4 (rho 7) (rho 14) (rho 20) (rho 26) (rho 27) (rho 33) (rho 39) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg4
  refine ⟨(rho 28), (rho 29), (rho 30), (rho 31), (rho 32), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part5_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart5 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 39) (rho 38)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg5 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 33) (rho 39) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg5
  refine ⟨(rho 34), (rho 35), (rho 36), (rho 37), (rho 38), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part6_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart6 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg6 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 39) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg6
  refine ⟨(rho 40), (rho 41), (rho 42), (rho 43), (rho 44), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part7_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart7 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg7 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg7
  refine ⟨(rho 45), (rho 46), (rho 47), (rho 48), (rho 49), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart8 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg8 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg8
  refine ⟨(rho 50), (rho 51), (rho 52), (rho 53), (rho 54), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part9_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart9 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) (rho 59)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg9 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg9
  refine ⟨(rho 55), (rho 56), (rho 57), (rho 58), (rho 59), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part10_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart10 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) (rho 59) (rho 64)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg10 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) (rho 59) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg10
  refine ⟨(rho 60), (rho 61), (rho 62), (rho 63), (rho 64), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part11_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart11 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg11 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg11
  refine ⟨(rho 65), (rho 66), (rho 67), (rho 68), (rho 69), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part12_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart12 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg12 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg12
  refine ⟨(rho 70), (rho 71), (rho 72), (rho 73), (rho 74), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part13_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart13 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg13 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg13
  refine ⟨(rho 75), (rho 76), (rho 77), (rho 78), (rho 79), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part14_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart14 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg14 (rho 7) (rho 14) (rho 20) (rho 26) (rho 32) (rho 38) (rho 44) (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg14
  refine ⟨(rho 80), (rho 81), (rho 82), (rho 83), (rho 84), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part15_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart15 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg15 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg15
  refine ⟨(rho 85), (rho 86), (rho 87), (rho 88), (rho 89), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part16_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart16 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg16 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg16
  refine ⟨(rho 90), (rho 91), (rho 92), (rho 93), (rho 94), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart17 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg17 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg17
  refine ⟨(rho 95), (rho 96), (rho 97), (rho 98), (rho 99), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part18_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart18 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg18 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg18
  refine ⟨(rho 100), (rho 101), (rho 102), (rho 103), (rho 104), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part19_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart19 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg19 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart19 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow96 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow97 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow98 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg19
  refine ⟨(rho 105), (rho 106), (rho 107), (rho 108), (rho 109), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part20_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart20 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg20 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg20
  refine ⟨(rho 110), (rho 111), (rho 112), (rho 113), (rho 114), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part21_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart21 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg21 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow108 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg21
  refine ⟨(rho 115), (rho 116), (rho 117), (rho 118), (rho 119), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part22_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart22 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg22 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow112 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg22
  refine ⟨(rho 120), (rho 121), (rho 122), (rho 123), (rho 124), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part23_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart23 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg23 (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow115 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg23
  refine ⟨(rho 125), (rho 126), (rho 127), (rho 128), (rho 129), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part24_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart24 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg24 (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart24 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow120 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow121 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg24
  refine ⟨(rho 130), (rho 131), (rho 132), (rho 133), (rho 134), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg25 (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg25
  refine ⟨(rho 135), (rho 136), (rho 137), (rho 138), (rho 139), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part26_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart26 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg26 (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg26
  refine ⟨(rho 140), (rho 141), (rho 142), (rho 143), (rho 144), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part27_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart27 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg27 (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow138 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg27
  refine ⟨(rho 145), (rho 146), (rho 147), (rho 148), (rho 149), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part28_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart28 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg28 (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow140 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg28
  refine ⟨(rho 150), (rho 151), (rho 152), (rho 153), (rho 154), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part29_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart29 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg29 (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart29 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg29
  refine ⟨(rho 155), (rho 156), (rho 157), (rho 158), (rho 159), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part30_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart30 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg30 (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow151 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow152 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg30
  refine ⟨(rho 160), (rho 161), (rho 162), (rho 163), (rho 164), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg31 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg31
  refine ⟨(rho 165), (rho 166), (rho 167), (rho 168), (rho 169), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part32_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart32 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg32 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg32
  refine ⟨(rho 170), (rho 171), (rho 172), (rho 173), (rho 174), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part33_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart33 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg33 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow165 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow166 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg33
  refine ⟨(rho 175), (rho 176), (rho 177), (rho 178), (rho 179), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part34_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart34 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg34 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart34 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow172 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow173 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg34
  refine ⟨(rho 180), (rho 181), (rho 182), (rho 183), (rho 184), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part35_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart35 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg35 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow177 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow178 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg35
  refine ⟨(rho 185), (rho 186), (rho 187), (rho 188), (rho 189), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part36_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart36 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg36 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow180 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg36
  refine ⟨(rho 190), (rho 191), (rho 192), (rho 193), (rho 194), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part37_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart37 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg37 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow185 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow186 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg37
  refine ⟨(rho 195), (rho 196), (rho 197), (rho 198), (rho 199), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part38_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart38 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg38 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow192 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg38
  refine ⟨(rho 200), (rho 201), (rho 202), (rho 203), (rho 204), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part39_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart39 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg39 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart39 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg39
  refine ⟨(rho 205), (rho 206), (rho 207), (rho 208), (rho 209), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg40 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg40
  refine ⟨(rho 210), (rho 211), (rho 212), (rho 213), (rho 214), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part41_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart41 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg41 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow205 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow206 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg41
  refine ⟨(rho 215), (rho 216), (rho 217), (rho 218), (rho 219), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part42_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart42 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg42 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg42
  refine ⟨(rho 220), (rho 221), (rho 222), (rho 223), (rho 224), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part43_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart43 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg43 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow218 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg43
  refine ⟨(rho 225), (rho 226), (rho 227), (rho 228), (rho 229), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part44_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart44 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg44 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg44
  refine ⟨(rho 230), (rho 231), (rho 232), (rho 233), (rho 234), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part45_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart45 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg45 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg45
  refine ⟨(rho 235), (rho 236), (rho 237), (rho 238), (rho 239), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part46_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart46 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg46 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow232 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg46
  refine ⟨(rho 240), (rho 241), (rho 242), (rho 243), (rho 244), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part47_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart47 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg47 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow238 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg47
  refine ⟨(rho 245), (rho 246), (rho 247), (rho 248), (rho 249), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part48_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart48 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg48 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg48
  refine ⟨(rho 250), (rho 251), (rho 252), (rho 253), (rho 254), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part49_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart49 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg49 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart49 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg49
  refine ⟨(rho 255), (rho 256), (rho 257), (rho 258), (rho 259), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part50_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart50 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg50 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow250 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg50
  refine ⟨(rho 260), (rho 261), (rho 262), (rho 263), (rho 264), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part51_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart51 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg51 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow255 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow256 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow257 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg51
  refine ⟨(rho 265), (rho 266), (rho 267), (rho 268), (rho 269), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part52_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart52 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg52 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow263 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg52
  refine ⟨(rho 270), (rho 271), (rho 272), (rho 273), (rho 274), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part53_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart53 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg53 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg53
  refine ⟨(rho 275), (rho 276), (rho 277), (rho 278), (rho 279), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart54 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg54 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg54
  refine ⟨(rho 280), (rho 281), (rho 282), (rho 283), (rho 284), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part55_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart55 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg55 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow276 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow277 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg55
  refine ⟨(rho 285), (rho 286), (rho 287), (rho 288), (rho 289), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc0Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc0Part1, choiceFreeAddAssoc] using h4

theorem template_part56_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart56 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg56 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow283 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg56
  refine ⟨(rho 290), (rho 291), (rho 292), (rho 293), (rho 294), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc1Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc1Part1, choiceFreeAddAssoc] using h4

theorem template_part57_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart57 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg57 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg57
  refine ⟨(rho 295), (rho 296), (rho 297), (rho 298), (rho 299), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc2Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc2Part1, choiceFreeAddAssoc] using h4

theorem template_part58_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart58 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg58 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow290 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg58
  refine ⟨(rho 300), (rho 301), (rho 302), (rho 303), (rho 304), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc3Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc3Part1, choiceFreeAddAssoc] using h4

theorem template_part59_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart59 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg59 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart59 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow297 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg59
  refine ⟨(rho 305), (rho 306), (rho 307), (rho 308), (rho 309), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc4Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc4Part1, choiceFreeAddAssoc] using h4

theorem template_part60_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart60 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg60 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg60
  refine ⟨(rho 310), (rho 311), (rho 312), (rho 313), (rho 314), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc5Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc5Part1, choiceFreeAddAssoc] using h4

theorem template_part61_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart61 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg61 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow308 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg61
  refine ⟨(rho 315), (rho 316), (rho 317), (rho 318), (rho 319), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc6Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc6Part1, choiceFreeAddAssoc] using h4

theorem template_part62_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart62 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg62 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow310 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow311 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow312 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow313 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg62
  refine ⟨(rho 320), (rho 321), (rho 322), (rho 323), (rho 324), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc7Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc7Part1, choiceFreeAddAssoc] using h4

theorem template_part63_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart63 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg63 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow315 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow316 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow317 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow318 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg63
  refine ⟨(rho 325), (rho 326), (rho 327), (rho 328), (rho 329), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc8Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc8Part1, choiceFreeAddAssoc] using h4

theorem template_part64_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart64 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg64 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart64 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow320 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow321 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow322 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow323 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg64
  refine ⟨(rho 330), (rho 331), (rho 332), (rho 333), (rho 334), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc9Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc9Part1, choiceFreeAddAssoc] using h4

theorem template_part65_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart65 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) (rho 339)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg65 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow325 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow326 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow327 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow328 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg65
  refine ⟨(rho 335), (rho 336), (rho 337), (rho 338), (rho 339), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc10Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc10Part1, choiceFreeAddAssoc] using h4

theorem template_part66_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart66 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg66 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow330 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow331 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow332 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow333 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg66
  refine ⟨(rho 340), (rho 341), (rho 342), (rho 343), (rho 344), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc11, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc11Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc11Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc11, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc11Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc11Part1, choiceFreeAddAssoc] using h4

theorem template_part67_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart67 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg67 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow335 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow336 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow337 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow338 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg67
  refine ⟨(rho 345), (rho 346), (rho 347), (rho 348), (rho 349), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc12, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc12Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc12Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc12, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc12Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc12Part1, choiceFreeAddAssoc] using h4

theorem template_part68_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart68 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg68 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow340 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow341 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow342 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow343 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg68
  refine ⟨(rho 350), (rho 351), (rho 352), (rho 353), (rho 354), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc13, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc13Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc13Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc13, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc13Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc13Part1, choiceFreeAddAssoc] using h4

theorem template_part69_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart69 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg69 (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) (rho 319) (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart69 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow345 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow346 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow347 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow348 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg69
  refine ⟨(rho 355), (rho 356), (rho 357), (rho 358), (rho 359), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc14, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc14Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc14Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc14, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc14Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationLc14Part1, choiceFreeAddAssoc] using h4

theorem template_part70_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart70 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg70 (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow350 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow351 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow352 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow353 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg70
  refine ⟨(rho 360), (rho 361), (rho 362), (rho 363), (rho 364), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part71_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart71 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg71 (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow355 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow356 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow357 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow358 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg71
  refine ⟨(rho 365), (rho 366), (rho 367), (rho 368), (rho 369), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part72_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart72 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg72 (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow360 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow361 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow362 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow363 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg72
  refine ⟨(rho 370), (rho 371), (rho 372), (rho 373), (rho 374), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part73_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart73 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg73 (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow365 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow366 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow367 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow368 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg73
  refine ⟨(rho 375), (rho 376), (rho 377), (rho 378), (rho 379), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part74_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart74 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg74 (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart74 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow370 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow371 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow372 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow373 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg74
  refine ⟨(rho 380), (rho 381), (rho 382), (rho 383), (rho 384), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part75_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart75 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg75 (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow375 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow376 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow377 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow378 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg75
  refine ⟨(rho 385), (rho 386), (rho 387), (rho 388), (rho 389), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part76_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart76 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg76 (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow380 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow381 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow382 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow383 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg76
  refine ⟨(rho 390), (rho 391), (rho 392), (rho 393), (rho 394), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part77_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart77 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg77 (rho 324) (rho 329) (rho 334) (rho 339) (rho 344) (rho 349) (rho 354) (rho 359) (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow385 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow386 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow387 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow388 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg77
  refine ⟨(rho 395), (rho 396), (rho 397), (rho 398), (rho 399), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part78_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart78 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg78 (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow390 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow391 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow392 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow393 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow394 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg78
  refine ⟨(rho 400), (rho 401), (rho 402), (rho 403), (rho 404), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part79_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart79 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg79 (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart79 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow395 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow396 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow397 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow398 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow399 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg79
  refine ⟨(rho 405), (rho 406), (rho 407), (rho 408), (rho 409), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part80_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart80 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg80 (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow400 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow401 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow402 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow403 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow404 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg80
  refine ⟨(rho 410), (rho 411), (rho 412), (rho 413), (rho 414), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part81_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart81 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg81 (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow405 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow406 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow407 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow408 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow409 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg81
  refine ⟨(rho 415), (rho 416), (rho 417), (rho 418), (rho 419), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part82_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart82 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg82 (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow410 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow411 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow412 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow413 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow414 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg82
  refine ⟨(rho 420), (rho 421), (rho 422), (rho 423), (rho 424), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part83_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart83 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg83 (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow415 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow416 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow417 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow418 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow419 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg83
  refine ⟨(rho 425), (rho 426), (rho 427), (rho 428), (rho 429), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part84_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart84 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg84 (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart84 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow420 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow421 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow422 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow423 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg84
  refine ⟨(rho 430), (rho 431), (rho 432), (rho 433), (rho 434), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part85_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart85 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg85 (rho 364) (rho 369) (rho 374) (rho 379) (rho 384) (rho 389) (rho 394) (rho 399) (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow425 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow426 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow427 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow428 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow429 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg85
  refine ⟨(rho 435), (rho 436), (rho 437), (rho 438), (rho 439), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part86_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart86 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg86 (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow430 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow431 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow432 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow433 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow434 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg86
  refine ⟨(rho 440), (rho 441), (rho 442), (rho 443), (rho 444), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part87_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart87 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg87 (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow435 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow436 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow437 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow438 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow439 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg87
  refine ⟨(rho 445), (rho 446), (rho 447), (rho 448), (rho 449), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part88_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart88 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg88 (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow440 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow441 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow442 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow443 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow444 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg88
  refine ⟨(rho 450), (rho 451), (rho 452), (rho 453), (rho 454), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part89_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart89 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg89 (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart89 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow445 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow446 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow447 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow448 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow449 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg89
  refine ⟨(rho 455), (rho 456), (rho 457), (rho 458), (rho 459), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part90_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart90 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg90 (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow450 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow451 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow452 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow453 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow454 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg90
  refine ⟨(rho 460), (rho 461), (rho 462), (rho 463), (rho 464), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part91_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart91 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg91 (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow455 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow456 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow457 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow458 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow459 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg91
  refine ⟨(rho 465), (rho 466), (rho 467), (rho 468), (rho 469), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part92_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart92 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg92 (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow460 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow461 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow462 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow463 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow464 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg92
  refine ⟨(rho 470), (rho 471), (rho 472), (rho 473), (rho 474), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part93_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart93 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) (rho 479)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg93 (rho 404) (rho 409) (rho 414) (rho 419) (rho 424) (rho 429) (rho 434) (rho 439) (rho 444) (rho 449) (rho 454) (rho 459) (rho 464) (rho 469) (rho 474) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationPart93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow465 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow466 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow467 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow468 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relationRow469 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.seg93
  refine ⟨(rho 475), (rho 476), (rho 477), (rho 478), (rho 479), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
theorem template_relation_to_poseidon
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.relation (rho 1) (rho 2) (rho 8) (rho 9) (rho 15) (rho 21) (rho 27) (rho 33) (rho 39)
      (fun w444 w449 w454 w459 w464 w469 w474 w479 => w444 = rho 444 ∧ w449 = rho 449 ∧ w454 = rho 454 ∧ w459 = rho 459 ∧ w464 = rho 464 ∧ w469 = rho 469 ∧ w474 = rho 474 ∧ w479 = rho 479) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relation at h
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
    p80, p81, p82, p83, p84, p85, p86, p87,
    p88, p89, p90, p91, p92, p93
  ⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidonRows470.relation
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
  apply template_part86_to_extracted rho p86
  apply template_part87_to_extracted rho p87
  apply template_part88_to_extracted rho p88
  apply template_part89_to_extracted rho p89
  apply template_part90_to_extracted rho p90
  apply template_part91_to_extracted rho p91
  apply template_part92_to_extracted rho p92
  apply template_part93_to_extracted rho p93
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024.relation rho) : spec rho := by
  have hExtracted := template_relation_to_poseidon rho h
  rcases Shieldd.GnarkFormal.Deployed.CertifiedGadgetComplianceLeaf_712c7a4d010cPoseidon.relation_sound_permSpec
      (rho 1) (rho 2) (rho 8) (rho 9) (rho 15) (rho 21) (rho 27) (rho 33) (rho 39) _ hExtracted with
    ⟨w444, w449, w454, w459, w464, w469, w474, w479, hk, hperm⟩
  rcases hk with ⟨hw444, hw449, hw454, hw459, hw464, hw469, hw474, hw479⟩
  unfold spec output
  rw [← hw444, ← hw449, ← hw454, ← hw459, ← hw464, ← hw469, ← hw474, ← hw479]
  exact hperm


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_712c7a4d010c3b98e4d25232885b0f2dbf3329286405042c73ffe98555c9d024
