import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg62

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 53890, 53895, 53900, 53905, 53910, 53915, 53920, 334]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 62,
relationSha256Hex := "becea2c8c93d8abba5348915c09f56413c34e046c7a3f050f6fb1eebf1a5cb21",
wireRoleSha256Hex := "d7e8ca843470ec2b36945b4084485c00ef59962221f495c4d1c6bc9d9dd7053e",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg62
