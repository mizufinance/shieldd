import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg41

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 198) * ((1 : F) * rho 198) = ((1 : F) * rho 31270) ∧
    ((1 : F) * rho 199) * ((1 : F) * rho 199) = ((1 : F) * rho 31271) ∧
    ((3021 : F) * rho 31270) * ((1 : F) * rho 31271) = ((1 : F) * rho 31272) ∧
    ((1 : F)) * ((-1 : F) * rho 31270 + (1 : F) * rho 31271) = ((1 : F) + (1 : F) * rho 31272)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec41 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 41,
relationSha256Hex := "a8fc5dd76ab41548443897863282f45709dd040b7d3143e0b825b85b167258cf",
wireRoleSha256Hex := "d0bc6da4565ae79fcd3991cb99057da248471fc5848c8072f4ab0b9f6b65fed8",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg41
