import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg10

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 98, 188, 278, 368, 458, 548, 638, 728, 748, 749, 750]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertActiveRange_486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 10,
relationSha256Hex := "345fbed45afa696fd727d56f89955b75efbdfe36382004dce9f1118e859a1554",
wireRoleSha256Hex := "3c5c4171f3b8c7fa45dd22c12c2b56e845fd0293dd01833f3bf5a67e15ecc31e",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg10
