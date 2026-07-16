import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg6

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 98, 188, 382, 278, 383, 368, 384]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_678ab00aaa272510d3b55f2636ec8baddc4168fde2671bdda7bcbce5baeb54cc.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 6,
relationSha256Hex := "81700f709217ec033b1981210b42ea2bd0e266d75b3c914e198936cf698bda7e",
wireRoleSha256Hex := "d29f7020c015222c68311ff3d4e8864f9b87bda3e884ad60d1d944c129232e74",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg6
