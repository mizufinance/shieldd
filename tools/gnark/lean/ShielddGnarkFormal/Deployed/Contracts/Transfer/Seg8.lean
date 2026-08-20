import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg8

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 11, 30, 413]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 8,
relationSha256Hex := "bbd1ff4a0c4532bfc522c033058fe43e18d632ba73ad5402e69cf2041d7640c1",
wireRoleSha256Hex := "df92d0d31b66eb78e11add9a6d6bdf438bc58c31996c9e9a63d857348d1dc7e3",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg8
