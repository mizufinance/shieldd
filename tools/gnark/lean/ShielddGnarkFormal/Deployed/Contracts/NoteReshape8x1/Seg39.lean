import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg39

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 20, 21, 28004, 28005]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 39,
relationSha256Hex := "7459e49bbd8c59227df2e3b9f5c10d124bb9e37c96edbb6dacaa62394a6b4255",
wireRoleSha256Hex := "261f7c472e5d4268fe2c0fd1ba24d6a413cd9cb9afd89b60306e05ab07d54512",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg39
