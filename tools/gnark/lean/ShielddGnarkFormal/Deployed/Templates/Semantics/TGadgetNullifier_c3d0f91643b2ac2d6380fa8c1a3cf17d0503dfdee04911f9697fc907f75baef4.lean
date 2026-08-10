import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4
import ShielddGnarkFormal.Deployed.Nullifier.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4

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

def stateCommitment (rho : Nat → F) : F :=
  (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) * rho 7 + (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) * rho 8 + (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) * rho 9 + (2303035022571373752067861346940421781284336182314744680345972760704747974284 : F) * rho 10 + (7740756603642672888894756193883084320427907723891225175607297334590958469121 : F) * rho 11 + (7794887768703111160845069174259889105885445540142212764247907805462223912961 : F) * rho 12 + (7841285910183486822516766014582864636277620811214487840225573923351880007681 : F) * rho 13

def spec (rho : Nat → F) : Prop :=
  Shieldd.GnarkFormal.Deployed.Nullifier.s38_1
      (rho 304) (rho 309) (rho 314) (rho 319) =
    Shieldd.GnarkFormal.Poseidon3Bridge.permSpec3
      Shieldd.GnarkFormal.Poseidon3Bridge.nullifierDomainLit
      (rho 1) (stateCommitment rho) (rho 19)

theorem template_part0_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart0 rho)
    {k : F → F → F → Prop} (hk : k (stateCommitment rho) (rho 19) (rho 6)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0 (rho 1) (stateCommitment rho) (rho 19) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg0
  refine ⟨(rho 2), (rho 3), (rho 4), (rho 5), (rho 6), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    have choiceFreeOneMul (a : F) : 1 * a = a :=
      @one_mul F baseMulOneClass a
    simpa only [stateCommitment, choiceFreeOneMul, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    have choiceFreeOneMul (a : F) : 1 * a = a :=
      @one_mul F baseMulOneClass a
    simpa only [stateCommitment, choiceFreeOneMul, choiceFreeAddAssoc] using h4

theorem template_part1_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart1 rho)
    {k : F → F → F → Prop} (hk : k (rho 19) (rho 6) (rho 18)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1 (stateCommitment rho) (rho 19) (rho 6) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg1
  refine ⟨(rho 14), (rho 15), (rho 16), (rho 17), (rho 18), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    have choiceFreeOneMul (a : F) : 1 * a = a :=
      @one_mul F baseMulOneClass a
    simpa only [stateCommitment, choiceFreeOneMul, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    have choiceFreeOneMul (a : F) : 1 * a = a :=
      @one_mul F baseMulOneClass a
    simpa only [stateCommitment, choiceFreeOneMul, choiceFreeAddAssoc] using h4

theorem template_part2_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart2 rho)
    {k : F → F → F → Prop} (hk : k (rho 6) (rho 18) (rho 24)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2 (rho 19) (rho 6) (rho 18) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg2
  refine ⟨(rho 20), (rho 21), (rho 22), (rho 23), (rho 24), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part3_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart3 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 6) (rho 18) (rho 24) (rho 29)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3 (rho 6) (rho 18) (rho 24) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg3
  refine ⟨(rho 25), (rho 26), (rho 27), (rho 28), (rho 29), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart4 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 6) (rho 18) (rho 24) (rho 29) (rho 34)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4 (rho 6) (rho 18) (rho 24) (rho 29) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg4
  refine ⟨(rho 30), (rho 31), (rho 32), (rho 33), (rho 34), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part5_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart5 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 18) (rho 24) (rho 29) (rho 34) (rho 39)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5 (rho 6) (rho 18) (rho 24) (rho 29) (rho 34) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg5
  refine ⟨(rho 35), (rho 36), (rho 37), (rho 38), (rho 39), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part6_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart6 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 29) (rho 34) (rho 39) (rho 44)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6 (rho 6) (rho 18) (rho 24) (rho 29) (rho 34) (rho 39) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg6
  refine ⟨(rho 40), (rho 41), (rho 42), (rho 43), (rho 44), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part7_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart7 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 29) (rho 34) (rho 39) (rho 44) (rho 49)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7 (rho 29) (rho 34) (rho 39) (rho 44) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg7
  refine ⟨(rho 45), (rho 46), (rho 47), (rho 48), (rho 49), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart8 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 29) (rho 34) (rho 39) (rho 44) (rho 49) (rho 54)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8 (rho 29) (rho 34) (rho 39) (rho 44) (rho 49) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg8
  refine ⟨(rho 50), (rho 51), (rho 52), (rho 53), (rho 54), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part9_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart9 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 29) (rho 34) (rho 39) (rho 44) (rho 49) (rho 54) (rho 59)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9 (rho 29) (rho 34) (rho 39) (rho 44) (rho 49) (rho 54) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg9
  refine ⟨(rho 55), (rho 56), (rho 57), (rho 58), (rho 59), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part10_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart10 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10 (rho 29) (rho 34) (rho 39) (rho 44) (rho 49) (rho 54) (rho 59) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg10
  refine ⟨(rho 60), (rho 61), (rho 62), (rho 63), (rho 64), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part11_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart11 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11 (rho 49) (rho 54) (rho 59) (rho 64) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg11
  refine ⟨(rho 65), (rho 66), (rho 67), (rho 68), (rho 69), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part12_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart12 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg12
  refine ⟨(rho 70), (rho 71), (rho 72), (rho 73), (rho 74), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part13_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart13 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg13
  refine ⟨(rho 75), (rho 76), (rho 77), (rho 78), (rho 79), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part14_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart14 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14 (rho 49) (rho 54) (rho 59) (rho 64) (rho 69) (rho 74) (rho 79) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg14
  refine ⟨(rho 80), (rho 81), (rho 82), (rho 83), (rho 84), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part15_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart15 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15 (rho 69) (rho 74) (rho 79) (rho 84) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg15
  refine ⟨(rho 85), (rho 86), (rho 87), (rho 88), (rho 89), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part16_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart16 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg16
  refine ⟨(rho 90), (rho 91), (rho 92), (rho 93), (rho 94), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart17 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg17
  refine ⟨(rho 95), (rho 96), (rho 97), (rho 98), (rho 99), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part18_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart18 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg18
  refine ⟨(rho 100), (rho 101), (rho 102), (rho 103), (rho 104), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part19_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart19 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart19 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow96 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow97 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow98 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg19
  refine ⟨(rho 105), (rho 106), (rho 107), (rho 108), (rho 109), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part20_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart20 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg20
  refine ⟨(rho 110), (rho 111), (rho 112), (rho 113), (rho 114), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part21_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart21 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow108 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg21
  refine ⟨(rho 115), (rho 116), (rho 117), (rho 118), (rho 119), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part22_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart22 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow112 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg22
  refine ⟨(rho 120), (rho 121), (rho 122), (rho 123), (rho 124), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part23_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart23 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow115 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg23
  refine ⟨(rho 125), (rho 126), (rho 127), (rho 128), (rho 129), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part24_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart24 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart24 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow120 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow121 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg24
  refine ⟨(rho 130), (rho 131), (rho 132), (rho 133), (rho 134), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg25
  refine ⟨(rho 135), (rho 136), (rho 137), (rho 138), (rho 139), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part26_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart26 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg26
  refine ⟨(rho 140), (rho 141), (rho 142), (rho 143), (rho 144), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part27_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart27 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow138 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg27
  refine ⟨(rho 145), (rho 146), (rho 147), (rho 148), (rho 149), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part28_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart28 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow140 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg28
  refine ⟨(rho 150), (rho 151), (rho 152), (rho 153), (rho 154), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part29_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart29 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart29 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg29
  refine ⟨(rho 155), (rho 156), (rho 157), (rho 158), (rho 159), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part30_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart30 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow151 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow152 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg30
  refine ⟨(rho 160), (rho 161), (rho 162), (rho 163), (rho 164), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg31
  refine ⟨(rho 165), (rho 166), (rho 167), (rho 168), (rho 169), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part32_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart32 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg32
  refine ⟨(rho 170), (rho 171), (rho 172), (rho 173), (rho 174), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part33_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart33 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow165 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow166 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg33
  refine ⟨(rho 175), (rho 176), (rho 177), (rho 178), (rho 179), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part34_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart34 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart34 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow172 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow173 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg34
  refine ⟨(rho 180), (rho 181), (rho 182), (rho 183), (rho 184), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part35_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart35 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow177 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow178 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg35
  refine ⟨(rho 185), (rho 186), (rho 187), (rho 188), (rho 189), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part36_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart36 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow180 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg36
  refine ⟨(rho 190), (rho 191), (rho 192), (rho 193), (rho 194), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part37_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart37 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow185 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow186 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg37
  refine ⟨(rho 195), (rho 196), (rho 197), (rho 198), (rho 199), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part38_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart38 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow192 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg38
  refine ⟨(rho 200), (rho 201), (rho 202), (rho 203), (rho 204), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part39_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart39 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart39 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg39
  refine ⟨(rho 205), (rho 206), (rho 207), (rho 208), (rho 209), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg40
  refine ⟨(rho 210), (rho 211), (rho 212), (rho 213), (rho 214), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part41_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart41 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow205 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow206 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg41
  refine ⟨(rho 215), (rho 216), (rho 217), (rho 218), (rho 219), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part42_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart42 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg42
  refine ⟨(rho 220), (rho 221), (rho 222), (rho 223), (rho 224), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part43_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart43 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow218 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg43
  refine ⟨(rho 225), (rho 226), (rho 227), (rho 228), (rho 229), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc0Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc0Part1, choiceFreeAddAssoc] using h4

theorem template_part44_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart44 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg44
  refine ⟨(rho 230), (rho 231), (rho 232), (rho 233), (rho 234), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc1Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc1Part1, choiceFreeAddAssoc] using h4

theorem template_part45_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart45 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg45
  refine ⟨(rho 235), (rho 236), (rho 237), (rho 238), (rho 239), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc2Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc2Part1, choiceFreeAddAssoc] using h4

theorem template_part46_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart46 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow232 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg46
  refine ⟨(rho 240), (rho 241), (rho 242), (rho 243), (rho 244), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc3Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc3Part1, choiceFreeAddAssoc] using h4

theorem template_part47_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart47 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow238 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg47
  refine ⟨(rho 245), (rho 246), (rho 247), (rho 248), (rho 249), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc4Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc4Part1, choiceFreeAddAssoc] using h4

theorem template_part48_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart48 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg48
  refine ⟨(rho 250), (rho 251), (rho 252), (rho 253), (rho 254), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc5Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc5Part1, choiceFreeAddAssoc] using h4

theorem template_part49_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart49 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 244) (rho 249) (rho 254) (rho 259)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49 (rho 69) (rho 74) (rho 79) (rho 84) (rho 89) (rho 94) (rho 99) (rho 104) (rho 109) (rho 114) (rho 119) (rho 124) (rho 129) (rho 134) (rho 139) (rho 144) (rho 149) (rho 154) (rho 159) (rho 164) (rho 169) (rho 174) (rho 179) (rho 184) (rho 189) (rho 194) (rho 199) (rho 204) (rho 209) (rho 214) (rho 219) (rho 224) (rho 229) (rho 234) (rho 239) (rho 244) (rho 249) (rho 254) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart49 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg49
  refine ⟨(rho 255), (rho 256), (rho 257), (rho 258), (rho 259), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc6Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F baseAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationLc6Part1, choiceFreeAddAssoc] using h4

theorem template_part50_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart50 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 244) (rho 249) (rho 254) (rho 259) (rho 264)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50 (rho 244) (rho 249) (rho 254) (rho 259) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow250 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg50
  refine ⟨(rho 260), (rho 261), (rho 262), (rho 263), (rho 264), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part51_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart51 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51 (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow255 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow256 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow257 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg51
  refine ⟨(rho 265), (rho 266), (rho 267), (rho 268), (rho 269), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part52_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart52 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52 (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow263 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg52
  refine ⟨(rho 270), (rho 271), (rho 272), (rho 273), (rho 274), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part53_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart53 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 264) (rho 269) (rho 274) (rho 279)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53 (rho 244) (rho 249) (rho 254) (rho 259) (rho 264) (rho 269) (rho 274) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg53
  refine ⟨(rho 275), (rho 276), (rho 277), (rho 278), (rho 279), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart54 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 264) (rho 269) (rho 274) (rho 279) (rho 284)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54 (rho 264) (rho 269) (rho 274) (rho 279) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg54
  refine ⟨(rho 280), (rho 281), (rho 282), (rho 283), (rho 284), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part55_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart55 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55 (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow276 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow277 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg55
  refine ⟨(rho 285), (rho 286), (rho 287), (rho 288), (rho 289), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part56_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart56 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56 (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow283 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg56
  refine ⟨(rho 290), (rho 291), (rho 292), (rho 293), (rho 294), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part57_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart57 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 284) (rho 289) (rho 294) (rho 299)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57 (rho 264) (rho 269) (rho 274) (rho 279) (rho 284) (rho 289) (rho 294) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg57
  refine ⟨(rho 295), (rho 296), (rho 297), (rho 298), (rho 299), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part58_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart58 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 284) (rho 289) (rho 294) (rho 299) (rho 304)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58 (rho 284) (rho 289) (rho 294) (rho 299) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow290 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg58
  refine ⟨(rho 300), (rho 301), (rho 302), (rho 303), (rho 304), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part59_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart59 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59 (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart59 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow297 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg59
  refine ⟨(rho 305), (rho 306), (rho 307), (rho 308), (rho 309), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part60_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart60 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60 (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg60
  refine ⟨(rho 310), (rho 311), (rho 312), (rho 313), (rho 314), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part61_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart61 rho)
    {k : F → F → F → F → Prop} (hk : k (rho 304) (rho 309) (rho 314) (rho 319)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61 (rho 284) (rho 289) (rho 294) (rho 299) (rho 304) (rho 309) (rho 314) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationPart61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow308 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.seg61
  refine ⟨(rho 315), (rho 316), (rho 317), (rho 318), (rho 319), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
theorem template_relation_to_nullifier (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNullifier310_6eee7c.relation
      (rho 1) (stateCommitment rho) (rho 19)
      (fun w1637 w1642 w1647 w1652 =>
        w1637 = (rho 304) ∧ w1642 = (rho 309) ∧ w1647 = (rho 314) ∧ w1652 = (rho 319)) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relation at h
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
theorem sound (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4.relation rho) : spec rho := by
  have hExtracted := template_relation_to_nullifier rho h
  rcases Shieldd.GnarkFormal.Deployed.Nullifier.relation_sound_permSpec
      (rho 1) (stateCommitment rho) (rho 19) _ hExtracted with
    ⟨w1637, w1642, w1647, w1652, hk, hperm⟩
  rcases hk with ⟨hw1637, hw1642, hw1647, hw1652⟩
  simpa [spec, hw1637, hw1642, hw1647, hw1652] using hperm


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4
