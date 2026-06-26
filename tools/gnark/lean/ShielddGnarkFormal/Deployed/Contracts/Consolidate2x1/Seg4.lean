import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg4

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((1 : F) * rho 20) = ((1 : F) * rho 207) ∧
    ((1 : F) * rho 21) * ((1 : F) * rho 21) = ((1 : F) * rho 208) ∧
    ((3021 : F) * rho 207) * ((1 : F) * rho 208) = ((1 : F) * rho 209) ∧
    ((1 : F)) * ((-1 : F) * rho 207 + (1 : F) * rho 208) = ((1 : F) + (1 : F) * rho 209)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec4 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 4,
relationSha256Hex := "5abee15d1148762c392026697e92fffe39df79862df0d6efb1bffaf54d811009",
wireRoleSha256Hex := "1fe11722a15a9084058397386c1236f5d438e5671623b967883f94bf9f5add1a",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg4
