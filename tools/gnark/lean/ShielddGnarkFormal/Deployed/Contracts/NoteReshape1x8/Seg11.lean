import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg11

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 181, 182, 189, 183, 190, 184, 191, 185, 192, 186, 193, 187, 194, 188, 195]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertDummySuffix_a20cdb8e3309f92a6c215c2319440fcb8fbd56784d74625c842989c9342831c9.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 11,
relationSha256Hex := "430a1a20a7b01ef15a823d878ebe42876d877e2e5ca19f3b9cbc577a47e3e610",
wireRoleSha256Hex := "50ecc45a69cf9b7710c62968d347caa69fc1fd1c5f9c6ddc0ce99204dc037bc0",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg11
