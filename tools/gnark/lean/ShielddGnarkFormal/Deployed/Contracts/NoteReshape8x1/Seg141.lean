import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg141

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 113012, 113017, 113022, 113027, 113032, 113037, 113042, 113047, 1]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 141,
relationSha256Hex := "7537aef268ba985090f1f9e695ed8ee3dbdf30f091059be0acc759c5c33df4a3",
wireRoleSha256Hex := "9f8bf82f767f6d0f131c61093d9daa15601d3ba2ac8fd23d16371baa99d108b4",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg141
