import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg35

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107) * ((1 : F) * rho 18) = ((1 : F) * rho 31790) ∧
    ((1 : F) * rho 17) * ((1 : F) * rho 108) = ((1 : F) * rho 31791) ∧
    ((1 : F)) * ((1 : F) * rho 31790) = ((1 : F) * rho 31791)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec35 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 35,
relationSha256Hex := "6590361029b9969932f21fad7329b45ae3b1d0e4cef1354b61f18e34439172e0",
wireRoleSha256Hex := "fb1212928bc8ba52397f8a4b429fd0a92593b8acc8b2cb1e2913b2b30413d45d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg35
