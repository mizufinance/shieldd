import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg16

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17945) * ((1 : F) * rho 13) = ((1 : F) * rho 17947) ∧
    ((1 : F) * rho 12) * ((1 : F) * rho 17946) = ((1 : F) * rho 17948) ∧
    ((1 : F)) * ((1 : F) * rho 17947) = ((1 : F) * rho 17948)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec16 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 16,
relationSha256Hex := "28b265229afc2d5630c3840fef592fd932886a937eaabbfd21debf2c3b987024",
wireRoleSha256Hex := "95bb18fbf91fa09615141216f18e78a256f74d6689702850595ff690260229a5",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg16
