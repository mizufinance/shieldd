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
    ((1 : F) * rho 20) * ((1 : F) * rho 20) = ((1 : F) * rho 18903) ∧
    ((1 : F) * rho 21) * ((1 : F) * rho 21) = ((1 : F) * rho 18904) ∧
    ((3021 : F) * rho 18903) * ((1 : F) * rho 18904) = ((1 : F) * rho 18905) ∧
    ((1 : F)) * ((-1 : F) * rho 18903 + (1 : F) * rho 18904) = ((1 : F) + (1 : F) * rho 18905)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec18 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 18,
relationSha256Hex := "52d05c83246a848b5819e1614be93b2dd6e0b49b871d9c0dd87398da5201f356",
wireRoleSha256Hex := "e974b1458c2b80fa1968db6c3e0aac8e9a7e4488500dd6086c73a529529be0a2",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg18
