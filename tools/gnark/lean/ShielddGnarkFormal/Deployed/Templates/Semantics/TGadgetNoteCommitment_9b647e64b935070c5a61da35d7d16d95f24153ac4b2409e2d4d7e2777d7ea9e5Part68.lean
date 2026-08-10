import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5Base
import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5
import ShielddGnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5

local instance (priority := 2000) part68CommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) part68Add : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) part68Mul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) part68NatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) part68Zero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) part68One : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) part68Neg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) part68Sub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) part68MulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) part68CommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) part68Ring : Ring F := (ZMod.commRing _).toRing

theorem template_part68_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationPart68 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) (rho 348) (rho 353)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68 (rho 303) (rho 308) (rho 313) (rho 318) (rho 323) (rho 328) (rho 333) (rho 338) (rho 343) (rho 348) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationPart68 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow340 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow341 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow342 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow343 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow344 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg68
  refine ⟨(rho 349), (rho 350), (rho 351), (rho 352), (rho 353), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5
