import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382fBase
import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
import ShielddGnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f

local instance (priority := 2000) part40CommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) part40Add : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) part40Mul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) part40NatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) part40Zero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) part40One : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) part40Neg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) part40Sub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) part40MulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) part40CommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) part40Ring : Ring F := (ZMod.commRing _).toRing

theorem template_part40_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart40 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) (rho 212)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40 (rho 112) (rho 117) (rho 122) (rho 127) (rho 132) (rho 137) (rho 142) (rho 147) (rho 152) (rho 157) (rho 162) (rho 167) (rho 172) (rho 177) (rho 182) (rho 187) (rho 192) (rho 197) (rho 202) (rho 207) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationPart40 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow200 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow201 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow202 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow203 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f.relationRow204 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg40
  refine ⟨(rho 208), (rho 209), (rho 210), (rho 211), (rho 212), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_7f731e7786ff543dfb887454e906de20ca99621a73884496ba759b555129382f
