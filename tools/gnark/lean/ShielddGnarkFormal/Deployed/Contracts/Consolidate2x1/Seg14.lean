import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg14

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 12380) * ((1 : F) * rho 13) = ((1 : F) * rho 12382) ∧
    ((1 : F) * rho 12) * ((1 : F) * rho 12381) = ((1 : F) * rho 12383) ∧
    ((1 : F)) * ((1 : F) * rho 12382) = ((1 : F) * rho 12383)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec14 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 14,
relationSha256Hex := "a55d258e0f3a92a080b4c99c5f562dd8af947c58480a90da23173902051dd51c",
wireRoleSha256Hex := "9b92e5a5a0920dd969e0462b3b617095dd95b11c0da1ddb0938909186660c1cb",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg14
