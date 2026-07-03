import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg48

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 195) * ((1 : F) * rho 18) = ((1 : F) * rho 44562) ∧
    ((1 : F) * rho 17) * ((1 : F) * rho 196) = ((1 : F) * rho 44563) ∧
    ((1 : F)) * ((1 : F) * rho 44562) = ((1 : F) * rho 44563)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec48 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 48,
relationSha256Hex := "fdf64ca8913c4b928ac8721f52c011b08c24868b8a5ed75c59bdcbd0bfd81370",
wireRoleSha256Hex := "75446e0a4bcb78965bdf8df5f4100d7a618675ec1fe7dbb0bc4a46b6c6651650",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg48
