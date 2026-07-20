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
    ((1 : F) * rho 30120) * ((1 : F) * rho 100) = ((1 : F) * rho 30122) ∧
    ((1 : F) * rho 99) * ((1 : F) * rho 30121) = ((1 : F) * rho 30123) ∧
    ((1 : F)) * ((1 : F) * rho 30122) = ((1 : F) * rho 30123)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec31 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 31,
relationSha256Hex := "5bbf286a3144ec4bd1cb5d9fdf62ebfe4fe98bdf0ac7d5ce1bf272104adc9da5",
wireRoleSha256Hex := "39f31e3f007f8982cd309f6b7828a4edc8abc6598113d6282c99466008e1f308",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg31
