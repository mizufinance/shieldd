import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg29

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 7, 4, 24391, 24396, 24401, 24406, 24411, 24412]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 29,
relationSha256Hex := "aea27ff9bcd3b1574d91b4aa3ad8dc0840f2a93254ca258ff20260883369b673",
wireRoleSha256Hex := "3b1ad402c95edfa476cfbe8aab6afb17f3f9af76430f1fef766e4aaaf481aacd",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg29
