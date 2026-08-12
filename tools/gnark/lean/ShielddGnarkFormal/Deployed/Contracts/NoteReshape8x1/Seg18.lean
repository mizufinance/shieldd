import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg18

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 6429, 6419, 6427]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 18,
relationSha256Hex := "97fd85e6e65b065228c7d1c008b5586b57094a946d445d9f53994f5bcc45325e",
wireRoleSha256Hex := "9724eef10ce6caf47557ba27289496e4ee80cab930f53d56f72552a89e6083b9",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg18
