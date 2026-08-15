import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg6

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 11, 28, 407, 29, 408]

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
relationSha256Hex := "7e2d10847453cdffa5e9b35ae3d1e3fbc97104c17605bc3664948fa56d94d485",
wireRoleSha256Hex := "fe4576757b88091aac3f6d8dbff27b41f1e46745abf30f12128b735c225377de",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg6
