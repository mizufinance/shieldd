import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg10

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 98]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 10,
relationSha256Hex := "d75647e5c1236773a77c2e9071c0271f40132a543bc3f9462135ffdcfa2dff57",
wireRoleSha256Hex := "e1f4f0e207108386bc15c5dd0381e2127aac520c35af18b9d79e19050a323c3c",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg10
