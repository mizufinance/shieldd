import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg19

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * ((1 : F) * rho 18) = ((1 : F) * rho 18655) ∧
    ((1 : F) * rho 17) * ((1 : F) * rho 18) = ((1 : F) * rho 18656) ∧
    ((1 : F)) * ((1 : F) * rho 18655) = ((1 : F) * rho 18656)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec19 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 19,
relationSha256Hex := "d53efc63b71bb429225daf61c051347f31c21f50ad6619b5fbd17c6ccceeff4b",
wireRoleSha256Hex := "ff8d5bc9e06a8fc1b0da1c9af0112b0858ea14d43ea2ef832207091b861457c0",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg19
