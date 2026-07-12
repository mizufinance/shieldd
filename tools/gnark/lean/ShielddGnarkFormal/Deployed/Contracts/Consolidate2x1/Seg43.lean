import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Specs.Glue
import ShielddGnarkFormal.StructuredLC
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg43

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def relation (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 198) * ((1 : F) * rho 21) = ((1 : F) * rho 31275) ∧
    ((1 : F) * rho 20) * ((1 : F) * rho 199) = ((1 : F) * rho 31276) ∧
    ((1 : F)) * ((1 : F) * rho 31275) = ((1 : F) * rho 31276)

/-- Semantic projection: the hand-authored Layer-2 endpoint for this
deployed segment, seated on this slice's wire roles. -/
def spec (rho : Nat -> F) : Prop := Specs.deployedSpec43 rho

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 43,
relationSha256Hex := "f9fdfd23f44dc1d5da61f9feebdf8811748b64fc577e51e904ad20d1d919bbe6",
wireRoleSha256Hex := "4dae5b01fd264d283314f56dbd945fec71084980ed5db4973548df9961c9bb91",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Seg43
