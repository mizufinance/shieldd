import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg24

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 95, 8384, 8389, 8394, 8399, 17624, 17608, 17613, 17618, 17623, 17625]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 24,
relationSha256Hex := "cbbe0e165b900ae788c50fe4b1bdb22376325efe374c71a3080852a938befaac",
wireRoleSha256Hex := "3c9e55090d9fb7db878b20bb726daff46c9e749e95da7ddbb6f5134c261ce8b5",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg24
