import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg113

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 147, 410]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 113,
relationSha256Hex := "f8f3306ec8a03f9a81b5a63b20275b6b9c9bc719babdd38a291933d8e1a415dc",
wireRoleSha256Hex := "e9c18e3d302679ba08cfe05f2ad176419f5e18d98730c3ac7bcc5c7909dfc196",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg113
