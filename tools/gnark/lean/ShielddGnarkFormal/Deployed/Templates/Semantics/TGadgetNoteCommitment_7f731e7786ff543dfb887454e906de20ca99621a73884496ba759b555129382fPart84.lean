import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382fBase
import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
import ShielddGnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f

local instance (priority := 2000) part84CommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) part84Add : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) part84Mul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) part84NatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) part84Zero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) part84One : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) part84Neg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) part84Sub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) part84MulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) part84CommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) part84Ring : Ring F := (ZMod.commRing _).toRing

theorem template_part84_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart84 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) (rho 417) (rho 422) (rho 427) (rho 432)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84 (rho 372) (rho 377) (rho 382) (rho 387) (rho 392) (rho 397) (rho 402) (rho 407) (rho 412) (rho 417) (rho 422) (rho 427) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart84 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow420 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow421 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow422 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow423 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow424 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg84
  refine ⟨(rho 428), (rho 429), (rho 430), (rho 431), (rho 432), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
