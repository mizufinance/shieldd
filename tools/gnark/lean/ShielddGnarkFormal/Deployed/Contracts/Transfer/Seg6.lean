import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg6

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 7, 21, 400, 22, 401]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 6,
relationSha256Hex := "3acc268991ac6a90106e4a3508144ed9141f6894476607b38f5aaed05bd46503",
wireRoleSha256Hex := "b8323c50d4ed57f3f94c33321eb9c7f102277f03b0160d988bd3bb05eaf362d5",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg6
