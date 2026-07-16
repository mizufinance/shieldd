import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg22

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 98, 2, 16301, 16306, 16311, 16316, 16321, 16322]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 22,
relationSha256Hex := "db7389564adb93e2f51c8139daeede5663c9296b20266e4f86d81abde5d0a86a",
wireRoleSha256Hex := "1180a6e956b244402727fc02b68178c85c56f8ad3c945141fbebfff8e16f6a17",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg22
