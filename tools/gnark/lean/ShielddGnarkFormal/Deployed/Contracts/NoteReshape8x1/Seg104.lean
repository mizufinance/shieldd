import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg104

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 553, 477, 77805, 77810, 77815, 77820, 77825, 77830, 77831]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_0c09e0bc61a185f0693b2140c57a5eb8ceb0b7d68fbce9495598afef74a6ecd3.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 104,
relationSha256Hex := "0ef17cce8ed28aac5fe27cd422a01be5cc9bc34d5d7fd99e903e93a51178159b",
wireRoleSha256Hex := "57e5b33650c027c0812582b410a219004355e9bb9e8a2a6d9161be0933c620a5",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg104
