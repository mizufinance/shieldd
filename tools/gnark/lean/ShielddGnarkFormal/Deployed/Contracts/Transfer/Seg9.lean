import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg9

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 11, 31, 414]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 9,
relationSha256Hex := "2afa12e2801ed71f68e925f9eb466c4769de0ec4eb1af1a9dc9351d2c06e4b79",
wireRoleSha256Hex := "d16d51d40c94e919158b14710b066ea0061b2190b006d044dc3691127f0045ad",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg9
