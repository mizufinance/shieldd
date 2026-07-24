import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg16

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 17939, 13, 17941, 12, 17940, 17942]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 16,
relationSha256Hex := "c1cb124e03295645bfe1e8fce11c4ad414f3088ae6d94f5009eea810b3e779e0",
wireRoleSha256Hex := "1863d1c4cb0e487cff93c681c3fa745417bec492e0ac27f92e23b9852d9107f8",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg16
