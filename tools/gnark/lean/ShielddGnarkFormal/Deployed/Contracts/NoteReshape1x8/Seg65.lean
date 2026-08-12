import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg65

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 35012, 35017, 35022, 35027, 35032, 35037, 183]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 65,
relationSha256Hex := "4ccab9b39dbdf2932b053f7e79603c5335d1743f7c6b82b0c164580520f949ec",
wireRoleSha256Hex := "ee64d1590d35d76ba37532d4a76e79fe7e1ea20567e2bd4828e2476f6c5c1cd7",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg65
