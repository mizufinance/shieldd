import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg61

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 141, 16]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 61,
relationSha256Hex := "205ba0666666e757df48a98b4606c591d6a262dbd7bd7c7bde8af10abce30044",
wireRoleSha256Hex := "66814e7251818ebb9d1e65b2d086a05af4e8035d9301acc47479e68ceb6bca09",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg61
