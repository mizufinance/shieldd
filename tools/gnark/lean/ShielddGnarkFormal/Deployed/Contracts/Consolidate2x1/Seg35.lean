import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg35

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * ((1 : F) * rho 110) = ((1 : F) * rho 37601) ∧
    ((1 : F) * rho 111) * ((1 : F) * rho 111) = ((1 : F) * rho 37602) ∧
    ((3021 : F) * rho 37601) * ((1 : F) * rho 37602) = ((1 : F) * rho 37603) ∧
    ((1 : F)) * ((-1 : F) * rho 37601 + (1 : F) * rho 37602) = ((1 : F) + (1 : F) * rho 37603)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec35 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 35,
relationSha256Hex := "931da2bdfe892fae190b38745d247cebb1d63fa6176b15bd3fd9f79ec6a5c6e2",
wireRoleSha256Hex := "d8a28561e1e7fef8e4a10a8223eada01f19220df0ba373ad5bafa8a23ebff4c5",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg35
