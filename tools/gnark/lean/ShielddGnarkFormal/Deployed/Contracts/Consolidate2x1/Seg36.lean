import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg36

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * ((1 : F) * rho 21) = ((1 : F) * rho 31792) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 111) = ((1 : F) * rho 31793) ∧
    ((1 : F)) * ((1 : F) * rho 31792) = ((1 : F) * rho 31793)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec36 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 36,
relationSha256Hex := "274fb6bb91e8288fb841664888724a0a68bc78104176ebfdd09430a23acb6890",
wireRoleSha256Hex := "b86de30ebcde38af96618c21fab59f8ba8543aaea0ca86e3f7749ddf3c1cc952",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg36
