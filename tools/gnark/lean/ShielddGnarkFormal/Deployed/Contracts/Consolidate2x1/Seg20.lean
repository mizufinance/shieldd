import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg20

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((1 : F) * rho 21) = ((1 : F) * rho 18657) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 21) = ((1 : F) * rho 18658) ∧
    ((1 : F)) * ((1 : F) * rho 18657) = ((1 : F) * rho 18658)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec20 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 20,
relationSha256Hex := "9780d9daa39ac93f4776621a3c20001246ca2a9c5eef3781a7ca093f1c75fb14",
wireRoleSha256Hex := "ebeea4aebdcfa0f430050792768abbc7c908893bf84d79cdc82ce0c40e36347c",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg20
