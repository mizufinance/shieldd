import ShielddGnarkFormal.NoteReshapeCanonical
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

/-!
Reusable bridge from the exact note-commitment gadget contract to the
handwritten NoteReshape commitment relation.
-/

namespace Shieldd.GnarkFormal.NoteReshapeCommitmentBridge

abbrev F := NoteReshapeCanonical.F

/-- Stable bridge-owned name for the exact provider's computed output. -/
def output (sigma : Nat → F) : F :=
  Deployed.CertifiedGadgetNoteCommitment_252c34d237e9Poseidon.s38_1
    (sigma 372) (sigma 377) (sigma 382)
    (sigma 387) (sigma 392) (sigma 397)

/-- The authenticated template output is the bridge-owned output. -/
theorem templateOutput_eq (sigma : Nat → F) :
    Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.output
        sigma =
      output sigma := by
  rfl

theorem noteCommitmentHash_of_spec
    (sigma : Nat → F)
    (h :
      Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec
        sigma)
    (computed input0 input1 input2 input3 input4 : F)
    (hcomputed :
      computed =
        Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.output
          sigma)
    (hinput0 : input0 = sigma 1)
    (hinput1 : input1 = sigma 7)
    (hinput2 : input2 = sigma 13)
    (hinput3 : input3 = sigma 20 - sigma 19)
    (hinput4 : input4 = sigma 27 - sigma 26) :
    computed =
      Poseidon5Bridge.permSpec5 NoteReshapeCanonical.noteCommitmentDomain
        input0 input1 input2 input3 input4 := by
  rw [hcomputed, hinput0, hinput1, hinput2, hinput3, hinput4]
  unfold
    Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec
    at h
  have hinput3' : (-1 : F) * sigma 19 + sigma 20 = sigma 20 - sigma 19 := by
    ring
  have hinput4' : (-1 : F) * sigma 26 + sigma 27 = sigma 27 - sigma 26 := by
    ring
  rw [hinput3', hinput4'] at h
  change
    Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.output
        sigma =
      Poseidon5Bridge.permSpec5
        (1395601591349183338445327673196897598598470771863946901251414766570764147135 : F)
        (sigma 1) (sigma 7) (sigma 13)
        (sigma 20 - sigma 19) (sigma 27 - sigma 26)
  exact h

end Shieldd.GnarkFormal.NoteReshapeCommitmentBridge
