import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg32

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 20858, 20863, 20868, 20873, 85]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEq_ef313f39c5d5f9c3c2abea0b2fbcb1a75256e09acef6da5ab8070cf65b7a0cbd.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 32,
relationSha256Hex := "63731fbba93164e717dc6bcd49ab2d609fa181780f3bcdc7ce717913be28f356",
wireRoleSha256Hex := "c84ddf8f5797da5362f2b566865fcbfe9d9e36691a892e224ebdeb532b7ffa42",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg32
