import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg49

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 221, 27754, 27759, 27764, 27769, 36994, 36978, 36983, 36988, 36993, 36995]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 49,
relationSha256Hex := "7b15e7a3f7670f0af21a569c7d19eeac5f62d1d0cefae42ac296ba16d085c5de",
wireRoleSha256Hex := "a42ed37146ac95249a08b77f337d64a578320b6210715a70059489ebf6112d29",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg49
