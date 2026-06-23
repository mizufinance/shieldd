import ShielddGnarkFormal.Deployed.NoteCommitment.RawRelationSemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.NoteCommitment

open Shieldd.GnarkFormal.Poseidon6Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon6Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.Order)]

theorem circuit_sound_eq (w14 w15 w16 w19 w22 w572 w912 out : F)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.relation w14 w15 w16 w19 w22 w572 w912 (fun actual => actual = out)) :
    out = permSpec6 (1434889507249773667048406511864487084155637425201771740895788105903307238157 : F) w14 w15 w16 (w912 - w572) w19 w22 :=
  relation_output_sound w14 w15 w16 w19 w22 w572 w912 out h

#print axioms circuit_sound_eq

end Shieldd.GnarkFormal.Deployed.NoteCommitment
