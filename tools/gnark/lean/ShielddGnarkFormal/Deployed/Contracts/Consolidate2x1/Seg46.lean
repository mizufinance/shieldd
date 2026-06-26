import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg46

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 198) * ((1 : F) * rho 198) = ((1 : F) * rho 44557) ∧
    ((1 : F) * rho 199) * ((1 : F) * rho 199) = ((1 : F) * rho 44558) ∧
    ((3021 : F) * rho 44557) * ((1 : F) * rho 44558) = ((1 : F) * rho 44559) ∧
    ((1 : F)) * ((-1 : F) * rho 44557 + (1 : F) * rho 44558) = ((1 : F) + (1 : F) * rho 44559)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec46 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 46,
relationSha256Hex := "a9dd7dc450beb31b6199f41734b7c9d1dc222645c384e13e233913496dd73621",
wireRoleSha256Hex := "93edf399745a8471b8992d2e59003ce27e679e44b962312bbe4ed2718af3a54f",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg46
