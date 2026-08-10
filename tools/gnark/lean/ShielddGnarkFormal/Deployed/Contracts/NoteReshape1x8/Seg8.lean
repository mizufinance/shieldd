import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg8

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 5791, 5781, 5789]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDecafNonIdentity_6e9fd3a3eee2e21b49a710f750999a0e29d1babc1615c644cebbf294d8fb9e61.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 8,
relationSha256Hex := "81486e17253b748f14ae238406765c3beb6b8439b52a3347e97c62997d431ea9",
wireRoleSha256Hex := "e375f244da20dfca0ad1b63ac6ac7f8354d50f7c906032788b3ba66d31586d8d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg8
