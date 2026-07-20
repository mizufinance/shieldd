import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg20

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((1 : F) * rho 21) = ((1 : F) * rho 18651) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 21) = ((1 : F) * rho 18652) ∧
    ((1 : F)) * ((1 : F) * rho 18651) = ((1 : F) * rho 18652)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec20 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 20,
relationSha256Hex := "ddc5cdb2b350706081b1bd63434779de6058800caf78bc3353992f52b1440505",
wireRoleSha256Hex := "1d21806d0a3b038d72151df1def266a9c858f8b37c452b79c1e2c0a97218cb89",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg20
