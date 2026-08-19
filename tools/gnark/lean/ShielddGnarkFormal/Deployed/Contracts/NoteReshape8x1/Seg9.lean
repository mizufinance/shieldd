import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg9

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 221, 304, 807, 387, 808, 470, 809, 553, 810, 636, 811, 719, 812, 802, 813]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 9,
relationSha256Hex := "def98395b7def140aa5e0a3ac2e06d06109e39fcc438ceae2c9764c8a29ef28f",
wireRoleSha256Hex := "87ca6905e743d747f57a54fbd1cc5f2ea12e0b6d62cf2e6da9149e4f2d0c7cee",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg9
