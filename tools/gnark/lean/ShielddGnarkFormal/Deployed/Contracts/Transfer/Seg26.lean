import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg26

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 18157, 18158]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 26,
relationSha256Hex := "a42322cae7536383091c649566c76ac26e555a3b3af3bd4a516f5eb15145c373",
wireRoleSha256Hex := "e5e55bdbb9864a3d963390ef6b570a6adb5c0426ff035ac0454a00e2b49083f8",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg26
