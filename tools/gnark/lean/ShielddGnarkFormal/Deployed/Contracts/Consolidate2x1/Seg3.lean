import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg3

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * ((1 : F) * rho 17) = ((1 : F) * rho 204) ∧
    ((1 : F) * rho 18) * ((1 : F) * rho 18) = ((1 : F) * rho 205) ∧
    ((3021 : F) * rho 204) * ((1 : F) * rho 205) = ((1 : F) * rho 206) ∧
    ((1 : F)) * ((-1 : F) * rho 204 + (1 : F) * rho 205) = ((1 : F) + (1 : F) * rho 206)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec3 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 3,
relationSha256Hex := "764925ae39b424f0d93a3f551a0b01645457661b93322306221a7f076e6d07f3",
wireRoleSha256Hex := "1e9835c6023e7781a39f0ae339d0251bb86384be4761300a6925b8d4e4f0f5bc",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg3
