import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg120

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 582, 84401, 84406, 84411, 84416, 93641, 93625, 93630, 93635, 93640, 93642]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 120,
relationSha256Hex := "11fdd0804651a4d5dc7b16fba82235e4c3fc064ab2c69749b339844b59b15d50",
wireRoleSha256Hex := "ffb79b51a471b29dcc126410ac737a8076175af62c9b604cc751e3f4ee38c27b",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg120
