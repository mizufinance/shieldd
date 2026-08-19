import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg34

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 135, 25085, 25090, 25095, 25100]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 34,
relationSha256Hex := "f103592048eb7968500bd95a51354c3066ee2f14d75e4aaf2c02173bead12f3e",
wireRoleSha256Hex := "e30ddf91d73465915d22a508eeba4c41ff68d9c1141f6ec3f95613556b253554",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg34
