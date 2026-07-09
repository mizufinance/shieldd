import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Dtk
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg34

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * ((1 : F) * rho 110) = ((1 : F) * rho 31787) ∧
    ((1 : F) * rho 111) * ((1 : F) * rho 111) = ((1 : F) * rho 31788) ∧
    ((3021 : F) * rho 31787) * ((1 : F) * rho 31788) = ((1 : F) * rho 31789) ∧
    ((1 : F)) * ((-1 : F) * rho 31787 + (1 : F) * rho 31788) = ((1 : F) + (1 : F) * rho 31789)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec34 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 34,
relationSha256Hex := "11f34ef171e67e2c74e085de04a0e6fd6a14260598be3fc1db82a9b37ce0d4e0",
wireRoleSha256Hex := "a806e9cdfa0a0e4b505e0642c503cbe27d5c8057494395269c5ed9d906d58e56",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg34
