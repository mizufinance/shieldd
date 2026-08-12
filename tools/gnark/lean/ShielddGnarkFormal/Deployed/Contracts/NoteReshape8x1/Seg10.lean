import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg10

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 165, 247, 329, 411, 493, 575, 657, 739, 751, 752, 753, 754, 755, 756]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 10,
relationSha256Hex := "fe542ac4028ae3b302bebf16e8697b631e9e8bab15da3bbba4c616b6bc64b821",
wireRoleSha256Hex := "719f56d7dffbab42aaf102774ea4da7f36f61963419c5748a55b8fc7644d3c4f",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg10
