import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg53

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 52347) * ((1 : F) * rho 4) = ((1 : F) * rho 52349) ∧
    ((1 : F) * rho 3) * ((1 : F) * rho 52348) = ((1 : F) * rho 52350) ∧
    ((1 : F)) * ((1 : F) * rho 52349) = ((1 : F) * rho 52350)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec53 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 53,
relationSha256Hex := "4ce09aba27c2dcb02eb1e6ab35404325ab2cde0c2e17a20310295de6bcaf47d5",
wireRoleSha256Hex := "6e5fcfb824387b56d1fd7170683608b789056c238f96127ed4ec2c795c135a27",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg53
