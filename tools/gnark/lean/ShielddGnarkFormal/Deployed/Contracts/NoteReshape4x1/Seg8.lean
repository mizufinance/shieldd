import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg8

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 98, 188, 278, 368, 385]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_18b8939dae25543d281e6aa5ebcc56c4fdd030a9a7e506b73e9157a2e4a8b549.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 8,
relationSha256Hex := "ff9eaff448c9e96065fe391e8fabebf10dda1bad7814563a4b409b32bf533e81",
wireRoleSha256Hex := "c4d9e8411e54a6da133f9e2caeed0990caadee657a6bd0dc9bf080348fda6b89",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg8
