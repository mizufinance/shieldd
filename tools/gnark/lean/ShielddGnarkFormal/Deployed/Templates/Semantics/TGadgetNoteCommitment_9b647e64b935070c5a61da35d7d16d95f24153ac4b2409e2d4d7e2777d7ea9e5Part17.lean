import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5Base
import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5
import ShielddGnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5

local instance (priority := 2000) part17CommRing : CommRing F := ZMod.commRing _
local instance (priority := 3000) part17Add : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) part17Mul : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) part17NatCast : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) part17Zero : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) part17One : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) part17Neg : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) part17Sub : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) part17MulOneClass : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) part17CommSemiring : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) part17Ring : Ring F := (ZMod.commRing _).toRing

theorem template_part17_to_extracted (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationPart17 rho)
    {k : F → F → F → F → F → F → F → F → F → F → F → F → Prop} (hk : k (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) (rho 98)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17 (rho 43) (rho 48) (rho 53) (rho 58) (rho 63) (rho 68) (rho 73) (rho 78) (rho 83) (rho 88) (rho 93) k := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationPart17 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow85 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow86 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow87 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow88 Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.relationRow89 at h
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.seg17
  refine ⟨(rho 94), (rho 95), (rho 96), (rho 97), (rho 98), ?_, ?_, ?_, ?_, ?_, hk⟩
  · exact h0
  · exact h1
  · exact h2
  · exact h3
  · exact h4
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5
