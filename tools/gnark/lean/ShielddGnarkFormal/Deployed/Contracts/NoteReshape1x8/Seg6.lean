import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg6

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 953, 75]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 6,
relationSha256Hex := "54646219e9dcbe5dd27e582a513e576356edc9a6edc2c79bf417bc65ebe2b88e",
wireRoleSha256Hex := "284f9509c7040d1201f39ab309fdc07a59a9010b47105cf42ab4e250225005f6",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg6
