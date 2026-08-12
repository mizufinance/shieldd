import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg79

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 40443, 40448, 40453, 40458, 40463, 40468, 40473, 40478, 1]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 79,
relationSha256Hex := "c540ef3671754ad4d76ee56638e7dbb3bf7c7dd7fa67faf59da4b689518c64bd",
wireRoleSha256Hex := "a972393ab049ec69ec36d3505119401cf47e923d735220b6bde194e3fe7fa001",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg79
