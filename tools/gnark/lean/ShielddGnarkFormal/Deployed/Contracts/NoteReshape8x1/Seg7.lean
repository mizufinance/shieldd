import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg7

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 587]

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
relationSha256Hex := "db1c526ec3b171ef5064185de84035d8ab53c54107b8034b79aaa35572fe0c35",
wireRoleSha256Hex := "2399ef318e9cd5ad9d1c0e5a7d21c1e9f1b2c65bf906bed7f69a8e26c0eb974a",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg7
