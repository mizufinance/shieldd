import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg91

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 368, 83478, 283, 87096, 282, 83479, 87097, 87098, 87099]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 91,
relationSha256Hex := "2987c1d016b73fd904a82dab7233696b479bcfa4ccf075002aafc575c3838839",
wireRoleSha256Hex := "75c8152c0ae72da9432af66220a66c9993e2462019cba466694fbcc4b2890a92",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg91
