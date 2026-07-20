import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg42

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 189) * ((1 : F) * rho 18) = ((1 : F) * rho 31267) ∧
    ((1 : F) * rho 17) * ((1 : F) * rho 190) = ((1 : F) * rho 31268) ∧
    ((1 : F)) * ((1 : F) * rho 31267) = ((1 : F) * rho 31268)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec42 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 42,
relationSha256Hex := "faa27985341aa4cadb73a0d33446a1833285255817b18867f227f47836e479fa",
wireRoleSha256Hex := "2873e5216e46d3eabcf32e6589659c343239f943914e1673abc43e675af288e4",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg42
