import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg18

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((1 : F) * rho 20) = ((1 : F) * rho 18652) ∧
    ((1 : F) * rho 21) * ((1 : F) * rho 21) = ((1 : F) * rho 18653) ∧
    ((3021 : F) * rho 18652) * ((1 : F) * rho 18653) = ((1 : F) * rho 18654) ∧
    ((1 : F)) * ((-1 : F) * rho 18652 + (1 : F) * rho 18653) = ((1 : F) + (1 : F) * rho 18654)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec18 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 18,
relationSha256Hex := "c288bb4d9071afdd08fe23141589b357b882eebb8e24b8d540887579f2ab9b56",
wireRoleSha256Hex := "84693b4bf8604200830850b3cd1bd262750d40b11d7b792df2b4f3fb8f16ad7c",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg18
