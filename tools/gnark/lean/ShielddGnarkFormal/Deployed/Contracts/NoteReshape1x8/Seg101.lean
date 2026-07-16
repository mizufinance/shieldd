import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg101

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 153, 186, 30786]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 101,
relationSha256Hex := "e84f4bf65b83d5816445f10d7eaf072ec5df1b594047aadfb078afc7f2d31b1e",
wireRoleSha256Hex := "4b4b2d7a4dadedf22f8af7e911c08d4a1c56a6dfe3e28b9951dfb76943ae0208",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg101
