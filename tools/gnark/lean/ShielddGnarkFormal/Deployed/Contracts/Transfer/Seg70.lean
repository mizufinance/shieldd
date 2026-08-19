import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg70

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 52306]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 70,
relationSha256Hex := "e86b904115d80244198e32c8a50c73b83cfdccb29ab80e5ca043173da5b48ce6",
wireRoleSha256Hex := "5e6f4177877594991cff035aa67787f043b9996fca7e2a5f0f62d5fba79b1a6b",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg70
