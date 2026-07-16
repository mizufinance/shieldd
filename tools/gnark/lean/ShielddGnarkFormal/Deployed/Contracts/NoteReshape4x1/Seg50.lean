import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg50

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 188, 40119, 103, 43737, 102, 40120, 43738, 43739, 43740]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 50,
relationSha256Hex := "dd1d8dce9cca2e1a7ec73cd596f9f960e925d714e5aff285314bdf696dfb96d4",
wireRoleSha256Hex := "293962f10872ff2ae6e4c61be079fd62f8acb00b8b899edd06cc67f3168e1d80",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg50
