import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg38

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * ((1 : F) * rho 21) = ((1 : F) * rho 37608) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 111) = ((1 : F) * rho 37609) ∧
    ((1 : F)) * ((1 : F) * rho 37608) = ((1 : F) * rho 37609)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec38 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 38,
relationSha256Hex := "44594d5933dec662bbd1ecdddc6f6639513bea963f40983f3d98b41b6c92be2d",
wireRoleSha256Hex := "36e936b6e1ed364e47e14bf0eb5a7d283cdced3043c6e6ef5f1baee496f17e57",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg38
