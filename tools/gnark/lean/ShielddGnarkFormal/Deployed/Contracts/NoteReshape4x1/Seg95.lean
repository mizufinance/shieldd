import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg95

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 285, 368, 92671]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 95,
relationSha256Hex := "13a8bfd0cd1f60b1aaa4c820494ffcab724dadfd8fd7896255eb3c0cba6ea5d9",
wireRoleSha256Hex := "896ac47447be5019fa1f13971b39a229a1039ebed56ad7f8c95f44bcf4898a9f",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg95
