import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg10

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 98, 188, 742, 278, 743, 368, 744, 458, 745, 548, 746, 638, 747, 728, 748]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 10,
relationSha256Hex := "eeda9bc515695f44214b05e7b41a22d86408fee8721129b9b0744886244b833a",
wireRoleSha256Hex := "f215e8d3336bcaec48725de25d5f81ef7187cd71e2fa212ad41c9145d498fa80",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg10
