import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382fBase
import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
import ShielddGnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f

local instance (priority := 2000) part4CommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) part4Add : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) part4Mul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) part4NatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) part4Zero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) part4One : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) part4Neg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) part4Sub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) part4MulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) part4CommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) part4Ring : Ring F := (ZMod.commRing _).toRing

theorem template_part4_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart4 rho)
    {k : F → F → F → F → F → F → Prop} (hk : k (rho 32) (rho 6) (rho 12) (rho 18) (rho 25) (rho 31)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4 (rho 26) (rho 32) (rho 6) (rho 12) (rho 18) (rho 25) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart4 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow20 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow21 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow22 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow23 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow24 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg4
  refine ⟨(rho 27), (rho 28), (rho 29), (rho 30), (rho 31), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
