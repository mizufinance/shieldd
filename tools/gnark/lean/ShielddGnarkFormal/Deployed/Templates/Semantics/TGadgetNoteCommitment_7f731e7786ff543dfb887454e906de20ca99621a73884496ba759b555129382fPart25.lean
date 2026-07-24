import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382fBase
import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
import ShielddGnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f

local instance (priority := 2000) part25CommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) part25Add : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) part25Mul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) part25NatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) part25Zero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) part25One : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) part25Neg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) part25Sub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) part25MulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) part25CommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) part25Ring : Ring F := (ZMod.commRing _).toRing

theorem template_part25_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart25 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25 (rho 77) (rho 82) (rho 87) (rho 92) (rho 97) (rho 102) (rho 107) (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart25 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow125 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow126 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow127 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow128 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow129 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg25
  refine ⟨(rho 133), (rho 134), (rho 135), (rho 136), (rho 137), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
