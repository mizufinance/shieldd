import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg7

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 11, 23, 411, 24, 412]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 7,
relationSha256Hex := "6f79cd548744aec019ce1fd9fb8c71cb9f380cafc98d3cbe3f1310b083774a7a",
wireRoleSha256Hex := "83c850b92c057788f40725dbed38e72dd87f6a8bd572d59074287f6d4890a4c6",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg7
