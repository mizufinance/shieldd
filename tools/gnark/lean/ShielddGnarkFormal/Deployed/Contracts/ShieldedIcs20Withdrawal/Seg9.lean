import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg9

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 6672, 5959, 5967]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 9,
relationSha256Hex := "b9e948a00be79e4b299927d1ee5f109d293a630f37400f21a59b69254a90e938",
wireRoleSha256Hex := "f05c6ee4f24d957486c1a0166828613e00169ed7cb016fac15b2fc6af660f02d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg9
