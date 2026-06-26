import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg20

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((1 : F) * rho 21) = ((1 : F) * rho 18908) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 21) = ((1 : F) * rho 18909) ∧
    ((1 : F)) * ((1 : F) * rho 18908) = ((1 : F) * rho 18909)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec20 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 20,
relationSha256Hex := "e77105225ea6d49708819aa6667bf8d0b53c34659372b245f5f94fcdda20f3ae",
wireRoleSha256Hex := "2095710281ab0b88625b9e6e604a3a65d66010b510617feb875b9cc588d7d344",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg20
