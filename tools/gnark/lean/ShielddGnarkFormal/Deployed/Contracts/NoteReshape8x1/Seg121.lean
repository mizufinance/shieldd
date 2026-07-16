import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg121

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 109141, 373, 109147, 372, 109142, 109148, 458, 109149, 109150]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 121,
relationSha256Hex := "828f6216a2cd2e5bfc6bbe3052f30b100c92a56412da7bba20bf941826fd89ea",
wireRoleSha256Hex := "84006d371c4f8c038e75f86b8841974f4f03be4134b20b2bde0b72558e73a4d1",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg121
