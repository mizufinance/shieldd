import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg43

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 192) * ((1 : F) * rho 21) = ((1 : F) * rho 31269) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 193) = ((1 : F) * rho 31270) ∧
    ((1 : F)) * ((1 : F) * rho 31269) = ((1 : F) * rho 31270)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec43 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 43,
relationSha256Hex := "e3d091e77c702c0f39110237a8e48a25db714f615b643e20257915c193d58b37",
wireRoleSha256Hex := "9aaae7888f789f8f8a2a208958f0be6a8f5f0ca5615d26e25e0f6aeeae9de288",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg43
