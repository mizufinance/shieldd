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
    ((1 : F) * rho 17) * ((1 : F) * rho 18) = ((1 : F) * rho 18649) ∧
    ((1 : F) * rho 17) * ((1 : F) * rho 18) = ((1 : F) * rho 18650) ∧
    ((1 : F)) * ((1 : F) * rho 18649) = ((1 : F) * rho 18650)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec19 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 19,
relationSha256Hex := "e33ebfcf495e563134a91b4d3b6d871d56ba2f1fae59cd69840d6ff7cafc67f4",
wireRoleSha256Hex := "a9c724190c198fe19a2dd1d5afafe0022ca7b4d9858f2605a8fafebf7d680924",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg19
