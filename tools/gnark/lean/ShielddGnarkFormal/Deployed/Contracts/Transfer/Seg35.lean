import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg35

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 173, 28146, 28151, 28156, 28161]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 35,
relationSha256Hex := "b98039720d048ed01cdcd2fe899c5774b7fcd9215f020d16e47bcc2af8df6fdd",
wireRoleSha256Hex := "2a7a20d377ae35fa490cb007c51881769fb4b9beaf6ff5b5414167af04945312",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg35
