import ShielddGnarkFormal.Deployed.NoteCommitment.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.NoteCommitment

open Shieldd.GnarkFormal.Poseidon6Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon6Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.Order)]
local instance (priority := 2000) : CommRing F := ZMod.commRing _
local instance (priority := 3000) : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) : Ring F := (ZMod.commRing _).toRing


theorem spec38_eq_permSpec (w14 : F) (w15 : F) (w16 : F) (w19 : F) (w22 : F) (w572 : F) (w912 : F) :
    (spec38 w14 w15 w16 w19 w22 w572 w912)[1] =
      permSpec6
        (1434889507249773667048406511864487084155637425201771740895788105903307238157 : F)
        w14 w15 w16 (w912 - w572) w19 w22 := by
  rfl

end Shieldd.GnarkFormal.Deployed.NoteCommitment
