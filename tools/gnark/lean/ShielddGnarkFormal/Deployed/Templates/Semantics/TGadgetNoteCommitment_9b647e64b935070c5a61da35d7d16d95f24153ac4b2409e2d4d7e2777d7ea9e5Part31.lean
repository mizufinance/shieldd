import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5Base
import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5
import ShielddGnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5

local instance (priority := 2000) part31CommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) part31Add : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) part31Mul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) part31NatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) part31Zero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) part31One : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) part31Neg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) part31Sub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) part31MulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) part31CommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) part31Ring : Ring F := (ZMod.commRing _).toRing

theorem template_part31_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationPart31 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) (rho 168)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31 (rho 113) (rho 118) (rho 123) (rho 128) (rho 133) (rho 138) (rho 143) (rho 148) (rho 153) (rho 158) (rho 163) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationPart31 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow155 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow156 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow157 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow158 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow159 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg31
  refine ⟨(rho 164), (rho 165), (rho 166), (rho 167), (rho 168), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5
