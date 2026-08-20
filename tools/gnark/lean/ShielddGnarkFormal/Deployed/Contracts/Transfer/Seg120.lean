import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg120

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 152, 72109, 72114, 72119]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 120,
relationSha256Hex := "0270ba305b08e87f9d34e456f87ebac2d5ebca5d303291cf557b9dacb2512eeb",
wireRoleSha256Hex := "713c318026886ff9ca3517571142ba47abf4fb3fd7c78af4e99e5624f4e3ae4f",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg120
