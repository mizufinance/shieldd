import ShielddGnarkFormal.NoteReshapeCanonical
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5

/-!
Reusable bridge from the exact note-commitment gadget contract to the
handwritten NoteReshape commitment relation.
-/

namespace Shieldd.GnarkFormal.NoteReshapeCommitmentBridge

abbrev F := NoteReshapeCanonical.F

theorem noteCommitmentHash_of_spec
    (sigma : Nat → F)
    (h :
      Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.spec
        sigma)
    (computed input0 input1 input2 input3 input4 input5 : F)
    (hcomputed :
      computed =
        Deployed.NoteCommitment.s38_1
          (sigma 408) (sigma 413) (sigma 418) (sigma 423)
          (sigma 428) (sigma 433) (sigma 438))
    (hinput0 : input0 = sigma 1)
    (hinput1 : input1 = sigma 7)
    (hinput2 : input2 = sigma 13)
    (hinput3 : input3 = sigma 20 - sigma 19)
    (hinput4 : input4 = sigma 27 - sigma 26)
    (hinput5 : input5 = sigma 33) :
    computed =
      Poseidon6Bridge.permSpec6 NoteReshapeCanonical.noteCommitmentDomain
        input0 input1 input2 input3 input4 input5 := by
  have h1 := congrArg (fun state => state[1]) h
  change
    (Deployed.NoteCommitment.spec38
      (sigma 1) (sigma 7) (sigma 13)
      (sigma 27 - sigma 26) (sigma 33)
      (sigma 19) (sigma 20))[1] =
    (Deployed.NoteCommitment.st38
      (sigma 408) (sigma 413) (sigma 418) (sigma 423)
      (sigma 428) (sigma 433) (sigma 438))[1] at h1
  rw [Deployed.NoteCommitment.spec38_eq_permSpec] at h1
  change
    Poseidon6Bridge.permSpec6 NoteReshapeCanonical.noteCommitmentDomain
      (sigma 1) (sigma 7) (sigma 13)
      (sigma 20 - sigma 19) (sigma 27 - sigma 26) (sigma 33) =
    Deployed.NoteCommitment.s38_1
      (sigma 408) (sigma 413) (sigma 418) (sigma 423)
      (sigma 428) (sigma 433) (sigma 438) at h1
  rw [hcomputed, hinput0, hinput1, hinput2, hinput3, hinput4, hinput5]
  exact h1.symm

end Shieldd.GnarkFormal.NoteReshapeCommitmentBridge
