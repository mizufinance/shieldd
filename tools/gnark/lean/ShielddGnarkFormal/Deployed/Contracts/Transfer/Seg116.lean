import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg116

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 148, 414]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 116,
relationSha256Hex := "4a61357e94b8efd7984d2e8bdd9dfd969b22f16277241e095448da3bfa123265",
wireRoleSha256Hex := "82eb974445bfe40ff39030f082831a5dc146470f6a8d4375846ca73e26e63310",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg116
