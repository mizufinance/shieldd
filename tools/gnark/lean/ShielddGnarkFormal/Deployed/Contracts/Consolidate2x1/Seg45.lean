import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg45

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 198) * ((1 : F) * rho 21) = ((1 : F) * rho 32932) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 199) = ((1 : F) * rho 32933) ∧
    ((1 : F)) * ((1 : F) * rho 32932) = ((1 : F) * rho 32933)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec45 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 45,
relationSha256Hex := "a6a9bec30d74ca2c90cccf5ac840de12ad56bca222cb0220b492eacf187a5e52",
wireRoleSha256Hex := "985ac793fd2d75556d235c0dadef03040d4ae62adbaa3c166d49efeebf62a0df",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg45
