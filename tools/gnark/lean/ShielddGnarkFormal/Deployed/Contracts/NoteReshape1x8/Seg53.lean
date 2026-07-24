import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg53

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 131, 16]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 53,
relationSha256Hex := "1d7b8f16dc545e1a87e21d6af4955f4e77941cbae259c277f37ec4e1d7a4e451",
wireRoleSha256Hex := "f50de0b68119f4b0f0d56fb2e7f1757d33b998cd4d8637dacd7296e4df0a7ed9",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg53
