import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg13

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 181, 182, 183, 184, 185, 186, 187, 188, 196, 197, 198, 199, 200, 201]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 13,
relationSha256Hex := "2a49baa9f208ccb6bbd4e62ab224bd747f879cb3833e0184252044cfcb0e1381",
wireRoleSha256Hex := "377aba0afab1ba0d00cf9e286988199e09d5502fa20fc0f139f161d20e349634",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg13
