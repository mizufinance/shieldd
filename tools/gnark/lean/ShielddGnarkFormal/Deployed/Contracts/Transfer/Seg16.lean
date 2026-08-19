import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_337547ecab9ed69ef703225ce3fb67ba58652a95490dc7e75be736b205e39646
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg16

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 86, 6777, 6785, 6787, 85, 6778, 6786, 6788]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_337547ecab9ed69ef703225ce3fb67ba58652a95490dc7e75be736b205e39646.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_337547ecab9ed69ef703225ce3fb67ba58652a95490dc7e75be736b205e39646.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 16,
relationSha256Hex := "35c50ffbadb0f8e66d4d9a99fdd19572387734d57a8dc89ff7da1e4fac5445c2",
wireRoleSha256Hex := "e62f856a84d1f90a03dd2f85a36f3b9d1083a1908082f3450d21b61d901c925c",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg16
