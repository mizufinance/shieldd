import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg18

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 16, 7, 22138, 22143, 22148, 22153, 22158, 22159]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 18,
relationSha256Hex := "284f2de77e56d0b71e89dd8a06f598a0f5cc84b77c55c8563deb2046953b36d0",
wireRoleSha256Hex := "04dbae674d643405547e1c73317adfae14063e05e5588a52ef06307c1686fa77",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg18
