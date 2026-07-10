import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg43

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 198) * ((1 : F) * rho 198) = ((1 : F) * rho 32927) ∧
    ((1 : F) * rho 199) * ((1 : F) * rho 199) = ((1 : F) * rho 32928) ∧
    ((3021 : F) * rho 32927) * ((1 : F) * rho 32928) = ((1 : F) * rho 32929) ∧
    ((1 : F)) * ((-1 : F) * rho 32927 + (1 : F) * rho 32928) = ((1 : F) + (1 : F) * rho 32929)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec43 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 43,
relationSha256Hex := "8422fdb9546be437d5bd2ffea3246856ca829af43b82ea05ee1d0ddd74cfa43c",
wireRoleSha256Hex := "dd5b943b4152a131a64f6223e461b2ea9f5a569e771126ca2acb7f44dc969067",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg43
