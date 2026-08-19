import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg5

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 553]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 5,
relationSha256Hex := "4adff45f0f9cd1adb881963366428f3dc196a805c74aade0b040b8b73cc399da",
wireRoleSha256Hex := "8f055be51e260fee8cef8e0a32c7e475ec5120ed435f82cea871eac8812e3c05",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg5
