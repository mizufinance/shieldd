import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg17

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((1 : F) * rho 20) = ((1 : F) * rho 18901) ∧
    ((1 : F) * rho 21) * ((1 : F) * rho 21) = ((1 : F) * rho 18902) ∧
    ((3021 : F) * rho 18901) * ((1 : F) * rho 18902) = ((1 : F) * rho 18903) ∧
    ((1 : F)) * ((-1 : F) * rho 18901 + (1 : F) * rho 18902) = ((1 : F) + (1 : F) * rho 18903)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec17 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 17,
relationSha256Hex := "3941bfdb03fa9a8f6ae3a11bb58d8f95053d7e57007a259ed7371600093bbc58",
wireRoleSha256Hex := "6f6b5ff44b8a850fbf8878d04c2220cec4384605733dd1061213f1c2d5267de6",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg17
