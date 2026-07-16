import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg63

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 278, 203, 50422, 50427, 50432, 50437, 50442, 50447, 50452, 50453]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 63,
relationSha256Hex := "187015bb642702421650a65e40343a72da81cb9f6de461988c35f28d979c040e",
wireRoleSha256Hex := "a20fe9d37d131886d50a893430b981c1ced68acd8a0905dc73d4a2b35af9843d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg63
