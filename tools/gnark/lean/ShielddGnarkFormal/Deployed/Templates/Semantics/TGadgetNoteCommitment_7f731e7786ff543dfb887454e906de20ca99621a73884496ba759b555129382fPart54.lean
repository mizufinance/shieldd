import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382fBase
import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
import ShielddGnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f

local instance (priority := 2000) part54CommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) part54Add : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) part54AddSemigroup : AddSemigroup F := (ZMod.commRing _).toAddSemigroup
local instance (priority := 3000) part54Mul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) part54NatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) part54Zero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) part54One : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) part54Neg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) part54Sub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) part54MulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) part54CommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) part54Ring : Ring F := (ZMod.commRing _).toRing

theorem template_part54_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart54 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) (rho 282)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212) (rho 217) (rho 222) (rho 227) (rho 232) (rho 237) (rho 242) (rho 247) (rho 252) (rho 257) (rho 262) (rho 267) (rho 272) (rho 277) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart54 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow270 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow271 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow272 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow273 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow274 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg54
  refine ⟨(rho 278), (rho 279), (rho 280), (rho 281), (rho 282), ?_, ?_, ?_, ?_, ?_, hk⟩
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F part54AddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationLc2Part1, choiceFreeAddAssoc] using h0
  · exact h1
  · exact h2
  · exact h3
  · have choiceFreeAddAssoc (a b c : F) : a + b + c = a + (b + c) :=
      @add_assoc F part54AddSemigroup a b c
    simpa only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationLc2, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationLc2Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationLc2Part1, choiceFreeAddAssoc] using h4
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
