import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg6

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 98, 188, 278, 368, 384]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 6,
relationSha256Hex := "f9e0111dab9909ac0fe7b60920636f497853d03a246bd87d876ac41c18ba9335",
wireRoleSha256Hex := "6e5fa1fcb423951a850dde011949e4eca5a50f9619327eba2fb0a534d80a2855",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg6
