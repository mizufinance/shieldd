import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg12

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 98]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 12,
relationSha256Hex := "48acb9a2bfbc9330c773faafd918e98517b7bd07922dc26a82e1236eb019bfb0",
wireRoleSha256Hex := "e1f4f0e207108386bc15c5dd0381e2127aac520c35af18b9d79e19050a323c3c",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg12
