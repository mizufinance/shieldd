import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg69

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 11, 353, 60367]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_21d2c12b00d06e5e5a9b561d8f13c30059ff3ae69a31740109ba30ed73bb89aa.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 69,
relationSha256Hex := "cf4c801aa2e37912d8c58f2beede9bcfd2ae85a3433677aa5fa2af43ad5a8a2f",
wireRoleSha256Hex := "1b2fbb91ab998ee5f3e161155f8261bca6bce65eed3d9c4667f839ed6b42a2b1",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg69
