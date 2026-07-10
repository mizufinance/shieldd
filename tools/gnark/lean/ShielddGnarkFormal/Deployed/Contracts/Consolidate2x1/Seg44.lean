import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg44

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 195) * ((1 : F) * rho 18) = ((1 : F) * rho 32930) ∧
    ((1 : F) * rho 17) * ((1 : F) * rho 196) = ((1 : F) * rho 32931) ∧
    ((1 : F)) * ((1 : F) * rho 32930) = ((1 : F) * rho 32931)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec44 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 44,
relationSha256Hex := "dfc5a3cc044ee97c6ad67cbcf127911678f4f44a89a657bb08a8e87cb5f4ecc9",
wireRoleSha256Hex := "f330fadcc5fa27057054c18860e793034548208a62a0c61c4ee6cc25b6e8a5f3",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg44
