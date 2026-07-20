import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg92

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 87094, 283, 87100, 282, 87095, 87101, 368, 87102, 87103]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 92,
relationSha256Hex := "53d30b452571549c970518f5c6f7a993f8b118ae4cb56ca04e87723ebda811b0",
wireRoleSha256Hex := "7e8c7ce4670900d348df7b44f1861aad80fb2bfde3a1e6b1b1518224cd26862f",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg92
