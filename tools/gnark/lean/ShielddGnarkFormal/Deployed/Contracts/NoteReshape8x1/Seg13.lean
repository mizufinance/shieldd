import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg13

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 741]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_baf3daf107a8ecf86f8d62726be89a6f075a67383c9f7af467d6442f7c349553.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 13,
relationSha256Hex := "660d4c2cd53abfe4d28a6071fd99d522010c88ab28d20f8241b9c6673be711ec",
wireRoleSha256Hex := "4c58ace31d3b2f53c3c5ea905e0f1e2a58df0885fea753b8c698124bb91c5ff2",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg13
