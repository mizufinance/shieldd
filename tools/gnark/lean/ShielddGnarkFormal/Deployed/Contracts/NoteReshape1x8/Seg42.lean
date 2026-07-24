import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg42

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 125, 19940, 126, 19941, 19942]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertOnCurve_24bf85b2827b81673d6d4cc8defe8ee186fa904c91905b1d2fa2b9b734d52b7e.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 42,
relationSha256Hex := "dd25287020b6a611b7c0f8160547da718a5931c3d5068b7cb76855df90760837",
wireRoleSha256Hex := "6bdb6d1a538bd0761a45fb621f3baf8da0a4d88fa3bc6af6aa5dffbed3577194",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg42
