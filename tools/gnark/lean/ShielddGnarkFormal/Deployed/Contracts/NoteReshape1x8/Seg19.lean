import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg19

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 17, 18, 18632, 18633]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_ce02fb5b14b91c97c79ab560615ee72c620bac327f5e342c9dc69ea1c024f9e5.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 19,
relationSha256Hex := "1ed416016b88f48184c4c0c4a553cb9b01665e651c196a9c137882cceabbb6d5",
wireRoleSha256Hex := "ce73dc353821786ab6fb6ecbd7c213c45ee4368400384fa8d0c0854d426e5208",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg19
