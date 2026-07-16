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
    ((1 : F) * rho 110) * ((1 : F) * rho 21) = ((1 : F) * rho 30838) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 111) = ((1 : F) * rho 30839) ∧
    ((1 : F)) * ((1 : F) * rho 30838) = ((1 : F) * rho 30839)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec35 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 35,
relationSha256Hex := "c920982adbed2a4dd37223704188a79a6081eda3d1e6e84077829019a7a22d8e",
wireRoleSha256Hex := "b0a0e3458dd104a54793bc56e7b93c6be24f9850765e1b85534af2afaac2e267",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg35
