import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg16

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17939) * ((1 : F) * rho 13) = ((1 : F) * rho 17941) ∧
    ((1 : F) * rho 12) * ((1 : F) * rho 17940) = ((1 : F) * rho 17942) ∧
    ((1 : F)) * ((1 : F) * rho 17941) = ((1 : F) * rho 17942)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec16 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 16,
relationSha256Hex := "c1cb124e03295645bfe1e8fce11c4ad414f3088ae6d94f5009eea810b3e779e0",
wireRoleSha256Hex := "1863d1c4cb0e487cff93c681c3fa745417bec492e0ac27f92e23b9852d9107f8",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg16
