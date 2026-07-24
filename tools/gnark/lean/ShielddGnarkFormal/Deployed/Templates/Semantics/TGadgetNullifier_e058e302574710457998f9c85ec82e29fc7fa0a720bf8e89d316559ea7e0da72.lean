import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72
import ShielddGnarkFormal.Deployed.Nullifier.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

instance templateFactPrime : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

local instance (priority := 2000) baseCommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) baseAdd : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) baseAddSemigroup : AddSemigroup F := (ZMod.commRing _).toAddSemigroup
local instance (priority := 3000) baseMul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) baseNatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) baseZero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) baseOne : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) baseNeg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) baseSub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) baseMulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) baseCommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) baseRing : Ring F := (ZMod.commRing _).toRing

def spec (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      (rho 298) (rho 303) (rho 308) (rho 313) =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho 1) (rho 7) (rho 13)

theorem template_part0_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart0 rho)
    {k : F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 6)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0 (rho 1) (rho 7) (rho 13) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0
  refine ⟨(rho 2), (rho 3), (rho 4), (rho 5), (rho 6), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part1_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart1 rho)
    {k : F → F → F → Prop} (hk : k (rho 13) (rho 6) (rho 12)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1 (rho 7) (rho 13) (rho 6) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1
  refine ⟨(rho 8), (rho 9), (rho 10), (rho 11), (rho 12), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part2_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart2 rho)
    {k : F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2 (rho 13) (rho 6) (rho 12) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2
  refine ⟨(rho 14), (rho 15), (rho 16), (rho 17), (rho 18), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part3_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart3 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 23)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3 (rho 6) (rho 12) (rho 18) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3
  refine ⟨(rho 19), (rho 20), (rho 21), (rho 22), (rho 23), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart4 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 23) (rho 28)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4 (rho 6) (rho 12) (rho 18) (rho 23) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4
  refine ⟨(rho 24), (rho 25), (rho 26), (rho 27), (rho 28), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part5_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart5 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 23) (rho 28) (rho 33)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5 (rho 6) (rho 12) (rho 18) (rho 23) (rho 28) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5
  refine ⟨(rho 29), (rho 30), (rho 31), (rho 32), (rho 33), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part6_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart6 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 23) (rho 28) (rho 33) (rho 38)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6 (rho 6) (rho 12) (rho 18) (rho 23) (rho 28) (rho 33) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6
  refine ⟨(rho 34), (rho 35), (rho 36), (rho 37), (rho 38), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part7_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart7 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 23) (rho 28) (rho 33) (rho 38) (rho 43)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7 (rho 23) (rho 28) (rho 33) (rho 38) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7
  refine ⟨(rho 39), (rho 40), (rho 41), (rho 42), (rho 43), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart8 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 23) (rho 28) (rho 33) (rho 38) (rho 43) (rho 48)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8 (rho 23) (rho 28) (rho 33) (rho 38) (rho 43) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8
  refine ⟨(rho 44), (rho 45), (rho 46), (rho 47), (rho 48), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part9_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart9 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 23) (rho 28) (rho 33) (rho 38) (rho 43) (rho 48) (rho 53)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9 (rho 23) (rho 28) (rho 33) (rho 38) (rho 43) (rho 48) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9
  refine ⟨(rho 49), (rho 50), (rho 51), (rho 52), (rho 53), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part10_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart10 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10 (rho 23) (rho 28) (rho 33) (rho 38) (rho 43) (rho 48) (rho 53) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10
  refine ⟨(rho 54), (rho 55), (rho 56), (rho 57), (rho 58), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part11_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart11 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11 (rho 43) (rho 48) (rho 53) (rho 58) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11
  refine ⟨(rho 59), (rho 60), (rho 61), (rho 62), (rho 63), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part12_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart12 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12
  refine ⟨(rho 64), (rho 65), (rho 66), (rho 67), (rho 68), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part13_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart13 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13
  refine ⟨(rho 69), (rho 70), (rho 71), (rho 72), (rho 73), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part14_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart14 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14
  refine ⟨(rho 74), (rho 75), (rho 76), (rho 77), (rho 78), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part15_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart15 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15 (rho 63) (rho 68) (rho 73) (rho 78) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15
  refine ⟨(rho 79), (rho 80), (rho 81), (rho 82), (rho 83), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part16_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart16 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16
  refine ⟨(rho 84), (rho 85), (rho 86), (rho 87), (rho 88), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart17 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17
  refine ⟨(rho 89), (rho 90), (rho 91), (rho 92), (rho 93), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part18_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart18 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18
  refine ⟨(rho 94), (rho 95), (rho 96), (rho 97), (rho 98), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part19_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart19 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart19 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow96 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow97 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow98 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19
  refine ⟨(rho 99), (rho 100), (rho 101), (rho 102), (rho 103), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part20_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart20 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20
  refine ⟨(rho 104), (rho 105), (rho 106), (rho 107), (rho 108), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part21_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart21 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow108 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21
  refine ⟨(rho 109), (rho 110), (rho 111), (rho 112), (rho 113), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part22_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart22 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow112 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22
  refine ⟨(rho 114), (rho 115), (rho 116), (rho 117), (rho 118), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part23_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart23 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow115 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23
  refine ⟨(rho 119), (rho 120), (rho 121), (rho 122), (rho 123), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part24_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart24 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart24 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow120 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow121 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24
  refine ⟨(rho 124), (rho 125), (rho 126), (rho 127), (rho 128), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25
  refine ⟨(rho 129), (rho 130), (rho 131), (rho 132), (rho 133), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part26_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart26 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26
  refine ⟨(rho 134), (rho 135), (rho 136), (rho 137), (rho 138), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part27_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart27 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow138 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27
  refine ⟨(rho 139), (rho 140), (rho 141), (rho 142), (rho 143), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part28_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart28 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow140 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28
  refine ⟨(rho 144), (rho 145), (rho 146), (rho 147), (rho 148), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part29_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart29 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart29 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29
  refine ⟨(rho 149), (rho 150), (rho 151), (rho 152), (rho 153), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part30_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart30 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow151 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow152 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30
  refine ⟨(rho 154), (rho 155), (rho 156), (rho 157), (rho 158), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31
  refine ⟨(rho 159), (rho 160), (rho 161), (rho 162), (rho 163), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part32_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart32 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32
  refine ⟨(rho 164), (rho 165), (rho 166), (rho 167), (rho 168), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part33_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart33 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow165 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow166 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33
  refine ⟨(rho 169), (rho 170), (rho 171), (rho 172), (rho 173), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part34_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart34 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart34 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow172 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow173 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34
  refine ⟨(rho 174), (rho 175), (rho 176), (rho 177), (rho 178), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part35_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart35 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow177 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow178 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35
  refine ⟨(rho 179), (rho 180), (rho 181), (rho 182), (rho 183), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part36_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart36 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow180 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36
  refine ⟨(rho 184), (rho 185), (rho 186), (rho 187), (rho 188), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part37_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart37 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow185 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow186 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37
  refine ⟨(rho 189), (rho 190), (rho 191), (rho 192), (rho 193), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part38_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart38 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow192 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38
  refine ⟨(rho 194), (rho 195), (rho 196), (rho 197), (rho 198), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part39_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart39 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart39 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39
  refine ⟨(rho 199), (rho 200), (rho 201), (rho 202), (rho 203), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40
  refine ⟨(rho 204), (rho 205), (rho 206), (rho 207), (rho 208), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part41_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart41 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow205 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow206 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41
  refine ⟨(rho 209), (rho 210), (rho 211), (rho 212), (rho 213), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part42_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart42 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42
  refine ⟨(rho 214), (rho 215), (rho 216), (rho 217), (rho 218), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part43_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart43 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow218 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43
  refine ⟨(rho 219), (rho 220), (rho 221), (rho 222), (rho 223), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc0Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc0Part1, choiceFreeAddAssoc] using h4

theorem template_part44_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart44 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44
  refine ⟨(rho 224), (rho 225), (rho 226), (rho 227), (rho 228), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc1Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc1Part1, choiceFreeAddAssoc] using h4

theorem template_part45_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart45 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45
  refine ⟨(rho 229), (rho 230), (rho 231), (rho 232), (rho 233), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc2Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc2Part1, choiceFreeAddAssoc] using h4

theorem template_part46_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart46 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow232 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46
  refine ⟨(rho 234), (rho 235), (rho 236), (rho 237), (rho 238), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc3Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc3Part1, choiceFreeAddAssoc] using h4

theorem template_part47_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart47 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow238 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47
  refine ⟨(rho 239), (rho 240), (rho 241), (rho 242), (rho 243), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc4Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc4Part1, choiceFreeAddAssoc] using h4

theorem template_part48_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart48 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48
  refine ⟨(rho 244), (rho 245), (rho 246), (rho 247), (rho 248), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc5Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc5Part1, choiceFreeAddAssoc] using h4

theorem template_part49_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart49 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 238) (rho 243) (rho 248) (rho 253)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49 (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98) (rho 103) (rho 108) (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168) (rho 173) (rho 178) (rho 183) (rho 188) (rho 193) (rho 198) (rho 203) (rho 208) (rho 213) (rho 218) (rho 223) (rho 228) (rho 233) (rho 238) (rho 243) (rho 248) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart49 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49
  refine ⟨(rho 249), (rho 250), (rho 251), (rho 252), (rho 253), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc6Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationLc6Part1, choiceFreeAddAssoc] using h4

theorem template_part50_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart50 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 238) (rho 243) (rho 248) (rho 253) (rho 258)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50 (rho 238) (rho 243) (rho 248) (rho 253) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow250 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50
  refine ⟨(rho 254), (rho 255), (rho 256), (rho 257), (rho 258), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part51_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart51 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51 (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow255 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow256 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow257 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51
  refine ⟨(rho 259), (rho 260), (rho 261), (rho 262), (rho 263), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part52_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart52 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52 (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow263 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52
  refine ⟨(rho 264), (rho 265), (rho 266), (rho 267), (rho 268), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part53_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart53 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 258) (rho 263) (rho 268) (rho 273)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53 (rho 238) (rho 243) (rho 248) (rho 253) (rho 258) (rho 263) (rho 268) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53
  refine ⟨(rho 269), (rho 270), (rho 271), (rho 272), (rho 273), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart54 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 258) (rho 263) (rho 268) (rho 273) (rho 278)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54 (rho 258) (rho 263) (rho 268) (rho 273) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54
  refine ⟨(rho 274), (rho 275), (rho 276), (rho 277), (rho 278), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part55_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart55 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55 (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow276 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow277 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55
  refine ⟨(rho 279), (rho 280), (rho 281), (rho 282), (rho 283), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part56_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart56 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56 (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow283 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56
  refine ⟨(rho 284), (rho 285), (rho 286), (rho 287), (rho 288), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part57_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart57 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 278) (rho 283) (rho 288) (rho 293)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57 (rho 258) (rho 263) (rho 268) (rho 273) (rho 278) (rho 283) (rho 288) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57
  refine ⟨(rho 289), (rho 290), (rho 291), (rho 292), (rho 293), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part58_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart58 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 278) (rho 283) (rho 288) (rho 293) (rho 298)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58 (rho 278) (rho 283) (rho 288) (rho 293) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow290 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58
  refine ⟨(rho 294), (rho 295), (rho 296), (rho 297), (rho 298), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part59_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart59 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59 (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart59 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow297 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59
  refine ⟨(rho 299), (rho 300), (rho 301), (rho 302), (rho 303), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part60_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart60 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60 (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60
  refine ⟨(rho 304), (rho 305), (rho 306), (rho 307), (rho 308), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part61_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart61 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 298) (rho 303) (rho 308) (rho 313)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61 (rho 278) (rho 283) (rho 288) (rho 293) (rho 298) (rho 303) (rho 308) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationPart61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow308 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61
  refine ⟨(rho 309), (rho 310), (rho 311), (rho 312), (rho 313), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
theorem template_relation_to_nullifier (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
      (rho 1) (rho 7) (rho 13)
      (fun w1637 w1642 w1647 w1652 =>
        w1637 = rho 298 ∧ w1642 = rho 303 ∧ w1647 = rho 308 ∧ w1652 = rho 313) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relation at h
  rcases h with ⟨
    p0, p1, p2, p3, p4, p5, p6, p7,
    p8, p9, p10, p11, p12, p13, p14, p15,
    p16, p17, p18, p19, p20, p21, p22, p23,
    p24, p25, p26, p27, p28, p29, p30, p31,
    p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41, p42, p43, p44, p45, p46, p47,
    p48, p49, p50, p51, p52, p53, p54, p55,
    p56, p57, p58, p59, p60, p61
  ⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
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
  exact ⟨rfl, rfl, rfl, rfl⟩
theorem sound (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.relation rho) : spec rho := by
  have hExtracted := template_relation_to_nullifier rho h
  rcases Shieldd.GnarkFormal.Deployed.Nullifier.relation_sound_permSpec
      (rho 1) (rho 7) (rho 13) _ hExtracted with
    ⟨w1637, w1642, w1647, w1652, hk, hperm⟩
  rcases hk with ⟨hw1637, hw1642, hw1647, hw1652⟩
  simpa [spec, hw1637, hw1642, hw1647, hw1652] using hperm


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72
