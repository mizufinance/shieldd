import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg96

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 87460, 283, 87466, 282, 87461, 87467, 368, 87468, 87469]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalentIf_15b90c10255335c2e3dea5cc594b560b13a2e116f7c31cc0431980b3843c0350.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 96,
relationSha256Hex := "5079f61c6f173076d96222be1efc6bae025b9bf172a74c892d04aa1734177f1e",
wireRoleSha256Hex := "6029a8375ac90e014f1b7e078f1404e937428994c70c0259df38deb3fd2a088d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg96
