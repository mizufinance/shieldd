import ShielddGnarkFormal.Deployed.NoteCommitment.FullTail

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

namespace Shieldd.GnarkFormal.Deployed.NoteCommitment

open Shieldd.GnarkFormal.Poseidon6Bridge

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.Order)]

theorem spec38_eq_permSpec (w14 w15 w16 w19 w22 w572 w912 : F) :
    (spec38 w14 w15 w16 w19 w22 w572 w912)[1] =
      permSpec6
        (1434889507249773667048406511864487084155637425201771740895788105903307238157 : F)
        w14 w15 w16 (w912 - w572) w19 w22 := by
  rfl

end Shieldd.GnarkFormal.Deployed.NoteCommitment
