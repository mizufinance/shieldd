import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg19

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * ((1 : F) * rho 18) = ((1 : F) * rho 18906) ∧
    ((1 : F) * rho 17) * ((1 : F) * rho 18) = ((1 : F) * rho 18907) ∧
    ((1 : F)) * ((1 : F) * rho 18906) = ((1 : F) * rho 18907)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec19 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 19,
relationSha256Hex := "5e88f6cf83225ce616e2585dca6d0478c57ef06997d37cab992bb79680a951f2",
wireRoleSha256Hex := "e8214ca258390e3e574b1dd368f12a9365beb45b2957ff105a952b81621e2d19",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg19
