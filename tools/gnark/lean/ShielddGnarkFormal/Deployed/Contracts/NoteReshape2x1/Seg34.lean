import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg34

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104) * ((1 : F) * rho 18) = ((1 : F) * rho 30830) ∧
    ((1 : F) * rho 17) * ((1 : F) * rho 105) = ((1 : F) * rho 30831) ∧
    ((1 : F)) * ((1 : F) * rho 30830) = ((1 : F) * rho 30831)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec34 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 34,
relationSha256Hex := "495892970e0e103cf35f2103cf2e313f4f0e7334048baf0d68aafa9bc725c67a",
wireRoleSha256Hex := "068d495f923e9f297c36eeac9ea509187bfaebebe8e7898505af8b34656094bd",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg34
