import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg33

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * ((1 : F) * rho 110) = ((1 : F) * rho 30833) ∧
    ((1 : F) * rho 111) * ((1 : F) * rho 111) = ((1 : F) * rho 30834) ∧
    ((3021 : F) * rho 30833) * ((1 : F) * rho 30834) = ((1 : F) * rho 30835) ∧
    ((1 : F)) * ((-1 : F) * rho 30833 + (1 : F) * rho 30834) = ((1 : F) + (1 : F) * rho 30835)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec33 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 33,
relationSha256Hex := "fe51da7ec6b486b317002a2c3526ce972d8b4c49cd74e58bbc6cb2694a136a57",
wireRoleSha256Hex := "6128d27fab755f42bc59b452b2166fa05e3ddcdeea6a2cbc0e18223609690371",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg33
