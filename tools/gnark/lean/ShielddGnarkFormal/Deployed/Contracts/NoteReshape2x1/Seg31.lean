import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg31

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 30126) * ((1 : F) * rho 103) = ((1 : F) * rho 30128) ∧
    ((1 : F) * rho 102) * ((1 : F) * rho 30127) = ((1 : F) * rho 30129) ∧
    ((1 : F)) * ((1 : F) * rho 30128) = ((1 : F) * rho 30129)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec31 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 31,
relationSha256Hex := "8c448d71358b5b11beb6424987b6e453af46c7a3a88734651896fb7f3e10dbc1",
wireRoleSha256Hex := "02471996ca096d37b152d34ab630b3a37b97b61c6cfc9a9a3c30f2f0b05dac94",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg31
