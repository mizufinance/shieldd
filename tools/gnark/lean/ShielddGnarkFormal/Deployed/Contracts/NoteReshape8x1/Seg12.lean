import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg12

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 98, 188, 278, 368, 458, 548, 638, 728, 749, 750, 751]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 12,
relationSha256Hex := "284a39de8feee9414675feb272097a0f433d43ac6c29f6ac4d5e4de2f34be663",
wireRoleSha256Hex := "7ef178d8bcf6b5d0e708e4e9548252ae9ce5f27cc5a179cb76545c2c1663e112",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg12
