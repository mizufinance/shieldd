import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg73

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 278, 62164, 193, 65782, 192, 62165, 65783, 65784, 65785]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 73,
relationSha256Hex := "cda6016b3132dfbfd6ba9dbfc46f9f4dff30cf74d1596d012eecf509919be2f0",
wireRoleSha256Hex := "f36de52a0f8848d91b4b5a6e919ca0d05b49384b085ad678ad3bffd5b3285d30",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg73
