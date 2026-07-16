import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg7

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 186]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 7,
relationSha256Hex := "2444e6973eda12aafc23335759000650b5c64cf51d1f5093c7f9976b4f43412c",
wireRoleSha256Hex := "8e2d7b27129ffda155611143e9ee3ae9c73161d057d7c67fa1bce83958096de3",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg7
