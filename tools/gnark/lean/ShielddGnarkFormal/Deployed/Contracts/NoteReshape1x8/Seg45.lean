import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg45

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 121, 16]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 45,
relationSha256Hex := "3ba1b5569be572c3d686f4297b748989c99ca6c2d542351fda52e0084192754c",
wireRoleSha256Hex := "458c85215a3a676d3f9ef07fa1a57d67083163cdae232ba9ad7c70f67f9f6352",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg45
