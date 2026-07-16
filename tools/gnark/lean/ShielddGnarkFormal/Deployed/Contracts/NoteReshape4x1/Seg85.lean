import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg85

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 368, 293, 72102, 72107, 72112, 72117, 72122, 72127, 72132, 72133]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 85,
relationSha256Hex := "2af990319438d91742d3b48851ce73e7f45d8904e14f8e43f2b5031eb796b58d",
wireRoleSha256Hex := "b5b2c43863bccd9266d462516544eecd6a8146e3afe28218f91ccde833d87f9d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg85
