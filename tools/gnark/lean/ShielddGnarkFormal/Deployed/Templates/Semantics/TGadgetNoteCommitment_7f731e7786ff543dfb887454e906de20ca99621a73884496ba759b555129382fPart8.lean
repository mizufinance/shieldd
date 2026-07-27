import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382fBase
import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
import ShielddGnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f

local instance (priority := 2000) part8CommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) part8Add : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) part8Mul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) part8NatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) part8Zero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) part8One : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) part8Neg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) part8Sub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) part8MulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) part8CommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) part8Ring : Ring F := (ZMod.commRing _).toRing

theorem template_part8_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart8 rho)
    {k : F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) (rho 52)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8 (rho 6) (rho 12) (rho 18) (rho 25) (rho 31) (rho 37) (rho 42) (rho 47) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart8 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow41 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow42 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow43 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow44 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg8
  refine ⟨(rho 48), (rho 49), (rho 50), (rho 51), (rho 52), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
