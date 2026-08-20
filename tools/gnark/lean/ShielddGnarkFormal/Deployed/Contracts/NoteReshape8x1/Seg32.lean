import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg32

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 11, 3, 24806, 24811, 24816, 24821, 24826, 24827]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 32,
relationSha256Hex := "3106cfd7804c2d0c14caeddd0c9a875cb0da728c70746416c96c06bd613415be",
wireRoleSha256Hex := "f0177c08a434a981787e6d8431807ec210b18c3fd32116233ba873e688e24e3b",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg32
