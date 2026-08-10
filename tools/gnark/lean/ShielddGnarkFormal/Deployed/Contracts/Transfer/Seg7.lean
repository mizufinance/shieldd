import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg7

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 7, 16, 402, 17, 403]

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
relationSha256Hex := "f535316d7ef82a2abbb61f044890ec793dddd13c3cda25c2cde2842eb815a25b",
wireRoleSha256Hex := "29ae007821d7c0e0655c9c85436083d397f2d7c6d52ade8f6813c50276d74218",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg7
