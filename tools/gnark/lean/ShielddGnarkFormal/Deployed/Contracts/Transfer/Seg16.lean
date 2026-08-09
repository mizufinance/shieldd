import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_337547ecab9ed69ef703225ce3fb67ba58652a95490dc7e75be736b205e39646
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg16

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 79, 6768, 6776, 6778, 78, 6769, 6777, 6779]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_337547ecab9ed69ef703225ce3fb67ba58652a95490dc7e75be736b205e39646.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_337547ecab9ed69ef703225ce3fb67ba58652a95490dc7e75be736b205e39646.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 16,
relationSha256Hex := "f9104783f82947761f189b42b222b76c946481cfe767585134421eaed462d8f0",
wireRoleSha256Hex := "6aa7589bbf87c1a5948b18f712020afe47e2793529f30c77382a23e188f3c801",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg16
