import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg34

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107) * ((1 : F) * rho 18) = ((1 : F) * rho 30836) ∧
    ((1 : F) * rho 17) * ((1 : F) * rho 108) = ((1 : F) * rho 30837) ∧
    ((1 : F)) * ((1 : F) * rho 30836) = ((1 : F) * rho 30837)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec34 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 34,
relationSha256Hex := "4899c8b43db7b34a393c1a20c9e6a23bcdc0516c71e99dd73135b3cc9ae26084",
wireRoleSha256Hex := "641532aaeb4ea720705bc85beb829a05c2b95a402de24d864f9560cfc9d918af",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg34
