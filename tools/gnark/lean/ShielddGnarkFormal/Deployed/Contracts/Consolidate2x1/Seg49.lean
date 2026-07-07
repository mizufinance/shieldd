import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg49

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 198) * ((1 : F) * rho 21) = ((1 : F) * rho 44564) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 199) = ((1 : F) * rho 44565) ∧
    ((1 : F)) * ((1 : F) * rho 44564) = ((1 : F) * rho 44565)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec49 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 49,
relationSha256Hex := "3966c2b2eb5eeaac54cbdbee74a6436296d9775a547ffc3c834d848bbbbb549a",
wireRoleSha256Hex := "c94d7d50c717296fa5c6fba454edcbfb0646c0280e08725f25e143cca490094a",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg49
