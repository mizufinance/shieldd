import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg9

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 381]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 9,
relationSha256Hex := "68901d841e64df84a8d8092dc3c7909e0e58ccf077bf8166addbce0e98d62c6b",
wireRoleSha256Hex := "6f0d44d9a046fa055faacf252baaa7c5aa05086432f9ff6ee745b938efa42c9c",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg9
