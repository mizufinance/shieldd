import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c
import ShielddGnarkFormal.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9Poseidon.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c

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
  Shieldd.GnarkFormal.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9Poseidon.s38_1 (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397)

def spec (rho : Nat → F) : Prop :=
  output rho =
    Shieldd.GnarkFormal.Poseidon5Bridge.permSpec5
      (1395601591349183338445327673196897598598470771863946901251414766570764147135 : F)
      (rho 1) (rho 7) (rho 13) ((-1 : F) * rho 19 + rho 20) ((-1 : F) * rho 26 + rho 27)

theorem template_part0_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart0 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 7) (rho 13) (rho 19) (rho 20) (rho 26) (rho 27) (rho 6)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg0 (rho 1) (rho 7) (rho 13) (rho 19) (rho 20) (rho 26) (rho 27) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow4 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg0
  refine ⟨(rho 2), (rho 3), (rho 4), (rho 5), (rho 6), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part1_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart1 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 13) (rho 19) (rho 20) (rho 26) (rho 27) (rho 12)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg1 (rho 6) (rho 7) (rho 13) (rho 19) (rho 20) (rho 26) (rho 27) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart1 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow9 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg1
  refine ⟨(rho 8), (rho 9), (rho 10), (rho 11), (rho 12), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part2_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart2 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 19) (rho 20) (rho 26) (rho 27) (rho 18)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg2 (rho 6) (rho 12) (rho 13) (rho 19) (rho 20) (rho 26) (rho 27) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart2 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow14 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg2
  refine ⟨(rho 14), (rho 15), (rho 16), (rho 17), (rho 18), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part3_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart3 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 26) (rho 27) (rho 25)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg3 (rho 6) (rho 12) (rho 18) (rho 19) (rho 20) (rho 26) (rho 27) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart3 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow19 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg3
  refine ⟨(rho 21), (rho 22), (rho 23), (rho 24), (rho 25), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart4 rho)
    {k : F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 32)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg4 (rho 6) (rho 12) (rho 18) (rho 25) (rho 26) (rho 27) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg4
  refine ⟨(rho 28), (rho 29), (rho 30), (rho 31), (rho 32), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part5_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart5 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) (rho 37)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg5 (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart5 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow29 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg5
  refine ⟨(rho 33), (rho 34), (rho 35), (rho 36), (rho 37), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part6_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart6 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) (rho 37) (rho 42)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg6 (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) (rho 37) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart6 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow34 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg6
  refine ⟨(rho 38), (rho 39), (rho 40), (rho 41), (rho 42), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part7_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart7 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) (rho 37) (rho 42) (rho 47)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg7 (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) (rho 37) (rho 42) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart7 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow39 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg7
  refine ⟨(rho 43), (rho 44), (rho 45), (rho 46), (rho 47), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart8 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) (rho 37) (rho 42) (rho 47) (rho 52)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg8 (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) (rho 37) (rho 42) (rho 47) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg8
  refine ⟨(rho 48), (rho 49), (rho 50), (rho 51), (rho 52), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part9_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart9 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) (rho 37) (rho 42) (rho 47) (rho 52) (rho 57)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg9 (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) (rho 37) (rho 42) (rho 47) (rho 52) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart9 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow49 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg9
  refine ⟨(rho 53), (rho 54), (rho 55), (rho 56), (rho 57), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part10_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart10 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg10 (rho 6) (rho 12) (rho 18) (rho 25) (rho 32) (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart10 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow54 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg10
  refine ⟨(rho 58), (rho 59), (rho 60), (rho 61), (rho 62), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part11_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart11 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg11 (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart11 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow59 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg11
  refine ⟨(rho 63), (rho 64), (rho 65), (rho 66), (rho 67), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part12_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart12 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg12 (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart12 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow64 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg12
  refine ⟨(rho 68), (rho 69), (rho 70), (rho 71), (rho 72), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part13_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart13 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg13 (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart13 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow69 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg13
  refine ⟨(rho 73), (rho 74), (rho 75), (rho 76), (rho 77), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part14_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart14 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg14 (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart14 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow74 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg14
  refine ⟨(rho 78), (rho 79), (rho 80), (rho 81), (rho 82), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part15_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart15 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg15 (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart15 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow78 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow79 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg15
  refine ⟨(rho 83), (rho 84), (rho 85), (rho 86), (rho 87), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part16_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart16 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg16 (rho 37) (rho 42) (rho 47) (rho 52) (rho 57) (rho 62) (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart16 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow80 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow81 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow82 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow83 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow84 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg16
  refine ⟨(rho 88), (rho 89), (rho 90), (rho 91), (rho 92), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart17 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg17 (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg17
  refine ⟨(rho 93), (rho 94), (rho 95), (rho 96), (rho 97), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part18_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart18 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg18 (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart18 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow90 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow91 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow92 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow93 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow94 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg18
  refine ⟨(rho 98), (rho 99), (rho 100), (rho 101), (rho 102), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part19_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart19 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg19 (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart19 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow95 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow96 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow97 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow98 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow99 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg19
  refine ⟨(rho 103), (rho 104), (rho 105), (rho 106), (rho 107), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part20_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart20 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg20 (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow100 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow101 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow102 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow103 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow104 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg20
  refine ⟨(rho 108), (rho 109), (rho 110), (rho 111), (rho 112), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part21_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart21 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg21 (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow105 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow106 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow107 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow108 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow109 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg21
  refine ⟨(rho 113), (rho 114), (rho 115), (rho 116), (rho 117), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part22_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart22 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg22 (rho 67) (rho 72) (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow110 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow111 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow112 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow113 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow114 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg22
  refine ⟨(rho 118), (rho 119), (rho 120), (rho 121), (rho 122), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part23_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart23 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg23 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow115 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow116 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow117 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow118 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow119 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg23
  refine ⟨(rho 123), (rho 124), (rho 125), (rho 126), (rho 127), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part24_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart24 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg24 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart24 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow120 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow121 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow122 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow123 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow124 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg24
  refine ⟨(rho 128), (rho 129), (rho 130), (rho 131), (rho 132), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg25 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg25
  refine ⟨(rho 133), (rho 134), (rho 135), (rho 136), (rho 137), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part26_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart26 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg26 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart26 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow130 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow131 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow132 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow133 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow134 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg26
  refine ⟨(rho 138), (rho 139), (rho 140), (rho 141), (rho 142), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part27_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart27 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg27 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart27 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow135 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow136 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow137 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow138 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow139 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg27
  refine ⟨(rho 143), (rho 144), (rho 145), (rho 146), (rho 147), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part28_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart28 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg28 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart28 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow140 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow141 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow142 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow143 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow144 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg28
  refine ⟨(rho 148), (rho 149), (rho 150), (rho 151), (rho 152), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part29_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart29 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg29 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart29 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow145 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow146 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow147 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow148 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow149 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg29
  refine ⟨(rho 153), (rho 154), (rho 155), (rho 156), (rho 157), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part30_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart30 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg30 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart30 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow150 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow151 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow152 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow153 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow154 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg30
  refine ⟨(rho 158), (rho 159), (rho 160), (rho 161), (rho 162), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg31 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg31
  refine ⟨(rho 163), (rho 164), (rho 165), (rho 166), (rho 167), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part32_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart32 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg32 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart32 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow160 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow161 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow162 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow163 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow164 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg32
  refine ⟨(rho 168), (rho 169), (rho 170), (rho 171), (rho 172), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part33_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart33 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg33 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart33 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow165 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow166 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow167 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow169 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg33
  refine ⟨(rho 173), (rho 174), (rho 175), (rho 176), (rho 177), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part34_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart34 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg34 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart34 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow170 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow171 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow172 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow173 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow174 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg34
  refine ⟨(rho 178), (rho 179), (rho 180), (rho 181), (rho 182), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part35_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart35 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg35 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart35 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow175 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow176 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow177 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow178 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow179 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg35
  refine ⟨(rho 183), (rho 184), (rho 185), (rho 186), (rho 187), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part36_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart36 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg36 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart36 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow180 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow181 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow182 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow183 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow184 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg36
  refine ⟨(rho 188), (rho 189), (rho 190), (rho 191), (rho 192), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part37_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart37 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg37 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart37 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow185 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow186 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow187 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow188 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow189 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg37
  refine ⟨(rho 193), (rho 194), (rho 195), (rho 196), (rho 197), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part38_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart38 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg38 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart38 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow190 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow191 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow192 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow193 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow194 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg38
  refine ⟨(rho 198), (rho 199), (rho 200), (rho 201), (rho 202), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part39_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart39 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg39 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart39 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow195 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow196 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow197 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow198 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow199 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg39
  refine ⟨(rho 203), (rho 204), (rho 205), (rho 206), (rho 207), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg40 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg40
  refine ⟨(rho 208), (rho 209), (rho 210), (rho 211), (rho 212), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part41_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart41 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg41 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow205 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow206 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow207 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow208 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow209 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg41
  refine ⟨(rho 213), (rho 214), (rho 215), (rho 216), (rho 217), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part42_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart42 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg42 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow210 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow211 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow212 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow213 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow214 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg42
  refine ⟨(rho 218), (rho 219), (rho 220), (rho 221), (rho 222), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part43_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart43 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg43 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow215 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow216 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow217 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow218 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow219 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg43
  refine ⟨(rho 223), (rho 224), (rho 225), (rho 226), (rho 227), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part44_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart44 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg44 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart44 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow220 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow221 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow222 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow223 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow224 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg44
  refine ⟨(rho 228), (rho 229), (rho 230), (rho 231), (rho 232), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part45_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart45 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg45 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart45 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow225 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow226 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow227 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow228 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow229 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg45
  refine ⟨(rho 233), (rho 234), (rho 235), (rho 236), (rho 237), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part46_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart46 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg46 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart46 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow230 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow231 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow232 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow233 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow234 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg46
  refine ⟨(rho 238), (rho 239), (rho 240), (rho 241), (rho 242), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part47_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart47 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg47 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart47 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow235 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow236 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow237 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow238 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow239 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg47
  refine ⟨(rho 243), (rho 244), (rho 245), (rho 246), (rho 247), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part48_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart48 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg48 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart48 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow240 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow241 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow242 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow243 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow244 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg48
  refine ⟨(rho 248), (rho 249), (rho 250), (rho 251), (rho 252), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part49_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart49 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg49 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart49 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow245 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow246 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow247 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow248 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow249 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg49
  refine ⟨(rho 253), (rho 254), (rho 255), (rho 256), (rho 257), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc0Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc0Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc0Part1, choiceFreeAddAssoc] using h4

theorem template_part50_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart50 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg50 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart50 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow250 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow251 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow252 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow253 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow254 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg50
  refine ⟨(rho 258), (rho 259), (rho 260), (rho 261), (rho 262), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc1Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc1, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc1Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc1Part1, choiceFreeAddAssoc] using h4

theorem template_part51_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart51 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg51 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart51 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow255 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow256 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow257 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow258 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow259 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg51
  refine ⟨(rho 263), (rho 264), (rho 265), (rho 266), (rho 267), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc2Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc2Part1, choiceFreeAddAssoc] using h4

theorem template_part52_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart52 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg52 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart52 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow260 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow261 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow262 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow263 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow264 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg52
  refine ⟨(rho 268), (rho 269), (rho 270), (rho 271), (rho 272), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc3Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc3, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc3Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc3Part1, choiceFreeAddAssoc] using h4

theorem template_part53_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart53 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg53 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart53 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow265 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow266 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow267 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow268 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow269 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg53
  refine ⟨(rho 273), (rho 274), (rho 275), (rho 276), (rho 277), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc4Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc4, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc4Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc4Part1, choiceFreeAddAssoc] using h4

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart54 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg54 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg54
  refine ⟨(rho 278), (rho 279), (rho 280), (rho 281), (rho 282), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc5Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc5, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc5Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc5Part1, choiceFreeAddAssoc] using h4

theorem template_part55_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart55 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg55 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart55 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow275 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow276 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow277 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow278 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow279 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg55
  refine ⟨(rho 283), (rho 284), (rho 285), (rho 286), (rho 287), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc6Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc6, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc6Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc6Part1, choiceFreeAddAssoc] using h4

theorem template_part56_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart56 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg56 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart56 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow280 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow281 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow282 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow283 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow284 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg56
  refine ⟨(rho 288), (rho 289), (rho 290), (rho 291), (rho 292), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc7Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc7, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc7Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc7Part1, choiceFreeAddAssoc] using h4

theorem template_part57_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart57 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg57 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart57 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow285 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow286 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow287 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow288 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow289 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg57
  refine ⟨(rho 293), (rho 294), (rho 295), (rho 296), (rho 297), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc8Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc8, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc8Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc8Part1, choiceFreeAddAssoc] using h4

theorem template_part58_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart58 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg58 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart58 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow290 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow291 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow292 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow293 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow294 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg58
  refine ⟨(rho 298), (rho 299), (rho 300), (rho 301), (rho 302), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc9Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc9, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc9Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc9Part1, choiceFreeAddAssoc] using h4

theorem template_part59_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart59 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg59 (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart59 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow295 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow296 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow297 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow298 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow299 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg59
  refine ⟨(rho 303), (rho 304), (rho 305), (rho 306), (rho 307), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc10Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F providerAddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc10, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc10Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationLc10Part1, choiceFreeAddAssoc] using h4

theorem template_part60_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart60 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg60 (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart60 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow300 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow301 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow302 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow303 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow304 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg60
  refine ⟨(rho 308), (rho 309), (rho 310), (rho 311), (rho 312), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part61_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart61 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg61 (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart61 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow305 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow306 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow307 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow308 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow309 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg61
  refine ⟨(rho 313), (rho 314), (rho 315), (rho 316), (rho 317), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part62_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart62 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) (rho 322)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg62 (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart62 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow310 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow311 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow312 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow313 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow314 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg62
  refine ⟨(rho 318), (rho 319), (rho 320), (rho 321), (rho 322), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part63_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart63 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg63 (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart63 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow315 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow316 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow317 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow318 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow319 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg63
  refine ⟨(rho 323), (rho 324), (rho 325), (rho 326), (rho 327), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part64_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart64 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg64 (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart64 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow320 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow321 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow322 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow323 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow324 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg64
  refine ⟨(rho 328), (rho 329), (rho 330), (rho 331), (rho 332), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part65_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart65 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg65 (rho 282) (rho 287) (rho 292) (rho 297) (rho 302) (rho 307) (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart65 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow325 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow326 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow327 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow328 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow329 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg65
  refine ⟨(rho 333), (rho 334), (rho 335), (rho 336), (rho 337), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part66_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart66 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg66 (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart66 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow330 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow331 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow332 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow333 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow334 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg66
  refine ⟨(rho 338), (rho 339), (rho 340), (rho 341), (rho 342), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part67_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart67 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg67 (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart67 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow335 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow336 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow337 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow338 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow339 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg67
  refine ⟨(rho 343), (rho 344), (rho 345), (rho 346), (rho 347), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part68_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart68 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg68 (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow340 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow341 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow342 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow343 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg68
  refine ⟨(rho 348), (rho 349), (rho 350), (rho 351), (rho 352), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part69_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart69 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352) (rho 357)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg69 (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart69 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow345 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow346 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow347 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow348 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow349 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg69
  refine ⟨(rho 353), (rho 354), (rho 355), (rho 356), (rho 357), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part70_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart70 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg70 (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart70 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow350 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow351 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow352 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow353 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow354 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg70
  refine ⟨(rho 358), (rho 359), (rho 360), (rho 361), (rho 362), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part71_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart71 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg71 (rho 312) (rho 317) (rho 322) (rho 327) (rho 332) (rho 337) (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart71 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow355 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow356 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow357 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow358 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow359 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg71
  refine ⟨(rho 363), (rho 364), (rho 365), (rho 366), (rho 367), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part72_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart72 rho)
    {k : F → F → F → F → F → F → F → Prop} (hk : k (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg72 (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart72 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow360 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow361 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow362 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow363 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow364 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg72
  refine ⟨(rho 368), (rho 369), (rho 370), (rho 371), (rho 372), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part73_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart73 rho)
    {k : F → F → F → F → F → F → F → F → Prop} (hk : k (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg73 (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart73 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow365 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow366 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow367 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow368 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow369 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg73
  refine ⟨(rho 373), (rho 374), (rho 375), (rho 376), (rho 377), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part74_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart74 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg74 (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart74 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow370 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow371 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow372 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow373 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow374 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg74
  refine ⟨(rho 378), (rho 379), (rho 380), (rho 381), (rho 382), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part75_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart75 rho)
    {k : F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) (rho 387)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg75 (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart75 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow375 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow376 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow377 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow378 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow379 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg75
  refine ⟨(rho 383), (rho 384), (rho 385), (rho 386), (rho 387), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part76_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart76 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) (rho 387) (rho 392)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg76 (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) (rho 387) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart76 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow380 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow381 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow382 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow383 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow384 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg76
  refine ⟨(rho 388), (rho 389), (rho 390), (rho 391), (rho 392), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4

theorem template_part77_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart77 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg77 (rho 342) (rho 347) (rho 352) (rho 357) (rho 362) (rho 367) (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationPart77 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow385 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow386 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow387 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow388 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relationRow389 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.seg77
  refine ⟨(rho 393), (rho 394), (rho 395), (rho 396), (rho 397), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
theorem template_relation_to_poseidon
    (rho : Nat → F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relation rho) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.relation (rho 1) (rho 7) (rho 13) (rho 19) (rho 20) (rho 26) (rho 27)
      (fun w372 w377 w382 w387 w392 w397 => w372 = rho 372 ∧ w377 = rho 377 ∧ w382 = rho 382 ∧ w387 = rho 387 ∧ w392 = rho 392 ∧ w397 = rho 397) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relation at h
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
  unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9PoseidonRows390.relation
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
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relation rho) : spec rho := by
  have hExtracted := template_relation_to_poseidon rho h
  rcases Shieldd.GnarkFormal.Deployed.CertifiedGadgetNoteCommitment_252c34d237e9Poseidon.relation_sound_permSpec
      (rho 1) (rho 7) (rho 13) (rho 19) (rho 20) (rho 26) (rho 27) _ hExtracted with
    ⟨w372, w377, w382, w387, w392, w397, hk, hperm⟩
  rcases hk with ⟨hw372, hw377, hw382, hw387, hw392, hw397⟩
  unfold spec output
  rw [← hw372, ← hw377, ← hw382, ← hw387, ← hw392, ← hw397]
  exact hperm


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c
