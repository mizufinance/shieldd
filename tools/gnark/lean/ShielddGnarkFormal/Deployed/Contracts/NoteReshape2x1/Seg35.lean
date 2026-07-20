import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg35

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107) * ((1 : F) * rho 21) = ((1 : F) * rho 30832) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 108) = ((1 : F) * rho 30833) ∧
    ((1 : F)) * ((1 : F) * rho 30832) = ((1 : F) * rho 30833)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec35 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 35,
relationSha256Hex := "6f7762076696132693492b8a085a23f96f72115294b42a67d28af819454ddc4e",
wireRoleSha256Hex := "5f1d903e924a2f9c574654f6225fcf2189dd864e6a62d8404496d3c41cfa798f",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg35
