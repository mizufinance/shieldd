import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg99

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 87461, 283, 87467, 282, 87462, 87468, 368, 87469, 87470]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 99,
relationSha256Hex := "e6e3b784580ba4a82a3c0b89bb0bfe932d094ba90f27088b7378d204948bd2eb",
wireRoleSha256Hex := "732482cce7c3b78192b985284b879f27f7bd876072c094edc9267d0c13d7cdff",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg99
