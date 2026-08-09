import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg4

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 3, 121, 4, 122, 123]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 4,
relationSha256Hex := "52cb53a2053fbd2268131de92c6b4f25b256be2a7bb7afa4d5b33ae659e2652e",
wireRoleSha256Hex := "7dcc6beecc4289020176602014902efc3186c68c8c048b5eebc86b7893c370bd",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg4
