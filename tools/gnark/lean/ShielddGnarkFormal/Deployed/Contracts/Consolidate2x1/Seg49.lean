import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg49

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 40715) * ((1 : F) * rho 4) = ((1 : F) * rho 40717) ∧
    ((1 : F) * rho 3) * ((1 : F) * rho 40716) = ((1 : F) * rho 40718) ∧
    ((1 : F)) * ((1 : F) * rho 40717) = ((1 : F) * rho 40718)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec49 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 49,
relationSha256Hex := "fdb13090919d92e2198e94e3bc6656a9d106a3fcda39747f05d31edd1e2a75e1",
wireRoleSha256Hex := "a416fe7219ab24bf88f7db874eae30edb6800780d8ab53c0aaaafa6f136bb29a",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg49
