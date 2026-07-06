import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg32

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 31080) * ((1 : F) * rho 103) = ((1 : F) * rho 31082) ∧
    ((1 : F) * rho 102) * ((1 : F) * rho 31081) = ((1 : F) * rho 31083) ∧
    ((1 : F)) * ((1 : F) * rho 31082) = ((1 : F) * rho 31083)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec32 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 32,
relationSha256Hex := "71aa3636ae0f10dfeef80c6194089a22a4d93d796bc05711e783515c59ff4ead",
wireRoleSha256Hex := "a9fdcb198338a173787fae84f311a426fbd12f6517ad681d04fdedc0302def93",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg32
