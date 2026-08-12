import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg63

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 171, 247, 44930]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 63,
relationSha256Hex := "e8a0ef9f85e679c803e38db1909f0610e8bcc5f9ba84e3064be0421504de66d3",
wireRoleSha256Hex := "3b1d6f292bc0c0af6bf7170f6bdb80c32420006317d41fdf6896f6d32ad0aeb8",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg63
