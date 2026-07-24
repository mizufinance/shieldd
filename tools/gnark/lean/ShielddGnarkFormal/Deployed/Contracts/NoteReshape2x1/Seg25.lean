import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg25

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 19052, 19057, 19062, 19067, 19072, 19077, 19082, 110]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 25,
relationSha256Hex := "9b6fca15324b0e0aa3a05a43b072d86209b27fe9f05357da65a08a6565ff4d99",
wireRoleSha256Hex := "9cc86ac425543c42bc450cf21e484fbaa3149df06e8c3fe1d58427ed4d3d12b8",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg25
