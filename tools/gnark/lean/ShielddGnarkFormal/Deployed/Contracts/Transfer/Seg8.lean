import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg8

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 10, 29, 408]

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
relationSha256Hex := "c041f92f6db8f13bda13a4ad793dba458abf8cade0c0f12764fd69f4e5c5eccc",
wireRoleSha256Hex := "e3bf69d66011d3b1e1a1d2741b9fe1525a4feefc727a7a94148c55efb5e91d9a",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg8
