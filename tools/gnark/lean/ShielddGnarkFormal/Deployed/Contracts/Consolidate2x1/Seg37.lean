import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg37

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107) * ((1 : F) * rho 18) = ((1 : F) * rho 37606) ∧
    ((1 : F) * rho 17) * ((1 : F) * rho 108) = ((1 : F) * rho 37607) ∧
    ((1 : F)) * ((1 : F) * rho 37606) = ((1 : F) * rho 37607)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec37 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 37,
relationSha256Hex := "ec308443903223bcf7599f438e56ca530eb31a0b394c16d83045489a4720b6aa",
wireRoleSha256Hex := "2fd49e3bf1e36d4842c1a86a3a557e36ce395ff1add5ad3d9b87346385480353",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg37
