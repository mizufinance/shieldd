import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg2

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3) * ((1 : F) * rho 3) = ((1 : F) * rho 201) ∧
    ((1 : F) * rho 4) * ((1 : F) * rho 4) = ((1 : F) * rho 202) ∧
    ((3021 : F) * rho 201) * ((1 : F) * rho 202) = ((1 : F) * rho 203) ∧
    ((1 : F)) * ((-1 : F) * rho 201 + (1 : F) * rho 202) = ((1 : F) + (1 : F) * rho 203)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec2 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 2,
relationSha256Hex := "1438d18659fd332be74837d2dceeaab4d5cc2e1c5077adea6aa0dfaeb0338c04",
wireRoleSha256Hex := "0a599782c5065aaa089305120c495dc2aee6cbc1a38c0f6349fd676b2153da45",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg2
