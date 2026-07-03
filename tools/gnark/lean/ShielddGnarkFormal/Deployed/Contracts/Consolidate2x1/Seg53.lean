import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg53

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 52987) * ((1 : F) * rho 4) = ((1 : F) * rho 52989) ∧
    ((1 : F) * rho 3) * ((1 : F) * rho 52988) = ((1 : F) * rho 52990) ∧
    ((1 : F)) * ((1 : F) * rho 52989) = ((1 : F) * rho 52990)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec53 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 53,
relationSha256Hex := "2c3197620c8f28d2506af617b117137b9399c3fce0252e2168dcd84b4c7b6dd0",
wireRoleSha256Hex := "964d07820091fa592fdf860808d5c641220ea9d86520255c498d407023bdf77b",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg53
