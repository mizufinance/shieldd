import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Dtk
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg16

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 18196) * ((1 : F) * rho 13) = ((1 : F) * rho 18198) ∧
    ((1 : F) * rho 12) * ((1 : F) * rho 18197) = ((1 : F) * rho 18199) ∧
    ((1 : F)) * ((1 : F) * rho 18198) = ((1 : F) * rho 18199)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec16 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 16,
relationSha256Hex := "80dd93bcd19aae0535c01a79aa9dcb6b1e0553fa6e0aa33af4eb09322cf67832",
wireRoleSha256Hex := "9c878d0dcd6043bf77b3fd4fb50c079bf880f84a593f250f8ca4f36f949bdc3a",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg16
