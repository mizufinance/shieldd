import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg15

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 15895, 15896]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 15,
relationSha256Hex := "2b95413a7254b761e1ed34e706dca8c0b613fa682f37aaeb0c77648069c7f967",
wireRoleSha256Hex := "940e7f88724c7b08f168b7c642eee94f40af83f6c728466ec861673d604db4ec",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg15
