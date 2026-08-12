import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c
